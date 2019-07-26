Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF27C75C09
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 02:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKkyq27edhiO6HAeADJhGpSoq/5cCFbdA3pqzsbuRyQ=; b=uhPkkSjy33fjwQ
	FWM6idYWCUD4fgDmwPfAs7Ltc4Hww/1jDRrniA5tZnQV0v7O1MwVfvO0XuiQb3bShkKLGgtmXZEyd
	AKtn2M9zjq6FrnAMVO5QAF2BjnrbiRBr+9L9InTKgDLt2jl4X0lokgMijboaHiyzANM/P9U2XxypV
	u5POW6hNEujKy520v7Sz26C3Ku+msHWpNvBgd4mQQiJzUf+Ko5l0APvariYOXPz7tNFtgkqSmAmuk
	L0H8W+g0+OrPq3Jq/CTcqbL2tmoygVo29KCy2wauLw8yK82gLbsG5vZ6DoLVGm6Tbo21w284kIx3W
	Rhy/wkvouQ9Z2WXY6mVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqnzV-00074b-3R; Fri, 26 Jul 2019 00:21:45 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqnyz-0006yX-2G
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 00:21:15 +0000
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com
 [209.85.222.44]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x6Q0Kn6o028149
 for <linux-arm-kernel@lists.infradead.org>; Fri, 26 Jul 2019 09:20:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x6Q0Kn6o028149
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1564100450;
 bh=pg98lHoe1l0H5EciMrlqYmJIblQK4FXsTmu48LMIVzo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xrgsyqb36lbpnOVwGBFKHEXRboghjglQURmt82E6X1Az6dKfv/zmgSlDyXc6bK4M3
 WZxkXlweb/0Z7fbdFT6qgiXMnOFV+FD2yUQoPo8GFIvy+NRALRLCjfMDUQOGIkseGO
 FJNIc+1oSTRPT7yV6slW49zjWeRGLgJ3J41/KHCpVdzgF1mtQNuKKUKTq3FDxdaF7/
 /K8u/lW404Z8t736XDo8CyNoyBk8Vil2QwDF/1xjTpPn8F4kNfiRTXdIWecu5FaAPk
 5+hn+akr+iwFp1wz7NhY4MmC9+BQ0JTgzQBHbWOHVvqK5hj9eTv0ru/VQurfMWViDI
 dfx6+Uo861F7Q==
X-Nifty-SrcIP: [209.85.222.44]
Received: by mail-ua1-f44.google.com with SMTP id j21so20643413uap.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 17:20:50 -0700 (PDT)
X-Gm-Message-State: APjAAAXq9FxCjqsJH9jRTV/WOcvo3LTT2HmxN9FFUQzIDvkicCVjPVlg
 tMq6U1X0hilDHfSkFewpJ4uUSm/gqGBONwcP9Ik=
X-Google-Smtp-Source: APXvYqxxGW3wJ7fdEdMiG85EQFTRz8LdMcvss8y9liVsOISiZ6NZSnuP/Zf62Nk5ECrUZnU+Ba/fB7VdcD9zu0zJoiw=
X-Received: by 2002:ab0:70d9:: with SMTP id r25mr32323313ual.109.1564100449300; 
 Thu, 25 Jul 2019 17:20:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190718163523.18842-1-yamada.masahiro@socionext.com>
 <20190725164614.GJ1330@shell.armlinux.org.uk>
In-Reply-To: <20190725164614.GJ1330@shell.armlinux.org.uk>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 26 Jul 2019 09:20:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNASEOS5Sepr9YcfpDRA_ewrwP0s498tgn7A-BVbeZDkjqw@mail.gmail.com>
Message-ID: <CAK7LNASEOS5Sepr9YcfpDRA_ewrwP0s498tgn7A-BVbeZDkjqw@mail.gmail.com>
Subject: Re: [PATCH] ARM: visit mach-* and plat-* directories when cleaning
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_172113_682059_F9E6F6CF 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: patches@arm.linux.org.uk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 1:46 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Jul 19, 2019 at 01:35:23AM +0900, Masahiro Yamada wrote:
> > When you run "make clean" for arm, it never visits mach-* or plat-*
> > directories because machine-y and plat-y are just empty.
> >
> > When cleaning, all machine, plat directories are accumulated to
> > machine-, plat-, respectively. So, let's pass them to core- to
> > clean up those directories.
>
> You don't say what actual, real-life issue this patch is solving.
> Which files are left behind by a "make clean" ?
>
> From what I can see, this only matters if there are extra files that
> are generated (and have set extra-* or clean-*).  Everything else is
> cleaned up via the big find command in the top level makefile.
>
> Or is this a "it would be nice if..." patch?
>

This is a prerequisite for the following:

https://lore.kernel.org/patchwork/patch/1059150/
https://lore.kernel.org/patchwork/patch/1059149/

If this patch lands in upstream, I will resend them.


The motivation of the two is to avoid unneeded
re-compilation of kernel/kheaders_data.tar.xz

This is a race condition between
scripts/gen_kheaders.sh and arch/arm/mach-{at91,omap2}/Makefile


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
