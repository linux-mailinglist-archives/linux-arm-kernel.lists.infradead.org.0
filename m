Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEB71FD558
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 21:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6SAc/wKCPR4U+5Lxf62lS5D/m0ZEsiMXIsrT7iIyu5A=; b=EY1AlyefsHtnZJot0BVaA2e5R
	5kJ02R/YnUxGrLUsHNE4TeIk5ZHR5SCtDrZ3eFmpb8PwYuSm53kX3oRnhoROYaTvYCQMvAQqP0v45
	TnvLb0+U2BKkTfN+746BtcS3kde85yjntQnc0LG5ob5Si7laby6micdnDG6xuZvVgDoV2b+CmpyXG
	yjocfQ+mU/OsO+LtgWd2C5Do8s5avwarrTPEpzI9SkYJHLlsCbVQaNuQporzIY7sxu2anq5P4IaL9
	ppQzasVXoijkB3jPLBrVWAFW6fzBe4yPLZAPgUraFh2YP4WnXxaGmPL+cDP8AigEdFDN+9vtveUII
	21FZrnSuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jldd5-0001Sn-9g; Wed, 17 Jun 2020 19:21:47 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jldcw-0001Rm-Ap; Wed, 17 Jun 2020 19:21:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0E869ADC9;
 Wed, 17 Jun 2020 19:21:38 +0000 (UTC)
Message-ID: <9450f86c15ecd8435bcdbc395f8674172a975100.camel@suse.de>
Subject: Re: [PATCH v3 4/9] ARM: dts: bcm2711: Add reset controller to xHCI
 node
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, 
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Bjorn
 Helgaas <helgaas@kernel.org>
Date: Wed, 17 Jun 2020 21:21:31 +0200
In-Reply-To: <20200612171334.26385-5-nsaenzjulienne@suse.de>
References: <20200612171334.26385-1-nsaenzjulienne@suse.de>
 <20200612171334.26385-5-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.36.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_122138_659943_6C1F2715 
X-CRM114-Status: GOOD (  17.10  )
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
Cc: devicetree@vger.kernel.org, tim.gover@raspberrypi.org,
 mathias.nyman@linux.intel.com, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, andy.shevchenko@gmail.com,
 lorenzo.pieralisi@arm.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============1984569884263853283=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1984569884263853283==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-lfIoWXagrdDHMww3Jq4T"


--=-lfIoWXagrdDHMww3Jq4T
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

On Fri, 2020-06-12 at 19:13 +0200, Nicolas Saenz Julienne wrote:
> The chip is hardwired to the board's PCIe bus and needs to be properly
> setup trough a firmware routine after a PCI fundamental reset. Pass the
> reset controller phandle that takes care of triggering the
> initialization to the relevant PCI device.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
>
> ---
>
> Changes since v2:
>  - Use dt-bindings to access IDs
>
> Changes since v1:
>  - Update to match new binding
>
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> index 0cef95058fb0..e20979013414 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> @@ -4,6 +4,8 @@
>  #include "bcm2835-rpi.dtsi"
>  #include "bcm283x-rpi-usb-peripheral.dtsi"
>
> +#include <dt-bindings/reset/raspberrypi,firmware-reset.h>
> +
>  / {
>  	compatible =3D "raspberrypi,4-model-b", "brcm,bcm2711";
>  	model =3D "Raspberry Pi 4 Model B";
> @@ -207,6 +209,13 @@ phy1: ethernet-phy@1 {
>  	};
>  };
>
> +&pcie0 {
> +	usb@1,0 {
> +		reg =3D <0 0 0 0 0>;
> +		resets =3D <&reset RASPBERRYPI_FIRMWARE_RESET_ID_USB>;
> +	};
> +};
> +

I'm now double-guessing this is correct. With this lspci -tv output:

[0000:00]---00.0-[01]----00.0  VIA Technologies, Inc. VL805 USB 3.0 Host Co=
ntroller

The DT patch should be more like this:

+&pcie0 {
+       pci@0 {
+               #address-cells =3D <3>;
+               #size-cells =3D <2>;
+               ranges;
+
+               reg =3D <0 0 0 0 0>;
+
+               usb@1,0 {
+                       reg =3D <0x10000 0 0 0 0>;
+                       resets =3D <&reset RASPBERRYPI_FIRMWARE_RESET_ID_US=
B>;
+               };
+       };
+};

Small details aside I'm pretty confident this is the way to go, but would
appreciate some comments/validation.

Regards,
Nicolas


--=-lfIoWXagrdDHMww3Jq4T
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7qbTsACgkQlfZmHno8
x/4CVggAn3Z1hf15FCwZBqJ5vtu95aPDbATL/d0KQ7jGrs66dTwaOP6aBJFw48YF
0wKRsvMe9LukIRSOBh9HluSEszmQj7/hUGRYcsXaBgmHeOVs9PCXDbJb0/XtgBwF
3EvokrD1MRS9bcpXwVOCKsMu+wjaGMlCiiJ6wmvD2ffybDPtYA19Xci86XF3Y2WT
PTeuhEXh+/+wADvH/z0Gi4ivdIAh6FGLbdaSSVgEpf1JChHkSH0anKhw78keHGWK
WXifnT/7XqG9VtvNNmFvQ1+q7MoyyJlzCn/NXfNuhjmBV+A6gxhefrVRq+P2yeb7
LzlXGvG8m8RsQQgt1TlpTQwfAjB8KQ==
=jUpw
-----END PGP SIGNATURE-----

--=-lfIoWXagrdDHMww3Jq4T--



--===============1984569884263853283==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1984569884263853283==--


