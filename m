Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F8772AD4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIRswqkEmjxMvNAtfij2G1lY5JaBa4dtcsiJOB8Fd7M=; b=gft6Ybp9EFSJIf
	cbHbHVFaLXD6OcsuRBm+81HEGyQ7Lmji7U0cTsitecqWRl2IHcr70/cqgJW+eVBPqtwA+IDCjFoi4
	Mf7mBaAaD12PbIdeCvJFNEIUjgoGOrVyXIpfJYPUFA1NCuU52gjzt5wJYrurF75rehDSVb4XGz8ok
	ooQEXwy7PGZPF70QzBGCPK0cHqwSX0YuVCOmYorDUJ31wirWzWXNWQs8z+dSIuNLpC4saZZhawWPn
	L+nnvgxfWAwYATGlfGE86yEXyM679yRqv58V98Z3NOFdlJJdl+yoJqA6MHEsRMnPC3U0UMdtSAdgh
	clYMSEXEZTN+bTZuk+/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqD6S-00078Y-4a; Wed, 24 Jul 2019 08:58:28 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqD68-00077a-Hs
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:58:10 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id E7AEC4000D;
 Wed, 24 Jul 2019 08:57:53 +0000 (UTC)
Date: Wed, 24 Jul 2019 10:57:53 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] ARM: kirkwood: ts219: disable the SoC's RTC
Message-ID: <20190724085753.GP24911@piout.net>
References: <20190723194505.28060-1-uwe@kleine-koenig.org>
 <20190723200321.GN24911@piout.net>
 <04efe868-ffaf-8b50-f52f-ce86aa2f3a38@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04efe868-ffaf-8b50-f52f-ce86aa2f3a38@kleine-koenig.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_015808_743628_CB3B56DC 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Andrew Lunn <andrew@lunn.ch>, Oliver Hartkopp <socketcan@hartkopp.net>,
 tbm@cyrius.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/07/2019 22:24:18+0200, Uwe Kleine-K=F6nig wrote:
> On 7/23/19 10:03 PM, Alexandre Belloni wrote:
> > On 23/07/2019 21:45:05+0200, Uwe Kleine-K=F6nig wrote:
> >> The internal RTC doesn't work, loading the driver only yields
> >>
> >> 	rtc-mv f1010300.rtc: internal RTC not ticking
> >>
> >> . So disable it.
> >>
> >> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> >> ---
> >>  arch/arm/boot/dts/kirkwood-ts219.dtsi | 8 ++++++++
> >>  1 file changed, 8 insertions(+)
> >>
> >> diff --git a/arch/arm/boot/dts/kirkwood-ts219.dtsi b/arch/arm/boot/dts=
/kirkwood-ts219.dtsi
> >> index a88eb22070a1..994cabcf4b51 100644
> >> --- a/arch/arm/boot/dts/kirkwood-ts219.dtsi
> >> +++ b/arch/arm/boot/dts/kirkwood-ts219.dtsi
> >> @@ -104,3 +104,11 @@
> >>  &pcie0 {
> >>  	status =3D "okay";
> >>  };
> >> +
> >> +&rtc {
> >> +	/*
> >> +	 * There is a s35390a available on the i2c bus, the internal rtc isn=
't
> >> +	 * working (probably no crystal assembled).
> >> +	 */
> >> +	status =3D "disabled";
> >> +};
> > =

> > You could also use the aliases to ensure rtc0 is the s35390a. This would
> > solve the initial issue.
> =

> What do you assume is my initial issue? Adding the alias doesn't make
> the above message disappear from the boot log.
> =


I overlooked that the rtc is not working at all (and I thought it only
needed some init in u-boot like the armada38x). Seems good to me then.



-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
