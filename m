Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E5E1A872E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AO3pkGwcs9HmO7HOEWCVUDSpo8ksX+KAecDD+jeyY2o=; b=MPlRofI/mEA+ifaHfOJPnpmUd
	05nmlmUWIe6fYmbBBQTyCMapASMJOu6kxeEG8R6PKiKw6/LlC8N4vHl0/O+422OufSG45DbXZSUXc
	xfiFkqESLoAJiGiAGp4mxsjREOh8Esvm8W8thQBLLq+uDTrFTWizdoI8SgnDI6dJALny3Ke96OUvM
	9x+NA8e4sKmyB0y/EIlujWOx1cbYw0wmC9E+NbkOLQTt4ERKp3CqhF68KkF4fXetxG2BRfeew9Jkm
	eq9vQVwEkwt9xS1pamd4JBICQ+QF/clUbt7jCfle2rmT8YMDSz33xbK8SRRSajVtbaV1ZvZ/j4wZd
	m8PkiLObw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP7P-0005ri-I2; Tue, 14 Apr 2020 17:13:03 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOP4s-0003xN-IK
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:10:29 +0000
Received: by mail-wm1-x343.google.com with SMTP id r26so14990671wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bu1W45bcgQFVSHHvrZnu1OhprTvQ/cBAqXoUBxCGTks=;
 b=JKeaJsx/IVZ0S/IqlJRc6hZ/M5bhRIbOkZXhcYLqG96PL7JNdXqqM6J7cmtwsfJUjz
 2m3rgZAtofnVHEErj8K9XEzwJaavr9k/lh+oTZuUXb5WrMsNaMC00vCA4lPuhwP4vCem
 yvdbXE3Zk5iHyH9tRgyBV+tE34mmXpJ7LMjNDWlggVq27f4X7QrQzBAFMU8M3HAZ9Ehf
 u6KKtlH3pSE27PlfOZf4j9uGZN1G8VHjKdiHfDG0S9jEg/qKzgdwK04yBtV8OkWcn2FS
 oDQxLtjWyyK414Qpu6JrxM9sbYv2UqTVsnSHye5LFKmnl0KqoQbkpbFrsxJVXIViQ0vO
 6yaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bu1W45bcgQFVSHHvrZnu1OhprTvQ/cBAqXoUBxCGTks=;
 b=KBaHoZKylZACdaTWz95l/AYVP7TOg6rw3k2WXYRQrNCNNbIYIPWrAXowm84d2O5OpW
 dHIBv0uiOFNBCsuIFy5qBM+NAvRBZ4UsurOVLObzpL35DxT47Ru5+F87hEb5rJPpK+MW
 X0qOP4Gdij4y8ZkxsN2cfRh94Ab6DL7RcIYoLbJ/zuKcmyi5E82OfbIxBQAA87l+MczY
 2o3tTtZmV5D8SANlQOkNccBAGIhmIt8ipiU9VC+iobYqiBdGkg/0U39BA17a19yb0O0F
 913D5mclGGib80evgre8dgVeNyu9aGWgawzgK5lgHkkPysfnRbUPSNPQU+7Vu07h5mTS
 GOzA==
X-Gm-Message-State: AGi0PuZM6hiEhVkT1DvUA6A3p3FWEnt6Buv++Hjpu7zJqU2vNfFEQcDF
 AXV0KuOWTIaSGJKBEEzJjGQ=
X-Google-Smtp-Source: APiQypI+KQxMP3i3+MDgFxrK5E1p7XsqlGmODv79VinHxIAjnqkas/fyHZzHEec9cQybaQtmap7HBw==
X-Received: by 2002:a1c:9aca:: with SMTP id c193mr805632wme.38.1586884212134; 
 Tue, 14 Apr 2020 10:10:12 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id o28sm5240239wra.84.2020.04.14.10.10.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:10:10 -0700 (PDT)
Date: Tue, 14 Apr 2020 19:10:10 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 07/14] clk: tegra: Implement Tegra210 EMC clock
Message-ID: <20200414171010.GB15932@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-8-thierry.reding@gmail.com>
 <8dc000fb-8867-cf8f-8204-a9e1e79a4811@gmail.com>
 <20200414143424.GG3593749@ulmo>
 <92eb73ba-73e4-f9f1-bb22-9b515e32cee6@gmail.com>
