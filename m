Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A20108CFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 12:29:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tOIL+GJQvhlqNY7LScyjGz/J9cZ97CRuad5Ql7YKTVM=; b=RvZZqiyh7e+FlZeu+I0nv/2JDG
	5mCAkmxlDgrG9qtlPIT1t2Xep2zeu5D5jKQ6GI8+nXltgRcbWKupB6Kryit2qj+aeYFTZeXxa7F/o
	l12xXKogtZ3lnzdKEBwe/44pme+LqSwUjVdZMosbURHNNVEdOyjtt87RKziG9EPaqhbMzTJC2Fl5I
	saSgMbLUXqC53X53FUpaVlAUdwwGGDwtBLCamU2OHc9qa88x+G3wbE8gbpHhFuKrjnpZEQ/jHoLss
	pg7xHvNDDUzUow9CtozS+f5q0U3/6WundG/Bdd6S28pT9Sw9R1Xs76WzYQuu4/UI+nNB+yQkI25e5
	5wYfINyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZCYS-0004ee-Vy; Mon, 25 Nov 2019 11:29:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZCXW-00045J-Fj
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 11:28:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52F1D31B;
 Mon, 25 Nov 2019 03:28:21 -0800 (PST)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 531133F52E;
 Mon, 25 Nov 2019 03:28:20 -0800 (PST)
From: Qais Yousef <qais.yousef@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 11/14] firmware: psci: Replace cpu_up/down with
 device_online/offline
Date: Mon, 25 Nov 2019 11:27:51 +0000
Message-Id: <20191125112754.25223-12-qais.yousef@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191125112754.25223-1-qais.yousef@arm.com>
References: <20191125112754.25223-1-qais.yousef@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_032822_639999_6162F6EC 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Qais Yousef <qais.yousef@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The core device API performs extra housekeeping bits that are missing
from directly calling cpu_up/down.

See commit a6717c01ddc2 ("powerpc/rtas: use device model APIs and
serialization during LPM") for an example description of what might go
wrong.

This also prepares to make cpu_up/down a private interface for anything
but the cpu subsystem.

Signed-off-by: Qais Yousef <qais.yousef@arm.com>
CC: Mark Rutland <mark.rutland@arm.com>
CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
CC: linux-arm-kernel@lists.infradead.org
CC: linux-kernel@vger.kernel.org
---
 drivers/firmware/psci/psci_checker.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
index 6a445397771c..9e4b1bade659 100644
--- a/drivers/firmware/psci/psci_checker.c
+++ b/drivers/firmware/psci/psci_checker.c
@@ -83,8 +83,9 @@ static unsigned int down_and_up_cpus(const struct cpumask *cpus,
 	cpumask_clear(offlined_cpus);
 
 	/* Try to power down all CPUs in the mask. */
+	lock_device_hotplug();
 	for_each_cpu(cpu, cpus) {
-		int ret = cpu_down(cpu);
+		int ret = device_offline(get_cpu_device(cpu));
 
 		/*
 		 * cpu_down() checks the number of online CPUs before the TOS
@@ -116,7 +117,7 @@ static unsigned int down_and_up_cpus(const struct cpumask *cpus,
 
 	/* Try to power up all the CPUs that have been offlined. */
 	for_each_cpu(cpu, offlined_cpus) {
-		int ret = cpu_up(cpu);
+		int ret = device_online(get_cpu_device(cpu));
 
 		if (ret != 0) {
 			pr_err("Error occurred (%d) while trying "
@@ -126,6 +127,7 @@ static unsigned int down_and_up_cpus(const struct cpumask *cpus,
 			cpumask_clear_cpu(cpu, offlined_cpus);
 		}
 	}
+	unlock_device_hotplug();
 
 	/*
 	 * Something went bad at some point and some CPUs could not be turned
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
