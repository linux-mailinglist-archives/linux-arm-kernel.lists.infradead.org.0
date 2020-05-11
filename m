Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E2F1CD8D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+p/Ii74GPLmemSW1Kufad+Bgv/sq+pm6DRX7qp3Pfs=; b=PJO0tI6R3+EDJS
	ELT5zxuzNpDFp2A0OUO6yCdDGGWyNd5jv5hcSpsuX9RvpU/ONE676p1NxduCgEwWhd7rkizQ1ry/t
	fWxpM5DOOV/GRBGp92yeGPBW7ZBr2Tm/9dymg9Qs//myHxh49xO2pb6Q/6LxjAUpBs7TSOzBpkfJY
	0JqZ1DmWWgCaO4bnqIqR10E0KlI4WbNHlrF1nQKMG+fo2/y8KRJYdXGMB6+SbaeIsQ5orFnknmGV6
	BKH/obvAh+9m1I9bc3CU3h2Z12Ss3f/xmFk9+zDXhmy10GvtXFVZlU7yQREBHtPhTGjIY4CFdWtLW
	/QBixUs168OdLVPfs1NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6v0-0005Vf-Fe; Mon, 11 May 2020 11:48:22 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6up-0005UD-H6
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:48:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=2003; q=dns/txt; s=axis-central1;
 t=1589197691; x=1620733691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OE/19k10wHaCTdv4vIwiGTk7dV4vSV5kv7LOywkW2XA=;
 b=EZGoZC9v14p/wgDvYZgHKbJOSbAqitY96sQ4mMM8LpY7ALV7cc6rqzUL
 AdJ3nSvwII+wS2aLp47UDw5R8N7vkd6hb8Z/+eY6OR6dMsyAeo8Hcw0V/
 gOKZCi4MK2WA6J1Hatg6JAKPfxfIb/6DClatjFNop4P/74UPuh8dQyWeX
 pMLEV7OgRzeWgfQJ/bVzIhulhmDwGKdW78/xqY9/zGFEsiGegnd5+aUWV
 27fUAEn/1gaUyjWkNIsW3EQa7FOl28UQpmBqzMNJiuxxnGNfduVxE8E+M
 uA6GuhAuKaMl1ZEpamzPS6IpCYdeE3Y+TehapErYekvR5mQKvyi1/qZMV Q==;
IronPort-SDR: 02SQVDjpik5zxGFTX9qHDTx6h+TsrBW/mI8e6OKwbZ2V2pIRyW0gJOUtBPc5udRSKYGCDz2TRP
 BtyJ0kPw9EMk65iaw5ORSzp9FR2PlAKLwKZVIOb1ibUu6/FNY1nmP7ANumYzAQZ+TRbCCkFWU9
 fSP209hHNrQC4vtajdNMSwRevwB1q82NqpdGDCvpH0ZfAAt1U83WkYo/oxzlW5BjHJvil8BRcR
 BW850Lq1eZSWfp2aS/aljyQaVnsrwBMscwaPU3GPeH621K570R9Dc5C2oHI540MLBM5ol0uxE5
 VYc=
X-IronPort-AV: E=Sophos;i="5.73,379,1583190000"; 
   d="scan'208";a="8596078"
From: Vincent Whitchurch <vincent.whitchurch@axis.com>
To: <linux@armlinux.org.uk>, <jeyu@kernel.org>
Subject: [PATCH v2 2/2] ARM: module: fix handling of unwind init sections
Date: Mon, 11 May 2020 13:48:03 +0200
Message-ID: <20200511114803.4475-2-vincent.whitchurch@axis.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200511114803.4475-1-vincent.whitchurch@axis.com>
References: <20200511114803.4475-1-vincent.whitchurch@axis.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_044812_074892_FEB6E8F6 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vincent Whitchurch <vincent.whitchurch@axis.com>, kernel@axis.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unwind information for init sections is placed in .ARM.exidx.init.text
and .ARM.extab.init.text.  The module core doesn't know that these are
init sections so they are allocated along with the core sections, and if
the core and init sections get allocated in different memory regions
(which is possible with CONFIG_ARM_MODULE_PLTS=y) and they can't reach
each other, relocation fails:

  final section addresses:
  	...
  	0x7f800000 .init.text
	..
  	0xcbb54078 .ARM.exidx.init.text
	..

 section 16 reloc 0 sym '': relocation 42 out of range (0xcbb54078 ->
 0x7f800000)

Fix this by informing the module core that these sections are init
sections, and by removing the init unwind tables before the module core
frees the init sections.

Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>
---
v2: No changes.

 arch/arm/kernel/module.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/arch/arm/kernel/module.c b/arch/arm/kernel/module.c
index deef17f34bd2..af0a8500a24e 100644
--- a/arch/arm/kernel/module.c
+++ b/arch/arm/kernel/module.c
@@ -55,6 +55,13 @@ void *module_alloc(unsigned long size)
 }
 #endif
 
+bool module_init_section(const char *name)
+{
+	return strstarts(name, ".init") ||
+		strstarts(name, ".ARM.extab.init") ||
+		strstarts(name, ".ARM.exidx.init");
+}
+
 bool module_exit_section(const char *name)
 {
 	return strstarts(name, ".exit") ||
@@ -409,8 +416,17 @@ module_arch_cleanup(struct module *mod)
 #ifdef CONFIG_ARM_UNWIND
 	int i;
 
-	for (i = 0; i < ARM_SEC_MAX; i++)
-		if (mod->arch.unwind[i])
-			unwind_table_del(mod->arch.unwind[i]);
+	for (i = 0; i < ARM_SEC_MAX; i++) {
+		unwind_table_del(mod->arch.unwind[i]);
+		mod->arch.unwind[i] = NULL;
+	}
+#endif
+}
+
+void __weak module_arch_freeing_init(struct module *mod)
+{
+#ifdef CONFIG_ARM_UNWIND
+	unwind_table_del(mod->arch.unwind[ARM_SEC_INIT]);
+	mod->arch.unwind[ARM_SEC_INIT] = NULL;
 #endif
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
