Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7CD37770
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8AZKdtmfRH5O+NGYB1DBUZZph+jK5Idl4r1h+r7dAqM=; b=HrffTJtJMcHoN4Zx4RPDcMps9
	ccjVeRnL3igQ3s24cvX5SgMrZifciFU4vIrhgysXD430OTRwwDjWL64P09DyE6qYbmhN2P+7izlD5
	bPd96GOFBqwuriaQYbJfrAAnAzMHZ8+kwV3ydiYmeDn23yvDtQfh0hF4LjLkxXHeZZlJRTHlr2l/e
	O0HREbVgJMFzeL7HoH5T91OuQ75pd/5H4pW7GCnpL3t/DmRcL0XXikyFP0DQ/5Q5ilMXYWC36n55I
	Qq4sDvju2J+4aJVhjcedz2XFbwccquaqMripx/qLBVqR4bN1hEuHisaKLt5QVNJdiE81P6VQ3jbPN
	r+z2iHj7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYu1e-0003qW-6i; Thu, 06 Jun 2019 15:09:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYu1X-0003qB-UE
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:09:53 +0000
Received: from linux-8ccs (ip5f5ade8c.dynamic.kabel-deutschland.de
 [95.90.222.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E293F2083E;
 Thu,  6 Jun 2019 15:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559833791;
 bh=SXQbPAaM9RvZp3lW3NXitKVEdsSpDOda2A6XmXtgK9A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m8AchtX68ZQEgL43k9PKAyaIxr1puxpZjBpfXaJsM3G9UTVi4Ft5mQBKClINjsF7f
 /ojTk+8Da4VDAsJvPi5rbkfU5CMy32hmzLpjxaXv6GYYMnzJH7SKeqT4oSt1fRGlAf
 ablifYRY+8cU+hXFTvzyKkX6LywgYOcx8DdAj2CY=
Date: Thu, 6 Jun 2019 17:09:46 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: Re: [PATCH modules 1/2] module: allow arch overrides for .exit
 section names
Message-ID: <20190606150946.GA27669@linux-8ccs>
References: <20190603105726.22436-1-matthias.schiffer@ew.tq-group.com>
 <20190603105726.22436-2-matthias.schiffer@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603105726.22436-2-matthias.schiffer@ew.tq-group.com>
X-OS: Linux linux-8ccs 5.1.0-rc1-lp150.12.28-default+ x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_080951_991232_DB5EEA36 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-ia64@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+++ Matthias Schiffer [03/06/19 12:57 +0200]:
>Some archs like ARM store unwind information for .exit.text in sections
>with unusual names. As this unwind information refers to .exit.text, it
>must not be loaded when .exit.text is not loaded (when CONFIG_MODULE_UNLOAD
>is unset); otherwise, loading a module can fail due to relocation failures.
>
>Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
>---
> include/linux/moduleloader.h | 8 ++++++++
> kernel/module.c              | 2 +-
> 2 files changed, 9 insertions(+), 1 deletion(-)
>
>diff --git a/include/linux/moduleloader.h b/include/linux/moduleloader.h
>index 31013c2effd3..cddbd85fb659 100644
>--- a/include/linux/moduleloader.h
>+++ b/include/linux/moduleloader.h
>@@ -5,6 +5,7 @@
>
> #include <linux/module.h>
> #include <linux/elf.h>
>+#include <linux/string.h>
>
> /* These may be implemented by architectures that need to hook into the
>  * module loader code.  Architectures that don't need to do anything special
>@@ -93,4 +94,11 @@ void module_arch_freeing_init(struct module *mod);
> #define MODULE_ALIGN PAGE_SIZE
> #endif
>
>+#ifndef HAVE_ARCH_MODULE_EXIT_SECTION
>+static inline bool module_exit_section(const char *name)
>+{
>+	return strstarts(name, ".exit");
>+}
>+#endif
>+

Hi Matthias,

For sake of consistency, could we implement this as an arch-overridable
__weak symbol like the rest of the module arch-overrides in moduleloader.h?

> #endif
>diff --git a/kernel/module.c b/kernel/module.c
>index 6e6712b3aaf5..e8e4cd0a471f 100644
>--- a/kernel/module.c
>+++ b/kernel/module.c
>@@ -2924,7 +2924,7 @@ static int rewrite_section_headers(struct load_info *info, int flags)
>
> #ifndef CONFIG_MODULE_UNLOAD
> 		/* Don't load .exit sections */
>-		if (strstarts(info->secstrings+shdr->sh_name, ".exit"))
>+		if (module_exit_section(info->secstrings+shdr->sh_name))
> 			shdr->sh_flags &= ~(unsigned long)SHF_ALLOC;
> #endif
> 	}
>-- 
>2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
