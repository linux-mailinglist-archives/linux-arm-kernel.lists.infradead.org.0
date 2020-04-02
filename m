Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB90D19C3C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 16:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lx7o0qLZWRtL3IuY7zrCuwHbhs5iychl+tEJtxZhGOA=; b=dSFTMoTEXDbstv
	rqCq45CTvjK5VK2GSA0666g9k7tEjj0PNddm4d8xpmmw6dPhxKgrNCk7b7RpfsC7RcrnLJyPEPE+R
	Y2WszJR+50Nbr8xC/2iqypZgO08X0XPLayTF34lUhTevtgOAWiHVj4DJ6nUNWZEET4X2yHoRB1yB9
	Q6adhaD0xpJNENhd07s3P+l2gcT9l5Ofe/09KnnRhHZlvLFjyJ+LCUYTEQRFVrvspBLyYTGlQg2qQ
	Zm5BRRfHrkydbx0wOfQBGN7Qj0DoO04iLCtQt7KzwczW3Qy5or3MnnZmS2QqZ4zgfRgzdeETIDApi
	/KWCPw065+mtcbeniZDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0d8-00060y-RO; Thu, 02 Apr 2020 14:15:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0ch-0004fX-Fr; Thu, 02 Apr 2020 14:15:14 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jK0cU-000843-Rk; Thu, 02 Apr 2020 16:14:58 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 1/2] soc: rockchip: Register a soc_device to retrieve
 revision
Date: Thu, 02 Apr 2020 16:14:58 +0200
Message-ID: <4543799.QtudHIFNrS@diego>
In-Reply-To: <4844d3ba-87fa-51f4-0a56-3131e390589a@arm.com>
References: <20200401153513.423683-1-mylene.josserand@collabora.com>
 <5143930.cPWVAAQKI9@diego> <4844d3ba-87fa-51f4-0a56-3131e390589a@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_071511_689233_185E9449 
X-CRM114-Status: GOOD (  29.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: =?ISO-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@collabora.com>,
 sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 geert@linux-m68k.org, kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 2. April 2020, 13:45:34 CEST schrieb Robin Murphy:
> On 2020-04-01 5:34 pm, Heiko St=FCbner wrote:
> [...]
> > The possible problem I see here is clocking and power-domain of the hdmi
> > controller in corner-cases. In the past we already had a lot of fun with
> > kexec, which also indicates that people actually use kexec productively.
> > =

> > So while all clocks are ungated and all power-domains are powered on fi=
rst
> > boot, on a system without graphics the pclk+power-domain could be off w=
hen
> > doing a kexec into a second kernel, which then would probably hang here.
> =

> Just to be that guy, how about kdump, where entry to the second kernel =

> is predicated on there *not* being a nice clean shutdown? ;)
> =

> IMO relying on any particular bootloader behaviour in the kernel is =

> fairly fragile - U-Boot has a lot more latitude in assuming it's running =

> straight out of reset than Linux does.

You'll have to take into account that there are more boot options than
uboot ;-) ... especially the rk3288 also needs to support some ancient
version of coreboot - that definitly won't see any updates anymore
and isn't really user upgradeable.


> If we're not going to trust the =

> DT to correctly describe the SoC variant in the first place,

I'm still all for "just put a rk3288w" into the devicetree compatible,
but so far other participants seem to prefer a software solution ;-) .


> then it's =

> somewhat questionable whether we should trust it for indirectly =

> identifying the SoC variant either - it would seem a lot more robust to =

> just map the known physical addresses to run a canned sequence of =

