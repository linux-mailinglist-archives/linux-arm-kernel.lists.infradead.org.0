Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E781E8910
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 22:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22eY810k7LDW6nFkCX+i72a20DzwP4MxZKZxhCgK5UU=; b=RwvHsL3uxIEQLP
	4nNZ8/0rRG1xdzMMqPuteE+q8xDiqmLnE+sukhyKjVL+OSVmVF2VBbgS+aRc7aViZwOvKTS8h/BAX
	ZsTDVVcOxG8u+KNOxFDussgftW+aUYqXVDJJeLIxH0S8Nj+/wnf1sDuEWmjvnpEfYrCBd0HzypmQy
	HNBO7hLASTuX9YGzI0ZLiJDjIhq/beXRywCx+H8NorFw5YHAyvstWBZkLi+n2AuCKlfFiCZQkDHnE
	Uf6WLIJQfLPH4nM9t9Yr3flu2sJTzj6GTcMPj4KoaEDgYFUMWuDLSu+xIpZsuPv38TJnQlX4IHZMz
	XO1jbSMwub1gIX0Kmyfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jelrU-0001Hf-C5; Fri, 29 May 2020 20:44:16 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jelrM-0001Gf-54
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 20:44:09 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 5A3ED8030;
 Fri, 29 May 2020 20:44:57 +0000 (UTC)
Date: Fri, 29 May 2020 13:44:04 -0700
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: omap2: fix omap5_realtime_timer_init definition
Message-ID: <20200529204404.GW37466@atomide.com>
References: <20200529201701.521933-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529201701.521933-1-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_134408_230026_E161619C 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 soc@kernel.org, Olof Johansson <olof@lixom.net>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Arnd Bergmann <arnd@arndb.de> [200529 20:18]:
> There is one more regression introduced by the last build fix:

Argh.. I did run make randconfig for like 10 builds
after the last fix.

> arch/arm/mach-omap2/timer.c:170:6: error: attribute declaration must precede definition [-Werror,-Wignored-attributes]
> void __init omap5_realtime_timer_init(void)
>      ^
> arch/arm/mach-omap2/common.h:118:20: note: previous definition is here
> static inline void omap5_realtime_timer_init(void)
>                    ^
> arch/arm/mach-omap2/timer.c:170:13: error: redefinition of 'omap5_realtime_timer_init'
> void __init omap5_realtime_timer_init(void)
>             ^
> arch/arm/mach-omap2/common.h:118:20: note: previous definition is here
> static inline void omap5_realtime_timer_init(void)
> 
> Address this by removing the now obsolete #ifdefs in that file and
> just building the entire file based on the flag that controls the
> omap5_realtime_timer_init function declaration.

I think this will introduce other randconfig build failures
as SOC_HAS_REALTIME_COUNTER is bool in Kconfig.

We still need to call omap5_realtime_timer_init() even if
SOC_HAS_REALTIME_COUNTER is not set.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
