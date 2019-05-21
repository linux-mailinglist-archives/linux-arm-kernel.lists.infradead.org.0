Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7F324CDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zCOfTHpy8fcQS8y1SRf0oPcCohPmMjnrG7UxjP97xZ8=; b=u1i4ZiXL3T3vX+2i/1Z8ow8kX
	XW5Da558DgVQVmfWJzDOAnh8zlWp4FHd9ThHTbpqfR8Mo/lLlQQXC1+xF8TnhOn4BGH/pmR5MCzqZ
	yvWeuYqd4IULWOkr3u/NzK2aZNQWwsk4K+lxyE+jTLvBjsrkqnav6+19UZ+sX/GWZ+PdvAhalPADy
	WYrMu/QvarAFyCHppFp9jtcK78bfT57tiiqfrpn83+wSV4l1mC9Xnk3a0nP9BOrA7eOyE6+uevGm/
	OCgiAr1TfueAVA5fPtMckWhxxKsWiIW5tK47KmsNzH4pLHq0mNtIu3t944eACbujMu2UseRIRKv5C
	+kEMNhELw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT28O-000272-NQ; Tue, 21 May 2019 10:36:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT28G-00026X-W6
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:36:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id q15so2350545wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 03:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s2IM3ZE8ODzpRagkoqqzQK54sUQjKZc2JHhz8V5RObU=;
 b=Z0XG4sSZF5JHXuLMcZ5YxjA9J4SuMnIYkei3Z6Y55JOS7YdFyWj75eMV/H3CoQ7S64
 f66Zbdubw6XtFPbgFxmbLdkd0AAdVEIM6F+pRugNUyLPLW8Mf3URbYZmOFBgBvwc7HMn
 H7YWii70vEzEdswFBrExT2mrItuRsYAJnhyIV5SV23vfi1SAn/YOJRcJxG8W8/YhgAJT
 krEWDPPN6VQHU8Nlw6QKlOPZ3wa8TTzbBgPtrJOl6SRi2hRc/mKBEQhDsU5RVf+BtulB
 ufWBW4woz44gjVh04+TGVKYhzic6cy9mlGsX2xgqHwgMpvUQhJHsm76ZmGyPpF3zjjI3
 LMyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s2IM3ZE8ODzpRagkoqqzQK54sUQjKZc2JHhz8V5RObU=;
 b=iPzTSLyw8CO9z+ULVMczCyPV5k10Y265KZkcifkZ1Fv2PzGU9tcCtkNg/MJKhnCt3A
 vAqDMUiQ/RX3qkWUrJ/LyvDWTewRTlP4nl3Wck958nx/hOw3N3v5lR6M9hm4htAaQ3sN
 S6kgBs+NgoEKezz5NcaCN4L2EtXR6LI5ZMiBhNkXSqiZHQBk30jZeUoulQziLa/Al8aR
 bTm8Wr2oRBhIIIcTNim/C7oCMwUpRyGN0bodsQr2lA6VPYDu3S2YN61HZHvWpY/AvSlh
 sqyH/x/neIbRxTm5or/jy3M20r09+Jsq19EVaU9LJL71FUG51a9t1NlwVLrH5qCUrc5Q
 sq0Q==
X-Gm-Message-State: APjAAAVi8eB/Bj4yXxsKoYDbtJBC8GqnAx9D/Uh21OAGKrK/nB+7w6vM
 I6Y9R4jSaskslCnmFtpYf8A=
X-Google-Smtp-Source: APXvYqxHktRf5rZ8QFK+DuWsj6B/g4usmi5nDqgeTDiJTvlktbKs/Ju/VpRX9wgMAQ587L+UC1/IfQ==
X-Received: by 2002:a1c:d14b:: with SMTP id i72mr2887854wmg.4.1558434991573;
 Tue, 21 May 2019 03:36:31 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id h11sm26592314wrr.44.2019.05.21.03.36.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 03:36:30 -0700 (PDT)
Date: Tue, 21 May 2019 12:36:29 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 05/15] PCI: dwc: Add ext config space capability
 search API
Message-ID: <20190521103629.GE29166@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-6-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190517123846.3708-6-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_033633_221068_BA40F955 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============1407791857445015660=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1407791857445015660==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o0ZfoUVt4BxPQnbU"
Content-Disposition: inline


--o0ZfoUVt4BxPQnbU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 06:08:36PM +0530, Vidya Sagar wrote:
> Add extended configuration space capability search API using struct dw_pc=
ie *
> pointer
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> ---
> Changes since [v6]:
> * None
>=20
> Changes since [v5]:
> * None
>=20
> Changes since [v4]:
> * None
>=20
> Changes since [v3]:
> * None
>=20
> Changes since [v2]:
> * None
>=20
> Changes since [v1]:
> * This is a new patch in v2 series
>=20
>  drivers/pci/controller/dwc/pcie-designware.c | 41 ++++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-designware.h |  1 +
>  2 files changed, 42 insertions(+)
>=20
> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/c=
ontroller/dwc/pcie-designware.c
> index 8f53ce63d17e..3b7d50888caa 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.c
> +++ b/drivers/pci/controller/dwc/pcie-designware.c
> @@ -54,6 +54,47 @@ u8 dw_pcie_find_capability(struct dw_pcie *pci, u8 cap)
>  }
>  EXPORT_SYMBOL_GPL(dw_pcie_find_capability);
> =20
> +static int dw_pcie_find_next_ext_capability(struct dw_pcie *pci, int sta=
rt,
> +					    int cap)

