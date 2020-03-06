Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1387E17C5F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 20:09:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLI9clDiOC+T9M0TKvkR7at+7lGZpn2uwYoKHvkBcug=; b=VZ+f26RgqNKKG6
	3yiCoFwvZhm4c/ePpesSd2Ad1ThhhOWfsAlKm6M5LfgrJY4pl5NzKE/IxwLodmEMkANQjss7mIcFz
	/vsi0aRR+qMzNeZhXkh1HU2XFD3SoQnQtiUmX/y0MzuVvVphgfJhkw3paPGdJOcHC/ZXJK7sEyN13
	VCvthUYVa2lgs+GrEjLeOERmJ1EOkRmuuN6UFUgQn7k17taK52kP0EudbNU7VX2nWAoK3N7EIJlvA
	LUIn0JiQYCPRa/3l/hzZJuW1HOCaeV/j/7S8SLgWlc5gJkzctPOJtcKRSwd1wKpWcXMNnCIqoupU2
	ydVGUsXZKjQJYPtj/0dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAIM3-0000A4-0G; Fri, 06 Mar 2020 19:09:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAILp-00008y-Ax; Fri, 06 Mar 2020 19:09:38 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jAILK-0002nL-U7; Fri, 06 Mar 2020 20:09:06 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Fri, 06 Mar 2020 20:09:05 +0100
Message-ID: <1783248.GgDFSgCcj8@diego>
In-Reply-To: <b30fef29-6667-9200-178b-4d0e9fc63c12@manjaro.org>
References: <20200304213023.689983-2-t.schramm@manjaro.org>
 <6168222.Wuk326WHQK@phil> <b30fef29-6667-9200-178b-4d0e9fc63c12@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_110937_522867_9C990B56 
X-CRM114-Status: GOOD (  11.91  )
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
 Markus Reichl <m.reichl@fivetechno.de>, Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Emmanuel Vadot <manu@freebsd.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, Vivek Unune <npcomplete13@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tobias,

Am Freitag, 6. M=E4rz 2020, 19:58:45 CET schrieb Tobias Schramm:
> Hi Heiko,
> =

> >> This commit adds initial dt support for the rk3399 based Pinebook Pro.
> >>
> >> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> >
> > applied for 5.7
> >
> =

> any chance you can squeeze in another small fix? Somewhere in the
> process the vmcc and vqmmc supplies of the sdmmc controller were removed
> in error. Those should be added to the sdmmc controller like this:
> =

>  &sdmmc {
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
>         sd-uhs-sdr104;
> +       vmmc-supply =3D <&vcc3v0_sd>;
> +       vqmmc-supply =3D <&vcc_sdio>;
>         status =3D "okay";
>  };

I've amended the commit with these two properties.

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
