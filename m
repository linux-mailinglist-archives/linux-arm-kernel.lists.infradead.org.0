Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0185986BC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 22:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vgTBIF/wXjRwGC5MLvU4tJ45gcApaUwPJxM+5cmz2y8=; b=j3VT1UJJYvXHoM
	d5OTNkHAd8ut5HE1cfb1Te9cLa+iTUgEWqCvbzgM+yU3nOsMad+fvFWh1HV3s93WV2zblxqRctZw9
	8OQkLBV4RYxKyVYOVOas8ACeNxqx8y5L1sRJn1nmg1s4ECC6lAXe5yQQZo2ZdqDX3ZfaOviuYq7rQ
	gUrOdblwYVgKTaxy2REAY5Hmg0ykLaU2woMsHK2V39H/g2+1KxPudZY6H1JzpFZsUAqJCeHxWXMQQ
	IyVxSqMncjtTi4WzBiqMAc6Gj3DNJL1tpmL26eaK6s0tSdYz+Du/VYa1DJpUF03gTLUClyMlTQceI
	X9UeOm/JyBibftTlzH1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpER-0005f6-7u; Thu, 08 Aug 2019 20:41:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpEJ-0005eB-KZ
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 20:41:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56D1A1596;
 Thu,  8 Aug 2019 13:41:44 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 45EBB3F694;
 Thu,  8 Aug 2019 13:41:44 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/2]  arm64/PPTT ACPI 6.3 thread flag support
Date: Thu,  8 Aug 2019 15:40:05 -0500
Message-Id: <20190808204007.30110-1-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_134147_720703_099B58F6 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: lorenzo.pieralisi@arm.com, rric@kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, Jeremy Linton <jeremy.linton@arm.com>,
 linux-acpi@vger.kernel.org, sudeep.holla@arm.com, will@kernel.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACPI 6.3 adds a flag to the CPU node to indicate whether
the given CPU is a thread. Add a function to return that
information for a given linux logical CPU and then utilize
it while building the arm64 topology.

v4->v5: Add Sudeep's Reviewed tag
	Trivial comment tweaks
	Move is_threaded logic from parse_acpi_topology()
	      to apci_cpu_is_threaded()

v3->v4: Remove table revision cache as this code path is only
	      called during boot and there aren't any
	      indications that it presents a perf issue.
	Rebase to 5.3

v2->v3: Clarify and tweak the return from check_acpi_cpu_flag()
	Cache the PPTT table revision to avoid repeat
	      acpi_table_get/put calls in the case of
	      missing or old PPTT tables.

v1->v2:
	Return ENOENT instead on ENONET.

Jeremy Linton (2):
  ACPI/PPTT: Add support for ACPI 6.3 thread flag
  arm64: topology: Use PPTT to determine if PE is a thread

 arch/arm64/kernel/topology.c | 19 ++++++++++---
 drivers/acpi/pptt.c          | 53 +++++++++++++++++++++++++++++++++++-
 include/linux/acpi.h         |  5 ++++
 3 files changed, 72 insertions(+), 5 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
