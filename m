Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D2E18EB54
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 19:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQr5CYwDRmJcCXLIBRhqfYqvMBJ8yN7J3rrblJxNh7U=; b=YwOVDqRWPU35QO
	KjzehJDs5lE68SnHYJVXu5W0dIIJCziXKWRHI/pE+IA8Y+P95FMb+AVJ2kXp1eHEQAz1zWvSGs/Bq
	LiMUX4ppmqTqfZgCIKe1IcAIUmj24816IF+Pll6EkNW7PzIxQ/RxsW49/6xjhGtqXgPN5xPIzd8EN
	/8b/CVdG4c40IVQaQLYDldPtx/QhrPpQkeKXtXubMstzlHXaOGXEWq4nwstGSrPMiH89U1XE5BF0p
	XCUN9oaXVkKoP6o0ZVuDrWo0nCh0wiJaeRieKdyiiIzIxsrXWBAbYJDtfFJvI8fONwhN+ZVMvqc8E
	wbuaBVZsa0Pewytk3WuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG4x2-0000hI-Uy; Sun, 22 Mar 2020 18:03:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG4wu-0000gE-CM; Sun, 22 Mar 2020 18:03:50 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jG4wk-0007rU-0k; Sun, 22 Mar 2020 19:03:38 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Caesar Wang <wxt@rock-chips.com>,
 kever.yang@rock-chips.com
Subject: Re: [PATCH] arm64: dts: rockchip: fix defines in pd_vio node for
 rk3399
Date: Sun, 22 Mar 2020 19:03:35 +0100
Message-ID: <48029127.kezn7BFppT@diego>
In-Reply-To: <1a6f0ba0-c49c-c547-1252-eed404655f43@gmail.com>
References: <20200322140046.5824-1-jbx6244@gmail.com>
 <48a91cc1-7751-4df0-a2cd-940eb829fa16@gmail.com>
 <1a6f0ba0-c49c-c547-1252-eed404655f43@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_110348_578304_1081B3F4 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Sonntag, 22. M=E4rz 2020, 17:14:54 CET schrieb Johan Jonker:
> Hi,
> =

> Why is 'pd_tcpc0, pd_tcpc1' grouped under 'pd_vio' instead of VD_LOGIC?

^^
You'll need to add Rockchip-people for that - I've done that now ;-)



> On 3/22/20 4:45 PM, Johan Jonker wrote:
> > Hi,
> > =

> > The RK3399 TRM uses both
> > =

> > 'pd_tcpc0, pd_tcpc1'
> > =

> > as
> > =

> > 'pd_tcpd0, pd_tcpd1'.
> > =

> > What should we use here?

We should probably just fix the nodename as you did.
- For one tcpD seems to be appearing way more often than tcpC
- and of course the header is part of the binding itself, so that shouldn't
  change without a really good reason


Heiko

> > =

> > Thanks.
> > =

> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boo=
t/dts/rockchip/rk3399.dtsi
> >> index 8aac201f0..3dc8fe620 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> @@ -1087,12 +1087,12 @@
> >>  					pm_qos =3D <&qos_isp1_m0>,
> >>  						 <&qos_isp1_m1>;
> >>  				};
> >> -				pd_tcpc0@RK3399_PD_TCPC0 {
> >> +				pd_tcpc0@RK3399_PD_TCPD0 {
> >>  					reg =3D <RK3399_PD_TCPD0>;
> >>  					clocks =3D <&cru SCLK_UPHY0_TCPDCORE>,
> >>  						 <&cru SCLK_UPHY0_TCPDPHY_REF>;
> >>  				};
> >> -				pd_tcpc1@RK3399_PD_TCPC1 {
> >> +				pd_tcpc1@RK3399_PD_TCPD1 {
> >>  					reg =3D <RK3399_PD_TCPD1>;
> >>  					clocks =3D <&cru SCLK_UPHY1_TCPDCORE>,
> >>  						 <&cru SCLK_UPHY1_TCPDPHY_REF>;
> > =

> =

> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
