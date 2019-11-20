Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43CB103CA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:53:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QP0akq6n6h1j1A8l7CyYmPh2U8EboMYsPyRnYP+/DNo=; b=hy2qYFE3h/oFQy
	zw8mL6S7HQ5SvRl+krRntiZDLTTbP2Y4wTQJpM/ZFepXMYbpcu8LDryXJ5/w1IZV7dnYe/Fq2Cmnp
	wnfNDMuSd4tVf94as9yFe4xL0MYXYZD5Z8PLLVDnsny76dVBQ5K6Ovct+L6eyOffC/s4OxqCe1mY3
	LXNy7S2Mes/X1vtFQ7X9d1AJtM1L/PSx38DYukzVV3x+hjYXsKFtCTQV4E+PV5uRGsq9isLlNCy9m
	mulJn1geCC2KoYZWRlr4uTusOf1ciusB4J8nsJuUXZS2XIulXZnHmLhcmrt/Se9eYfzVcSK4hXouJ
	tETqFyhdT6PdzjbCDKrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQQf-0002l9-EE; Wed, 20 Nov 2019 13:53:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQQW-0002k5-Jx; Wed, 20 Nov 2019 13:53:50 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iXQQN-0003aZ-Vt; Wed, 20 Nov 2019 14:53:40 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 4/5] ARM: dts: rockchip: Add Radxa Carrier board
Date: Wed, 20 Nov 2019 14:53:39 +0100
Message-ID: <12496011.EUIoF19S7S@diego>
In-Reply-To: <CAMty3ZA+p2pWokLrwnkv6_q0G8d76AntE5Kar4JN8MN48O9VSw@mail.gmail.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
 <5644395.EDGZVd1YuU@diego>
 <CAMty3ZA+p2pWokLrwnkv6_q0G8d76AntE5Kar4JN8MN48O9VSw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_055348_805248_CF497405 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Tom Cubie <tom@radxa.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jagan,

Am Mittwoch, 20. November 2019, 14:45:35 CET schrieb Jagan Teki:
> On Wed, Nov 20, 2019 at 6:55 PM Heiko St=FCbner <heiko@sntech.de> wrote:
> > Am Mittwoch, 20. November 2019, 12:39:22 CET schrieb Jagan Teki:
> > > Carrier board often referred as baseboard. For making
> > > complete SBC, the associated SOM will mount on top of
> > > this carrier board.
> > >
> > > Radxa has a carrier board which supports on board
> > > peripherals, ports like USB-2.0, USB-3.0, HDMI, MIPI DSI/CSI,
> > > eDP, Ethernet, PCIe, USB-C, 40-Pin GPIO header and etc.
> > >
> > > Currently this carrier board can be used together with
> > > VMARC RK3399Por SOM for making Rock PI N10 SBC.
> > >
> > > So add this carrier board dtsi as a separate file in
> > > ARM directory, so-that the same can reuse it in both
> > > arm32 and arm64 variants of Rockchip SOMs.
> >
> > Do you really think someone will create an arm32 soc using that
> > carrier board?
> =

> Yes, we have Rock Pi N8 which is using same carrier board design with
> (+ external codec) on top of RK3288 SOM. I didn't mentioned on the
> commit message since radxa doesn't officially announced on the
> website.
> =

> >
> > Similarly so far I don't think we haven't even seen a lot of reuse
> > of existing carrier boards at all, other than their initial combination.
> >
> > So maybe just having the content of your
> >         rockchip-radxa-carrierboard.dtsi
> > in
> >         rockchip/rk3399pro-rock-pi-n10.dts
> > from patch 5 might be a better start - at least until there is any
> > further usage - if at all?
> =

> But, this particular design has proper use case.
> 1. rk3399pro SOM + carrier board (Rock Pi N10)
> 2. rk3288 SOM + carrier board (Rock Pi N8)
> =

> >
> > Also rockchip-radxa-carrierboard might even be overly generic
> > as there may be multiple carrierboards from Radxa later on.
> =

> I'm slightly disagree of having overlay here, since these are fixed
> design combinations. where SOM with respective carrier board is
> mandatory to make final board. Understand that we can have a
> maintenance over-ahead if we have multiple carrier boards, but right
> now radxa has only one carrier board with 2 sets of SOM's combinations
> that indeed fit like a dev board, so there is unused carrier board.

All is good ... with that information from above (rk3288) this definitly
makes more sense :-)

The naming of the file is still a tiny struggle though. Does this board
maybe have some actual product name or is it really just called
"carrierboard"? :-)

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
