Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEEF1E7247
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 03:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oEcNtQH4xcB2ED6iccA4KZMipKxCXcmP5e/1HBuE2ok=; b=WEGkOu+4Hisz3N
	32gge8F4BKo+VjHzKSv5thL26gN64kVQ5BgF3V/bAxbZpx34f1cfjLrKNaDvH/V+6U0z+hFNPOlp7
	wH2pUimMmX8CbXBKQP5aRVWImN/UWOcq8gE+A3qye6MWEzvFcoTSzj0x8BXgGodLaklaeXmYfdlxC
	O4bPWgAjoyk2LkB+ybX4MCDy19ofv7OlVWzWGuQHliuV+bxTd59jb5Lkba//5MnU6WAvT8uxBoK2d
	xwBTzSmPewqGd1CS3U6rk1N0DVb7O3v52Z/rXQAycmSYoYNBKbt/S4Mf4Ojacqvwrarrbzqa6H0Wn
	kJEAHZs7fwxfIiGCkqmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeUG9-0002I5-B4; Fri, 29 May 2020 01:56:33 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeUG2-0002GC-Af
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 01:56:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1590717386; x=1622253386;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lq95wbME5tlX+TcoBEVkIXDmb7WeA/4am7B95qmISv4=;
 b=wAUA6K9bQ5zAm4zH5TQyybFu72NOQC+xURP2sKgWyKLHAuYBCp4JbkEj
 4JbIufs+Jhbq0EXX4WZBNugXN+A6vQvCJyREe0yKC6SEnKZIctb9zQADb
 AHsD6CByivIxzL9fUszhxcXepiRV1sS/0bVdguMtNLPCNwW9rYW3+HML+ 8=;
IronPort-SDR: tOS+xtIRM09X5NTb1w6XwRPrA4comkSml2YS9WvClr6O4c/94E6dR9efhF31/MP+RXWIpIPedk
 NPYpBTGFF/dw==
X-IronPort-AV: E=Sophos;i="5.73,447,1583193600"; d="scan'208";a="34269762"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-67b371d8.us-east-1.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 29 May 2020 01:56:07 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1a-67b371d8.us-east-1.amazon.com (Postfix) with ESMTPS
 id 97E97A20D3; Fri, 29 May 2020 01:56:05 +0000 (UTC)
Received: from EX13D02UWB004.ant.amazon.com (10.43.161.11) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 29 May 2020 01:56:04 +0000
Received: from EX13MTAUWB001.ant.amazon.com (10.43.161.207) by
 EX13D02UWB004.ant.amazon.com (10.43.161.11) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 29 May 2020 01:56:04 +0000
Received: from dev-dsk-alisaidi-i31e-9f3421fe.us-east-1.amazon.com
 (10.200.138.153) by mail-relay.amazon.com (10.43.161.249) with Microsoft SMTP
 Server id 15.0.1497.2 via Frontend Transport; Fri, 29 May 2020 01:56:04 +0000
Received: by dev-dsk-alisaidi-i31e-9f3421fe.us-east-1.amazon.com (Postfix,
 from userid 5131138)
 id 5907A228F8; Fri, 29 May 2020 01:56:04 +0000 (UTC)
From: Ali Saidi <alisaidi@amazon.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <maz@kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
Date: Fri, 29 May 2020 01:55:01 +0000
Message-ID: <20200529015501.15771-1-alisaidi@amazon.com>
X-Mailer: git-send-email 2.24.1.AMZN
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_185626_495611_263B7CDC 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [52.95.48.154 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: benh@amazon.com, zorik@amazon.com, zeev@amazon.com,
 linux-arm-kernel@lists.infradead.org, alisaidi@amazon.com, dwmw@amazon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If an interrupt is disabled the ITS driver has sent a discard removing
the DeviceID and EventID from the ITT. After this occurs it can't be
moved to another collection with a MOVI and a command error occurs if
attempted. Before issuing the MOVI command make sure that the IRQ isn't
disabled and change the activate code to try and use the previous
affinity.

Signed-off-by: Ali Saidi <alisaidi@amazon.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 124251b0ccba..1235dd9a2fb2 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -1540,7 +1540,11 @@ static int its_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 	/* don't set the affinity when the target cpu is same as current one */
 	if (cpu != its_dev->event_map.col_map[id]) {
 		target_col = &its_dev->its->collections[cpu];
-		its_send_movi(its_dev, target_col, id);
+
+		/* If the IRQ is disabled a discard was sent so don't move */
+		if (!irqd_irq_disabled(d))
+			its_send_movi(its_dev, target_col, id);
+
 		its_dev->event_map.col_map[id] = cpu;
 		irq_data_update_effective_affinity(d, cpumask_of(cpu));
 	}
@@ -3439,8 +3443,16 @@ static int its_irq_domain_activate(struct irq_domain *domain,
 	if (its_dev->its->numa_node >= 0)
 		cpu_mask = cpumask_of_node(its_dev->its->numa_node);
 
-	/* Bind the LPI to the first possible CPU */
-	cpu = cpumask_first_and(cpu_mask, cpu_online_mask);
+	/* If the cpu set to a different CPU that is still online use it */
+	cpu = its_dev->event_map.col_map[event];
+
+	cpumask_and(cpu_mask, cpu_mask, cpu_online_mask);
+
+	if (!cpumask_test_cpu(cpu, cpu_mask)) {
+		/* Bind the LPI to the first possible CPU */
+		cpu = cpumask_first(cpu_mask);
+	}
+
 	if (cpu >= nr_cpu_ids) {
 		if (its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144)
 			return -EINVAL;
-- 
2.24.1.AMZN


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
