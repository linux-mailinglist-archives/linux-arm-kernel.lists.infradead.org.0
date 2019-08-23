Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99BF9ABA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 11:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEkpmPIBcy1eQQWEPUcLR4mIuhuCsMa9qevW22U+d/U=; b=gxpIj0eqzWYCoi
	J6B/AtUGo1qu5ycxAyYcCxLs4QrddJtTDa0TckHDiySFtjjCksL9t8AA3exu8NQ70mcsHAGZ5/moG
	mAhShjduL3GJUTCvstd8hxGSa+JLOFJ6ENv3eymm2IajutDlaB8SL+lmEio36sIPxdZS6ByAMDJ5Q
	rgERvjL9ncwcd8QGVQ8GUAVJdl65NqW3H8wFw3A0HmWUOQ0dKRNX/+xHP7pONRDFJeTL9Xao4nN6J
	lDUo3efL+LK+dmw7h3bYdfIscasGPwlnlEwfaUamIlKuj9ButJZmtDpP7b8qXgq4tM+aNVQHAnKQG
	/vPtWxr+G+x62lgmzakg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16Cb-00080U-87; Fri, 23 Aug 2019 09:49:49 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16CK-0007xz-V9
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 09:49:34 +0000
Received: by mail-oi1-f194.google.com with SMTP id o6so6554368oic.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 02:49:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QEz2KNBRbJdVKJsLwz2U8eclaE22pDEiXXNXT10MZeA=;
 b=bctDR0JsJ7/qbxeOIg+cXXfZCpcOx68RDCYeVYwhoIvKkN/19qwegIlegcw+LQXKCM
 qDlkLIhAwmuacAbVqPZ6KVmwBgQoIPqVNwj18qQ7CEBVwEP/QVRYL8jULuVkTyqLbDB+
 wF3zUQ5d9pVi4Pe8nG0+cdT1167Q9PSVrl2P83HuoWCQvvsEbpwHk3/XUPWtmcynEJL4
 QywdIDBLaF5mlGMTOgZNky72Pn4UJO3aYUf/dwAFbmfTKbkEWYhUImZMl3CtRAI1BxJr
 rWO2MtftfuIlM9OqfWEYPtEGUgjIKoiTAkaJiRXvY/KXiirHSMOFLGUkHMo8P5Q042hJ
 6Nmw==
X-Gm-Message-State: APjAAAX9Cipz30/kbI11/xdnsLM9MDRoU/GE1vunplQjlc0AjiAO2oUu
 3xpIa/d0+WixZL+XQqN2ex5dRkJCQg83jMz+U0A=
X-Google-Smtp-Source: APXvYqyl8kW3q/ROn//i0BWNXz/LZnGiepjK3GZraKqMRygGdqNdEn3jxmCxFwoKmWCfA1BGNXmXTwcXH36XXle2to4=
X-Received: by 2002:aca:b154:: with SMTP id a81mr2381867oif.148.1566553770898; 
 Fri, 23 Aug 2019 02:49:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190821124602.29317-1-geert+renesas@glider.be>
 <20190821124602.29317-4-geert+renesas@glider.be>
 <20190822085804.rgyjxisnznmnura5@verge.net.au>
In-Reply-To: <20190822085804.rgyjxisnznmnura5@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Aug 2019 11:49:19 +0200
Message-ID: <CAMuHMdX1uryY5wbbJ7n1w2_XHdCMwLst4w-nbQw-iAxORTJyuw@mail.gmail.com>
Subject: Re: [PATCH 3/3] [RFC] ARM: shmobile: defconfig: Disable
 PL310_ERRATA_588369
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_024933_062982_8EBA3486 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

On Thu, Aug 22, 2019 at 10:58 AM Simon Horman <horms@verge.net.au> wrote:
> On Wed, Aug 21, 2019 at 02:46:02PM +0200, Geert Uytterhoeven wrote:
> > PL310 Erratum 588369 affects PL310 cache controller revisions older than
> > r2p0.
> >
> > As Renesas ARM SoCs contain the following revisions:
> >   - SH-Mobile AG5: r3p1,
> >   - R-Mobile A1: r3p1-50rel0,
> >   - R-Car H1: r3p2,
> >   - RZ/A1: r3p2,
> >   - RZ/A2: r3p3,
> > none of them are affected, and support for the errata can be disabled
> > safely.
> >
> > The EMMA Mobile EV2 documentation doesn't mention the revision of its
> > PL310 cache controller, so this SoC might be affected.  However, the L2
> > cache controller is not enabled by Linux.
>
> If the controller is not enabled by Linux then I would think that the
> Errata is not needed. If that is true then I agree with this patch.
>
> Regarding making assumptions about the version of the PL310 cache
> controller, I suggest that we cannot assume that it is not affected
> without further information.

I agree, so this needs more investigation.

It seems this was included in shmobile_defconfig based on the old
armadillo800eav_defconfig, which enabled several errata options since
commit e0ef0984ae346c54 ("ARM: shmobile: armadillo800eva: enable all
errata for cache on defconfig").
Based on my current knowledge, PL310_ERRATA_769419 is the only one that
affects Renesas SoCs (ignoring EMEV2 for now) with a PL310, and thus
should be enabled, too.

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
