Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B035169723
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 11:02:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFHDWl8to9F5Q7JCAVGnjcIfEr1rJ7F2hz/NmAwfPfI=; b=HEawA3ut+JGbW3
	61mTzW/iyXmIGxE/ZXeNYA4qnG4sLnXEhe+/Au9iLInOYY8AdtH3sDJMb+pDUkQcIO9whtTrTcnz3
	SQ921UwDKouu6CKcFtZLhCBPVBIBtgC1a5+QtxLQNz6wFF8VgPnhu73h8FSmf+bK2w6TW3oUlL4CZ
	49UKAtXq2DKeqMILhogwOOOcjonC1uHWYI+14Oiypm2kLTcJvUMrwui7YpcGeKWQJSCuTjOIxKDCK
	oZHLIgzIlSTwYvTWa4jOZDQr0cmuARrKyy+LCSyWN6YNYsahxfmkxi19w3Ng3H8AHniJrFe5+dkBd
	oVbVMSTBoAlij7eU9U1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5o5t-0005kW-RV; Sun, 23 Feb 2020 10:02:37 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5o5j-0005k7-AG
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 10:02:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582452145; bh=ZLOyODypymrlYWhAyRXBc5vQ3z2suv+ka0Ds1dIXppg=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=RMa8HcLbYgAb1fS1SFCnKRuGxHeANm6erMaQXhCMz6vy3LGJptsw8NeVlT51V6xjq
 Jo+GWZ56u2dY5+QGZnC3KaOuf6SRBsPKjEyfctS3mZGRfR1/dlXrTJTIkJrT1xtlmp
 BDnt13ikBk4X35zHfrGTVAl5+r7SXtPaZYYF9fgI=
Date: Sun, 23 Feb 2020 11:02:25 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] [PATCH 1/4] ARM: dts: sun8i-a83t-tbs-a711: OOB
 WiFi interrupt doesn't work
Message-ID: <20200223100225.6e6n65mc3mj365wy@core.my.home>
Mail-Followup-To: Chen-Yu Tsai <wens@csie.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <mripard@kernel.org>,
 Tomas Novotny <tomas@novotny.cz>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
References: <20200222223154.221632-1-megous@megous.com>
 <20200222223154.221632-2-megous@megous.com>
 <CAGb2v67XwrYA8FLF9wpnngm9F-F9UV2m+rr+r3t+KUVv5-EMiw@mail.gmail.com>
 <CAGb2v66G5P_souwFHodO0_NYhWyQ+dGE4fbqLLK3qd9ue7Kk9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v66G5P_souwFHodO0_NYhWyQ+dGE4fbqLLK3qd9ue7Kk9g@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_020227_525589_FA6B0B21 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Sun, Feb 23, 2020 at 12:03:46PM +0800, Chen-Yu Tsai wrote:
> On Sun, Feb 23, 2020 at 11:26 AM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > Hi,
> >
> >
> > On Sun, Feb 23, 2020 at 6:32 AM Ondrej Jirman <megous@megous.com> wrote:
> > >
> > > It just causes a constant rate of 5000 interrupts per second for both
> > > GPIO and MMC, even if nothing is happening. Rely on in-band interrupts
> > > instead.
> > >
> > > Fixes: 0e23372080def7bb ("arm: dts: sun8i: Add the TBS A711 tablet devicetree")
> > > Signed-off-by: Ondrej Jirman <megous@megous.com>
> >
> > What WiFi chip/module does this use? It might be worth asking Broadcom
> > people to help with this and fix the driver.
> 
> Based on the comments in the device tree file, it uses an AP6210, which
> is a BCM43362 inside for SDIO-based WiFi. There is a recent fix in 5.6-rc1
> for this,
> 
>     8c8e60fb86a9 brcmfmac: sdio: Fix OOB interrupt initialization on brcm43362
> 
> which seems to fix things for me. Could you try it on your end?

Interesting, thanks for finding out! I'll test it.

I think it will work, since my tablet started having overheating issue recently,
and I tracked it down to this.

regards,
	o.

> ChenYu
> 
> 
> > ChenYu
> >
> > > ---
> > >  arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 3 ---
> > >  1 file changed, 3 deletions(-)
> > >
> > > diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > > index 2fd31a0a0b344..ee5ce3556b2ad 100644
> > > --- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > > +++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > > @@ -214,9 +214,6 @@ &mmc1 {
> > >         brcmf: wifi@1 {
> > >                 reg = <1>;
> > >                 compatible = "brcm,bcm4329-fmac";
> > > -               interrupt-parent = <&r_pio>;
> > > -               interrupts = <0 3 IRQ_TYPE_LEVEL_LOW>; /* PL3 WL_WAKE_UP */
> > > -               interrupt-names = "host-wake";
> > >         };
> > >  };
> > >
> > > --
> > > 2.25.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> > > To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20200222223154.221632-2-megous%40megous.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
