Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B4024CA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ziiuv9PyXK8DLj7p2/xUW6+K24FMD2933ORp0l1zTpw=; b=I7mAZGnwnuB4TfEd7dRM4kv7y
	8MEWgGamiMMGmKWFcGaMya6g3BkkMS6Acx0h6mhY2806GKUEAtM8Z6XjqS86s2Gqy1Ugu+7v0k6HE
	h8tANwVYRvZsc9j8UVeiDC75nUflkwo9uZfQQJ1EyrWWxpE0kzKoomen58+mqmxHbXxoCji6tGKg5
	yp0wx5eqoE1XmkFujdiEsdDpjcAUjUMhq6Cp/QcZ3muLCspK2s77k1M5ZH3xvu9WjCKyNB0tkbliO
	XuvzJ69ou+zc7wLZ+hJY+qBgu4MII3Z62jgORwKP0xshi97e5ASRbZBQJYgPkOa+u61cEt0mOA27x
	EFZVCLzNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1zx-0005ax-3q; Tue, 21 May 2019 10:27:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1zZ-0005GD-Kr
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:27:35 +0000
Received: by mail-wr1-x444.google.com with SMTP id r4so17926180wro.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 03:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0u/cElypM0FGg3NqoZhyM4kF6/Suy0Ma6wulSB8WXxk=;
 b=D8LItHFK56peyyh2BjRqAE0QSAEGdSuOdY3ELK8p1Hhn5BM9FXVbU86E6K/HZsME4Q
 kHxex2HC0xFWg1SKMIR4tfPjBRgdVtKvZrgxhcFOegMcSlR6PXY1ltWAeq30PVJW+5pr
 JyGEHwl5V5uQgY8SL3EobnEVHoXBqeCE+qrDisHX2aNXlYhLWWBe2pFQ0Pdv+YfVLUa+
 DjCnkr7yZEpXOUcbGJ2XDk7rxsCR7+0WMQH4rHinDXNYEg7lkKw9htiyCO5h/M8RKIHU
 bzpH+S2sOLpNaDPHgHaMqdCRpquZokbZZ5HGDmMmeP4MNYNkdDvDntLPD1bS6T1SYkY0
 UtfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0u/cElypM0FGg3NqoZhyM4kF6/Suy0Ma6wulSB8WXxk=;
 b=MjXRXesa5RxbGxx6lX6kql8kV8qX4za+Z2fEF8b/bxpCV6s6ojjzPkQ3Cwp9g6nNOd
 mrI8jG+2XSe/Smu0qlpcajbILpna4YUtaJItFHm0jCbjOCp0XkYnndJPcHrCXTS0P5KF
 f0tJQxsYody9VNxz4le9KtAtL2u0/ykX6HBbx3jA1vJbUWlTFG3ooe+UlF8q4p5uOP7D
 mjbZHp1S5FQRvIrOyb3nr5ZjT0j6gO4GzmTf/rmbcOEo8jfqf1o7vHZbYOxuqitlWjUX
 FW3ut9NeRipomn5TjTgPOVaZsUKtrthWL9TLkNpt0IrVzzSo8hVEqorj89TDv8+8mJ2r
 negg==
X-Gm-Message-State: APjAAAXnwULc3oe7jhnPdPlXSrZJZI3h9blhG3fUOqmhaH7iuBd/eD67
 cC8rU0xSDees8Ec1JKnACWtBMLkcfww=
X-Google-Smtp-Source: APXvYqzN0aFxhFPXBCSNKpdXBwYkCaswfe1f/2Sol7iXRMG9CaRzPkEF9jISqZ9I4geyOBywAICB0Q==
X-Received: by 2002:adf:cf05:: with SMTP id o5mr34219199wrj.262.1558434451659; 
 Tue, 21 May 2019 03:27:31 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id k8sm7135873wrp.74.2019.05.21.03.27.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 03:27:30 -0700 (PDT)