MIME-Version: 1.0
In-Reply-To: <92eb73ba-73e4-f9f1-bb22-9b515e32cee6@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_101026_750980_85FC6AB9 
X-CRM114-Status: GOOD (  33.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1332114155711446600=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1332114155711446600==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Bn2rw/3z4jIqBvZU"
Content-Disposition: inline


--Bn2rw/3z4jIqBvZU
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 14, 2020 at 06:18:29PM +0300, Dmitry Osipenko wrote:
> 14.04.2020 17:34, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > On Thu, Apr 09, 2020 at 09:24:31PM +0300, Dmitry Osipenko wrote:
> >> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> >> ...
> >>> +static long tegra210_clk_emc_round_rate(struct clk_hw *hw, unsigned =
long rate,
> >>> +					unsigned long *prate)
> >>> +{
> >>> +	struct tegra210_clk_emc *emc =3D to_tegra210_clk_emc(hw);
> >>> +	struct tegra210_clk_emc_provider *provider =3D emc->provider;
> >>> +	unsigned int i;
> >>> +
> >>> +	if (!provider || !provider->configs || provider->num_configs =3D=3D=
 0)
> >>> +		return clk_hw_get_rate(hw);
> >>
> >> This still looks wrong to me. Nobody should be able to get EMC clock
> >> until provider is registered.
> >=20
> > The EMC clock is mostly orthogonal to the provider. The provider really
> > only allows you to actually change the frequency. The clock will still
> > remain even if the provider goes away, it just will loose the ability to
> > change rate.
>=20
> It's not only about changing the clock rate, but also about rounding the
> rate and etc.

The code will currently just return the configured rate when no provider
is available. It's going to always round to that one rate and it will
refuse to set another one. The EMC clock is basically going to function
as a fixed clock while no provider is attached.

> Besides, you won't be able to change the rate until provider is
> registered, which might be a quite big problem by itself.

Until the provider is registered, there's just no way to change the
rate. You always need to write MC and EMC registers in order to change
the rate, so trying to change it when the MC/EMC drivers aren't
available isn't going to work.

> >> This is troublesome, especially given that you're allowing the EMC
> >> driver to be compiled as a loadable module. For example, this won't wo=
rk
> >> with the current ACTMON driver because it builds OPP table based on the
> >> clk-rate rounding during the driver's probe, so it won't be able to do
> >> it properly if provider is "temporarily" missing.
> >>
> >> ... I think that in a longer run we should stop manually building the
> >> ACTMON's OPP table and instead define a proper OPP table (per-HW Speedo
> >> ID, with voltages) in a device-tree. But this is just a vague plans for
> >> the future for now.
> >=20
> > This code only applies to Tegra210 and we don't currently support ACTMON
> > on Tegra210. I'm also not sure we'll ever do because using interconnects
> > to describe paths to system memory and then using ICC requests for each
> > driver to submit memory bandwidth requests seems like a better way of
> > dealing with this problem than using ACTMON to monitor activity because
> > that only allows you to react, whereas we really want to be able to
> > allocate memory bandwidth upfront.
>=20
> You absolutely have to have the ACTMON support if you want to provide a
> good user experience because interconnect won't take into account the
> dynamic CPU memory traffic. Without ACTMON support CPU will turn into a
> "turtle" if memory runs on a lowest freq, while CPU needs the highest.

Can we not guess a bandwidth based on the CPU frequency? Yes, that's
perhaps going to be an overestimation if the CPU doesn't actually access
memory, but that's better than nothing at all.

Also, at this point I'm less worried about power consumption rather than
making Tegra210 devices perform useful tasks. Yes, eventually we'll want
to fine-tune power consumption, but it's going to take a bit of work to
get there. In the meantime, giving people a way to set an EMC frequency
other than that set on boot is going to make them very happy.

> Secondly, the interconnect could underestimate the memory BW requirement
> because memory performance depends quite a lot on the memory-accessing
> patterns and it's not possible to predict it properly. Otherwise you may
> need to always overestimate the BW, which perhaps is not what anyone
> would really want to have.

Overestimating might be a good starting point, though. At this point I'm
mostly concerned about being able to change the memory frequency at all
because many systems are mostly unusable at the boot EMC frequency.

Like I said, if ACTMON really does prove to be useful I'm all for adding
support on Tegra210, but I don't think trying to do everything all at
once is a very good plan. So I'm trying to get there in incremental
steps.

> I'm not sure why you're resisting to do it all properly from the start,
> it looks to me that it will take you just a few lines of code (like in a
> case of the T20/30 EMC).

I'm not trying to resist anything. I'm just saying that all of the
issues that you're bringing up aren't an immediate concern.

My main concerns right now are to: a) allow people to change the EMC
frequency (and hopefully soon also allow the EMC frequency to be changed
based on bandwidth demands by memory client drivers) and b) not bloat
the kernel more than it has to (while my configuration isn't tweaked,
it's pretty standard and the resulting image is roughly 20 MiB; adding
the Tegra210 EMC driver adds another 64 KiB).

And if we really do want to add ACTMON support later on, you already
suggested a better way of moving forward, so it sounds to me like that
would be a nice incremental improvement, certainly much better than
bloating the kernel even further by requiring this to be built-in and
preventing it from being unloaded.

Thierry

--Bn2rw/3z4jIqBvZU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6V7m4ACgkQ3SOs138+
s6Em4w/9FNIpaqlBNPaffejDRoFi8gSCtTpS700LImB1P8xffbHSrrAGNzhnUN6h
NK9mJp5ZtIxNawa+OgVyTqLMBvEhLnlbqNXypj2v0KjMEnWldZNO0i6kZ0B74WDx
j3LHJyhnap8VZYdxGafGCn3mx91XRfmfkXpt/RXR4AFhBCh+tS6MLXm9oKYVElRq
vydnkirSA55jAZaLObaTfji9z+UdkjQQOXr8D49Ef4qfFPXTSCfCLGrrNCBV8RMb
AjbIRCNPsJ0JMb99wEc/3iR82MkLFOqQZ/W76iYFpKZjqzOgePoENndse6VFa710
E4lZ1iG/Mu+FT38tKDFpgfScTTJq8sGLdgPbCbIjDl2ltlX+JoM8qCuEvSrAQq9i
P1BTYXS7LR5n74BqMSB+s1TS9/KvDOe0rZb91JmrpSPrNZJsN0NKCZwJXrdftAQu
RL7HombQdmrSdmv9fqLK7JdDOaWr0K/2PyuUyX0Zd6SsdxtvpW6hZKye+Ca05QCe
N3lcZnJVAlSGGF/wcp6NkY1lXr9AtqTyJoXpHra0yu1QyCTZgqK0ZPJdVC4ot7/N
SOx0/tp2tWaMJr5xVud7JeUnrM5wgIMK09bOkE9Dsh3DM52EB5s2DgeE7cLCzuzL
JH0FgfsIyx9Fb+fwUnJmLoRvA/1uadd6LOZErg8nqtZyvFksA/M=
=XN3P
-----END PGP SIGNATURE-----

--Bn2rw/3z4jIqBvZU--


--===============1332114155711446600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1332114155711446600==--