Perhaps make this more consistent with the existing regular
configuration space capability search API? Something like this perhaps:

	static u16 dw_pcie_find_next_ext_capability(struct dw_pcie *pci,
						    u16 start, u8 cap)

? I guess your variant above is consistent with the existing generic
capability search API, so another alternative might be to make the old
dw_pcie_find_capability() API consistent with everything else. It's
confusing if we keep having to jump between the two variants.

Thierry

> +{
> +	u32 header;
> +	int ttl;
> +	int pos =3D PCI_CFG_SPACE_SIZE;
> +
> +	/* minimum 8 bytes per capability */
> +	ttl =3D (PCI_CFG_SPACE_EXP_SIZE - PCI_CFG_SPACE_SIZE) / 8;
> +
> +	if (start)
> +		pos =3D start;
> +
> +	header =3D dw_pcie_readl_dbi(pci, pos);
> +	/*
> +	 * If we have no capabilities, this is indicated by cap ID,
> +	 * cap version and next pointer all being 0.
> +	 */
> +	if (header =3D=3D 0)
> +		return 0;
> +
> +	while (ttl-- > 0) {
> +		if (PCI_EXT_CAP_ID(header) =3D=3D cap && pos !=3D start)
> +			return pos;
> +
> +		pos =3D PCI_EXT_CAP_NEXT(header);
> +		if (pos < PCI_CFG_SPACE_SIZE)
> +			break;
> +
> +		header =3D dw_pcie_readl_dbi(pci, pos);
> +	}
> +
> +	return 0;
> +}
> +
> +int dw_pcie_find_ext_capability(struct dw_pcie *pci, int cap)
> +{
> +	return dw_pcie_find_next_ext_capability(pci, 0, cap);
> +}
> +EXPORT_SYMBOL_GPL(dw_pcie_find_ext_capability);
> +
>  int dw_pcie_read(void __iomem *addr, int size, u32 *val)
>  {
>  	if (!IS_ALIGNED((uintptr_t)addr, size)) {
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/c=
ontroller/dwc/pcie-designware.h
> index 6cb978132469..fff284098117 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -252,6 +252,7 @@ struct dw_pcie {
>  		container_of((endpoint), struct dw_pcie, ep)
> =20
>  u8 dw_pcie_find_capability(struct dw_pcie *pci, u8 cap);
> +int dw_pcie_find_ext_capability(struct dw_pcie *pci, int cap);
> =20
>  int dw_pcie_read(void __iomem *addr, int size, u32 *val);
>  int dw_pcie_write(void __iomem *addr, int size, u32 val);
> --=20
> 2.17.1
>=20

--o0ZfoUVt4BxPQnbU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzj1K0ACgkQ3SOs138+
s6HTgQ//aJr7a1P9iSYJK5pv2YoM6D33S9R3ezA6+xgoGLr8Kc0/or1z4iDwNpfh
u08lYHkPxU8cIl5I9LFY8gxFvQu1ZVm3P9PDhMeyiR6TXnTa7FPJT28xY/bTQzyY
g/Y6rkKxoN5V+ZQ/bRyzlbZIRKbQJtEXEs8AE859u/B3EGiBw2aEYJ22/TZfrfhM
CIHyXaQGrTevCcBoKYp4B+qiYOH9sxLBdlDe1v6ZDhG4ulPpxpIT6fT8yuVxZhs+
1hOIjVM5N9m8jI8t4ZCiN1Qen1xK2M/saa1y5+JJt6pssb7xUa3YjX4ESGSH68GX
3/jcqOLAnRk+ZXrRwxRSrZtyCmuX1P+clOTrVV2QCYbf0VYHFD0kz3AD4IJcPjZ/
pouAXmXETl2PQQJs/My08Dc5ICYba5+/JYKvxJL9kPXDsMyuTAahoSXuomu/TKIU
Qy8VtWwAxo4oPlKQDxiRir2Qrh85R7Yg7uqDBZ9+WdQRW1z9Y5JuQFrryHClssfl
6Lehxkw0YH4ubcZ0h+qWHPBE8nhIOHNtSv6rvgKd/A0mF97DaCKiqRx29VU+ywgh
bdfDqEjzUa6wNykNB6Iz8QT8J29ayymgxBcU1cJy9UDrf1t/jX3nt/7R7G9Yst1h
exQop1nRDInzw2kEnw17lfJjj12b7izfI/J12l/j0bK4Ay9InDc=
=4jiK
-----END PGP SIGNATURE-----

--o0ZfoUVt4BxPQnbU--


--===============1407791857445015660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1407791857445015660==--

