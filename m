Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275B824CB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0M0XpkPwpAj9E405njSnnGPYGUO0aKMhlcQExT+Tn7Y=; b=qKYVefaf/tTPqlBmVcB8jFEHQ
	KucQedH45wNnQkJf/b3kc5op4zxy0SqBTB0/6jAvhl4vtC5UV3utsZKaaEguDGXkrMRnqV7g5BPXw
	fhib15mI54HIVv8ALkbKhPiKLrLLNPHCcj/Off2p+3WFUFt5J72JbGht8Q5JA64l8G/ehFLJHqroj
	TOR2UbQHzSY7j3RIzc1tRwfPmGJ801Mj+LDso64NQbLHy80ix2k/Oc+tZZvnYTb1xXxIonoQMh67/
	1lFirvnmwqg7Zj+YguJIqeLKpgCVpKE8gaQsOJnDCKHPMZvUGFjKnrmBquuTJ4MGnlwdTMveCbXqt
	EcVKlMeig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT21F-0006Rw-19; Tue, 21 May 2019 10:29:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT215-0006Nu-2b
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:29:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id j187so2314868wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 03:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=i0as0vN7D4i2ID/z1L3403i8uDeXi4TTz+AjZfb51fM=;
 b=SnrP67dbJsJ5V/2SMxKmpCWHPheHYf3g6WgtG7WT71f6kpPPXZwA+A5+5Nd3RsOrp1
 Eqxp6unRSFoqJaHdU7UsA7xY/OSljTB8gN8xFw/REQdXGIS7ymFcqUivgkHfsN4QNqJO
 sp+SqLTbkhWI+yVRiiFJndtjdQ31C1wGDR0MIC4DbWfNXu2G2bOsnM/Sy5SvZrLfBpsu
 wk4RIzfJWuGXf+PvLQCg7VaQf4LS111TUgf1Lmw8+2qQ8g/gu/Wmh1bQOCX8PxtOEvB8
 YDwZJGPBR6V6119l5vXPhRDj2rPbSFbwqUHfraY6r9x4hizhSFic9McgKdX9QdAs9xVe
 7wkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=i0as0vN7D4i2ID/z1L3403i8uDeXi4TTz+AjZfb51fM=;
 b=PWQKdj9LBt02s65IAldkfIh67/FWAR4ZSkuDLngzthbUPSE8l1m/7v57AH3Qr9xX1w
 gn5YTchlEOzRYuPNmJCkuXRQuRcHtLRvgNwcR/WRx+zY6qywbtL0oE5UWxrEsvlp5GaK
 hOjJ1XF6kOC56Q4kI4kLe0WXwCyeWt7ZBr3JWMXYmMnYil073uuyjM9/un5gwVZaiFol
 /NNpgFnZk52dp/c43VN+l4ffllmX+/fz0qKy7+lCQwm0fLaArsCED3plbEUnjGt7VASV
 Tie2Y5NR8Zdg3ftNzKWo922HqsriOvjzfbhb9vDGmxbWG98AQ+h90xd2aNmsxzSwe2BP
 Nd+g==
X-Gm-Message-State: APjAAAUwaj4430/fUuH4Z3ujDtaFBvwLNcjshU9NXJPX9WsMEho8RbAo
 18MyjTGzeI3yfUU1nwx5ZuXK5F/69gg=
X-Google-Smtp-Source: APXvYqzFY2W87G2XKblwh9OOAK6rHD5rjloo7s4t8aFeVEtSUWaJ/9tLang+7WHGIvY7iFcgQ7pUbQ==
X-Received: by 2002:a1c:c104:: with SMTP id r4mr2834393wmf.133.1558434545301; 
 Tue, 21 May 2019 03:29:05 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id t6sm5239538wmt.34.2019.05.21.03.29.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 03:29:04 -0700 (PDT)
Date: Tue, 21 May 2019 12:29:03 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 03/15] PCI: dwc: Perform dbi regs write lock towards
 the end
Message-ID: <20190521102903.GC29166@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-4-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190517123846.3708-4-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_032907_183843_386908FC 
X-CRM114-Status: GOOD (  16.85  )
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
Content-Type: multipart/mixed; boundary="===============6215485255036098319=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6215485255036098319==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZmUaFz6apKcXQszQ"
Content-Disposition: inline


