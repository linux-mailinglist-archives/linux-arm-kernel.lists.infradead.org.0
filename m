Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0751C774A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 18:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SCQb+66p1+xf1OFwmCuWgo4jqtqM+P3G3qBrQSuL3oE=; b=dJ/6jdcyUJbsvREJCp4k7zkjL
	J+o7W6SEd35u0FrLIxGjh3tkgs4xo7E+cXWUhmT+cMQFCzc+CKicz5JYFGy5eSCPrHKPUkvhCj5n4
	YTQ9PAW6dzrowbtOy0J6zxaaqItRfYcZZBo19hTo+U06cUvpGza0M3gCxNVHLk57lL8MCNQdmqns0
	1THequa0XjhT9yq6/9Wic12jb1jN6CwcNWEv/znVm8SNIljXwM3kDsCjg9k4spvCsMlqZG6MKHsT8
	v3v4/oBmJza0UIgwqpXtQciP/AnOJP+dOZko9519vGSQAhygwIDU76gY/yPIJC3Gwf/Fa/Sc/E7jy
	bEG8wxUyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNNf-0005NS-1R; Wed, 06 May 2020 16:58:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWNNV-0005Ly-Jr
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 16:58:39 +0000
Received: by mail-wm1-x342.google.com with SMTP id u16so3538958wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 09:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=urL/1Hl7CbQz1tvWJVXBDZwwE0k+bC9CyG/pLzAD9eY=;
 b=n4ITJP8ZUmskRYarZpj4We/HSjgI/T0Hg9NqtQwemLwUNJVGtEKpWyCyCTp1JMhzQh
 sUs5YCX/fPYV0E4aDGpKnBg3LUKq/lpro2RImH9LrwMIO/vQnundwo84smYOpH8b2Bll
 UpYdAtyetbFM3nd9p4PwYvIUqay9wFG/oBUaY6v2jmHSzGu82RYkuOi3Z7Yuwduvgkvr
 sSKy8B7jfObi65qrK4fWP2YP5cANwiWkDBKhmALtBdfJqeq9Ej5dNDE+cKe9eIGyyEkt
 oE5oVjtEFr5prUat//7+XyuWae2oXYL7JsF+NQJCwBXjKqbzj8sofzwWLoPEMIWN5rsd
 7C7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=urL/1Hl7CbQz1tvWJVXBDZwwE0k+bC9CyG/pLzAD9eY=;
 b=R0hKuBX7H6LhXRocmieCGYIAeJLEplmg4Pc3ay4GJqISg7JvZahio4Za+XQ7BlMoY1
 ilRlpd2UjnKv/ndfUgVx1HVEMT8+n6vvEJsePtyYha90BqTQfjPvMnjmcrTQ19UVt7BC
 rRlWjhKoSzumTWHny1/ZXEsijyxuv0nq0sQ3hcBGlnkDaxXveWzspa+v8VmNF1ExiWOP
 bgySsCbg2ETOZIZLg6Pfq8o1oOmQhCMe0hM20fQP1ZoPobXtfxTYQJTuLU5j/vGiyZcw
 Oqv0yL1C4Hkis95ddPhqzzfasPbn5bmb8ORCbTiFrb3wKlovMJeAvqrEfUpFkRSdwwHP
 jeFQ==
X-Gm-Message-State: AGi0PubEk9AR1jZ0NtwbB0BRz14z7/k+AiE9vgJBdgt9hxG+Cq/IVs5U
 b3mZeGueIFiiXmDOi/wtqq0=
X-Google-Smtp-Source: APiQypLL8NcQW71SlaZlZM66Xm2JGhE9FIsxnUUClaZ7Wp7fOFdRjERSk9KK8D941iPG5yUy/53sng==
X-Received: by 2002:a1c:a4c2:: with SMTP id n185mr5853495wme.104.1588784313927; 
 Wed, 06 May 2020 09:58:33 -0700 (PDT)
