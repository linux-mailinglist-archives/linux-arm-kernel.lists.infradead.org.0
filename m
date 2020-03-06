Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9C517B939
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 10:28:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ey3jb0LpVZ7KlAXNg4gT55dYw8gZ1Kn4bqkCth+7vis=; b=kBz5bouAL7jElS
	G6eyS+T4By4YnqSmX9Vhm752ChBH9Kr190NZr94GbIvdxrcviF2jGRV2s9IXw14fvAMAKk6SzB8sh
	pmR6lRpLqFm3ubzvxPwNa1+7M2vyMSh4g4o/x2q0YSf0Dsc5QR6Q/W6EyRS4KJt9uVrBoI0R+Pnmn
	sKGofVoAgTNe2GW5+jfqNMYdywm5JDIO8H1ROLeaUxB7Ne5nq/pr121to7DTy7y8A+9QPrYSP1lkL
	EuBdQqMlfF/hxUdrIg3lpBRucnoFltl48HOXVJs4fpjQYDVDjXS7Mg1eXpCHQcRdhTlwpzTrCXKMO
	sKmBU1ufZpRT/lSFMlZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9H7-0003uS-9U; Fri, 06 Mar 2020 09:28:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9H0-0003th-9F; Fri, 06 Mar 2020 09:28:03 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jA9Gj-0000Pu-CY; Fri, 06 Mar 2020 10:27:45 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Fri, 06 Mar 2020 10:27:44 +0100
Message-ID: <4053849.MTJ45Pz6JY@diego>
In-Reply-To: <7a799284-92ab-ea04-285e-37d655064118@gmail.com>
References: <20200304213023.689983-2-t.schramm@manjaro.org>
 <6168222.Wuk326WHQK@phil> <7a799284-92ab-ea04-285e-37d655064118@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_012802_476316_9F09A733 
X-CRM114-Status: GOOD (  13.69  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Emmanuel Vadot <manu@freebsd.org>, Alexis Ballier <aballier@gentoo.org>,
 Tobias Schramm <t.schramm@manjaro.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, Matthias Kaehlcke <mka@chromium.org>,
 Vivek Unune <npcomplete13@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

Am Freitag, 6. M=E4rz 2020, 08:22:00 CET schrieb Johan Jonker:
> Hi,
> =

> Missing #address-cells, #size-cells
> Can you still fix that?
> =

> On 3/6/20 1:23 AM, Heiko Stuebner wrote:
> > Am Mittwoch, 4. M=E4rz 2020, 22:30:23 CET schrieb Tobias Schramm:
> >> This commit adds initial dt support for the rk3399 based Pinebook Pro.
> >>
> >> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> > =

> > applied for 5.7
> > =

> > Thanks
> > Heiko
> > =

> > =

> =

> > +&edp {
> > +	force-hpd;
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&edp_hpd>;
> > +	status =3D "okay";
> > +
> > +	ports {
> =

> #address-cells =3D <1>;
> #size-cells =3D <0>;
> =

> Don't forget that extra empty line here.

The edp ports node does get its address+size cells already from the main
node in rk3399.dtsi, so isn't needed here.


Heiko

> =

> =

> > +		edp_out: port@1 {
> > +			reg =3D <1>;
> > +			#address-cells =3D <1>;
> > +			#size-cells =3D <0>;
> > +
> > +			edp_out_panel: endpoint@0 {
> > +				reg =3D <0>;
> > +				remote-endpoint =3D <&panel_in_edp>;
> > +			};
> > +		};
> > +	};
> > +};
> =

> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
