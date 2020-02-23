Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2626E1695B1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 05:04:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BFsMDfmZd3f8Feqle2CJY0n3kmFVlXTKbgJD9VEhl0=; b=fSEy0jSg3fp6Mk
	cshy4I1/3zaLLt9mKqZX7aTAxT8wg0PdQY1ajJ6grKah46sj92lnB1nNSEfkx9nk2QRkRNkiLdfqZ
	3H0nRABcKLA7JujNXy6p5QSnP0IvQl6zhL9JDbOEGqhqDOH55G4DyWuTByHhuGswwE9p3aoWOD6kB
	ihkDiD1slHtTQ+oH1A5SlISa6AdtBC42Xv1jXmQQdZJTbQ03ApKmSH7VPUd7URm2Z1Tkg6uggJIVI
	YMbxC9p0HxmKG9kmS46UZkKB1fHdg6yuYK9qIe+tmqBldqESfas+O/ja5cXtl7fCg+9iYk95tnd0n
	rMdBKcmtqi8bLxVVd7Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5iV0-0007fy-MV; Sun, 23 Feb 2020 04:04:10 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5iUq-0007fB-Im
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 04:04:02 +0000
Received: by mail-ed1-f68.google.com with SMTP id c7so7624434edu.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 20:03:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BwEdqYydc8kdzSGTpNrqTMnSIQHLxOA+j53stoAmXIE=;
 b=JfzJzJgOB6EFzs2y6pG7zJdHGHfwR20xBBumABy30a+37MXbabdBYY4CbmLyR72aJc
 XpPMh0FfdKIXl/I+EaJWNakpPOyQWKQDVs4A1DkS88sNKM8yuUsVVStcIe+fQFa3rIPV
 1g7aPRQ8lle8DfazWnM+gNYfr/hHgEIVvHViXM88AkdsLxzy9Qb30Bl9n7Q2Kzd+CAYA
 bHO6lYg0o1I3P+aXAXmUW/IB4d2Uvp+bC8UnO1mLq96ZAH+A/ki8XbM+UfVTCNHu0Ay8
 vDZH+mqZm7NgGBcH/31c5835aouwrEBuiSZuoFFZo92jlQiHDaHVPlWXfwh3QRuFwN55
 7zMg==
X-Gm-Message-State: APjAAAW9EK6Ha+/dmrVgqH59qEVf5H35Z8QxrJETwSOr7f82JOtzHtoZ
 RECMbqSyYjj6iBsz+hD0Yeexzu8Z0PM=
X-Google-Smtp-Source: APXvYqzpVidQYGiMSK9bb5QhCBBhuOM6P6z/WzjHj3WfZHuS8y4lHZaM/vDXz5vbg/GL5i+fm6Wizg==
X-Received: by 2002:a50:bf4b:: with SMTP id g11mr39024881edk.374.1582430636987; 
 Sat, 22 Feb 2020 20:03:56 -0800 (PST)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id f19sm595897ejb.7.2020.02.22.20.03.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 20:03:56 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id p18so2771385wre.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 20:03:56 -0800 (PST)
X-Received: by 2002:a5d:640d:: with SMTP id z13mr55885217wru.181.1582430636158; 
 Sat, 22 Feb 2020 20:03:56 -0800 (PST)
MIME-Version: 1.0
References: <20200222223154.221632-1-megous@megous.com>
 <20200222223154.221632-2-megous@megous.com>
 <CAGb2v67XwrYA8FLF9wpnngm9F-F9UV2m+rr+r3t+KUVv5-EMiw@mail.gmail.com>
In-Reply-To: <CAGb2v67XwrYA8FLF9wpnngm9F-F9UV2m+rr+r3t+KUVv5-EMiw@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 23 Feb 2020 12:03:46 +0800
X-Gmail-Original-Message-ID: <CAGb2v66G5P_souwFHodO0_NYhWyQ+dGE4fbqLLK3qd9ue7Kk9g@mail.gmail.com>
Message-ID: <CAGb2v66G5P_souwFHodO0_NYhWyQ+dGE4fbqLLK3qd9ue7Kk9g@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 1/4] ARM: dts: sun8i-a83t-tbs-a711: OOB WiFi
 interrupt doesn't work
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_200400_619933_1AC8DA30 
X-CRM114-Status: GOOD (  23.16  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arend van Spriel <arend.vanspriel@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Tomas Novotny <tomas@novotny.cz>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 11:26 AM Chen-Yu Tsai <wens@csie.org> wrote:
>
> Hi,
>
>
> On Sun, Feb 23, 2020 at 6:32 AM Ondrej Jirman <megous@megous.com> wrote:
> >
> > It just causes a constant rate of 5000 interrupts per second for both
> > GPIO and MMC, even if nothing is happening. Rely on in-band interrupts
> > instead.
> >
> > Fixes: 0e23372080def7bb ("arm: dts: sun8i: Add the TBS A711 tablet devicetree")
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
>
> What WiFi chip/module does this use? It might be worth asking Broadcom
> people to help with this and fix the driver.

Based on the comments in the device tree file, it uses an AP6210, which
is a BCM43362 inside for SDIO-based WiFi. There is a recent fix in 5.6-rc1
for this,

    8c8e60fb86a9 brcmfmac: sdio: Fix OOB interrupt initialization on brcm43362

which seems to fix things for me. Could you try it on your end?

ChenYu


> ChenYu
>
> > ---
> >  arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > index 2fd31a0a0b344..ee5ce3556b2ad 100644
> > --- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > +++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > @@ -214,9 +214,6 @@ &mmc1 {
> >         brcmf: wifi@1 {
> >                 reg = <1>;
> >                 compatible = "brcm,bcm4329-fmac";
> > -               interrupt-parent = <&r_pio>;
> > -               interrupts = <0 3 IRQ_TYPE_LEVEL_LOW>; /* PL3 WL_WAKE_UP */
> > -               interrupt-names = "host-wake";
> >         };
> >  };
> >
> > --
> > 2.25.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> > To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20200222223154.221632-2-megous%40megous.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
