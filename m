Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4926F1FF001
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t2Vqf25EDbn7//n2w8bHElf6gzumQehit+SsLm0OqGY=; b=OSDv+3OKxf3SgKfLhXxOgXSmN
	Tpsf5gsgujyQMpJJZlwgPrIF81agUL2O3/+gQTcav6ZRL3uyT6dsuStRe2S3zoxz+nqIW6JySBUe+
	tlbs05QdPg43eTyFfkONuvCCnbM5J6aYJ7YrPFVuncFbSg8D421esUt5MLcWXYaYauZt6bcYvA4Wo
	952CPzow5zdbc38lSGrYMQbSv0PU2D1326Ykony52sxK+eZa9N0DTeK+H6wDLmHeEecmu4UO7+Owm
	GsJPqUUYehBGCXpKohp3eECI4ni9rUox98dDrfNm8FCcamOC90LPnjhaFS27TYpTDvHCojhHriZPo
	W5OA+T02g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlsBf-0006wi-Vd; Thu, 18 Jun 2020 10:54:27 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlsBX-0006w4-Lg; Thu, 18 Jun 2020 10:54:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 01E55AC53;
 Thu, 18 Jun 2020 10:54:13 +0000 (UTC)
Message-ID: <6b8edfca3890f026bd0a33591d6fd1f9691e7e4e.camel@suse.de>
Subject: Re: [PATCH 04/15] PCI: brcmstb: Use pci_host_probe() to register host
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>
Date: Thu, 18 Jun 2020 12:54:12 +0200
In-Reply-To: <20200522234832.954484-5-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
 <20200522234832.954484-5-robh@kernel.org>
User-Agent: Evolution 3.36.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_035419_854827_D3EACA13 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4552296233269239224=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4552296233269239224==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-OPGLGZsMisDLgv+ey9Oy"


--=-OPGLGZsMisDLgv+ey9Oy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-05-22 at 17:48 -0600, Rob Herring wrote:
> The brcmstb host driver does the same host registration and bus scanning
> calls as pci_host_probe, so let's use it instead.
>=20
> Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: linux-rpi-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Don't know if I'm a little late for this series but:

Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-OPGLGZsMisDLgv+ey9Oy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7rR9QACgkQlfZmHno8
x/7VRQf/bPWts76212hIHit8+p5DzB+2Blgg7QpJyU2JvqGZJMBwvogWjXz8SfD/
eNOwoD9ggoyzg+BMDb72y4r46gwJNyYPlJCmrAs8i2Fl084eCwIJ8tcyjEV407i7
+Z2tsG4Z+OZuS/NJwco/yE3YI+UFTtNz7Scka1XkEgoMDsudljc+kQDGZzwVacDL
oCrrwdOxlErLaBd8A8TU8VYYZDFG9Oq5aAPildR3DvJWBXmMA1eTss6Ak6ctXmM2
+JfRcX3v5k/Q8rV8wFjklO18SvVmx5RvW+ELZ2DCDpg3q/Ny+ODVmqwPnMrVO6k0
XCSmwzx8e0yqRYjEHsdlTXpFnf6zNQ==
=Rx7M
-----END PGP SIGNATURE-----

--=-OPGLGZsMisDLgv+ey9Oy--



--===============4552296233269239224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4552296233269239224==--


