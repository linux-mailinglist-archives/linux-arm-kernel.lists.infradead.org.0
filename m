Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53B9132891
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 15:14:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sdmePYQ+tQlrF1DiwpjtApVu3K8hdtxGZYLDUtZO9sw=; b=rbDa1pEU6qck1zrENAt3TuQWy
	MUbT9CD0TbMT6oSn0q09Yc97G1YR3OATJscwQgrQ/KwsjYw+eK3czAMbPcmzYqHWcsf5uREhYloft
	nwynIMqWGak2hUZ+k9yNIYWazBNQwISOhzPvZwUZQLVbSWm8pehDfEVur959arUWFDXqeTWdCNwv5
	WnGbw18lQa98xa1gNXeI+StT96SPJ8qQv3UafJyMEaaxlPx6sAcFPCcHIz5Bfs90DjMqM7gAIAISu
	Do3FfZa+92YRUVSx/okn52qtfnJ7nVpoRuHLB8uEbVb536eXNvmgifzMMZI5MYo5ilsKX7p+89AGT
	wCP7UKFvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iopdG-0002tI-9W; Tue, 07 Jan 2020 14:14:54 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iopd7-0002so-3t
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 14:14:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 70DA3AC50;
 Tue,  7 Jan 2020 14:14:43 +0000 (UTC)
Message-ID: <8cef3ff20485a084ab395533f28eb0c51b47925d.camel@suse.de>
Subject: Re: [PATCH V2 0/4] ARM: Enable thermal support for Raspberry Pi 4
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, Zhang Rui <rui.zhang@intel.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria
 <amit.kucheria@verdurent.com>, Rob Herring <robh+dt@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Date: Tue, 07 Jan 2020 15:14:41 +0100
In-Reply-To: <1578072236-31820-1-git-send-email-wahrenst@gmx.net>
References: <1578072236-31820-1-git-send-email-wahrenst@gmx.net>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_061445_306094_CD56D1F0 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0333389195493744941=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0333389195493744941==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-XJAu1+XbK2gXuacraTLW"


--=-XJAu1+XbK2gXuacraTLW
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-01-03 at 18:23 +0100, Stefan Wahren wrote:
> This series enables thermal support for the Raspberry Pi 4. Neither the
> bcm2835_thermal nor the brcmstb_thermal are suitable for the BCM2711.
> So add a new thermal driver to read out the SoC temperature from the
> AVS RO block of the BCM2711.
>=20
> Changes in V2:
> - rebase on thermal/linux-next
> - convert binding to YAML
> - make AVS RO block a subnode of AVS monitor and access it via syscon
> - drop unnecessary TSENS clock and get the rid of remove callback
> - add Florian's reviewed-by to last/unchanged patch
>=20
> Stefan Wahren (4):
>   dt-bindings: Add Broadcom AVS RO thermal
>   thermal: Add BCM2711 thermal driver
>   ARM: dts: bcm2711: Enable thermal
>   ARM: configs: Build BCM2711 thermal as module
>=20
>  .../bindings/thermal/brcm,avs-ro-thermal.yaml      |  45 +++++++
>  arch/arm/boot/dts/bcm2711.dtsi                     |  12 ++
>  arch/arm/configs/multi_v7_defconfig                |   1 +
>  arch/arm64/configs/defconfig                       |   1 +
>  drivers/thermal/broadcom/Kconfig                   |   7 ++
>  drivers/thermal/broadcom/Makefile                  |   1 +
>  drivers/thermal/broadcom/bcm2711_thermal.c         | 129
> +++++++++++++++++++++
>  7 files changed, 196 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/brcm,avs-ro=
-
> thermal.yaml
>  create mode 100644 drivers/thermal/broadcom/bcm2711_thermal.c
>=20
> --
> 2.7.4
>=20

Minus the small changes mentioned you can add my:

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Many Thanks!
Nicolas


--=-XJAu1+XbK2gXuacraTLW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4UklEACgkQlfZmHno8
x/4CQAgAgO+zhdwQWVLtIsszrQRrZ0kfdbdfbJNrCOokDEca2VetcAHeJAL/cuw5
n3TWr7fqVt2u38R7e9T8lleri5Yn8ZLkzhi97Azuhox7HDYTyLU2SjRQEnrWJ4T9
1lrotXzonE48X7aouECdmfPI3RkL/wRu9wPzsgbrMC3adYZEoK8ZXLlOdGyq64bc
pdp+kF7P7DKDTmAtcpCi2XTnWlPi5OgoK+eGn0MrobV1DMKeEvo+Guq8aEeDfMbJ
QReBzmmcFf3BFrqy50L10s77vtSQ1HBU/GrIJPviPlHRfd6NCD4FIl/CiARF7RIk
abmzDRMNNKuqw00mOD69A/mIKZTd2w==
=6C0G
-----END PGP SIGNATURE-----

--=-XJAu1+XbK2gXuacraTLW--



--===============0333389195493744941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0333389195493744941==--


