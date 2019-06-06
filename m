Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8550A377D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ls1/kVnOaw3ZxZpazw/BjMTeRCsdH2O7vpg89aoNsBM=; b=JrrAUEhPjDyMsP
	7iJyd/SChbJ4YFwFP4c8tykMzc179lqcekt3cTeC/ZXLpDBhIHYDbiYSTLRbCpFY6B0O93l+XKaz4
	uH+dBHGs6tHT1H0iLcGnBiKPixl5CUHcKPZnlGe/V/6sdpHgjqbaWPSN3xBCDJHv2itV6P4xllIhM
	PTM11D3DKTSXU1EjJJIWtKICYlmuTBsa/0bmp3G56k2Y6rWRHvKPujk3qH3uQ988HkKJChIHKuqqq
	UFVisa8PRKM34/P7WU3TsDxLwDKxTsMiTv8FlJGTRC672auVnyyGFC5l6GC+kdlNACN8K29xE/04V
	l1EF8vGmO7KmYEF4pV6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuIb-00029y-W8; Thu, 06 Jun 2019 15:27:30 +0000
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuIU-000297-11
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:27:23 +0000
X-IronPort-AV: E=Sophos;i="5.60,559,1549926000"; 
   d="scan'208";a="7729995"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2019 17:27:15 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Thu, 06 Jun 2019 17:27:15 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Thu, 06 Jun 2019 17:27:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1559834835; x=1591370835;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=umqEwzb8oK5WtqI9yBT0F9jXzaGIhXB44Au/hCBtBs8=;
 b=ZChRgcFw7UzOc9rbXEfwLchuZ0/ellpXnHkPlHEpklCREXdKLBLabKEJ
 6t03FegynYm2nVJvI1eJchD58VDBuWvCbkSps4rny6tMGvV3smC2c4kTc
 T/Xk2gl1hHt6Vfq8QDWvPjVuitT5wrIhHAb8PNnFwNcNHsv+uHFSBLCQm
 2pGrVHlkP7xLYCtdsLYyjyzRyeGg/iJALy6AQWF8YUfnZ5cm89GLrT0cz
 KI6iZn00QI0TB1ENhJ0ELOEgnGbQgw95evctYzDh/mXEglNaDYT1LFHSN
 SZjzC34zR2d40ERgt+0T8AWC7V1C9MPX2St3MlmiVfEr+dCSWUIEltyB2 w==;
X-IronPort-AV: E=Sophos;i="5.60,559,1549926000"; 
   d="scan'208";a="7729994"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 06 Jun 2019 17:27:15 +0200
Received: from schifferm-ubuntu4.tq-net.de (schifferm-ubuntu4.tq-net.de
 [10.117.49.26])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 7FB7C280074;
 Thu,  6 Jun 2019 17:27:21 +0200 (CEST)
Message-ID: <004bda07469769f8a6e0609efd0327f184307493.camel@ew.tq-group.com>
Subject: Re: [PATCH modules 1/2] module: allow arch overrides for .exit
 section names
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Jessica Yu <jeyu@kernel.org>
Date: Thu, 06 Jun 2019 17:27:12 +0200
In-Reply-To: <20190606150946.GA27669@linux-8ccs>
References: <20190603105726.22436-1-matthias.schiffer@ew.tq-group.com>
 <20190603105726.22436-2-matthias.schiffer@ew.tq-group.com>
 <20190606150946.GA27669@linux-8ccs>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_082722_387759_58DEED08 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.157.118.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-06-06 at 17:09 +0200, Jessica Yu wrote:
> +++ Matthias Schiffer [03/06/19 12:57 +0200]:
> > Some archs like ARM store unwind information for .exit.text in
> > sections
> > with unusual names. As this unwind information refers to
> > .exit.text, it
> > must not be loaded when .exit.text is not loaded (when
> > CONFIG_MODULE_UNLOAD
> > is unset); otherwise, loading a module can fail due to relocation
> > failures.
> > 
> > Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com
> > >
> > ---
> > include/linux/moduleloader.h | 8 ++++++++
> > kernel/module.c              | 2 +-
> > 2 files changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/include/linux/moduleloader.h
> > b/include/linux/moduleloader.h
> > index 31013c2effd3..cddbd85fb659 100644
> > --- a/include/linux/moduleloader.h
> > +++ b/include/linux/moduleloader.h
> > @@ -5,6 +5,7 @@
> > 
> > #include <linux/module.h>
> > #include <linux/elf.h>
> > +#include <linux/string.h>
> > 
> > /* These may be implemented by architectures that need to hook into
> > the
> >  * module loader code.  Architectures that don't need to do
> > anything special
> > @@ -93,4 +94,11 @@ void module_arch_freeing_init(struct module
> > *mod);
> > #define MODULE_ALIGN PAGE_SIZE
> > #endif
> > 
> > +#ifndef HAVE_ARCH_MODULE_EXIT_SECTION
> > +static inline bool module_exit_section(const char *name)
> > +{
> > +	return strstarts(name, ".exit");
> > +}
> > +#endif
> > +
> 
> Hi Matthias,
> 
> For sake of consistency, could we implement this as an arch-
> overridable
> __weak symbol like the rest of the module arch-overrides in
> moduleloader.h?

Fine with me - making such a tiny function inlineable just seemed more
appropriate to me. I can send a v2 tomorrow.


> 
> > #endif
> > diff --git a/kernel/module.c b/kernel/module.c
> > index 6e6712b3aaf5..e8e4cd0a471f 100644
> > --- a/kernel/module.c
> > +++ b/kernel/module.c
> > @@ -2924,7 +2924,7 @@ static int rewrite_section_headers(struct
> > load_info *info, int flags)
> > 
> > #ifndef CONFIG_MODULE_UNLOAD
> > 		/* Don't load .exit sections */
> > -		if (strstarts(info->secstrings+shdr->sh_name, ".exit"))
> > +		if (module_exit_section(info->secstrings+shdr-
> > >sh_name))
> > 			shdr->sh_flags &= ~(unsigned long)SHF_ALLOC;
> > #endif
> > 	}
> > -- 
> > 2.17.1
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
