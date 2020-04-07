Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2231A0AC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 12:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pvn9hx7dXEaIxil9/+Pquss1LPAC5PwFLe7+RNjg7Yo=; b=IttLxnP4C31LYwffBsxGvfYTZ
	+UKhBhaarBcxMdxqmioc78bwh4UEKlliqIx8NridPwlaW2nQktddcuZIOuHK9FXF6+qD5sPK+U6eo
	17Fcde0gDy7N/n2MMFDxbZwbsEUV9QU5gHHNiJHWYK55bi8ufINWqJX7vbo0HtWf6xpRmGaLIXni5
	LelELHnmB08JiZmditx1noAG05NpSfO3PbGN+ivqFCkdIJ0t771DzzuEy63DuxLQRnoYtZ9kSk00J
	lte6XZ5bcmHlnBONfNl1YwIUv19uTUdzYArFj8LmSrtYFoneNYv0s1T+3FvAyA92nk7/10ESsu8M3
	J1XHs/g5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLl6p-000352-Iw; Tue, 07 Apr 2020 10:05:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLl6i-00034E-Tb
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 10:05:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so3156307wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 03:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WWziHtBi4oc9djsFaUX7XQ3VCEDyA2EhaftZG+vRTmU=;
 b=DDJtqM0ZmFRZgkoIfjqJdHl3jmIlVS6XZRWpAl1W640TYYwj0oq1aQCqr6ap3+oXJP
 Kc+CTP22W4kFz075wcNPlgXk3WIA2OC06cMHalq/pNM3NkOSxpXQJHnnIN1T0e/TcL8b
 4Da9rKgxsLO+gXm78IdgUnGJbWWBCXW9qxF84EhqNYsncCFZnPXPDHTspg8A/EW5UqEd
 Usyjjklwodn/qRuRfGIsTsG2HS6JuC786EggwG53ZL5smZDXB+SnAHV4dGmsSadipRwI
 8BFWuNpzpawO5DCsGVwbrD+y2DF49Q0yGejQjO7XaC3xrXCP6EZ9DmrUO2haJJUgmaHo
 7RcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WWziHtBi4oc9djsFaUX7XQ3VCEDyA2EhaftZG+vRTmU=;
 b=jjjzBaHhdgDc9ZRQorzmjcWk2vuuF+xeZX6XuK2YPRXB27taz4uv1MbtaI+vAf+yfC
 bN4lAsB/k2DJOc7I6xdjQCK/5NCPinvu+FPOUcIocCoSW3D1Vpz1kaPfIRX3aZXPhSfL
 GU2Icx8Dcsv/h6gyJTvpBLvQocXhgEskhXgSMeN+tIpC1OqQlJ6TaV7LQERzF8HeV0T4
 CG1ZQJDifaRh6LpnQ5aMZ00GTOVAaH0wtM8iZV09dwJejDjc3dWUrz7zy/bN1SH5+03H
 s7dgXVG11ZmegmQnXYUpnvkti+vEgqPcop4HMJDNnfe+KNNFVlqbGXzVkDGDBJmtPmUk
 o2Mw==
X-Gm-Message-State: AGi0PuZxUawryALpg75Y18RJ/QzBY8HDbXDMd0D/wKhT/dz32m1IATFP
 SBd7aESWig+Xhqz2wrG55QE=
X-Google-Smtp-Source: APiQypKNqMTxJb7gtU/ZDGcNRW5WADi+fcwveFkxNyy/3NH2A8xr0eNmIy5j6DbGgVgXH5x924qrTQ==
X-Received: by 2002:adf:fe87:: with SMTP id l7mr1823086wrr.377.1586253922777; 
 Tue, 07 Apr 2020 03:05:22 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id i2sm30490830wrx.22.2020.04.07.03.05.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 03:05:21 -0700 (PDT)
Date: Tue, 7 Apr 2020 12:05:20 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [TEGRA194_CPUFREQ Patch 1/3] firmware: tegra: adding function to
 get BPMP data
Message-ID: <20200407100520.GA1720957@ulmo>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <20191203174229.GA1721849@ulmo>
 <9404232d-84ce-a117-89dd-f2d8de80993e@kapsi.fi>
 <20191204091703.d32to5omdm3eynon@vireshk-i7>
 <20191204093339.GA2784830@ulmo>
 <20191204095138.rrul5vxnkprfwmku@vireshk-i7>
