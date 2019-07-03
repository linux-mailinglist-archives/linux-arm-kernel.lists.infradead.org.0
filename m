Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1DE5EAFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 19:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fscl2R1KSbOiywAMBkEpa3DiYYuiteTlSth3y9IUxBE=; b=jN7lJDBIF3WdWt
	zZDq/5G8ebSiVGNkbU7Db3RlJozpODFda3jAeIljJqlXB9z2Jzf3aHH4yCFrF87bgOVaeznDFj/Jr
	DqGoFQGcHRcnrViORba+ITnUIF9/I9reexgjrRpIMVsqR4/KvBGgwXGzE0W6ylMd3r1OrHZTfi+we
	ZgRmqO41jUR6HPydZb3bUJ+jtwVzfPvlaLhUdcpNRk69G7Wk/EPAEnKhovgqWJ5tayjXMxhH2jK6v
	noI001LeATSrtuXqeeEQTMUpLIplSG+hMPMtCaFLw0KDJs026By/ZvOk4waSmREotE5oeTT6UadMO
	Q6XkgONdu1dHloZLlcFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijWk-0006Ph-47; Wed, 03 Jul 2019 17:58:42 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hijWX-0006OP-My; Wed, 03 Jul 2019 17:58:31 +0000
Received: by mail-qt1-f193.google.com with SMTP id h18so2517043qtm.9;
 Wed, 03 Jul 2019 10:58:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SBoVgDxevh+0orMCb2YPrkAIPpPXPXsDVuRye2tAk2k=;
 b=e9wgGMwGbPfytsu2ar7VJx6T3cN0SJdfJsa6Et3fgezPx+SoJQ+sz0jX+VdfxmOrcD
 kMhHAqmBpaASI9GplPkxMrZyxVK9d9LfTgP4e0Bx1FMSfh/r4L5/m4ULHbsXD7jS65Uy
 hBgHM8Wzx7TPccPtLruC1NivaRA8gYLstloSp9e7hPZpzv5DSD7dAVucaiCD+CwAhVDk
 cNagQePHZ940YwYlgRACM43VmOQ4OnX9SIf1f/A4Dmi5Pu5d0XjRncjLiJXLOdYbxyPb
 AENF7l10NmtOjzM4ascqFdDBCKL8ZbE8Sie5Sb8HyEs5gEKPzCGAB0r0BSbCwTkP2Z/b
 cQEA==
X-Gm-Message-State: APjAAAWWKQ2E4WOC3nU18MMndJ5T/E59ENa/h4pTJ3GQcZJC+ENNLUiI
 bf2C7M8BF8XYY+VZg6eMWevXZoMkSB726Z0vPOk=
X-Google-Smtp-Source: APXvYqxf8mmbpvC31jKkb8dNVoAULaDG6q3i0PfGuKmnoUA7EPFs/+lF1YWPl9jqzm58WQs2s/8ws2mh2h1uXrUftwc=
X-Received: by 2002:ac8:5311:: with SMTP id t17mr30964672qtn.304.1562176708215; 
 Wed, 03 Jul 2019 10:58:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190703153112.2767411-1-arnd@arndb.de>
 <20190703165919.GC118075@archlinux-epyc>
In-Reply-To: <20190703165919.GC118075@archlinux-epyc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 3 Jul 2019 19:58:08 +0200
Message-ID: <CAK8P3a098AZfkz0bxfgN_XXk7QSQYi1V-EEmqLjQPjzR7986aA@mail.gmail.com>
Subject: Re: [PATCH] soc: rockchip: work around clang warning
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_105829_750949_E181C3EC 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nathan Huckleberry <nhuck@google.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 6:59 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> On Wed, Jul 03, 2019 at 05:30:59PM +0200, Arnd Bergmann wrote:
> > clang emits a warning about a negative shift count for an
> > unused part of a conditional constant expression:
> >
> > drivers/soc/rockchip/pm_domains.c:795:21: error: shift count is negative [-Werror,-Wshift-count-negative]
> >         [RK3328_PD_VIO]         = DOMAIN_RK3328(-1, 8, 8, false),
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/soc/rockchip/pm_domains.c:129:2: note: expanded from macro 'DOMAIN_RK3328'
> >         DOMAIN_M(pwr, pwr, req, (req) + 10, req, wakeup)
> >         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/soc/rockchip/pm_domains.c:105:33: note: expanded from macro 'DOMAIN_M'
> >         .status_mask = (status >= 0) ? BIT(status) : 0, \
> >                                        ^~~~~~~~~~~
> > include/linux/bits.h:6:24: note: expanded from macro 'BIT'
> >
> > This is a bug in clang that will be fixed in the future, but in order
> > to build cleanly with clang-8, it would be helpful to shut up this
> > warning. This file is the only instance reported by kernelci at the
> > moment.
> >
> > The best solution I could come up with is to move the BIT() usage
> > out of the macro into the instantiation, so we can avoid using
> > BIT(-1).
> >
> > Link: https://bugs.llvm.org/show_bug.cgi?id=38789
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Nick recently mentioned that Nathan was working on a fix on the clang
> side. It might be worth holding off on this to see if it can make it
> into LLVM 9, which will branch in about two weeks and be released at
> the end of August (according to llvm.org).

I think fixing it in llvm is a good idea regardless of the workaround.
My main goal for the workaround is to get a clean kernelci build
again, and it will probably take a little while to move that to a fixed
clang-9 build (release or prerelease).

> I don't feel strongly about it though so if this is going in:
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
