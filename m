Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776721697D8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 14:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1mhitzdNwHqT6E38oOuQQ1VywjFIgeXLew+XNqcoJM=; b=bbqedFXQ+771XI
	pblrymQD8aK8tT00MtMEVjBAg34BDvYBn9Y83Isum2TreXULaLDtOr8ufZcrVwToLsjU7SkkoR1I5
	949wCDTUOeSgev6ZMO8hq0/m9xgLsaVzZJYRDwFuQGrXWghvCjuSrhjrD65IkjjuWms8oOqjrntGC
	FLw/vjLbZN9ldwLegR/97fmCCtiZq2csrWiaZLbs5vocgdA0phHNi+ae04Av2IvNk9eEiIvPVe4y6
	PooJsarMfs/1/6Ill9uwzaoVqI+IAv3mfztA9U2cjl9SRyC6yWL0f4eIOuf445mVPwUWot4FMDcZo
	t6aET6glUF3dUZp8Yicw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5rPr-00058P-HI; Sun, 23 Feb 2020 13:35:27 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5rPj-00057w-3j
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 13:35:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582464917; bh=6VpUk0yfA5m3J1dhx2/b9+a44uEwfNvyw0oTvOwyDQ8=;
 h=Date:From:To:Subject:References:X-My-GPG-KeyId:From;
 b=GNXtzobtRQPe3S+1nOVOlPHRI/Ge3Segzb4xN/kEe/qKGExn1bm5nxfwvFQY0lNyy
 FTGLhJiA07xtjUTLNaUfDOQnsSHB1Q91iYt9YyquDI04pFGGH3Hy0X1cwlpJV+2hq0
 FhgOh997uamzbxcmGs3pi4m1VIpMtVeMN6BrbbAs=
Date: Sun, 23 Feb 2020 14:35:17 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Lee Jones <lee.jones@linaro.org>, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/4] Add support for charger LED for AXP813 and TBS A711
 Tablet
Message-ID: <20200223133517.hfqrg5dta2xk4zj3@core.my.home>
Mail-Followup-To: linux-sunxi@googlegroups.com,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Lee Jones <lee.jones@linaro.org>, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200223131435.681620-1-megous@megous.com>
 <20200223132730.6g7tnm2f263oubhv@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223132730.6g7tnm2f263oubhv@core.my.home>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_053519_321226_F4E739F8 
X-CRM114-Status: GOOD (  17.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 02:27:30PM +0100, megous hlavni wrote:
> On Sun, Feb 23, 2020 at 02:14:31PM +0100, megous hlavni wrote:
> > The tablet has a charger LED exposed on the top. This LED is controlled
> > by AXP813 PMIC. Add support for enabling the LED and using it either
> > for charging indication (handled by PMIC automatically) or for other uses
> > via user control.
> 
> Dang, I just noticed someone sent a similar driver recently, although I had this
> one prepared for quite some time (since 2017) in my tree. I guess I should have
> sent it earlier.
> 
> Please ignore.

Though the meaning of "recently" is a bit relative. The other work was sent in
a year ago. Here's a reference:

  https://lore.kernel.org/patchwork/cover/1042764/

> regards,
> 	o.
> 
> 
> > Please take a look.
> > 
> > thank you and regards,
> >   Ondrej Jirman
> > 
> > Ondrej Jirman (4):
> >   dt-bindings: leds: Add a binding for AXP813 charger led
> >   leds: axp20x: Support charger LED on AXP20x like PMICs
> >   ARM: dts: axp813: Add charger LED
> >   ARM: dts: sun8i-a83t-tbs-a711: Enable charging LED
> > 
> >  .../devicetree/bindings/leds/leds-axp20x.yaml |  24 ++
> >  arch/arm/boot/dts/axp81x.dtsi                 |   5 +
> >  arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts     |   4 +
> >  drivers/leds/Kconfig                          |   7 +
> >  drivers/leds/Makefile                         |   1 +
> >  drivers/leds/leds-axp20x.c                    | 240 ++++++++++++++++++
> >  drivers/mfd/axp20x.c                          |   3 +
> >  7 files changed, 284 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/leds/leds-axp20x.yaml
> >  create mode 100644 drivers/leds/leds-axp20x.c
> > 
> > -- 
> > 2.25.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
