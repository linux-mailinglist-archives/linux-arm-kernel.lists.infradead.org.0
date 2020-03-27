Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34DE19563A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qf/hBn/u08HxBRc8CYy5f4tDAHRcBLmItWA81OarG50=; b=SSIMRanO52TfvNDg6/slMh/8A
	W5/Zd+ZFpJbGhtCqicrvfUAo9pK+3RCuQIT4oCcZr3EylyjVO3jKMtorMT2TSKUsj4d6My0bqMGqh
	8SCtxMIPSwDXymCLMh9aRo21GpAk7CyLWv4rCHln/CK6wm8TtfhE2BejDKejhr1+SbZwOe7izeBpr
	Hh9WoF+51i32cRGjOxgploJNcjD6wKFtV2we9xib+/rZVS8J0ufUPyjrAgIrLnwt5nH+d2Kvg0YiA
	1VcjM/Nk6//DhMBDSkjgitoQiqvwIyfc9/V52qWz8uc5qAvwhE8Ws93iTdE/ZTOR6EFdJxCuxi8xe
	hjmIuAuqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHn4R-0001h1-HJ; Fri, 27 Mar 2020 11:22:39 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHn4B-0001eK-Mw; Fri, 27 Mar 2020 11:22:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4467AADF1;
 Fri, 27 Mar 2020 11:22:22 +0000 (UTC)
Message-ID: <6553f266f3c2a3fe2bdded5d4ca31e3720ea7ee3.camel@suse.de>
Subject: Re: [PATCH v2 11/11] ARM: dts: bcm2711: Add vmmc regulator in emmc2
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: adrian.hunter@intel.com, linux-kernel@vger.kernel.org, Rob Herring
 <robh+dt@kernel.org>
Date: Fri, 27 Mar 2020 12:22:21 +0100
In-Reply-To: <20200306174413.20634-12-nsaenzjulienne@suse.de>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-12-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_042223_894644_D947342A 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: stefan.wahren@i2se.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-mmc@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, phil@raspberrypi.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6351727717092382399=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6351727717092382399==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-vjSG4WH1xfhs1bTv2Qs6"


--=-vjSG4WH1xfhs1bTv2Qs6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-03-06 at 18:44 +0100, Nicolas Saenz Julienne wrote:
> The SD card power can be controlled trough a pin routed into the board's
> external GPIO expander. Turn that into a regulator and provide it to
> emmc2.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Applied for-next.

Regards,
Nicolas


--=-vjSG4WH1xfhs1bTv2Qs6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl594e0ACgkQlfZmHno8
x/7mUwf+JdWXfDc6pDlSApWDA195aytcdvKfmu7Wsn5Cofww7VPbRaCr6aXiLF6O
ir36AtHRiAlXnnhaAJDsriTs5FxD3VCQ7rDt9kxO9j1jSYCpsOlVTSY6MeoB4npT
XEpL7nAoqKoWTTl7uB/vwT1aCeFsFVURMaMHGbhDXtCxahjpiyl4SOHy/dJzZGYR
0LOn2gmk6DsKBLFuC0R0f1mDtVfLxyKOa27e7rGQS64bH4gQTc6DQ9Ta+FvZOSO7
OGUDpcnmEVpwuqoxwskwr/nmn6ElGWWOpN9HvIPDBeasUwBlErFyNzNv22Sr+40N
b0lEbOnZoX4UV1mMDWZXeaau39QZ6w==
=iJaU
-----END PGP SIGNATURE-----

--=-vjSG4WH1xfhs1bTv2Qs6--



--===============6351727717092382399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6351727717092382399==--


