Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8A137827
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pt+xiYoajACZXSK1C1/vwBygoOOFShZD7uCg+wAYnM0=; b=smnyZ599MInQldWXPmwqg1DbD
	KRmP7rZdrnKSDia/JCKYffBJlXRq0+e8S5XXJmdKHuxuioo1HBfPMPsJBpP6MYH9JGBXvAxnjCGCS
	1iIybGxJVM4ES9/nvLOY5pH0ihfczPG7FJ6UW3Op4YxYWRdFGbpOkBdl/9awk3z1vhUTi7lyT94za
	pkv1/VpNK8lxaNxPz02U5AjaReh4ucywvHEcNFyDr2RVs2thS+vKTRO62XgDomf0soYOdZSVdYiSx
	YMo7dfdhffD4m0xRyPlqZvnqCf21nyO3O3gdYp/czaN2IA96Fewq+PRRaG6tmzkCjUKcBsBtUF0kS
	xZ+bF/6jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuRt-0006Jy-VQ; Thu, 06 Jun 2019 15:37:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuRm-0006Jc-Ek
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:36:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id z23so406153wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 08:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DyRXAwIkACrL75qrkaIpiaUyXrFK4zgAUD6OMPn5KbE=;
 b=g3S2sTxqBXi5WyyBC3kSqRB4jy1/u8zRu8CaUu9B6m1YAV7H2ngfPZ/1L/yjfJqfG4
 Rcg1ScXJJlGFN5bz+QrAH0iXCJ4VfvP5L9a5ehiumq51US+TgIvDDkrOZ+lCxaMXj3bJ
 +bKu0U37sa7xvVg0BHrevd6nIQZjEwe/Pt3VltHUfBlZb4NuxEFlF+J0Y6rn/8vm5r7d
 d9brNEt7L7LPi7f54EQAw7mqjZHbrI9oaQ0UpV0gIbPhnBUnxrCfFj+4/H+RcldEqBbA
 J7IFnBVF48uPXmLNIEvshA9A4XJIfT4tSfCb2sSjwpRmrq0Jeg7fwUZzzcwBMKLnwqRt
 z+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DyRXAwIkACrL75qrkaIpiaUyXrFK4zgAUD6OMPn5KbE=;
 b=HiIdhRgs96ImyxR3JnauzUx+gwiZzvLdlMNw9t6dUlaPRhg/qdB+4eHc0DKy6sXf9S
 8XsnYslzZEojvEfSYEpJgjobn654KQ8fF/0yph9QrC73OhsHrlUl5eybvZB/6qr9eeYl
 8gyrgF1dihFLgF0EsJ80jHrtD5pdptCTuSLSUnJoZyZHt9R6HfT2/y4cQfneKsRq8tlW
 peDYOyb1O4KnFLj5rYtnVhJpoL61mqYPEfQ2zo29fZkuZHZjcb60xRtGJUYemhLV/Dp6
 0kuX3CmB80iJW+C8hTSgdHGJt2XcFvH6AnLTdj9X7m8pWGs0AZAVcipOg5ADSosYSq3N
 4zYQ==
X-Gm-Message-State: APjAAAWWaMbLg0v1OVW7drYfCPxqpzbZ1ZFGb52v62zQhsh7niDus5zp
 qtlHBQlA1Gc74nXk4iZzAEA=
X-Google-Smtp-Source: APXvYqzoIc0HCuMlyYira3wL7A3WbV0QPNSbcpXOCeVTl1Ab6mMnqDsM2t7fldaeLqrPRCvQdP5yOw==
X-Received: by 2002:a1c:c706:: with SMTP id x6mr456960wmf.162.1559835417018;
 Thu, 06 Jun 2019 08:36:57 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id s11sm1697185wro.17.2019.06.06.08.36.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 08:36:56 -0700 (PDT)
