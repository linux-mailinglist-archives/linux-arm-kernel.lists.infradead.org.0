Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060E317BAC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uxIr+RBrfDe98gcnCo/W27G7TZ/qUpTpZodOipBNQxQ=; b=lkSjbgUUOsMpfCSlTiLhJobhG
	Au+E833RbfrhtDXtOWfWffcdNtTZaW92+ctOPH/xZe9XrZwDq1aRk5IudKC/tXcvpIJ8+Nl1cv4KT
	aJ8WT9+EkG7JKOQFZHDXfa4kmTWcE8S4EZVFOG/Yi3T14n9GwaYr/0oyZoOY0whoOkdTYM8i+mTrQ
	rPjavAt5loZsZBrAYvLjouqkKINQFJSJPZx9dYXVRJITIMMmnJNn97ybHLjhlr09ZXQl/aJHxScGW
	utAfBZ/v0Q0k3Lz/X2Y5R/HH7BbdKHr8t5bo7hNVG3Zm+Gqh9JecpZoTa16jRvRbXJrkKZ11JGnB8
	u5VXlXzrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAao-00007B-4c; Fri, 06 Mar 2020 10:52:34 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAah-00006U-2k; Fri, 06 Mar 2020 10:52:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id F3F1DAF21;
 Fri,  6 Mar 2020 10:52:23 +0000 (UTC)
Message-ID: <48c3673241b500077f6bbc6502cc9808110697ca.camel@suse.de>
Subject: Re: [PATCH 00/10] Raspberry Pi vmmc regulator support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org, 
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org
Date: Fri, 06 Mar 2020 11:52:21 +0100
In-Reply-To: <b33aadf7-d481-10db-c290-6e53b696b2d4@raspberrypi.com>
References: <20200306103857.23962-1-nsaenzjulienne@suse.de>
 <b33aadf7-d481-10db-c290-6e53b696b2d4@raspberrypi.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_025227_267719_C3CF8ED3 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: ulf.hansson@linaro.org, f.fainelli@gmail.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1332779663990922286=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1332779663990922286==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-9UhjfUc8RYzzqakH6eEx"


--=-9UhjfUc8RYzzqakH6eEx
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-03-06 at 10:46 +0000, Phil Elwell wrote:
> Hi Nicolas,
>=20
> On 06/03/2020 10:38, Nicolas Saenz Julienne wrote:
> > The series snowballed into adding a new quirk, as I reliased
> > sdhci-iproc's behaviour is not that uncommon.
> >=20
> > Based on Phil Elwell's work in the downstream Raspberry Pi kernel.
>=20
> There are a few typos in the commit messages ("reliased" -> "realised",
> "trough" -> "through"), but otherwise:

Noted, I'll do an typo sweep for v2.

> Reviewed-by: Phil Elwell <phil@raspberrypi.com>

Thanks!

Regards,
Nicolas


--=-9UhjfUc8RYzzqakH6eEx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5iK2UACgkQlfZmHno8
x/4M7gf9EZ0Cv5CEcpHtF6lShxtR/jvIMxJIC1qU2ejjg9BOn/1cwcRQPzFs0VHI
186bNu4WSIUcv6cJHfJV5zW1lFliXoC4O6ecM0PHvvdDjcVWaoEihNPNpJFJVoEU
hYPo1VWm0+yHZLuo5sBcCcvVvDQ/gjFcw5btIwbVSxXKlOIwpzowL2piUR28u0wB
bkXtHzGC7rnPhWDG8MKfiiU5hEX9rZNSVUOv4yTFPk/uDtHYBOFzp5svA0OuNfs+
Xo/4xoIkoILs/GeZ7qftmSq7VzoUa0qiFSDvtrtH09AjzeUXuSQmV17z/ninTZSQ
Iv+4C7i6MfH6ePKd09WnGqyjQSq7yg==
=g6za
-----END PGP SIGNATURE-----

--=-9UhjfUc8RYzzqakH6eEx--



--===============1332779663990922286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1332779663990922286==--