> register writes that puts things in a known-good state (on the basis =

> that this has to run before the 'real' drivers for those things are up, =

> and thus can't interfere with them).

The problem is, the "known physical address" is part of the dw-hdmi
controller ip block, so we'll also need to take into account clocks and
power-domains.

So that would mean the soc-"driver" would need to =

- ioremap hdmi, cru and pmu
- ungate all clocks (on reboot we don't know the hirarchy)
- enable at least the pd_vio power-domain
via direct register writes.

Doable but definitly very ugly and I also don't really know what more
people farther upstream would say to that.

Anybody interested in just adding that new dt-compatible?


Heiko

> > Of course with the hdmi-pclk being sourced from hclk_vio we run into a
> > chicken-egg-problem, as we need pclk_hdmi_ctrl to register hclk_vio at =
all.
> > =

> > So I guess one way out of this could be to
> > - amend rk3288_clk_shutdown() to also ungate the hdmi-pclk on shutdown
> > - add a shutdown mechanism to the power-domain driver so that it can
> >    enable PD_VIO on shutdown
> > =

> >> +
> >> +	if (readl_relaxed(hdmi_base + RK3288_HDMI_REV_REG)
> >> +	    =3D=3D RK3288W_HDMI_REV)
> > =

> > nit: a nicer look would be something like
> > 	val =3D readl_relaxed(hdmi_base + RK3288_HDMI_REV_REG);
> > 	if (val =3D=3D RK3288W_HDMI_REV)
> > =

> >> +		revision =3D RK3288_SOC_REV_RK3288W;
> >> +	else
> >> +		revision =3D RK3288_SOC_REV_RK3288;
> >> +
> >> +	iounmap(hdmi_base);
> >> +
> >> +	return revision;
> >> +}
> >> +
> >> +static const char *rk3288_socinfo_revision(u32 rev)
> >> +{
> >> +	const char *soc_rev;
> >> +
> >> +	switch (rev) {
> >> +	case RK3288_SOC_REV_RK3288:
> >> +		soc_rev =3D "RK3288";
> >> +		break;
> >> +
> >> +	case RK3288_SOC_REV_RK3288W:
> >> +		soc_rev =3D "RK3288w";
> > =

> > can we maybe use lower-case letters for all here?
> > =

> >> +		break;
> >> +
> >> +	case RK3288_SOC_REV_NOT_DETECT:
> >> +		soc_rev =3D "";
> >> +		break;
> >> +
> >> +	default:
> >> +		soc_rev =3D "unknown";
> >> +		break;
> >> +	}
> >> +
> >> +	return kstrdup_const(soc_rev, GFP_KERNEL);
> >> +}
> >> +
> >> +static const struct of_device_id rk3288_soc_match[] =3D {
> >> +	{ .compatible =3D "rockchip,rk3288", },
> >> +	{ }
> >> +};
> >> +
> >> +static int __init rk3288_soc_init(void)
> > =

> > as noted at the top, I'd really like to see this more generalized so th=
at
> > other socs can just hook in there with a revision callback in a
> > rockchip_soc_data struct.
> > =

> > =

> >> +{
> >> +	struct soc_device_attribute *soc_dev_attr;
> >> +	struct soc_device *soc_dev;
> >> +	struct device_node *np;
> >> +
> >> +	np =3D of_find_matching_node(NULL, rk3288_soc_match);
> >> +	if (!np)
> >> +		return -ENODEV;
> >> +
> >> +	soc_dev_attr =3D kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> >> +	if (!soc_dev_attr)
> >> +		return -ENOMEM;
> >> +
> >> +	soc_dev_attr->family =3D "Rockchip";
> >> +	soc_dev_attr->soc_id =3D "RK32xx";
> > =

> > nit: rk3288 instead of "32xx" please
> > =

> >> +
> >> +	np =3D of_find_node_by_path("/");
> >> +	of_property_read_string(np, "model", &soc_dev_attr->machine);
> >> +	of_node_put(np);
> >> +
> >> +	soc_dev_attr->revision =3D rk3288_socinfo_revision(rk3288_revision()=
);
> >> +
> >> +	soc_dev =3D soc_device_register(soc_dev_attr);
> >> +	if (IS_ERR(soc_dev)) {
> >> +		kfree_const(soc_dev_attr->revision);
> >> +		kfree_const(soc_dev_attr->soc_id);
> >> +		kfree(soc_dev_attr);
> >> +		return PTR_ERR(soc_dev);
> >> +	}
> >> +
> >> +	dev_info(soc_device_to_device(soc_dev), "Rockchip %s %s detected\n",
> >> +		 soc_dev_attr->soc_id, soc_dev_attr->revision);
> > =

> > nit: dev_dbg should be enough, that information doesn't really matter f=
or
> > most people, as it's only relevant to clock internals.
> > =

> > =

> > Heiko
> > =

> > =

> > =

> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> > =

> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
