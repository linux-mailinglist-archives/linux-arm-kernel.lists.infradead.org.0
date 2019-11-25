Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F993108944
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 08:37:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ovbTGpZPVxu9LhAiIhgn8zXdxC/T7Fq5jPxvsfHKHkM=; b=qo+xvtxJtf/mYJtrcdu8jUpOd
	u8wGGeCKaY/RJOo5cT4cmBRlLd9z2PUJgTJ9T5wwPsGH+7E5wdy4p5Jr3W/jw1HXKJEJwUqQFs5ai
	IxNJtP73ztoA/McYf6YgzAMNEZFIr4qKrNoL/6pshG0fU9ROEg2DEcAFqqST7TAufTfl2oLT8KPHS
	owlZk2V1s8UmsyWKmHRIkGTz5ciSQMinv+FxL+iZeUcYg4O89FoM62MFOPx0AE/992Bx8EKXuuepO
	w51wNuJ7ndL5H10DxAbe+eswMnm5WMZrRl1YRS3fo9egXecka6sK0WOpBcnUwelZibA0mtawpdkr8
	GUGlEaJxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ8wJ-0002Mc-Mr; Mon, 25 Nov 2019 07:37:43 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ8w9-0002M9-Dw
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 07:37:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id n188so12688121wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 23:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=spOYPQyDQtuNEGLCHEbAJ7anyJ/giN6OPQ7cjoFVqtw=;
 b=nlDyDy1bfjSORe36KRrKoxyh1jVH/ihgGW13qb9uCsWsbbcz19LRcGrtkT9W5ZrMGC
 +tKS9Dfp38yKpBPgACnInVIxacpfJ7ZE/BeKArG7aP+efZgl4tVNCEr/vw5QIHCilJyl
 7dKaEmFVTIHK8+7GxoTp+kL2/c1aFO2UnhzCIOAifWtWdiQdeGC4X3CnVwqs53D9QZY+
 wjeaL2PUSLmyB1yGV2lXD60kolNTN/488gYgpjI+wSpZpYPrmCifNZezI5wdp+36jLwJ
 BBqQgu7uqTyZkW/TsFZRdd3V2IfGabSOnVOIyzH++cmlhDBLzGbmSZjfPkl17jbpOfyu
 NXtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=spOYPQyDQtuNEGLCHEbAJ7anyJ/giN6OPQ7cjoFVqtw=;
 b=FKjbgE3j++m10cVbTNYYLiSSrO7UfpNps/2fxD+vQ+guIqtQ9qW09h23AdcfSJpeAK
 i1JgYl8iS46twxBW7goZJPMQr2sjLZvelFvk0dekRqQk+pnEKLtZPfqxabcS+9DnyqSd
 FHDqX5rJvsIVF4C1onNzJLh7gE+1PEPRfTH3N++dTza7bCuXF5XTHXPbpHxKZrp1FtwS
 E0BROL4pj6qqUaMiShGhvnHJflEYWTcCABnULO4bbPLkMbLYh9t3PxkdmFDiD6JkhGOP
 y0DD5E52DvYy8uAxqxbW8PJ3ZwSNqA0ZYLLTaJuIYWIfcZhZeleIOMBFwWSepM3pERxg
 HtbA==
X-Gm-Message-State: APjAAAUuya6yn0YQeA6k5WfQc74SsgDm7QZfy+rLuY/sJrZA+yxdTW6K
 CBG3rLigGp8u5BLdWa1GEw4G3KYJD60=
X-Google-Smtp-Source: APXvYqxZwJODIeVnoLPKFmWYnHWUGAjusnjwrz98gdEmEHkkGT+LRb5niD1I0kDACqZ48rhUBncHpQ==
X-Received: by 2002:a1c:c906:: with SMTP id f6mr15652550wmb.14.1574667450845; 
 Sun, 24 Nov 2019 23:37:30 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id b8sm9130086wrt.39.2019.11.24.23.37.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Nov 2019 23:37:29 -0800 (PST)
