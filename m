Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EA3C1337
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 06:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rSsQDv82Kf3GFg2v5M6xar+dAzijtG8xwqe5/DsJdbk=; b=Hz+xSvuajAWANe
	HFwswmzOdPZgdUcL4TDRT22j7Z3EbG+zgyZZAJXSlmSadLQrvYXMDT7j8l5wMevdgtTJD7c3P2wAH
	qKX9YTX7kEjLz/pTYhjBw447SjYQCWFdP7FaTFXwXHTmAimYwlC+nHNRVeD5xzY3utqcnGrPdKbXM
	qYrYEI3qkohjgjRN84EkMl69rwGP0oL1YvuWsIGdCuOkYJINKk83xPNPx5tuMyw9JPULZjZSdVm7v
	n5LPsBzuyJC2qEV38S4T1T0FZ+VEGCrlfH64EiXsTrRDS3raAN6hAj3b0WVeOePJwiR9eRZA0cXLC
	SsOJUgMW51JDx8yWpk7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iER4c-0001kh-MZ; Sun, 29 Sep 2019 04:44:42 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iER4O-0001gG-EE
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 04:44:31 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 6EFA09C8C5F91C21757A;
 Sun, 29 Sep 2019 12:44:22 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Sun, 29 Sep 2019 12:44:20 +0800
To: <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <kstewart@linuxfoundation.org>, <gregkh@linuxfoundation.org>,
 <tglx@linutronix.de>, <info@metux.net>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: [PATCH] arm64: armv8_deprecated: Checking return value for memory
 allocation
Message-ID: <ea235720-5bbd-27b7-a9b1-34aa8a344e3a@huawei.com>
Date: Sun, 29 Sep 2019 12:44:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_214428_661770_83D560EB 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are no return value checking when using kzalloc() and kcalloc() for
memory allocation. so add it.

Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
---
 arch/arm64/kernel/armv8_deprecated.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
index 2ec09de..ca158be 100644
--- a/arch/arm64/kernel/armv8_deprecated.c
+++ b/arch/arm64/kernel/armv8_deprecated.c
@@ -174,6 +174,9 @@ static void __init register_insn_emulation(struct insn_emulation_ops *ops)
 	struct insn_emulation *insn;

 	insn = kzalloc(sizeof(*insn), GFP_KERNEL);
+	if (!insn)
+		return;
+
 	insn->ops = ops;
 	insn->min = INSN_UNDEF;

@@ -233,6 +236,8 @@ static void __init register_insn_emulation_sysctl(void)

 	insns_sysctl = kcalloc(nr_insn_emulated + 1, sizeof(*sysctl),
 			       GFP_KERNEL);
+	if (!insns_sysctl)
+		return;

 	raw_spin_lock_irqsave(&insn_emulation_lock, flags);
 	list_for_each_entry(insn, &insn_emulation, node) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
