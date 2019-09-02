Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579EEA5516
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 13:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kCCmvOAxkYfGD2G0bAdHBP76EMT5YE2GpdoXVSQ9Zeg=; b=Ks0gLMtxerSdMmnVGxbo09M4L
	jEAfVmxtz7Di5Pnt2XsZexgFiSSqJ9lh0soDHGfaiguK81+UyNo7EtG9psNHtSb6OrxqRkB/ceNmC
	t0qe5+ytDtyRtHd5yguS2W4VcU0H73W5VLKOU6tgnghfm1FbBgMv21LHQVNMoHmQj5PsTHC3JD6NE
	w8DobT53Yn3+fWftVwTHWPgSP9hK8qhHI3xnoT0pujZT7q3gpzU8lJk05i4o6iVevR28pgGr3XmAA
	oD+ycHLIr0NlYmEQ9v66jmAX7SOziLnwkO9uwgw8yUINvnKSBRb226b48w5YL/oS8KzbHj3pyZE3N
	5ohI8Jiaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4kgE-0002NL-PO; Mon, 02 Sep 2019 11:39:30 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4kfn-0002Aa-Vf
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 11:39:06 +0000
Received: by mail-ed1-x542.google.com with SMTP id f22so15363463edt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 04:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dJABXDobIWh1nooLsy7S53th7Uqr+4tppXx8bmIrX/E=;
 b=srxps2g4NXpNgtJjDKxOu1fYmUhRVg5OTVtujqKbouQgKQhe7bdE7m37VmUsCLuLtb
 YQ6IhHchMua1pC1YoY2mPAjvrgunUN+5WNBdMjbiumFxlPihFjJFAjIMcNwOuTSmq30o
 PnlHAmwICgb+4iYJn73ht147Gy0J0E5QhjhqAh41AXsZbKS+bhymS0lDiqJWoh9kSRij
 i1z5TgsmnU0LNtlk+Zmfv/NLPKYnO9lrmEMF4nszPyk7OdJjLyBj6F4FarGCurD28rM1
 BlGFYJd3drJ+gSwsZ+HhLkT85Ye7cI0ekuKVnJgfFM5h9w4b3Ev3nV4bTvkeMI5lbgSL
 ywIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dJABXDobIWh1nooLsy7S53th7Uqr+4tppXx8bmIrX/E=;
 b=jDX4DDSGU8IeomZDrfccTEIco01U5lhVHgqQ0BXINqyKtU6ZmiAp2TjtRaSvVR4+FZ
 Nq/emBgCDscQ7DjPSajncc2DKzox+TkkWxGk79ytSN9tRfNN3T5R0a9lvdPyryCjm/nR
 vTyns5R5W3yQ3CNbBhI9ZkBc9ZfINsMQb5yEKJQPupmeCD9q+kbBUJBaSj0d3dCpdGVj
 O6MPwbZu0P3ZzreeRitj2N7D6dRaZ7rsibRkMPz0lWIMV6t0/+Na+7MjlqOg56WQ+bvY
 k1Fh6vceyRkzUL9RQATDCJt7jcspt1IOSvhC9kXRA2827qcmE4+ubxvJKntS4ceQE0rL
 4HcQ==
X-Gm-Message-State: APjAAAWVqNB0YBK2Drwj8MPVElZmvwukM3PTWJUOBzI4qzpXBm4GTb9w
 fjzq9wlkURhWqcM57ZcyBYU=
X-Google-Smtp-Source: APXvYqxD0OTk4zunuo+zB+jioNUHxiTrPa/e6jRWtgJj83asCZF0rf+8ALlsOJheTmDEANFXKtyzNg==
X-Received: by 2002:aa7:c81a:: with SMTP id a26mr15644204edt.26.1567424342732; 
 Mon, 02 Sep 2019 04:39:02 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id c1sm1938836ejm.85.2019.09.02.04.39.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 04:39:00 -0700 (PDT)
Date: Mon, 2 Sep 2019 13:38:59 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 3/6] PCI: tegra: Add support to configure sideband pins
Message-ID: <20190902113859.GF19263@ulmo>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-4-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190828172850.19871-4-vidyas@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_043904_058728_F829ED04 
X-CRM114-Status: GOOD (  10.65  )
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
Content-Type: multipart/mixed; boundary="===============0512258660680269991=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0512258660680269991==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="924gEkU1VlJlwnwX"
Content-Disposition: inline


--924gEkU1VlJlwnwX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2019 at 10:58:47PM +0530, Vidya Sagar wrote:
> Add support to configure sideband signal pins when information is present
> in respective controller's device-tree node.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * Used 'dev' instead of 'pcie->dev'
>=20
> V2:
> * Addressed review comment from Andrew Murray
> * Handled failure case of pinctrl_pm_select_default_state() cleanly
>=20
>  drivers/pci/controller/dwc/pcie-tegra194.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--924gEkU1VlJlwnwX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1s/1MACgkQ3SOs138+
s6GwEQ/8DQfqPImwI/sN8KkGlUTrymHeb5p1LcJjyObL3s5FzC1VNuPP6ztRPNMj
XUJ3C0LOyCBrPharGw9CyUpDmhzkhQaMqVmCekuocA6xMEQmG3ggIHaEW3wPwGwt
3evIIRgTAwoYT84m/q2cy/zOvLq8omwFGwuknOWcQCy6upDCKJt1hQAcnfg4+GQN
E/iGl21g1hfsZUlyGd9NAYZ2F9ZWbKaymoV+LmKRnB2R6U+D0dJb30w5oLnC+Gp/
2vtjAAa4c7re7ZG4j3/rzdOqzPjpJFa5KLHDV1I05lZi7rmyxmclmrhbrT0Fvwht
8l8lkb9WWcvAdpCv4aVPEqp/ocDN40uIPhqIwzjpbRmc28Z8/6Nc26Ps7xzn9WX1
yj7nQSQWkczWQPbNADrAlPCDpDBke/tzpNpjEX3IY7ltLvdCbV9p1LP3BU+aqCiV
nKcZIG1DMv70fmQ5ZZ9ln0ylERYt4c/69nGXiowdUNfwZ7/zD8tEhsmU332JHEOP
SGdAkxiz3K5m2MZ3DzyECyBcASTwZTWWzHsYmgqM2yFEOa1k1Ih7joY+nmd3xrAe
DnvcfZKW8dug/2zwdraLt/Dkju2bczWXHLVLhJpISEh8he9H1jsuZho7u+2wacQJ
2LZA7HIIANTX/M06bh+sbv6UG+WL7AImXDhDVpUqpuqmqDk3uaI=
=eL6G
-----END PGP SIGNATURE-----

--924gEkU1VlJlwnwX--


--===============0512258660680269991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0512258660680269991==--

