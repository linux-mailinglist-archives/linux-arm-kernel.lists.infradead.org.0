Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 356761CB09D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VT9PucvzihHSVMyD8tk5V6H1FxF8qrlculXcQFgOnxY=; b=bTCPX1RwiR0ZSE
	uKmulPLN8opQqU9cwVEBO0qhBCOXMMspKNDvHWHPjEGo1lt+5e8RYsawcaYdZPUS8G5DMfwtfxsi4
	vjoqAiOAx2szXsIqiZdtQ1M9/3Gz69UzF7xzUMUicoCpZh4Yk6siAnBsleYDrBT0J6uw4t3mhm04R
	R2wZFCQmlPPo9s8LzuEkOY49pI/nLlJT6c+uL8IeAV9lAFmmgE3Ub6RdAdTbHyH96Tz0nERBake6R
	aYEBAZNtziU4d8EqKswWZoc5pYGxKrFzeVd72YjpkuYaeFz4fcUs+aQH23QPlsZc1J3uhLJR3VC80
	Ba74bXb97WKzvVEgoAfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX3DM-0007Ql-7p; Fri, 08 May 2020 13:38:56 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX3DF-0007QL-Gv
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 13:38:51 +0000
Received: by mail-oi1-f195.google.com with SMTP id c12so7424051oic.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 06:38:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cVLrXPsgHTwrpYewcNCPrb8dvyyVm6F0RkHrzmD7Wq8=;
 b=D7WeVrfEZ5vnFtOLXBLNaV3SMN8W5/9p0YCa3HNcAIbOn1kmxoWdObG1VRsojGPmYc
 Gihs1OSbM8xNGdQ0XYoyXccwVTSG+O/3t1R5OqyoToVmXdmzzgbk9lld5+ABHoKMtUXO
 XsvNYQwaadkyZuxTXSIEpdpl329ID9ha7YL5x+Oz7LOOSgU+F0xGGDzL9szHJLz6xFw2
 AXuj1W7t6dEhhRrUBVz3Z3Ye2vKefvBiIDQulMNmRPVSka7XchPrjfNEWp3vbEqkDCvg
 MAq9CJtKMwvJ6FsZnzsEQTCrtU9K3seu5wluNK0uyi9w1A94f4aTlMYr7SzeZYdT8xng
 QhKQ==
X-Gm-Message-State: AGi0Puanc/1nIqeApVsvjFGc3jkBdif+84xQZRqRvxhrkDgQR2mg0uk5
 CJkRGSAyp6KA9hLQLjbsm9pv3Ashsj38gnp96MQ=
X-Google-Smtp-Source: APiQypIt/NJtbxKsIctJ0g6RMdpCsn9IJtKNhLYXR42RNLxIQc88+xuJ9tmpNoq3FDSQIO8GoYtQWyr1idGt+kJgHrI=
X-Received: by 2002:aca:d50f:: with SMTP id m15mr10449088oig.54.1588945127549; 
 Fri, 08 May 2020 06:38:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200507080528.547-1-geert+renesas@glider.be>
 <nycvar.YSQ.7.77.849.2005071056450.5637@knanqh.ubzr>
 <CAMuHMdXgpR6HDQs_NS4W2C8NxqJp3g1DjR2VneUF5Rvun-L4jQ@mail.gmail.com>
 <nycvar.YSQ.7.77.849.2005071303480.5637@knanqh.ubzr>
In-Reply-To: <nycvar.YSQ.7.77.849.2005071303480.5637@knanqh.ubzr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 8 May 2020 15:38:36 +0200
Message-ID: <CAMuHMdW0=KWk2pC2tRUajvZQsoObBEFz7WoJ+uJbHbX27f7b2g@mail.gmail.com>
Subject: Re: [PATCH/RFC] ARM: dts: rza2mevb: Upstream Linux requires SDRAM
To: Nicolas Pitre <nico@fluxnic.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_063849_560400_93D92936 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Magnus Damm <magnus.damm@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

""
Hi Nicolas,

On Thu, May 7, 2020 at 7:07 PM Nicolas Pitre <nico@fluxnic.net> wrote:
> On Thu, 7 May 2020, Geert Uytterhoeven wrote:
> > On Thu, May 7, 2020 at 4:58 PM Nicolas Pitre <nico@fluxnic.net> wrote:
> > > On Thu, 7 May 2020, Geert Uytterhoeven wrote:
> > > > As upstream Linux does not support XIP,
> > >
> > > What?
> >
> > Not for an ARM v7 platform:
> >
> >     config XIP_KERNEL
> >             bool "Kernel Execute-In-Place from ROM"
> >             depends on !ARM_LPAE && !ARCH_MULTIPLATFORM
>
> Of course this is an artificial limitation.
>
> You can have XIP on ARMv7 if you want. It requires some kconfig
> tweaks though.

I am happy to hear that!
Do you have any guidance how to implement that?
So far our tries have failed.

"[PATCH 0/2] ARM: ARMv7 (with MMU) XIP without ARCH_MULTIPLATFORM"
http://lore.kernel.org/r/20170209033044.19513-1-chris.brandt@renesas.com
"[PATCH] ARM: Allow MULTIPLATFOR to select XIP
https://lore.kernel.org/linux-arm-kernel/1455816310-11308-1-git-send-email-chris.brandt@renesas.com/
"[PATCH 0/2] ARM: xip: Get XIP for ARMv7 working again
http://lore.kernel.org/r/1437057434-1616-1-git-send-email-chris.brandt@renesas.com
"XIP_KERNEL and !ARCH_MULTIPLATFORM
http://lore.kernel.org/r/HK2PR06MB0561CC16649A9C1F341CC6648A030@HK2PR06MB0561.apcprd06.prod.outlook.com
...

Thanks, and have a nice weekend

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
