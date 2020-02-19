Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8631648A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:30:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GygrW5hLfIjNISHP2eGOf+MBoKozIIVi7kNQU0RqlQg=; b=CBX1o1A/zNYByP
	snQ6bUEK+hFbbAmsY6lLZ+QsmK++PFb+mk5B8CI2ZoQqkaYZaHOTb7k8AEfAr+oCUmsBX4Hq4ex9w
	ZZUf03/voH6Ok7VUg+PlHU7kW2eG1w4wfHheJjwMW4YJi8cZ+4lMxQUAAI714M2ls3PO4X0Itp0+E
	nRF6NUk1giUKcbWQ8ZF4RDq8tUgR1PddJNHZ+8499U7ZCkZe7wFM33IbkdOBMGBs0/ykEwQGTAFdZ
	SNgK6qwpASPNg2X9wqrIm+w+BPUVy2U67ZtzuDWFWnS/EnJBguZbdZAJsU0x3TcSfxKWLdBkKCzxF
	GvHqoe17EM+5tFJ9csNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RIu-0002w5-GU; Wed, 19 Feb 2020 15:30:24 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RIm-0002vc-HS
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:30:17 +0000
Received: by mail-ot1-f68.google.com with SMTP id g64so464175otb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 07:30:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=shBpwPxzVyVQAaD0oYTNTwZVsvu6OfaMaEjn1dFyQ28=;
 b=CvtQlprVO4ZxK8JwhaTkTMABntJxFQtu1UMUiEGLjfGvwbgSqgrmatt8z6pr+7z97J
 XAj5tuPfVz6Xw6emIR1q7rYERelQdTjdVulW+4mYAnvOW0WDdczVeBuwxuvy0UiktsWw
 X6+Ua/ficwvNgpAsP7X+mY79hMGERgLRn1UDUNF7fKObWXv++wRGIAGd1E6xZImDu83z
 w/UFnCsv5Q0fx9+uM2rbBZg5uWYPAPFsl/AaIuqHfmfGNiBolO2LsPUJiDxJn5z+EFMa
 NwpDrpCW7n77IopYkQxAIoApV0Rz3aGztNEcIB9ALy2iuji1xCcYqGXXngUKHRENuwif
 FcqA==
X-Gm-Message-State: APjAAAXbV4T0IzVI4cy4IH98rWqvnEB8axuey43EohcS9caSWGBdhCoh
 CoaBLKjyK9XPT3vmVXhAzkdls7ceH8Pcu2XoBbI=
X-Google-Smtp-Source: APXvYqywY31zIL7CUSdv7ZV3QK0x0lsBl24rQPzCQmfsh68PXiEqDefgOyoG1LNgFAuKCPZ/8hXGHJTiHsbtJNn5ZdE=
X-Received: by 2002:a05:6830:1d4:: with SMTP id
 r20mr5840149ota.107.1582126215565; 
 Wed, 19 Feb 2020 07:30:15 -0800 (PST)
MIME-Version: 1.0
References: <20200218133019.22299-1-geert+renesas@glider.be>
 <20200218133019.22299-2-geert+renesas@glider.be>
 <20200219152728.GR5070@pendragon.ideasonboard.com>
In-Reply-To: <20200219152728.GR5070@pendragon.ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 19 Feb 2020 16:30:04 +0100
Message-ID: <CAMuHMdXoH6H6HiEFgANi8WMzTj0wFVr01-5-Ha9768MrPePKXQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] ARM: dts: rcar-gen2: Add reset control properties
 for display
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_073016_579496_03C38775 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Wed, Feb 19, 2020 at 4:27 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Tue, Feb 18, 2020 at 02:30:16PM +0100, Geert Uytterhoeven wrote:
> > Add reset control properties to the device nodes for the Display Units
> > on all supported R-Car Gen2 SoCs.  Note that on these SoCs, there is
> > only a single reset for all DU channels.
> >
> > Join the clocks lines while at it, to increase uniformity.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > v2:
> >   - New.
> > ---
> >  arch/arm/boot/dts/r8a7790.dtsi | 2 ++
> >  arch/arm/boot/dts/r8a7791.dtsi | 5 +++--
> >  arch/arm/boot/dts/r8a7792.dtsi | 5 +++--
> >  arch/arm/boot/dts/r8a7793.dtsi | 5 +++--
> >  arch/arm/boot/dts/r8a7794.dtsi | 2 ++
> >  5 files changed, 13 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/r8a7790.dtsi b/arch/arm/boot/dts/r8a7790.dtsi
> > index 334ba19769b998ac..e5ef9fd4284ae436 100644
> > --- a/arch/arm/boot/dts/r8a7790.dtsi
> > +++ b/arch/arm/boot/dts/r8a7790.dtsi
> > @@ -1719,6 +1719,8 @@
> >                       clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>,
> >                                <&cpg CPG_MOD 722>;
> >                       clock-names = "du.0", "du.1", "du.2";
> > +                     resets = <&cpg 724>;
> > +                     reset-names = "du.0";
>
> If there's a single reset for all channels, should it be just named "du"
> ? Or maybe skip the name completely ?

Doing so means the bindings should be updated first to reflect that.

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