Date: Thu, 6 Jun 2019 17:36:55 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V8 14/15] PCI: tegra: Add Tegra194 PCIe support
Message-ID: <20190606153655.GC3338@ulmo>
References: <20190526043751.12729-1-vidyas@nvidia.com>
 <20190526043751.12729-15-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190526043751.12729-15-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_083658_501707_14907C78 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============4035662988468705439=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4035662988468705439==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bAmEntskrkuBymla"
Content-Disposition: inline


--bAmEntskrkuBymla
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 26, 2019 at 10:07:50AM +0530, Vidya Sagar wrote:
> Add support for Synopsys DesignWare core IP based PCIe host controller
> present in Tegra194 SoC.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v7]:
> * Addressed review comments from Thierry
>=20
> Changes since [v6]:
> * Removed code around "nvidia,disable-aspm-states" DT property
> * Refactored code to remove code duplication
>=20
> Changes since [v5]:
> * Addressed review comments from Thierry
>=20
> Changes since [v4]:
> * None
>=20
> Changes since [v3]:
> * None
>=20
> Changes since [v2]:
> * Changed 'nvidia,init-speed' to 'nvidia,init-link-speed'
> * Changed 'nvidia,pex-wake' to 'nvidia,wake-gpios'
> * Removed .runtime_suspend() & .runtime_resume() implementations
>=20
> Changes since [v1]:
> * Made CONFIG_PCIE_TEGRA194 as 'm' by default from its previous 'y' state
> * Modified code as per changes made to DT documentation
> * Refactored code to address Bjorn & Thierry's review comments
> * Added goto to avoid recursion in tegra_pcie_dw_host_init() API
> * Merged .scan_bus() of dw_pcie_host_ops implementation to tegra_pcie_dw_=
host_init() API
>=20
>  drivers/pci/controller/dwc/Kconfig         |   10 +
>  drivers/pci/controller/dwc/Makefile        |    1 +
>  drivers/pci/controller/dwc/pcie-tegra194.c | 1621 ++++++++++++++++++++
>  3 files changed, 1632 insertions(+)
>  create mode 100644 drivers/pci/controller/dwc/pcie-tegra194.c

Acked-by: Thierry Reding <treding@nvidia.com>

--bAmEntskrkuBymla
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlz5MxcACgkQ3SOs138+
s6G/ZhAAjpmV/vx2RYEnxlLLhgYrDv+eJ4c99U63vbP5N/OjnWh9s51GJWF26MbS
y2mW0FgYxsUXm+M3WFBBs7l38iCwYp8bTAahH7i3kEyw+Eb0nv/UMq0DF2t6ESOR
zxA76mLckgzZ0rn7wXGqYVLPU7M0eTw1SGJhz5YTPmR3ghTfE837R1vkfXKV3bYo
zr8V8p6ZsZ5AgaYg781zLnxIhc84iuXMGSpt0n4Bw9T0IX9TBoZvnOKa9kPujQdk
R53voGhAVATSx/c/MuA6TLc3SdKedKdaP8V2POGWZbffTbYT74wa7TxC+p5SlYQu
KcmedzYUsiqAqjG/uIiIG2X2zOqGBgp4Z1zmizaEC6mzaJWEPfZBWz2MXZqNPhq8
l4P2JgOfB8TwF7Qtw18IaIYa26L1Uaxt/604YnSpJJeQxHpXJVgHQ4K+cgENneLI
EWc4RYCr5O0M4q6P6IIyZypKXBtzMd4eCVM0pDlPz6HRInNGNzgFa6DPENWMExc1
V15xEZXmXGwhVwhuqoMmXN7Rd0p+5wSWQFWxKETXf1NETlN5L89s3hoEZ+O9eDBU
tHb1eaY9+wuq56jwySzGst3np9/8VGx+p9u5xE0coTDHSlQbb7XpSe8cfhDSXp0n
3k5kNWWMNn6SGUe3H8P7mquhingQDwZ30PCGTCpfvwnxM7q9o68=
=8lND
-----END PGP SIGNATURE-----

--bAmEntskrkuBymla--


--===============4035662988468705439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4035662988468705439==--

