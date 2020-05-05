Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAE41C56BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lySN5rDaeLTG8J/d39+8i7nOX5s4djXApK2l5wIBEfw=; b=a++efNbBaQtpQeFD7QLciBOGQ
	mPT1cexQgb+RplER9FD9wE5CD4w/egts09R7tzy5H6TwcRwLI9HVBI24PDWG3x7/YuSxGUplSFELJ
	mCps6cqpDSJ0H7Gnc73Nk5fnFwwI8Sci3/MCPYjVkVKwqmV2bAvYrEo+jtngS830G/BRdSsR3HAcF
	DNhQM/e8zelIp+vtdyCgnAhD/mD0nh1QK1qLq+8vizuDQwEkB6xJbYRLmD/AvBUAjxqg6/oxgBlS9
	SOCgjmW9RDnUS5+FoZ2HX8jF4LliMO6BOs13Hjm3vAtsMcQ2qyn2yFl8OveVj33uuseS7m64JnoFP
	gb6/d2v/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxYO-0004NN-NQ; Tue, 05 May 2020 13:24:08 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxYG-0004MD-RN; Tue, 05 May 2020 13:24:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BBA43AB3D;
 Tue,  5 May 2020 13:23:59 +0000 (UTC)
Message-ID: <7946e8efb23376a395d32b2ae2ea240c519502b9.camel@suse.de>
Subject: Re: [PATCH v2 1/4] PCI: brcmstb: Don't clk_put() a managed clock
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jim Quinlan <james.quinlan@broadcom.com>
Date: Tue, 05 May 2020 15:23:54 +0200
In-Reply-To: <20200501142831.35174-2-james.quinlan@broadcom.com>
References: <20200501142831.35174-1-james.quinlan@broadcom.com>
 <20200501142831.35174-2-james.quinlan@broadcom.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_062401_033737_B89FF6A5 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE
 AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, "moderated list:BROADCOM
 BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5778866187876246601=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5778866187876246601==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-j/ZrGLyXvIzAV7yVCtRN"


--=-j/ZrGLyXvIzAV7yVCtRN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-05-01 at 10:28 -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
>=20
> clk_put() was being invoked on a clock obtained by
> devm_clk_get_optional().
>=20
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas

>  drivers/pci/controller/pcie-brcmstb.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/pci/controller/pcie-brcmstb.c
> b/drivers/pci/controller/pcie-brcmstb.c
> index 6d79d14527a6..454917ee9241 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -899,7 +899,6 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie=
)
>  	brcm_msi_remove(pcie);
>  	brcm_pcie_turn_off(pcie);
>  	clk_disable_unprepare(pcie->clk);
> -	clk_put(pcie->clk);
>  }
> =20
>  static int brcm_pcie_remove(struct platform_device *pdev)


--=-j/ZrGLyXvIzAV7yVCtRN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6xaOoACgkQlfZmHno8
x/4zFAf6A28BXIGgiFx4cGET/exjJuFYtSEdnxdHqrU3xmv0+qw+NJRL+o6kzhqa
Pb1Wx5+R2KV1NbiU0BKwzhHL8vj2KiE2k/zi14dvyEoy1EHsnu3aQ96eeXralUOU
AjubnENtm+mfBPX03xZaWzjRGs4fgrJbqEEE3INb8Iji4X85iMhTh46ylY49Hkdz
oM0lPWTRTAEXQLzBONZe7VQi+S0Zd1t8mY0IZV8nJYifwqgvYoJdSvXzNxCfJ3fA
slYEVGW5maJEO/qHsWKyJYE17mwWPGeskeAVF4dQWQt1rDPc1vm+AsaCJzjPLMhM
904BWZ69Lu3pdxhAiLGBX8dd+oRvzA==
=A2C7
-----END PGP SIGNATURE-----

--=-j/ZrGLyXvIzAV7yVCtRN--



--===============5778866187876246601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5778866187876246601==--