Received: from localhost (p2E5BE57B.dip0.t-ipconnect.de. [46.91.229.123])
 by smtp.gmail.com with ESMTPSA id l16sm3551225wrp.91.2020.05.06.09.58.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 09:58:32 -0700 (PDT)
Date: Wed, 6 May 2020 18:58:31 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [TEGRA194_CPUFREQ Patch 1/3] firmware: tegra: adding function to
 get BPMP data
Message-ID: <20200506165831.GD2723987@ulmo>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <20191203174229.GA1721849@ulmo>
 <9404232d-84ce-a117-89dd-f2d8de80993e@kapsi.fi>
 <20191204091703.d32to5omdm3eynon@vireshk-i7>
 <20191204093339.GA2784830@ulmo>
 <20191204095138.rrul5vxnkprfwmku@vireshk-i7>
 <20200407100520.GA1720957@ulmo> <20200427071800.GA3451400@ulmo>
MIME-Version: 1.0
In-Reply-To: <20200427071800.GA3451400@ulmo>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_095837_660711_CFDF62CB 
X-CRM114-Status: GOOD (  35.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============5351750913353164060=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5351750913353164060==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mJm6k4Vb/yFcL9ZU"
Content-Disposition: inline


--mJm6k4Vb/yFcL9ZU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 27, 2020 at 09:18:00AM +0200, Thierry Reding wrote:
> On Tue, Apr 07, 2020 at 12:05:20PM +0200, Thierry Reding wrote:
> > On Wed, Dec 04, 2019 at 03:21:38PM +0530, Viresh Kumar wrote:
> > > On 04-12-19, 10:33, Thierry Reding wrote:
> > > > Yeah, the code that registers this device is in drivers/base/cpu.c =
in
> > > > register_cpu(). It even retrieves the device tree node for the CPU =
=66rom
> > > > device tree and stores it in cpu->dev.of_node, so we should be able=
 to
> > > > just pass &cpu->dev to tegra_bpmp_get() in order to retrieve a refe=
rence
> > > > to the BPMP.
> > > >=20
> > > > That said, I'm wondering if perhaps we could just add a compatible
> > > > string to the /cpus node for cases like this where we don't have an
> > > > actual device representing the CPU complex. There are a number of C=
PU
> > > > frequency drivers that register dummy devices just so that they have
> > > > something to bind a driver to.
> > > >=20
> > > > If we allow the /cpus node to represent the CPU complex (if no other
> > > > "device" does that yet), we can add a compatible string and have the
> > > > cpufreq driver match on that.
> > > >=20
> > > > Of course this would be slightly difficult to retrofit into existing
> > > > drivers because they'd need to remain backwards compatible with exi=
sting
> > > > device trees. But it would allow future drivers to do this a little=
 more
> > > > elegantly. For some SoCs this may not matter, but especially once y=
ou
> > > > start depending on additional resources this would come in handy.
> > > >=20
> > > > Adding Rob and the device tree mailing list for feedback on this id=
ea.
> > >=20
> > > Took some time to find this thread, but something around this was
> > > suggested by Rafael earlier.
> > >=20
> > > https://lore.kernel.org/lkml/8139001.Q4eV8YG1Il@vostro.rjw.lan/
> >=20
> > I gave this a try and came up with the following:
> >=20
> > --- >8 ---
> > diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot=
/dts/nvidia/tegra194.dtsi
> > index f4ede86e32b4..e4462f95f0b3 100644
> > --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> > +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> > @@ -1764,6 +1764,9 @@ bpmp_thermal: thermal {
> >  	};
> > =20
> >  	cpus {
> > +		compatible =3D "nvidia,tegra194-ccplex";
> > +		nvidia,bpmp =3D <&bpmp>;
> > +
> >  		#address-cells =3D <1>;
> >  		#size-cells =3D <0>;
> > =20
> > --- >8 ---
> >=20
> > Now I can do something rougly like this, although I have a more complete
> > patch locally that also gets rid of all the global variables because we
> > now actually have a struct platform_device that we can anchor everything
> > at:
> >=20
> > --- >8 ---
> > static const struct of_device_id tegra194_cpufreq_of_match[] =3D {
> > 	{ .compatible =3D "nvidia,tegra194-ccplex", },
> > 	{ /* sentinel */ }
> > };
> > MODULE_DEVICE_TABLE(of, tegra194_cpufreq_of_match);
> >=20
> > static struct platform_driver tegra194_ccplex_driver =3D {
> > 	.driver =3D {
> > 		.name =3D "tegra194-cpufreq",
> > 		.of_match_table =3D tegra194_cpufreq_of_match,
> > 	},
> > 	.probe =3D tegra194_cpufreq_probe,
> > 	.remove =3D tegra194_cpufreq_remove,
> > };
> > module_platform_driver(tegra194_ccplex_driver);
> > --- >8 ---
> >=20
> > I don't think that's exactly what Rafael (Cc'ed) had in mind, since the
> > above thread seems to have mostly talked about binding a driver to each
> > individual CPU.
> >=20
> > But this seems a lot better than having to instantiate a device from
> > scratch just so that a driver can bind to it and it allows additional
> > properties to be associated with the CCPLEX device.
> >=20
> > Rob, any thoughts on this from a device tree point of view? The /cpus
> > bindings don't mention the compatible property, but there doesn't seem
> > to be anything in the bindings that would prohibit its use.
> >=20
> > If we can agree on that, I can forward my local changes to Sumit for
> > inclusion or reference.
>=20
> Rob, do you see any reason why we shouldn't be able to use a compatible
> string in the /cpus node for devices such as Tegra194 where there is no
> dedicated hardware block for the CCPLEX?

Rob, can you take a brief look and provide some feedback on this? I'd
like to get this merged for v5.8 and where to instantiate this is the
only thing holding this up at this point.

Thanks,
Thierry

--mJm6k4Vb/yFcL9ZU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6y7LQACgkQ3SOs138+
s6H8fhAAsblr+qgCiB7yS180H3p6InsOYHfDulKJs1Q5JgPntHbYFHnkkOY8ciHS
3FYgPS7F1UEbIq3hSKsd9W/eEaAEPI9wCah03JEUQwhICaIJRDjyT8ZRN4hNxtDW
DBI0TfsGIz+DwjbNkfYdjoSzACDUKtq4ROeJxo2qIUdAwNxlQ5c0coSma3EgPocA
AUwQ2dn+26tXF6ghTdmwT30rrXAHsZ8mMAawS0FmFgXIQhRrRTTmoMz+Khi8H8/I
UfKmF5wHXnWRGMViKrlotwr5imKryi5IWHjTTgppCNHHWZXqRVgfjz1d8VIMxSrd
hPchNhx+kE43wsf030h2TAhmdQ4YONqRCthET4UmAcK2H+OzOIpwdb9ukJxx0NxU
5EGuPpOGeZc8pIkWtGt9tbKmxUf4CijBbc01FbTXAnX6oVl12MnXu2QiyMXNh9qM
AEyuxG0cbKDDSVDqnjqiZtsBiicNnsR3aZE/bKLWA3ZaoloqKJTKM/c1k0WV/ea8
OPE5lmwoEJCtIL2I/TYKaOexVYuXcO2JjLNVhJ7gKbXB0CGblDygcvvKV/bbivSU
Osn/wiXGz8fen/IBfWGG5VAwXr79aMn89EJeKkUqXGMhJ+CW+Lk5XhA4WxGE/44/
POtwuKsO4lFKLthTmNkAwhy4zLnYTRJ769DSUzNdpaRs1h4+lcU=
=frvo
-----END PGP SIGNATURE-----

--mJm6k4Vb/yFcL9ZU--


--===============5351750913353164060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5351750913353164060==--

