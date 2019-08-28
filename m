Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BB79FDE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 11:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wKVCgzDYKj2F11K4CqMrW+Czd1QjlDvF2v2VQEujnds=; b=tshrvzKSQ1dmOa3FyES+tgc5W
	QF+W5o7nUnvstEzrrkOrNDf2OnLo10qlIJfzJcQlBxwY2dHx1nqlfqiB4y801yrckvQ/vOisYIUXA
	AVVfA+gfItQu1SQeQGK+q0b2bKvA5pkFku2AUH88bihBX+rKGhZ34fUBMAFBOpCppNd2hq4tUn+Lr
	9HsZPUAnhV0jRJgXYb6AwNlrP/JjhgOTU+zFYjGf9s/ILGx60XFZSeAkdqdXLwBSZi3er7rUyj5C8
	PikBcV56IqpzJ/1fOF8Wz3zpmtdTpgbopLaSHQv4q2x1iSkzL5uaTufZekLac1A/gwGEbCrBFBDgd
	lwwUnSetw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2twI-0000Rs-21; Wed, 28 Aug 2019 09:08:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tvu-0000RQ-L5
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 09:08:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id e8so4350584wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 02:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3r/7Ysgygsmgg7XBtb3VjCGdHn7Br75x9QrAUieJRYo=;
 b=cw5wZqaya+LQItOjqCiLiKz9QQ8K/7ohMITSjglTEzO3t57z9U7l8MiilKcTpvn7h9
 tYSbBYM4R+/r8g3c4RRFmn7Ctsy9V9vlHzt+SfLlYuh+ancT/xVq8MjN6L+CEp4BHz2H
 8oC0jlqWm9e+JLQC7BxmbLhBWVKznQACVKjzXzXhSj+wctbB9yg8IVlu+ulcGd3Lljkc
 sXSVknxf7oSwErLpsCPYXxTJQ2tuI+fbv+waCu5QzUM4O/p2/kOPQP9vdbTF3psW85jr
 hUqsVq9bBcrCaokRQR8xrsO20bplKYzOLWnoEoNVnae+9yD7GBJEkujV5JPHcWUJRZjD
 q6qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3r/7Ysgygsmgg7XBtb3VjCGdHn7Br75x9QrAUieJRYo=;
 b=WhS6K/s8uLMiZBaS6xwpWYJaKsouq/1FfsbV8grpyrI6tkETjAMKztmBaO1A2WltKY
 sI8As3WB8dXiZFzvvtB6RA/GBbpSAQLwO1D6IAIKDRyrFeWB2+wh6a+kTfHo5Ox0adkz
 xYpArPQTICXu68njtNWsjug9NrJ9BIaCEiKq8qOhz8znDaMV7S5akrAMiDmm7n/o6bus
 K1h1tN/BHlFnr3aWNuT8KUhrqjD5ABwlxmF/75yY7OOcX9QFDbyjUIuaDWvKlZfI1aG8
 BIkiYhCPEK4fxMRf8MtRho5QmHi5FWR6BgWUP8GOoojFs2s+/oqWx+gGp7ml108gbHqN
 /Gxw==
X-Gm-Message-State: APjAAAWGGgMyIPMqRi7wSRuF4ZcoAdW8tgzxN3b3zHaMqI9Y/R127xKz
 013mbxOmwCipT97R33Ur0ow=
X-Google-Smtp-Source: APXvYqzt39rWipB7GTNadn+iRBqGwWIPL1aGYp/oL9KV3yaDTOiZxTC9i1TbB/WmUBYwshXyc9pKHg==
X-Received: by 2002:a1c:3945:: with SMTP id g66mr3376701wma.139.1566983280714; 
 Wed, 28 Aug 2019 02:08:00 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id v7sm1506074wrn.41.2019.08.28.02.07.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 02:07:58 -0700 (PDT)
Date: Wed, 28 Aug 2019 11:07:57 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH 6/6] PCI: tegra: Add support to enable slot regulators
Message-ID: <20190828090757.GA2917@ulmo>
References: <20190826073143.4582-1-vidyas@nvidia.com>
 <20190826073143.4582-7-vidyas@nvidia.com>
 <20190827154725.GP14582@e119886-lin.cambridge.arm.com>
 <91f8914a-22a9-8b7c-bc00-c309a21d83db@nvidia.com>
 <20190827171333.GQ14582@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20190827171333.GQ14582@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_020802_698336_2AC110E3 
