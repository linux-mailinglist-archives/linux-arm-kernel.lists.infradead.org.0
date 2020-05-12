Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41931CEA95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pQLcDkviKV7+7kng8zHLAMbZhBRNTX4N5emmV3P9aHA=; b=LxcXqSFnj4z5dQ
	8TVQPsEskIuHApEMbFC2zrw+zsZwZCQtYYUoKSx5QnvukXzg/ZIzCVqkZc+Iv4EzCRRFRYvekPtb1
	DYtjVWFiZUQIlrhJulx8h4IapMZNqe+p9bhuspQnWlHMfgQgizzI4pC0Tg8KwuWZHFia+90IMS93O
	HlvEAU2lkeuvijzbF5BVL2fqLmw0DNdK5FAgNVY+EptPmN2dbb12sSHamVNYjDumH2xRraxsvj3Tn
	1lkIiB8CB0nBZqReKq4HDTzhmP9tLdz3snKdz20miNGSMfMPJkiNROxYFPlQHvCPbY80v08T0LAJf
	NQuLpokpX5+XK8CSwmVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKPZ-0007OM-8Q; Tue, 12 May 2020 02:12:49 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKPQ-0007NW-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:12:42 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id ECE9C1F523B7725604D1;
 Tue, 12 May 2020 10:12:37 +0800 (CST)
Received: from ubuntu.huawei.com (10.175.100.98) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Tue, 12 May 2020 10:12:32 +0800
From: Ma Feng <mafeng.ma@huawei.com>
To: <linux@armlinux.org.uk>, <tglx@linutronix.de>
Subject: [PATCH] arm/kprobes: make three symbols static
Date: Tue, 12 May 2020 10:20:18 +0800
Message-ID: <1589250019-30111-1-git-send-email-mafeng.ma@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.175.100.98]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_191241_085133_0DF03486 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix sparse warning:

arch/arm/probes/kprobes/test-core.c:686:6: warning: symbol 'coverage_fail' was not declared. Should it be static?
arch/arm/probes/kprobes/test-core.c:723:10: warning: symbol 'coverage_start_registers' was not declared. Should it be static?
arch/arm/probes/kprobes/test-core.c:935:14: warning: symbol '__kprobes_test_case_end_32' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Ma Feng <mafeng.ma@huawei.com>
---
 arch/arm/probes/kprobes/test-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/probes/kprobes/test-core.c b/arch/arm/probes/kprobes/test-core.c
index c562832..acf88b4 100644
--- a/arch/arm/probes/kprobes/test-core.c
+++ b/arch/arm/probes/kprobes/test-core.c
@@ -683,7 +683,7 @@ static int table_test(const union decode_item *table)
  * the kprobes decoding tables have had a test case executed for them.
  */

-bool coverage_fail;
+static bool coverage_fail;

 #define MAX_COVERAGE_ENTRIES 256

@@ -720,7 +720,7 @@ static const char coverage_register_lookup[16] = {
 	[REG_TYPE_NOSPPCX]	= COVERAGE_ANY_REG | COVERAGE_SP,
 };

-unsigned coverage_start_registers(const struct decode_header *h)
+static unsigned coverage_start_registers(const struct decode_header *h)
 {
 	unsigned regs = 0;
 	int i;
@@ -932,7 +932,7 @@ void __naked __kprobes_test_case_start(void)

 #ifndef CONFIG_THUMB2_KERNEL

-void __naked __kprobes_test_case_end_32(void)
+static void __naked __kprobes_test_case_end_32(void)
 {
 	__asm__ __volatile__ (
 		"mov	r4, lr					\n\t"
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
