Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74747108923
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 08:26:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/cxqO56YCafuO2NKLsieDH72sTT/QQp6GIXP9T6MA74=; b=T8a7FMn+tqFjOAAWFEKi9LZh4
	q7uujuej5GXh9SQSoRku9r9ONRBYpIvP3Key2MpucMYmN1xOzUjr4s8B+BCtJrF/H65XvWBN0lqvT
	RNeW8du3SnpuSCHG/vAMsmEVdWtZtkkLZNHQ8UP7mzf3qnUzQZqvlavBY/Fmj8IWh1mA9KT4eFU7Q
	mpqZZbmg/jxQjZns/TvlxGSo925wuHeEwwDhCq9w1bHxpPGBioYYBc8JTWdKgGy9tp0e+/MPQOs7Y
	7FTEbIdSm3aAH+GXuD0SdmpB7Tw0rmVfTiX6bb1i3yzQhQgeFpHm0eyKIQLWoij3lHE3Xjzaw77j6
	yQbynhyGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ8kv-0006wk-3u; Mon, 25 Nov 2019 07:25:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ8km-0006wL-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 07:25:49 +0000
Received: by mail-wm1-x343.google.com with SMTP id y5so14601624wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 23:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MRKWdTT+o+DD9CSNp9mM+jEv8sBn8YtAK9/I5IqFqFw=;
 b=E04BB6dN4CoedKJaq/iFvhCXSPYOIohw0wy1TIvWnafr8w5QOmHOQIyfrvNIOijOlk
 s686VZGmpbqtb75f6LohPAFlwIBKveDfC9kwqrhvTCucO6g1NULt0uz4offVWbZ3+WOu
 S10RFtnN7D+aG8is/Qeeda5c6oAIiMqoNjTd2v9X4/AIPUn7KXXOoYVjaINb1pp2E3j3
 zCWoraiFQJeffWmdfSzdFPKcu70S0NV1HYgKVCLUbwwFI5imoywUJVsogtCNHghoE8yg
 6SIXzFvFjYy+EeW7Czxor2ILvq6IKqOPNmZc6Lo0F25aU5k+IntJuuhN2vR8qyk0fvIB
 BgVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MRKWdTT+o+DD9CSNp9mM+jEv8sBn8YtAK9/I5IqFqFw=;
 b=JUzSyv8JmRlhCtqFJkcYDu75WVauJwjx8tefzF+g7JAMjb75Bf1RKwDnbLVlpz6RLH
 H+g5p8rJ7LqHfuoap/DQvDj+5sUvgzxc6qshOWJRPdaVYepaUz1hHDoYL8+HaZkUbRKs
 XNeK0wwO3wYSGWpTaEv/DWQcyHu8LqNRET5/v4w4FW70qadNAPTG06b27OnBlUiyWR6i
 hwrsWSCEMXsA453svgIRbKBX5dj2grAxzjifkNM6Nh9L9KFll5hSvd/EbzgcAIyie0e0
 YA+PbOWbTIScF+4tYbTbQX6tsv1LiIa2vTWyhXZPXxBRUJNElsI5K4eeiQSPAebaJ9Pe
 poYg==
X-Gm-Message-State: APjAAAX8vlGAxaB4hrHmkkqU4ld2K8ZEi7UGvWdjKGu7Yd3veWsohyKj
 zJ4WpAueNYEG91Y1BiQJhGA=
X-Google-Smtp-Source: APXvYqwaUeNdQgy7pin0G7HB+fDvN+4g84RDoQxtgmtE4MeDIww7oauDaSpEEeDd+STiSrInJ6wbdQ==
X-Received: by 2002:a1c:f612:: with SMTP id w18mr28747225wmc.28.1574666745723; 
 Sun, 24 Nov 2019 23:25:45 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id 91sm9741804wrm.42.2019.11.24.23.25.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Nov 2019 23:25:44 -0800 (PST)
Date: Mon, 25 Nov 2019 08:25:42 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH 6/6] arm64: tegra: Add support for PCIe endpoint mode in
 P2972-0000 platform
Message-ID: <20191125072542.GC1409040@ulmo>
References: <20191122104505.8986-1-vidyas@nvidia.com>
 <20191122104505.8986-7-vidyas@nvidia.com>
 <20191122132533.GD1315704@ulmo>
 <e1e44c1c-c1ab-27dd-b3ac-a9ed878411a2@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <e1e44c1c-c1ab-27dd-b3ac-a9ed878411a2@nvidia.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_232548_237540_484E1B8D 