Date: Tue, 21 May 2019 12:27:29 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 02/15] PCI: Disable MSI for Tegra194 root port
Message-ID: <20190521102729.GB29166@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-3-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190517123846.3708-3-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_032733_762192_F8A815FB 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Content-Type: multipart/mixed; boundary="===============7566439867918888510=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7566439867918888510==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hHWLQfXTYDoKhP50"
Content-Disposition: inline


--hHWLQfXTYDoKhP50
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 06:08:33PM +0530, Vidya Sagar wrote:
> Tegra194 rootports don't generate MSI interrupts for PME events and hence
> MSI needs to be disabled for them to avoid root ports service drivers
> registering their respective ISRs with MSI interrupt.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v6]:
> * This is a new patch
>=20
>  drivers/pci/quirks.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
> index 0f16acc323c6..28f9a0380df5 100644
> --- a/drivers/pci/quirks.c
> +++ b/drivers/pci/quirks.c
> @@ -2592,6 +2592,20 @@ DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA,
>  			PCI_DEVICE_ID_NVIDIA_NVENET_15,
>  			nvenet_msi_disable);
> =20
> +/*
> + * Tegra194's PCIe root ports don't generate MSI interrupts for PME even=
ts
> + * instead legacy interrupts are generated. Hence, to avoid service driv=
ers
> + * registering their respective ISRs for MSIs, need to disable MSI inter=
rupts
> + * for root ports.
> + */
> +static void disable_tegra194_rp_msi(struct pci_dev *dev)
> +{
> +	dev->no_msi =3D 1;
> +}
> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad0, disable_tegra194_r=
p_msi);
> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad1, disable_tegra194_r=
p_msi);
> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad2, disable_tegra194_r=
p_msi);
> +

Later functions in this file seem to use a more consistent naming
pattern, according to which the name for this would become:

	pci_quirk_nvidia_tegra194_disable_rp_msi

Might be worth considering making this consistent.

This could also be moved to the DWC driver to restrict this to where it
is needed. In either case, this seems like a good solution, so:

Reviewed-by: Thierry Reding <treding@nvidia.com>

--hHWLQfXTYDoKhP50
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzj0pEACgkQ3SOs138+
s6GqcxAAjaEUM9FTNPbKl4kQsquEnKIrVyDWV9lxJqFh1YaQGK005Nk/f1oJcuOn
CEP8HrtYIpZk1wn1cUsT+ec9j7qxlu9ihEhKBXxsFOf6njXoBnc+QjscO28UJ4tu
HYHDpvEK98bDBRMJhaZuBEClqBuFAH5Zrp8909NaUgaka7ut6PZqQC6XymRa6aX8
5z8GSfR/FSNdUnhJ0gboYdliYQc+/co73YJUPVWKimKkRKnfD6OYNjR9+YfncIPU
cFkBWnqCFzLVg6NIIOXpcEftFstLcTSJeC4XZ4bVa442Wbnz2dsgqHJMBy2wuR1z
vwtnw+94Coa8E7Zsa5NCwTOiqyqhjsJGsS5IcI3OEbjh2aue7ScypriufK4Dyept
hITWFgp0ZX1UxT2/QCLHfue3qNgSdOTYtomYFATqyHPD3BrgDAG8XZKKSDUVty8h
PE7MLQfsgWWdqFn0SaHeiCGMlc/1n5JvBRzfO04dPNH62G80YoJ5/WqkZ15pTQFW
FCbfApM2DekXpRsJaQvkPuXOAJOsUhR//WSLEMJQWfTl2pfRq2HPwWbSAgriL++k
VnsA4LBL4dKx8eqQJO/6SGJHmeHEjEnugbm9vsxQmiajUFl3LdVt6PfGeaSMq9oy
ggLSXlC+pTaWmPnBKEKh5aLNtSCCz+lT2cKkLq24YbX3YnLaC4g=
=PTXE
-----END PGP SIGNATURE-----

--hHWLQfXTYDoKhP50--


--===============7566439867918888510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7566439867918888510==--

