Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D81931B9834
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 09:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8k1qjlAa4rRcAHyCB4aobPYw9tMF7J+tlnrEpgtBTX8=; b=NmPjpfay03Fv6pJXwQkTy3+jy
	XR1SkU34jI4/0fla0LYKP8hLUU01plxkLVZ+qbmSjtnutoY+1M8Ircv4YkrAbQUfbMBKKy+XgBEhT
	nwT58cgPNU6NZQAN9eBXmhsXZMTsd7sxOmeIxE6CvRMSXqVjnMHmShCuChDK1/FhWuRD63izqTxgG
	hhwZtZJDXzWOktqy003qYsfmGiTP5hAP40srUCsFfduekmWELf1N18sPtsksGLdzEiPcaX1MGZ2WV
	7PNqPusKtdLtYDYxdcMZfH0OiRaWIaguecTErSWqc1IHhrZWYIWCrNb98dUqA38z9+A+b76Dc7Qpq
	2CEejHG4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSy20-0005Bc-KF; Mon, 27 Apr 2020 07:18:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSy1s-0005AB-Ri
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 07:18:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id v8so15208812wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 00:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GSFLOVrCBMaE39ZARVJRO9s5UghXhwgRJUz+OPn7Ktg=;
 b=GtgYzpjjWTvcTiZ6qRjm+FPqX88Fj8nnNToX87F0QUUwa0pKXDv8hPNWRnboMNwfPT
 1sblJ3gFK1cjg4EH1LZ71qlvs4ZEyrYDCfSHBAnVWq9mG8uT9dPOupsy9uPMcNR9Xp+M
 eys0hV+fBwJHmSRlvmuEUAObzw4mewhHJowoHrmRqLMMQBSyljdOMdzHeAsnIxcb73n/
 55bEDqKZD+UFzt7Zhgq3Om55Hyjp2NI6i7jYtfqVGu4w/rGBMp+3xe9xap6Q86Jiit03
 +EIQk4x9QpOdfUyN9f8nlMpYWJjVPVAhPOwlm48ZSJubBNbZ4Gvsm+82Wsn23K1nQSfp
 aFuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GSFLOVrCBMaE39ZARVJRO9s5UghXhwgRJUz+OPn7Ktg=;
 b=TjjaCToM15Frt/DYXOsFGkDMhCyF1uTRolrE1217bhwZyBd5DSDSR2Ns1Xz4p0Zrch
 LUyQ11B+FHUhBNG1DpdOGDrnhFZgF9QZa+lNv5sT0nP1G8GxbyQtL/tMCqndMOFtiClY
 dTBQ83ID8YOM4beOcx3Mf9aoDz9U0L4fnRzOZJNB0lNkkcneG1phd3W+H9OBU4qIG6Ld
 0VoxlwcNH4lOl2eRjwQnR9ispuMH/t+TCzwptJ2L3BJspAbdMUksqpjwHF32VjQIecmf
 Y7v90Drmz/m0QCajyZUHUefptg4/PkTb9esFRMteE5cj2INWvKkbWSyo/HwNp86feils
 bJrg==
X-Gm-Message-State: AGi0PubwtJ6lmFkIojNgr7MDSRTL+nlUp9V7ubwOKlub6tWRaCX9QfQa
 DhU+tPMl5bRRBH769rxQrbA=
X-Google-Smtp-Source: APiQypKM/LXleIlMD+jgyvadAcE5+hCHSkKJPgy7DKl3nf8so7RrsI3ytrH2ncjwWK8OegXzmAod/Q==
X-Received: by 2002:a1c:2383:: with SMTP id j125mr24250659wmj.6.1587971891138; 
 Mon, 27 Apr 2020 00:18:11 -0700 (PDT)
Received: from localhost (p2E5BEDBA.dip0.t-ipconnect.de. [46.91.237.186])
 by smtp.gmail.com with ESMTPSA id s12sm13721240wmc.7.2020.04.27.00.18.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 00:18:09 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:18:00 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [TEGRA194_CPUFREQ Patch 1/3] firmware: tegra: adding function to
 get BPMP data
Message-ID: <20200427071800.GA3451400@ulmo>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <20191203174229.GA1721849@ulmo>
 <9404232d-84ce-a117-89dd-f2d8de80993e@kapsi.fi>
 <20191204091703.d32to5omdm3eynon@vireshk-i7>
 <20191204093339.GA2784830@ulmo>
 <20191204095138.rrul5vxnkprfwmku@vireshk-i7>
 <20200407100520.GA1720957@ulmo>