X-CRM114-Status: GOOD (  25.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============5944297928474728973=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5944297928474728973==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z4+8/lEcDcG5Ke9S"
Content-Disposition: inline


--z4+8/lEcDcG5Ke9S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 25, 2019 at 12:30:53PM +0530, Vidya Sagar wrote:
> On 11/22/2019 6:55 PM, Thierry Reding wrote:
> > On Fri, Nov 22, 2019 at 04:15:05PM +0530, Vidya Sagar wrote:
> > > Add endpoint mode support for PCIe C5 controller in P2972-0000 platfo=
rm
> > > with information about supplies, PHY, PERST GPIO and GPIO that contro=
ls
> > > PCIe reference clock coming from the host system.
> > >=20
> > > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > > ---
> > >   .../boot/dts/nvidia/tegra194-p2972-0000.dts   | 29 ++++++++++++++++=
+++
> > >   1 file changed, 29 insertions(+)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arc=
h/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> > > index 7eb64b816e08..58c3a9677bc8 100644
> > > --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> > > +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> > > @@ -43,6 +43,19 @@
> > >   		gpio@c2f0000 {
> > >   			status =3D "okay";
> > > +			/*
> > > +			 * Change the below node's status to 'okay' when
> > > +			 * PCIe C5 controller is enabled to operate in endpoint
> > > +			 * to allow REFCLK from the host system to flow into
> > > +			 * the controller.
> > > +			 */
> > > +			pex-refclk-sel-high {
> > > +				gpio-hog;
> > > +				output-high;
> > > +				gpios =3D <TEGRA194_AON_GPIO(AA, 5) 0>;
> > > +				label =3D "pex_refclk_sel_high";
> > > +				status =3D "disabled";
> > > +			};
> >=20
> > Why don't we put this into the PCIe controller's node as a reference to
> > that GPIO? Seems like the controller would know exactly when this pin
> > needs to go high or low, so why does it have to be a hog?
> >=20
> > Thierry
> Are you saying something like 'nvidia,enable-refclk-in'?
> I was thinking, since this is like a board level configuration specific t=
o Jetson-Xavier,
> it would suffice to just hog it according to the mode of operation of PCI=
e controller.
> But, I see one advantage of referencing it in the PCIe node (so that the =
driver can configure
> it as and when needed) is that one has to be careful just to enable eithe=
r PCIe RP or EP
> node and not worry about other thing (like this).
> Let me know if I got this right.

Yeah, that's exactly why I think referencing this from the controller
and controlling it in the driver is preferable.

If this is some sort of select signal I think it makes sense to name it
"nvidia,refclk-select-gpios" or something. Does this appear in the
schematic somewhere? Or does the IP have a name for this? Those are
usually good places to look for inspiration on the name because it's
what hardware designers will be familiar with and they are technically
the ones who should write the DT, even if that's rarely the case.

Thierry

>=20
> - Vidya Sagar
>=20
> >=20
> > >   		};
> > >   		pwm@c340000 {
> > > @@ -144,6 +157,22 @@
> > >   			    "p2u-5", "p2u-6", "p2u-7";
> > >   	};
> > > +	pcie_ep@141a0000 {
> > > +		status =3D "disabled";
> > > +
> > > +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> > > +
> > > +		nvidia,pex-rst-gpio =3D <&gpio TEGRA194_MAIN_GPIO(GG, 1)
> > > +					GPIO_ACTIVE_LOW>;
> > > +
> > > +		phys =3D <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
> > > +		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
> > > +		       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
> > > +
> > > +		phy-names =3D "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
> > > +			    "p2u-5", "p2u-6", "p2u-7";
> > > +	};
> > > +
> > >   	fan: fan {
> > >   		compatible =3D "pwm-fan";
> > >   		pwms =3D <&pwm4 0 45334>;
> > > --=20
> > > 2.17.1
> > >=20
>=20

--z4+8/lEcDcG5Ke9S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3bgfMACgkQ3SOs138+
s6EXpA//Vf94QkU0m4v0u3GfWabPSf4ibYaD7lAL17j41siLQqsFsLLqPrezP11W
xE7ZzRyUr/S9+l5WnPFkraFd5omrEmYIx6FYXJ2vdei6AomirGpmPTQYwthEztVB
o0r7qpnpfLrCz1qqOieUdlOTuaWdf6JWwGQOVJK/b8ZafA25DqLJH0vvawlp+8r6
g7GRtbMDk6JRy5OOS01wvybB06m5D7GShlIIqY51S7Mrm5QA8QGARb+c1dShrmag
mzw/HeNJNPH5db3Cl0Vbxhb8qSeJiqxl/b03yKu1RMmNcXmnZENR121LyIb7YsTz
0YmJIu2qAVa4OGrQZXszIfD1tBturQHol55TuVbLxKQQFtuVPmNAFCb9fSA0xGak
+wLO8LLzGPxdKwqq/gBvhebGp2Bpz6d81TiLPaKFGkYhGsBG168EMUYeKsMha9ef
C+q1Ja+3xQvyvPrHyjCb0jEp2+hzocPWgTaT3sqzAdsWNRL6Fmd6okut1UmCTs0C
LfnF5AcUit6p21oz896dSmNSkdk4t9mlLSaZaULF9duBKrhR21305lYfAqJjZ9S0
DikhRMUN+wY0Cp+omFrq59c+XzpA+pU1TndYR2SULHQMlNN0h3twl0v+kfT6EyMd
3zLBPfVMk6zYZpkxYfQxYulzFNds/nJfZlgxrx9XHw/9rl8knMU=
=qGH2
-----END PGP SIGNATURE-----

--z4+8/lEcDcG5Ke9S--


--===============5944297928474728973==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5944297928474728973==--

