Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7E4A5518
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 13:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kd7DjtQIYG6poWrjMAPMdFYD1CIXouXTpNfoGt02tB8=; b=JsGgU/HtmT27wuyPkm5kDVFvh
	+8p2g5WF5tkuh4M/dvQPiXmO6uo4T0ETLapvsKIoLtIC8s1UFDRXwtfAeR19f9AOyEjnIcMsMXG7z
	OG12GvOUBWk7JIYJD9DHcxL9PdVVx15VKLpgPl4FUvoadVN+N01KntJ8/X8SINje3P80kWl1p7Co6
	xojtVdzTDHp5KMCmooet4Z0oEw61PfcILllItsahQ+YAGGzcRP+MU6hLz072dptthX6cgMnb6w5jy
	rRJjC1W1m/CwMcBeNpWpNHxxK85AW4aiVb0RkXPeXrNSffhK3Fje00MYvAzOQB9Lt3kjBYABvjp69
	pcKd7Z+3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4kh0-0003Vm-OK; Mon, 02 Sep 2019 11:40:18 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4kgl-00030w-VN
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 11:40:05 +0000
Received: by mail-ed1-x542.google.com with SMTP id o9so3790890edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 04:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=19JF+f4JLTae925R7+YX2DVuxawWCqQAPMge5Gu5oHw=;
 b=X2esWECaq2DkfG1LPPXs1Ig8CeBBiRTiStBw0egxO+PPZm+f6teGFn33ECnAWGeihV
 ZXwj2NT+ZnbaXd+/Li16HXLCzm2eJn6eqV4MPvtDBiQvp0MiDs/srCuzk1AglsxZxf2c
 G9bodG0ZtADatATr/zkfoTpqJXUsKMMgyjrpyK0Z5mxF7G0eQ6VoJAsU0pjqOKhsxcUc
 s1B0Xh/fx1XeZj+9WoHJ7YcF5ovkNNZu7CJ46OYWy74mE7DEiTCrTh+1wDEmtiI7V6jw
 vxk70fAeRnleMPFlzSuka4TwCvmT0/NZd92RnMtlBkkzECYLo8jZxDi9u65vRF1xI+69
 ag0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=19JF+f4JLTae925R7+YX2DVuxawWCqQAPMge5Gu5oHw=;
 b=kPDmzbFiBnYQS6RNhhfu7GAY7ZrvhSqaZtJcuFRTcRghEJNW4aTU/tDyD8ensZf54K
 hpik5ILkYmepf+lXOiXEqJtCgWOGoZTwalottN1u3VvSBLsDsOdNSVsunYeW+wN7Uv5P
 MIu5mzusQY9osrVs5bJlmgvrR3HM1U/ALQPPoPWQJrjMnEza22azpSInddXpGczGcWTH
 ziFJpNCEgFygwzU/raJj0hafcM2ykJDUmVJHgB7e0keARBtsaW2N9RaE5UL3OXcJHwge
 gNNprOBCCM/4IHXxrjauT7EkcQ5ivm6xkv6VvTrieiu/prsWFC0Ac/OegH3HlqeVHxz5
 M2tA==
X-Gm-Message-State: APjAAAVU2hMH/O5CA0AK7xY7g+vEfdwIr3mV1r9lOt2PAAqo48taksI/
 GhvBsRv+WAqimI7Kdv1MsJ4=
X-Google-Smtp-Source: APXvYqxkySTv/vbJWnKDsK+uWOXBxEWirXQJTF0Li6dUXZGlewF3Be8Bt2SBdS+jnmoYyPG08pgI5w==
X-Received: by 2002:aa7:da54:: with SMTP id w20mr23290367eds.52.1567424402711; 
 Mon, 02 Sep 2019 04:40:02 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id v8sm911608ejk.29.2019.09.02.04.40.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 04:40:01 -0700 (PDT)
Date: Mon, 2 Sep 2019 13:40:00 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 4/6] PCI: tegra: Add support to enable slot regulators
Message-ID: <20190902114000.GG19263@ulmo>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-5-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190828172850.19871-5-vidyas@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_044004_020440_E93F4277 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, andrew.murray@arm.com, digetx@gmail.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============1597733252290140786=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1597733252290140786==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9/eUdp+dLtKXvemk"
Content-Disposition: inline


--9/eUdp+dLtKXvemk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2019 at 10:58:48PM +0530, Vidya Sagar wrote:
> Add support to get regulator information of 3.3V and 12V supplies of a PC=
Ie
> slot from the respective controller's device-tree node and enable those
> supplies. This is required in platforms like p2972-0000 where the supplies
> to x16 slot owned by C5 controller need to be enabled before attempting to
> enumerate the devices.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * Added a dev_err() print for failure case of tegra_pcie_get_slot_regulat=
ors() API
> * Modified to make 100ms sleep valid only if at least one of the regulato=
r handles exist
>=20
> V2:
> * Addressed review comments from Thierry Reding and Andrew Murray
> * Handled failure case of devm_regulator_get_optional() for -ENODEV clean=
ly
>=20
>  drivers/pci/controller/dwc/pcie-tegra194.c | 83 ++++++++++++++++++++++
>  1 file changed, 83 insertions(+)

Acked-by: Thierry Reding <treding@nvidia.com>

--9/eUdp+dLtKXvemk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1s/5AACgkQ3SOs138+
s6GrjA/+MtsbQCfp8LKNLtXIAB9YZZ4egzdAnTHcT5Q8avyAv+spu6XTF4QUYTXr
ddGsqMuqZb6GFzPuALVW538dPpZJNbxKj2SAYXX8R+peSTCLi7q2iYbVRLXy87LX
bfa1a2ZvUB6QCbUyjtrVrGxJ7qMznfRH8GRaIkRPzvYhs9vceoSdUMstxfwdV+lo
5BO0x3mbWxm1EclBwHt+6DG0DYSLn7jmXYKJMc2Vly9Kuw3tApOyM2iHuiAs8zTO
9BmHFzKa88QsF/7Uk11rpFc2AnCbsn8nSTXbyRwebGhOMbosBVLgGhlt43trzHiM
uuYjh7UNfeHKQ2I9qmbaze/TaDC8kJcbCsNyxZkFBpiGmtFYyt8t59sEDVlm8gtl
bq0UQGhV5hn77I8KY5j0nQoRAlcZUrfg959QvIvTq3wq7YXnPXxmbniSEJceAzuL
aU2PJ2hbygWQgjmeuvB8lTXxEMhv/RfzIUVS1NnPSq02vjOGihf7prSN8F6VAoom
HoUXgjQVEAdU/lo3nBuJt977fv5zVH7cOEgG6aJMpqPbFNvk4rm+QuYB5ED8+mDY
Dvssm1YWsZe64dSgdY8XpD7/Vvbe0RTHu1dSXsC5KjhfTKkHlfjJm3xia/HyjDwD
OYJPDbss7TA8RH64Wgczu1N7WQVfvDv2q5wdqHmA/f9EasuG4j8=
=UhQc
-----END PGP SIGNATURE-----

--9/eUdp+dLtKXvemk--


--===============1597733252290140786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1597733252290140786==--