--ZmUaFz6apKcXQszQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 06:08:34PM +0530, Vidya Sagar wrote:
> Remove multiple write enable and disable sequences of dbi registers as
> Tegra194 implements writes to BAR-0 register (offset: 0x10) controlled by
> DBI write-lock enable bit thereby not allowing any further writes to BAR-0
> register in config space to take place. Hence enabling write permission at
> the start of function and disabling the same only towards the end.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v6]:
> * None
>=20
> Changes since [v5]:
> * Moved write enable to the beginning of the API and write disable to the=
 end
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
> * None
>=20
>  drivers/pci/controller/dwc/pcie-designware-host.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)

Looks good to me:

Reviewed-by: Thierry Reding <treding@nvidia.com>

Thierry

>=20
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/=
pci/controller/dwc/pcie-designware-host.c
> index f93252d0da5b..d3156446ff27 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -628,6 +628,12 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
>  	u32 val, ctrl, num_ctrls;
>  	struct dw_pcie *pci =3D to_dw_pcie_from_pp(pp);
> =20
> +	/*
> +	 * Enable DBI read-only registers for writing/updating configuration.
> +	 * Write permission gets disabled towards the end of this function.
> +	 */
> +	dw_pcie_dbi_ro_wr_en(pci);
> +
>  	dw_pcie_setup(pci);
> =20
>  	if (!pp->ops->msi_host_init) {
> @@ -650,12 +656,10 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
>  	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0x00000000);
> =20
>  	/* Setup interrupt pins */
> -	dw_pcie_dbi_ro_wr_en(pci);
>  	val =3D dw_pcie_readl_dbi(pci, PCI_INTERRUPT_LINE);
>  	val &=3D 0xffff00ff;
>  	val |=3D 0x00000100;
>  	dw_pcie_writel_dbi(pci, PCI_INTERRUPT_LINE, val);
> -	dw_pcie_dbi_ro_wr_dis(pci);
> =20
>  	/* Setup bus numbers */
>  	val =3D dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
> @@ -687,15 +691,13 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
> =20
>  	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
> =20
> -	/* Enable write permission for the DBI read-only register */
> -	dw_pcie_dbi_ro_wr_en(pci);
>  	/* Program correct class for RC */
>  	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
> -	/* Better disable write permission right after the update */
> -	dw_pcie_dbi_ro_wr_dis(pci);
> =20
>  	dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
>  	val |=3D PORT_LOGIC_SPEED_CHANGE;
>  	dw_pcie_wr_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, val);
> +
> +	dw_pcie_dbi_ro_wr_dis(pci);
>  }
>  EXPORT_SYMBOL_GPL(dw_pcie_setup_rc);
> --=20
> 2.17.1
>=20

--ZmUaFz6apKcXQszQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzj0u8ACgkQ3SOs138+
s6EJCxAAnfv9ugCWZBC133ybiQYMaRJDUdLgGhyHZVX1/ZdmY5GToImZM6vjRujM
WlozE5s76t1gP0g6h1EhQqKoayUTSpKsqYHN8/H6SqPOZNlJLxELi2ZeIj66fcAC
/CahfKX4LFBR1Nb8QESoVaKPz0luor5SfwJmZsxHJTbfI+kXgs/4CYfXuhI3mRRU
NHSNushq/sxYks4IXV9oaMq4G8VVcmzGilKTiU65mYaQLYmFUpvkYLnBZlsig7qT
wYx1X34PPcO1/hg+dy55Kb2+TPU+tiMbIWKhhD/7efmoTobK77eNe3kcvylMier5
h6rzvmY8Vg2yJUlz498PO/0Vt6KTDC09fbTIQCELwak64CEfdIaR1K+gUXAp2YaL
lgjJFZtMpwGd8/DiC3gaIaiJQaYEMYj0cVyE+zpvDYTrue7l4ohkQjoyE/VbFhv+
PkIvP49aEiu0cm6FOEn1o64d7rzuXHUAK14ePYB5zmaovQ+7dEnS8NTo7cxAB5TB
EqkeWiHLrC32T/q0S01MO07/+3uX4sRUByRUgCjxPcgI2pJQM28SzxoQDGiozdYC
DiQW/JxNkL8+VWvPaZxBW6ywShWqzfXk9j8XoNOs0GLoArxiokfBjpigxJpF//Fs
CxDzv0ERBk2rPlTXg3GitfuOjs7H1wdZzHjJmLwfaQx1oPPaHL4=
=ZY4e
-----END PGP SIGNATURE-----

--ZmUaFz6apKcXQszQ--


--===============6215485255036098319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6215485255036098319==--