MIME-Version: 1.0
In-Reply-To: <20191204095138.rrul5vxnkprfwmku@vireshk-i7>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_030524_955238_D9D300CB 
X-CRM114-Status: GOOD (  27.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============3367050883192153800=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3367050883192153800==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 04, 2019 at 03:21:38PM +0530, Viresh Kumar wrote:
> On 04-12-19, 10:33, Thierry Reding wrote:
> > Yeah, the code that registers this device is in drivers/base/cpu.c in
> > register_cpu(). It even retrieves the device tree node for the CPU from
> > device tree and stores it in cpu->dev.of_node, so we should be able to
> > just pass &cpu->dev to tegra_bpmp_get() in order to retrieve a reference
> > to the BPMP.
> >=20
> > That said, I'm wondering if perhaps we could just add a compatible
> > string to the /cpus node for cases like this where we don't have an
> > actual device representing the CPU complex. There are a number of CPU
> > frequency drivers that register dummy devices just so that they have
> > something to bind a driver to.
> >=20
> > If we allow the /cpus node to represent the CPU complex (if no other
> > "device" does that yet), we can add a compatible string and have the
> > cpufreq driver match on that.
> >=20
> > Of course this would be slightly difficult to retrofit into existing
> > drivers because they'd need to remain backwards compatible with existing
> > device trees. But it would allow future drivers to do this a little more
> > elegantly. For some SoCs this may not matter, but especially once you
> > start depending on additional resources this would come in handy.
> >=20
> > Adding Rob and the device tree mailing list for feedback on this idea.
>=20
> Took some time to find this thread, but something around this was
> suggested by Rafael earlier.
>=20
> https://lore.kernel.org/lkml/8139001.Q4eV8YG1Il@vostro.rjw.lan/

I gave this a try and came up with the following:

--- >8 ---
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts=
/nvidia/tegra194.dtsi
index f4ede86e32b4..e4462f95f0b3 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1764,6 +1764,9 @@ bpmp_thermal: thermal {
 	};
=20
 	cpus {
+		compatible =3D "nvidia,tegra194-ccplex";
+		nvidia,bpmp =3D <&bpmp>;
+
 		#address-cells =3D <1>;
 		#size-cells =3D <0>;
=20
--- >8 ---

Now I can do something rougly like this, although I have a more complete
patch locally that also gets rid of all the global variables because we
now actually have a struct platform_device that we can anchor everything
at:

--- >8 ---
static const struct of_device_id tegra194_cpufreq_of_match[] =3D {
	{ .compatible =3D "nvidia,tegra194-ccplex", },
	{ /* sentinel */ }
};
MODULE_DEVICE_TABLE(of, tegra194_cpufreq_of_match);

static struct platform_driver tegra194_ccplex_driver =3D {
	.driver =3D {
		.name =3D "tegra194-cpufreq",
		.of_match_table =3D tegra194_cpufreq_of_match,
	},
	.probe =3D tegra194_cpufreq_probe,
	.remove =3D tegra194_cpufreq_remove,
};
module_platform_driver(tegra194_ccplex_driver);
--- >8 ---

I don't think that's exactly what Rafael (Cc'ed) had in mind, since the
above thread seems to have mostly talked about binding a driver to each
individual CPU.

But this seems a lot better than having to instantiate a device from
scratch just so that a driver can bind to it and it allows additional
properties to be associated with the CCPLEX device.

Rob, any thoughts on this from a device tree point of view? The /cpus
bindings don't mention the compatible property, but there doesn't seem
to be anything in the bindings that would prohibit its use.

If we can agree on that, I can forward my local changes to Sumit for
inclusion or reference.

Thierry

--C7zPtVaVf+AK4Oqc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6MUF0ACgkQ3SOs138+
s6HaEQ/+PrLLpiP0PyCKw9EYMDnFCSTvnHIrXNeyiycSw3o6+KzTFZ/0H1gWoQQz
A9fdmSWvIO98e2aSMU6KwV+JN/AiOgYA9/oJG1hwKw6/M6z7hMrPeMntFgssE1EP
sGXeYATmFMuCWVqJ8j3+85eKeIAuwauCuf2JXEXBPYCIl/YWNbepLuhAXreDXfqk
rLtIJqDa5G4oCLshLkb1SR211kQM9uDX16EVLL1gc/gd7psSYqUMOxiVEGwMnL5t
h5y+JsMwp4M8CPM4Faq7dEbwKfXOhDJp+aZmMFcm5OEbwSZ7wSUdG3TgoYyEAqhs
O6PDf9IAR323R2Iz38VuwDIcus8arw4mRI7C6k1c+5Bz+mg9nTcbr2MkiDOvEsn7
PkII3xkaTsspdVCtFCIlyROHwVKtdjzyOcXS7t57cXyjrLatTtjCGw20889CzSjd
nTfT5MHCbeex/djcUYRi5Ewe0sT4KSGyud4DgMP9L+Tk87jRGhOUloW3g3DnNQg6
ucn72xKUFnVnlPFnkwXJucHnUdNSxC+FeTWk97Y96QpsdO47tNBNGMlejajIKWhO
p91cb7sD+IvYmCAK/UKtmC6n2rD50IphWxm4zJ2QIkyqsa5H3x2vFAI2CqGsefIa
JhsqKT+LsegNriVWHIFEZzBGj7WDOdvnD/tx12NLFcgyuGFlik8=
=emOZ
-----END PGP SIGNATURE-----

--C7zPtVaVf+AK4Oqc--


--===============3367050883192153800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3367050883192153800==--