MIME-Version: 1.0
In-Reply-To: <20200407100520.GA1720957@ulmo>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_001812_898475_D28AA7C9 
X-CRM114-Status: GOOD (  32.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Mikko Perttunen <cyndis@kapsi.fi>,
 linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com, talho@nvidia.com,
 bbasu@nvidia.com, linux-tegra@vger.kernel.org, Sumit Gupta <sumitg@nvidia.com>,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6845546393165262880=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6845546393165262880==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 07, 2020 at 12:05:20PM +0200, Thierry Reding wrote:
> On Wed, Dec 04, 2019 at 03:21:38PM +0530, Viresh Kumar wrote:
> > On 04-12-19, 10:33, Thierry Reding wrote:
> > > Yeah, the code that registers this device is in drivers/base/cpu.c in
> > > register_cpu(). It even retrieves the device tree node for the CPU fr=
om
> > > device tree and stores it in cpu->dev.of_node, so we should be able to
> > > just pass &cpu->dev to tegra_bpmp_get() in order to retrieve a refere=
nce
> > > to the BPMP.
> > >=20
> > > That said, I'm wondering if perhaps we could just add a compatible
> > > string to the /cpus node for cases like this where we don't have an
> > > actual device representing the CPU complex. There are a number of CPU
> > > frequency drivers that register dummy devices just so that they have
> > > something to bind a driver to.
> > >=20
> > > If we allow the /cpus node to represent the CPU complex (if no other
> > > "device" does that yet), we can add a compatible string and have the
> > > cpufreq driver match on that.
> > >=20
> > > Of course this would be slightly difficult to retrofit into existing
> > > drivers because they'd need to remain backwards compatible with exist=
ing
> > > device trees. But it would allow future drivers to do this a little m=
ore
> > > elegantly. For some SoCs this may not matter, but especially once you
> > > start depending on additional resources this would come in handy.
> > >=20
> > > Adding Rob and the device tree mailing list for feedback on this idea.
> >=20
> > Took some time to find this thread, but something around this was
> > suggested by Rafael earlier.
> >=20
> > https://lore.kernel.org/lkml/8139001.Q4eV8YG1Il@vostro.rjw.lan/
>=20
> I gave this a try and came up with the following:
>=20
> --- >8 ---
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/d=
ts/nvidia/tegra194.dtsi
> index f4ede86e32b4..e4462f95f0b3 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> @@ -1764,6 +1764,9 @@ bpmp_thermal: thermal {
>  	};
> =20
>  	cpus {
> +		compatible =3D "nvidia,tegra194-ccplex";
> +		nvidia,bpmp =3D <&bpmp>;
> +
>  		#address-cells =3D <1>;
>  		#size-cells =3D <0>;
> =20
> --- >8 ---
>=20
> Now I can do something rougly like this, although I have a more complete
> patch locally that also gets rid of all the global variables because we
> now actually have a struct platform_device that we can anchor everything
> at:
>=20
> --- >8 ---
> static const struct of_device_id tegra194_cpufreq_of_match[] =3D {
> 	{ .compatible =3D "nvidia,tegra194-ccplex", },
> 	{ /* sentinel */ }
> };
> MODULE_DEVICE_TABLE(of, tegra194_cpufreq_of_match);
>=20
> static struct platform_driver tegra194_ccplex_driver =3D {
> 	.driver =3D {
> 		.name =3D "tegra194-cpufreq",
> 		.of_match_table =3D tegra194_cpufreq_of_match,
> 	},
> 	.probe =3D tegra194_cpufreq_probe,
> 	.remove =3D tegra194_cpufreq_remove,
> };
> module_platform_driver(tegra194_ccplex_driver);
> --- >8 ---
>=20
> I don't think that's exactly what Rafael (Cc'ed) had in mind, since the
> above thread seems to have mostly talked about binding a driver to each
> individual CPU.
>=20
> But this seems a lot better than having to instantiate a device from
> scratch just so that a driver can bind to it and it allows additional
> properties to be associated with the CCPLEX device.
>=20
> Rob, any thoughts on this from a device tree point of view? The /cpus
> bindings don't mention the compatible property, but there doesn't seem
> to be anything in the bindings that would prohibit its use.
>=20
> If we can agree on that, I can forward my local changes to Sumit for
> inclusion or reference.

Rob, do you see any reason why we shouldn't be able to use a compatible
string in the /cpus node for devices such as Tegra194 where there is no
dedicated hardware block for the CCPLEX?

Thierry

--r5Pyd7+fXNt84Ff3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6mhyUACgkQ3SOs138+
s6E+QhAApPHiPfSUuUkQgv2VAlF2+HUgVeHwtL5RjQhzcO2s/kaj5v9Cu2xSRvLh
GMg4cEYg8NBv4wDXxtm/OVf4+S5BKs1pX0vyM1xMhiUWgwAPTfkIxoQFmxUCoJUj
LAvCrk1kgGI3dOUdLNoAJh78o6J/OsNbCMlhi2q80RWYnJ9ckrqt6SsTmeHoegKb
9ftQoIfO4amqE56unSmbGL3/ebn3UbqM7JSuPe3LZNj5vxGz9Rz9l8DD6Oz+kVXq
E50KsubpwNUovQfJaBBN+63uLbTKbPtYSPoABTUG2N2KoY/q5vCgoeykCJu00LD1
yCZAJC+nG+paY+N29gUkfKloj249xu86thaRf7i0lVNWSgLkcB9Jc4T0aFdriBE/
wZHOJn39TpeHlok8IKuH5WHbwN4psYT9mXKrfDf2ZyQEytl+llD16oedc6QdcWhd
Qxrtfx6oa1hcKNPsngIukOAe8pzO438/AXpadny5aO9wMYpzZyjfsiCLpSKw+yBR
LuR2nPripZLEeIiD1uQZTnPJkMoCnEUgrxgAXbYqsJKScso3bTJDJgGbl3tW87cF
XR3ZZzMNsfQ9emD8/ps0P1x825v9m6kkL36eoS9A9ueXG/lMJQhQBuK/6l8HjHGd
vnFCTI6FVTQVgMNDJrero/MX4rqFeBc1WBE2pC0iGx0LIntAQSU=
=U6Hg
-----END PGP SIGNATURE-----

--r5Pyd7+fXNt84Ff3--


--===============6845546393165262880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6845546393165262880==--

