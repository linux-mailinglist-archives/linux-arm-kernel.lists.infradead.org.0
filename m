Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049FD15AFE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 19:33:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SYMi5aTpbViiJ9Rf/hzFWG8jYqnV0LXxs8boLUzt5dc=; b=cU65pqwBgCpJ6Mrt065e4L3D6
	umIWzpVKQdAr/5R/dtbg46mvQ0freHkl5fDj1QD2dq/1GVZ/ov+PB13WE4wxbJHgWkIc3yZbODHTX
	MclSRCCZ7ALo0mwByF1TKS7kMtJMT7DSWDChegB3lTOX2Ii+JmEYGHgnZeHVWZ2MjoMxXvhpqwPzQ
	JCg6Il11woNo3GmRc/sOpKOZSG25/XVK2U2tZDOH8a+TJ0+5MO7ZsS0H5iYmaah3XEO1baNNNNsV4
	RlZs6UJtDMH5UxvyC3hFPBPZGB0181v/VRmPP+19oweDJlBz3oK90yJ0Ha6CiTdvskxIxvVRLyIa0
	FK7oDObHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wpL-0003jt-8y; Wed, 12 Feb 2020 18:33:35 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wpC-0003jW-Dd
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:33:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 20985AFC6;
 Wed, 12 Feb 2020 18:33:25 +0000 (UTC)
Message-ID: <ed0ebca492ad3b4229835cdbda65549a4e794714.camel@suse.de>
Subject: Re: [PATCH 1/4] pinctrl: bcm2835: Drop unused define
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Florian Fainelli
 <f.fainelli@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Date: Wed, 12 Feb 2020 19:33:23 +0100
In-Reply-To: <1581166975-22949-2-git-send-email-stefan.wahren@i2se.com>
References: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
 <1581166975-22949-2-git-send-email-stefan.wahren@i2se.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_103326_608088_DFC3A870 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-gpio@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1968898611520564384=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1968898611520564384==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ulzXRZjx5UFe2W/mHRRR"


--=-ulzXRZjx5UFe2W/mHRRR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2020-02-08 at 14:02 +0100, Stefan Wahren wrote:
> There is no usage for this define, so drop it.
>=20
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!

>  drivers/pinctrl/bcm/pinctrl-bcm2835.c | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
> b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
> index 0de1a3a..3fc2638 100644
> --- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
> +++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
> @@ -40,9 +40,6 @@
>  #define BCM2835_NUM_BANKS 2
>  #define BCM2835_NUM_IRQS  3
> =20
> -#define BCM2835_PIN_BITMAP_SZ \
> -	DIV_ROUND_UP(BCM2835_NUM_GPIOS, sizeof(unsigned long) * 8)
> -
>  /* GPIO register offsets */
>  #define GPFSEL0		0x0	/* Function Select */
>  #define GPSET0		0x1c	/* Pin Output Set */


--=-ulzXRZjx5UFe2W/mHRRR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5ERPMACgkQlfZmHno8
x/7XAgf/e61c0DAwpbRreaAJ033lb5vYCOwBg1og+mB2nUKnUvuCt+VaXLu9joLt
1rmULI6ENxMegyCtvmsUcEFpDcm13mPFM75+FOIOvwGZYP0NoPhNeRCEQqGKK0V9
D7QyMCIgQfREus91+C9a5McL5x+RuXp+HBgE0Pd2IzUKLmHjwyd22sVoWv5jq4QE
h7XcacuGLyHtl1YEyg98+FxSxamejERl5/XkKAvw+9mEong4Z9fCrWB7aqeiZzT+
k9y0Gc4Ew+x9u5bGyuuXIP0gTF9OmxVVbgKHw8llmvusPiogkZ+UdpZyKKCkwiWV
IHleKsp1NY1uHBmg8wNbo+jRvhmbGA==
=SdUw
-----END PGP SIGNATURE-----

--=-ulzXRZjx5UFe2W/mHRRR--



--===============1968898611520564384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1968898611520564384==--