X-CRM114-Status: GOOD (  26.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, Vidya Sagar <vidyas@nvidia.com>,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 digetx@gmail.com, jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============0289234848998026035=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0289234848998026035==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline


--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 06:13:34PM +0100, Andrew Murray wrote:
> On Tue, Aug 27, 2019 at 09:54:17PM +0530, Vidya Sagar wrote:
> > On 8/27/2019 9:17 PM, Andrew Murray wrote:
> > > On Mon, Aug 26, 2019 at 01:01:43PM +0530, Vidya Sagar wrote:
> > > > Add support to get regulator information of 3.3V and 12V supplies o=
f a PCIe
> > > > slot from the respective controller's device-tree node and enable t=
hose
> > > > supplies. This is required in platforms like p2972-0000 where the s=
upplies
> > > > to x16 slot owned by C5 controller need to be enabled before attemp=
ting to
> > > > enumerate the devices.
> > > >=20
> > > > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > > > ---
> > > >   drivers/pci/controller/dwc/pcie-tegra194.c | 65 +++++++++++++++++=
+++++
> > > >   1 file changed, 65 insertions(+)
> > > >=20
> > > > diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/p=
ci/controller/dwc/pcie-tegra194.c
> > > > index 8a27b25893c9..97de2151a738 100644
> > > > --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> > > > +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> > > > @@ -278,6 +278,8 @@ struct tegra_pcie_dw {
> > > >   	u32 aspm_l0s_enter_lat;
> > > >   	struct regulator *pex_ctl_supply;
> > > > +	struct regulator *slot_ctl_3v3;
> > > > +	struct regulator *slot_ctl_12v;
> > > >   	unsigned int phy_count;
> > > >   	struct phy **phys;
> > > > @@ -1047,6 +1049,59 @@ static void tegra_pcie_downstream_dev_to_D0(=
struct tegra_pcie_dw *pcie)
> > > >   	}
> > > >   }
> > > > +static void tegra_pcie_get_slot_regulators(struct tegra_pcie_dw *p=
cie)
> > > > +{
> > > > +	pcie->slot_ctl_3v3 =3D devm_regulator_get_optional(pcie->dev, "vp=
cie3v3");
> > > > +	if (IS_ERR(pcie->slot_ctl_3v3))
> > > > +		pcie->slot_ctl_3v3 =3D NULL;
> > > > +
> > > > +	pcie->slot_ctl_12v =3D devm_regulator_get_optional(pcie->dev, "vp=
cie12v");
> > > > +	if (IS_ERR(pcie->slot_ctl_12v))
> > > > +		pcie->slot_ctl_12v =3D NULL;
> > >=20
> > > Do these need to take into consideration -EPROBE_DEFER?
> > Since these are devm_* APIs, isn't it taken care of automatically?
>=20
> devm_regulator_get_optional can still return -EPROBE_DEFER - for times wh=
en
> "lookup could succeed in the future".
>=20
> It's probably helpful here for your driver to distinguish between there n=
ot
> being a regulator specified in the DT, and there being a regulator but th=
ere
> is no device for it yet. For the latter case - your driver would probe but
> nothing would enumerate.
>=20
> See pcie-rockchip-host.c for an example of where this is handled.
>=20
> Of course if, for whatever reason it is unlikely you'll ever get -EPROBE_=
DEFER
> then maybe it's OK as it is.

Let's not assume that. We've just recently encountered a case where we
did not handle -EPROBE_DEFER because we had assumed too much, and that
turned into a bit of a hassle to fix.

Vidya, I think what Andrew is saying is that you need to propagate the
-EPROBE_DEFER error to the caller (i.e. the ->probe() callback) so that
the PCI controller driver can be properly added to the defer queue in
case the regulator isn't ready yet.

I think what we want here is something like:

	pcie->slot_ctl_3v3 =3D devm_regulator_get_optional(pcie->dev, "vpcie3v3");
	if (IS_ERR(pcie->slot_ctl_3v3)) {
		if (PTR_ERR(pcie->slot_ctl_3v3) !=3D -ENODEV)
			return PTR_ERR(pcie->slot_ctl_3v3);

		pcie->slot_ctl_3v3 =3D NULL;
	}

Andrew, I'm not sure the handling in rockchip_pcie_parse_host_dt() is
correct. It singles out -EPROBE_DEFER, which I think is the wrong way
around. We should be special-casing -ENODEV, because regulator_get()
can return a wide array of error cases, not all of which we actually
want to consider successes. For example we could be getting -ENOMEM,
which, I would argue, is something that we should propagate. I think
it'd be very confusing to take that as meaning "optional regulator
wasn't specified", because in that case the DTS file would've had the
regulator hooked up (we have to assume that it is needed in that case)
but we won't be enabling it, so it's unlikely that devices will
enumerate.

Thierry

--WIyZ46R2i8wDzkSu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1mRGkACgkQ3SOs138+
s6HM4RAAqdCUeQeL5xGkODnWM/OWnmsWlU4Db7jhjHd+6Z7luFKZvSBDEuSVzphV
uePElq6Abd7v4/QBptqDVysr60LtEiypDlDHs8KJ/UA0R7iUv7dH1YmZ7J5K8Gt/
QKjjD10mmuhskeuT5Yp6J0MBdXeE+LY35uI7NmkJQxB3c5jV0A2U26vVwVtFHruL
J+NCdJFay4L1/rAV0jfVs8v65Iy9w4CB2bDXOKmU//dCFTugyAsfYDRYaCls3a6N
Y4XtztH4W/Ajp9YAhaXYJU0ibECtqPRw7VBIIenDKaNzd35ccm+aH5VMQylwCmai
4tLx2EUp8naN3NpLb8l5yHR7EUDHImmbyrXjMjE2e8rShRqigpanFWP4Ig1aMzsl
pU8o4RQsQcERoOMgXuzoOyL1cL5kmBLfNcqyckoFRr0PV2WsIZEJRlfCG4yiQUsp
evwL6E1ILVkbEl7Z1qYMsbCvqURVvLdWnldgdNvrG91rKomFnW7xhN9o5aQBpHwm
09O01eqAsimgGwxsGYIRlOgKYt6ZRJNQzXgf9aK1q4TTB1ngDHuLyNDYt4LR9dq2
OpxjkoIe3ruKq37bI1PYzk9kYvRi4LR0R0DLR1YCLeC4CdmifuR7+x3GA9DHTpKU
zHpeABc4V2jjlcZWFV2psh2q/wwU2IuMfnmSIrrb+sNrsrE6lqc=
=Qhhk
-----END PGP SIGNATURE-----

--WIyZ46R2i8wDzkSu--


--===============0289234848998026035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0289234848998026035==--

