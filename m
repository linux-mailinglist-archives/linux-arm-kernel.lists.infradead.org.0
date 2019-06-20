Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280D74CC90
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 13:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rXPrwJm/WTGI0GODkMPMxReVaFuH0EMEp7Yd6rjxNYs=; b=ASFYASPUY/9YDpb4ONLgDzrwr
	PrkItjc5rilP7kcR6lpmj0hU/cR9GXHExWvVCrYoU0U0t3re1BarAJPKlxtNieHQ7CBDRS8dF7QK9
	8/5iYfdGQGoWa7jlEm64NKhzJP5m/75MF5kfhk03dOIlWoHorXcAKGWk/cPJAWkS+zSrkEa0cOJLf
	ckGNGpAx2SIZqqa8C2ixBMoArmJ5E+EAPALs6SC6Ble6e+NgOe5UqAo9yXr5Ip5H+RbEFWlgmEGDe
	jPBXGGb9EnUqcEL0HdNhrR1aSukBNYJp6xWy+/HQSKLSL4pTYg0I1vzn5jdlTCKIzFUGFHZU6/aH7
	bcNilLUpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hduqv-0002Xq-Qh; Thu, 20 Jun 2019 11:03:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hduqc-0002Ws-Ka
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 11:03:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id s15so2706454wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 04:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VSz5A8epBUVmpw04i+7PmcLUxz8iUrkIJ6W9aJ7sNBE=;
 b=MFwhnOXLZ9GpiBBqLEqgfUgzF9H/T5lernAK18SVhj8NxXDQFPuD9JGtL0gZ6gbMKf
 SLubkvRBu88LJI4iW9/byraIUBJrQrskeK0CjVhVfsI/Fb1lcyytEQVgcGSKTB9vnQs0
 YaGGYz2vRetRoUvgZpuwBFdmITslKVXqNr9vPQDyvnFp0q0xHvwYp3esf/bNp9dgR1+v
 JkXPZPGh2uZW5LaHvTgFrS5HMBta5HsSD4RfNKF1QSdISKM9larovbZSm3opX5ZpAn1n
 GJTTeB7GvFKBULMmrQWAMue/EV3yOOLgC21WQXUbGFjJLmLuUyOR1kG4dVw7vpsQcaC2
 8hUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VSz5A8epBUVmpw04i+7PmcLUxz8iUrkIJ6W9aJ7sNBE=;
 b=Qmt4aP614zNovFXd3bOmHHIx8HXSNpyo+6s7TZUxFecAdm5jYTT8lXuU6qHyvY1jB2
 7hUF5hiCXGA391ybxZe6VOlBFzVV+y0eRXHynVa466xiRuuZ7W/qXVBo3CHwNhftBnIG
 3+W6LNfI/QNrpMtcYfnSYpztWnUaOrfloTLhkpl/EJrYvBqOlffw1cn4cLbpcg4dKb7U
 sJAvuf+k2AvfCpfBMVMoFPZRzvo2Krxc0ukj13wb5mZ2cekfR3Zr56SIPa5nQ4IcX7Cm
 Eho1y/jqAWsmCig6i8+qJPGl8ncBnRJPx4rpz0wgX1etqn4gJXtw0Qqbb7j/dDGN7Fgb
 AoKA==
X-Gm-Message-State: APjAAAUIQrbMpgyYs4AjHItoeDt8sF/vD9Ovn6cHtNNGp6jaU41w6sAy
 2X6EbXR8NBFJ2nNBFcjgBBA=
X-Google-Smtp-Source: APXvYqxNm1K3WSG5KtignpG+L+f5Z30baasXSgC4QDQcxHwU0lotsXxcZhOn1TedVwCsHtN2jLY3KA==
X-Received: by 2002:a1c:8049:: with SMTP id b70mr2364726wmd.33.1561028596768; 
 Thu, 20 Jun 2019 04:03:16 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id s10sm5934353wmf.8.2019.06.20.04.03.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:03:15 -0700 (PDT)
Date: Thu, 20 Jun 2019 13:03:14 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V10 15/15] arm64: Add Tegra194 PCIe driver to defconfig
Message-ID: <20190620110314.GC15892@ulmo>
References: <20190612095339.20118-1-vidyas@nvidia.com>
 <20190612095339.20118-16-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190612095339.20118-16-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_040318_680421_46C6405D 
X-CRM114-Status: GOOD (  12.77  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============3245212905290089106=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3245212905290089106==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LwW0XdcUbUexiWVK"
Content-Disposition: inline


--LwW0XdcUbUexiWVK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2019 at 03:23:39PM +0530, Vidya Sagar wrote:
> Add PCIe host controller driver for DesignWare core based
> PCIe controller IP present in Tegra194.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v9]:
> * None
>=20
> Changes since [v8]:
> * None
>=20
> Changes since [v7]:
> * None
>=20
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
> * Changed CONFIG_PCIE_TEGRA194 from 'y' to 'm'
>=20
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied to for-5.3/arm64/defconfig, thanks.

Thierry

> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index bb0705e1f52e..6462a4dbac87 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -192,6 +192,7 @@ CONFIG_PCIE_QCOM=3Dy
>  CONFIG_PCIE_ARMADA_8K=3Dy
>  CONFIG_PCIE_KIRIN=3Dy
>  CONFIG_PCIE_HISI_STB=3Dy
> +CONFIG_PCIE_TEGRA194=3Dm
>  CONFIG_UEVENT_HELPER_PATH=3D"/sbin/hotplug"
>  CONFIG_DEVTMPFS=3Dy
>  CONFIG_DEVTMPFS_MOUNT=3Dy
> --=20
> 2.17.1
>=20

--LwW0XdcUbUexiWVK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0LZ/IACgkQ3SOs138+
s6HnVQ//V0AiVK2T4Zt26dMdZRhdje5rcfQvqSvS26yAWlB19a4K+KnSpeO7nTt8
i6xPCg/PJR7n4dZixeneI2T9CbseVldNr3S1pYDhZkauq6BjAdC83QHLsp9Qi7tX
DEFCr7Q7S5Kydzm2qWiHqEH0RkU4uS3aHLYqmQgjwegLS70jCaQZ6YKbgOcPbukl
O8+1Dh62jUJWf4aQrk2td+MtfjSkY3/w+J/ath9tZ2mUgyU3DnLXcX8bl2p2iL3e
v/fxv6TunUNh4qfxNoPxe+RKYV58eYgYdTx4/iYWWBvmuqGGfDsPibgO/PB2aueu
7GZu7HlOyAww4ZZyJZq+V59eusRVVdfOmBYNH0V7s4cZ5uylcXjo0OyVxcPaLagc
+4QAQvFvffG8dJ/EtbECoLMp2Yztw1Uq1SVLnt8MBod7DbAYL022NVBIjMB86lLj
JiWpkweF8hOdUS1adn+j5gsgRVBMR62wBKtkQ8qYx8f4pX0Vl1VEIY2ZnEq44Q7E
e1uqUuVaLcwszTaFO+CEsPDrdvWqUKyu8F01G+Qx+xC8rgh/g6b8AqDNK/y/x1q9
z+3DzwdYbUtxw9G2iL4jk76dNnJnGDAKKiDeEmxeO1qYsxEIHdBgySs/eNHvdoRh
Z1TuJN879ifWwPHgEOB95zZ8Ed5CByYQXa+JT+eDqZuumu8eU2w=
=BWCx
-----END PGP SIGNATURE-----

--LwW0XdcUbUexiWVK--


--===============3245212905290089106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3245212905290089106==--

