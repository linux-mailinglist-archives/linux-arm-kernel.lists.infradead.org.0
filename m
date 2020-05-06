Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A91371C7488
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7k5YIL9vkbeo0gy4FnCt2joHq0lw5jEE3yyICzHcJU=; b=M+eCWxrYZ2zUOB
	9zaxmb/E+OVKyFKRZeDtM2RqIkJEdUuu3G3jYjkUWCzz3hDAjzSEpyWfBTf6catbWI36wBZYUmFyx
	jAF7MotbKWbCas1qOOU4+3gQXhtU3R9dUzuiy+UkOBgr3etdTbl/ca9y80WI6ss3gLW58QOt5AHZe
	IY5nCqUM1IkLTKCwfAoiCEa9vQDFR9MJtDQLxR4PKohKCGF+xXoqti9Cp2/0l1UxziKYCey/r3zS0
	ZQEbvgExUJ9+LHBW42nNicL1QuZ55ynxxMBWARCTr3BfMFByls9sb6W8NMpfNfN00zaVgnnjr3H4Z
	J36PfFnmL/ku6sQKQVxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLvw-0007Fu-GK; Wed, 06 May 2020 15:26:04 +0000
Received: from smtp2.axis.com ([195.60.68.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLvj-00079C-V7
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:25:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=1984; q=dns/txt; s=axis-central1;
 t=1588778752; x=1620314752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g4pSnXC9ETSX82mL7jdj/f/E60NtYuVks+hnYgNlpAE=;
 b=oKjv5hKKLl4nJLmWrs861+z4gT/6fExAa83WZESxw7S642CRt20z/LJ5
 d0vixxYY7hPmR/fxFm2YnbAV3wYGqosRHlp6f0Dzk/U69wuHCBFlWENTV
 9uT0uMG+2m1TvVWnPwxoMgLiUbFHu2SI8KuaqcXfftEtMGtk5XLZaM8Uk
 +R2FVKl9Gui4f8lQ4F5o32bRLjI1Il8QtQIPclGXpPKZIp+bj7AME/Jyb
 gJsLTgyHRvilPOC32VU8nDENXYCwUEhtzNTwFByVEotTnntKViJZxzrZv
 Y5tGcAj9S3TtqDSw8y5hPbmfhXxR2Ho/Gvfe4ofupGYvari0SC72JR2bh g==;
IronPort-SDR: AKBGHpcM8BafnapRQsr1FxP3dvICNjoNiKOvJze/+/IugtOp7sq8s6+xM8k6OISvdahdvSesLQ
 y+KB0pKhJ8uYqtklAe7SGgadnPokY0B7z8aizYJ5Srqi1xo7o5MaS/tYmg4H6Jrr+epHco5pwW
 ka31te4LKvOcNeWtTojZxFx6vZv41ZSHUhwyX2ATO4AtgKTRAH8aRAsvqlG65IU2O0z7tkpNPg
 HRYj9S7mulBTjiQxGRUJDvSgLvxhMrgEIHVfye8OLeqzM5NSWaZ3W+8jrQ+5HPyoVDXxRg5Abz
 utA=
X-IronPort-AV: E=Sophos;i="5.73,359,1583190000"; 
   d="scan'208";a="8222270"
From: Vincent Whitchurch <vincent.whitchurch@axis.com>
To: <linux@armlinux.org.uk>, <jeyu@kernel.org>
Subject: [PATCH 2/2] ARM: module: fix handling of unwind init sections
Date: Wed, 6 May 2020 17:25:33 +0200
Message-ID: <20200506152533.31286-2-vincent.whitchurch@axis.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200506152533.31286-1-vincent.whitchurch@axis.com>
References: <20200506152533.31286-1-vincent.whitchurch@axis.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_082552_887268_57622130 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