Date: Mon, 25 Nov 2019 08:37:28 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH 6/6] arm64: tegra: Add support for PCIe endpoint mode in
 P2972-0000 platform
Message-ID: <20191125073728.GE1409040@ulmo>
References: <20191122104505.8986-1-vidyas@nvidia.com>
 <20191122104505.8986-7-vidyas@nvidia.com>
 <20191122132533.GD1315704@ulmo>
 <e1e44c1c-c1ab-27dd-b3ac-a9ed878411a2@nvidia.com>
 <20191125072542.GC1409040@ulmo>
 <4f92c07a-ea0f-a632-f5c5-b87666f8ecdd@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <4f92c07a-ea0f-a632-f5c5-b87666f8ecdd@nvidia.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_233733_473636_53FCF04F 
X-CRM114-Status: GOOD (  32.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Content-Type: multipart/mixed; boundary="===============0911389174570932164=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0911389174570932164==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="CGDBiGfvSTbxKZlW"
Content-Disposition: inline


--CGDBiGfvSTbxKZlW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 25, 2019 at 01:03:27PM +0530, Vidya Sagar wrote:
> On 11/25/2019 12:55 PM, Thierry Reding wrote:
> > On Mon, Nov 25, 2019 at 12:30:53PM +0530, Vidya Sagar wrote:
> > > On 11/22/2019 6:55 PM, Thierry Reding wrote:
> > > > On Fri, Nov 22, 2019 at 04:15:05PM +0530, Vidya Sagar wrote:
> > > > > Add endpoint mode support for PCIe C5 controller in P2972-0000 pl=
atform
> > > > > with information about supplies, PHY, PERST GPIO and GPIO that co=
ntrols
> > > > > PCIe reference clock coming from the host system.
> > > > >=20
> > > > > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > > > > ---
> > > > >    .../boot/dts/nvidia/tegra194-p2972-0000.dts   | 29 +++++++++++=
++++++++
> > > > >    1 file changed, 29 insertions(+)
> > > > >=20
> > > > > diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b=
/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> > > > > index 7eb64b816e08..58c3a9677bc8 100644
> > > > > --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> > > > > +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> > > > > @@ -43,6 +43,19 @@
> > > > >    		gpio@c2f0000 {
> > > > >    			status =3D "okay";
> > > > > +			/*
> > > > > +			 * Change the below node's status to 'okay' when
> > > > > +			 * PCIe C5 controller is enabled to operate in endpoint
> > > > > +			 * to allow REFCLK from the host system to flow into
> > > > > +			 * the controller.
> > > > > +			 */
> > > > > +			pex-refclk-sel-high {
> > > > > +				gpio-hog;
> > > > > +				output-high;
> > > > > +				gpios =3D <TEGRA194_AON_GPIO(AA, 5) 0>;
> > > > > +				label =3D "pex_refclk_sel_high";
> > > > > +				status =3D "disabled";
> > > > > +			};
> > > >=20
> > > > Why don't we put this into the PCIe controller's node as a referenc=
e to
> > > > that GPIO? Seems like the controller would know exactly when this p=
in
> > > > needs to go high or low, so why does it have to be a hog?
> > > >=20
> > > > Thierry
> > > Are you saying something like 'nvidia,enable-refclk-in'?
> > > I was thinking, since this is like a board level configuration specif=
ic to Jetson-Xavier,
> > > it would suffice to just hog it according to the mode of operation of=
 PCIe controller.
> > > But, I see one advantage of referencing it in the PCIe node (so that =
the driver can configure
> > > it as and when needed) is that one has to be careful just to enable e=
ither PCIe RP or EP
> > > node and not worry about other thing (like this).
> > > Let me know if I got this right.
> >=20
> > Yeah, that's exactly why I think referencing this from the controller
> > and controlling it in the driver is preferable.
> >=20
> > If this is some sort of select signal I think it makes sense to name it
> > "nvidia,refclk-select-gpios" or something. Does this appear in the
> > schematic somewhere? Or does the IP have a name for this? Those are
> > usually good places to look for inspiration on the name because it's
> > what hardware designers will be familiar with and they are technically
> > the ones who should write the DT, even if that's rarely the case.
> Schematic has "PEX_REFCLK_SEL" name.
> I would go with 'nvidia,refclk-select-gpios' and make the change.

It might be worth checking the interface definition of the IP if you
have access to that, since it may be using a different name from the
one that we have in the schematics.

Also, given that other instantiations don't have this, I'm beginning
to wonder if this is perhaps somehow specific to how this is used in
this particular board design. If it is, then I think the nvidia,
prefix would be appropriate. But if this is something that is part of
the IP interface then we can probably drop the prefix since it would
be applicable to non-NVIDIA instantiations as well.

Thierry

>=20
> - Vidya Sagar
> >=20
> > Thierry
> >=20
> > >=20
> > > - Vidya Sagar
> > >=20
> > > >=20
> > > > >    		};
> > > > >    		pwm@c340000 {
> > > > > @@ -144,6 +157,22 @@
> > > > >    			    "p2u-5", "p2u-6", "p2u-7";
> > > > >    	};
> > > > > +	pcie_ep@141a0000 {
> > > > > +		status =3D "disabled";
> > > > > +
> > > > > +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> > > > > +
> > > > > +		nvidia,pex-rst-gpio =3D <&gpio TEGRA194_MAIN_GPIO(GG, 1)
> > > > > +					GPIO_ACTIVE_LOW>;
> > > > > +
> > > > > +		phys =3D <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
> > > > > +		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
> > > > > +		       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
> > > > > +
> > > > > +		phy-names =3D "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
> > > > > +			    "p2u-5", "p2u-6", "p2u-7";
> > > > > +	};
> > > > > +
> > > > >    	fan: fan {
> > > > >    		compatible =3D "pwm-fan";
> > > > >    		pwms =3D <&pwm4 0 45334>;
> > > > > --=20
> > > > > 2.17.1
> > > > >=20
> > >=20
>=20

--CGDBiGfvSTbxKZlW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3bhLgACgkQ3SOs138+
s6HApQ//e75Pd2TTuRk8Ulcx+orM6hsy/Qq8oquSg3Y2HV/NLxPyy7RnpDOhpDT2
wdR6nr3z4f/90SLR4gyyqmDBqTOlms/sULvoDK79MyBT8aTDVQrvCtAKXONxc9O0
fCYYXz5IMWRSpjRT4EDrZ2Gj7LZcQGJDTRfrqVoauP2VuWQK7FKv/on6k420cA2v
mlgkoI7VwwJNuhNXjZj8EM2NLgfSjmR9HJM/fvJl6J3eO3EGiMorY2PBFAfT0j4H
YFPM0O/lKRH0MiOiOCP/dxtIG17jpr4F1/2yQterNtAEV+o58ERpNT0b8SeSHXMr
yN84gFWN4Fw3CniylVoASwp3xBJAPPBIFUjckLLMf5GJ2r3hZzMj8pGYyav5EwOI
xYOrR1WyMV57D50rLA4Fy0dolQazQETy4OXahwI7T0s0JIgH2gDkh+6fUT3o+5eG
PyFqczNXV2oVoCWrnnqpo1GrHSUwUh3RUoUFvRH0xjKGfaXDGqdRlcP40kktiP9V
tDvv70n6J4+s1uk6Bac1FwTtFz0ecLXG8Ktj2p7oVGKHhEY5kfkdrwJ3p/c7cGlf
JrmseXbCM1CZUsQphVDml+7z5tedqKk/pdTZ6hqClqnyznW9qIR4qNA6IsQOECCB
jSqZ9evt0ALz2r9ndRc/BLxBt2+gcspZ/gFV0c37L0D+HBCE5EQ=
=04cV
-----END PGP SIGNATURE-----

--CGDBiGfvSTbxKZlW--


--===============0911389174570932164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0911389174570932164==--

