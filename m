Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0AD177752
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 14:39:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gxIUwNQiRJPD/BXzxjuoEMHota1uMgIm3Yh3qOV+S/4=; b=mVyBp3zN8I5QrX0kEWtymTM3C
	UmOsUbcPyzlwBvkMNL3aYLMP7N4hqevIM+UfIgzUTN9xCIH+2LPDVZVdoeAshbZTk3r1XRpQlTUvN
	edIAf+VsZFNdQ7kL2KaOBh1aa2eXpOZOA+qCCGhHKoFUm7YRBxVTjK32MX5CpDoWAuFU7d1VmczdP
	zqzCg80t8rhIFb9yashqH6xyvCJTpEYi3i725l5gDqXEojVYyf6cF5gvLurESaTcpk2CLsssjn8CV
	Ye58ApIGXBr4BhYXLtxqwiRKbfE6AY7Y6EWLvuAM73tYbpzWwVQhZakzLBZnLDlgf5CEIomoiX8l7
	q4zDHmaQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j97lv-0004Uh-QM; Tue, 03 Mar 2020 13:39:43 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j97lm-0004T1-FV
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 13:39:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id j16so4407329wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 05:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+2psQteAP/nChvPm4YDjqHGqV1kWBdJs4ADtRdquZxs=;
 b=A3/O6Qe3YL74ggE/tBVJn2xsBwRBx1ddjGOkVocGqwWHBKhdObohxPUmr/JEKlfmxk
 OOXFWehica28U0mEv4PDia7ATqU9HsutGekW9r5tf2X12sijBxYwIfS6U9UDT11Bl2cT
 pGhWOmGChZ2o0ES/Y6cu8GDDrYFGaVLe3NPfdl4MWu5rX42u78erSW6hxwS7UUpz5nMi
 U1bq5XTA+BYaEn87u1eTlKFZ3mcBKizbolAqyJ3EMYsTP6oHPd8U24uIHRG9p7kxYTwG
 BFozbtgJlN69ENWI/VVCgN9dwlPGkEMyzddOfulCcyVtii2gXZ7rADxSyEDMGUGhD3gM
 BUTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+2psQteAP/nChvPm4YDjqHGqV1kWBdJs4ADtRdquZxs=;
 b=Uai62OTJwlYpcTXnzxkNAZXOiaeXDTYnuCKCQY2OKqaymFBEcmvdp+mZAV85+rdPFF
 eOy05krJ5jw0n3WjyK9Xg3JN4BBMxvlMkquL/ydcEThIEkqfaBy4NfIOjEzN4heTI/3m
 s7/yHar4m3OTz2lVGagQthpl9gKQswbXj6hS7ftjFfmwmsdvdu5qGWRY6GcMx04GaKJ7
 KqmU3WHgROxmqqJXdt3rnJxMk01mKC/HbKvWfxo8QYaCv3NBH+M9r61lRT5+fqVwzk1w
 lSHcteYuiZOoA31UUTA30WIPrFd5VYzG/UTmwzAMQlOfQvn0fjsGFJOiFzY1Niv1PnWz
 BT5w==
X-Gm-Message-State: ANhLgQ2VE/yEiTZKwfoDeb5H2sORnUYYcSnKDAY5YQxs7FAGvpuhE5ix
 u9Mmh/DmLb5w2AWAO4ojY5g=
X-Google-Smtp-Source: ADFU+vutRvNdL1/dEDudvF8N+CkmzoT8gckzelnvWhW1WAzJKLNYT0qdmOl0ljzsq2Th5yGHHvM4XQ==
X-Received: by 2002:adf:fe4f:: with SMTP id m15mr5432015wrs.223.1583242770266; 
 Tue, 03 Mar 2020 05:39:30 -0800 (PST)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id z12sm7023019wrs.43.2020.03.03.05.39.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 05:39:28 -0800 (PST)
Date: Tue, 3 Mar 2020 14:39:27 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V4 2/5] dt-bindings: PCI: tegra: Add DT support for PCIe
 EP nodes in Tegra194
Message-ID: <20200303133927.GB2854899@ulmo>
References: <20200303105418.2840-1-vidyas@nvidia.com>
 <20200303105418.2840-3-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20200303105418.2840-3-vidyas@nvidia.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_053934_515579_8D0F60C8 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============7727034671314575389=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7727034671314575389==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s2ZSL+KKDSLx8OML"
Content-Disposition: inline


--s2ZSL+KKDSLx8OML
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 03, 2020 at 04:24:15PM +0530, Vidya Sagar wrote:
> Add support for PCIe controllers that can operate in endpoint mode
> in Tegra194.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> V4:
> * None
>=20
> V3:
> * Added Reviewed-by: Rob Herring <robh@kernel.org>
>=20
> V2:
> * Addressed Thierry's review comments
> * Merged EP specific information from tegra194-pcie-ep.txt to tegra194-pc=
ie.txt itself
> * Started using the standard 'reset-gpios' for PERST GPIO
> * Added 'nvidia,refclk-select-gpios' to enable REFCLK signals
>=20
>  .../bindings/pci/nvidia,tegra194-pcie.txt     | 125 ++++++++++++++----
>  1 file changed, 99 insertions(+), 26 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--s2ZSL+KKDSLx8OML
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5eXg8ACgkQ3SOs138+
s6EM9A/8DAyhoERGWyWFLzxgSdVvezOO0qahisCaxcwAdXVDTshl55YSf2n8j1fq
s03XQ1gqN27mUy1TrBNjlhQt3ghcCr+s3KJZuRjgrlxq8wgUFdBdkGtHoc42sUm5
I4NYbmWEiDaiYeUSPbw1O8mgl4kzFixGoBACEvWV1C/CI7DHUJFZ+c8YWaEvwARu
pOjH1IjmBbXPzrF9474jMIYzdNA38Vq2AmhPKqWEflNspTAPg9Tag33N8AUoBGSg
x5H/tWnggOIO9uzgyffIW1jbjy+6NiibjtmC1lAaFo/UNb41bwZgRd5wSvcg78ku
VRMtb4Vet7czoXs2u6EMXgfIX3+30Oad8l9BVz0kYmLlIN0fRrqxQYAv1NNCAAd0
ETqPNWgH1UQsMCl8kNOoESwKNwe+GYzcYDjEawYscvz2qvDuHDrgMvgC9CcI09sM
Uqak29cyLLhBxJ/7Tu0sOe458kybGMoDbvIM1VMC+kQEfowo76GqHeURlHJ2Uq9m
DKO0HlgV0lavxI4byOQcZ+lNF7u/CSKXbBjbZ7/WKAqTtLpehfcV1XAhXVdR93Tf
pKx7GXBF+UOJhF++E4ykFn116wbcYjtTf6lGnEhGnOIKz7CpxB4OmAxk/P0EQWDH
/VTNpkD/7dz77uH+ZFPxD447zAyK20qoeeRtgBSQwC1rgL2k+yY=
=A2Ef
-----END PGP SIGNATURE-----

--s2ZSL+KKDSLx8OML--


--===============7727034671314575389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7727034671314575389==--

