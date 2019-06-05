Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285B73594F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kFNzTO8fVNFXr2YO4qYQ0b+eCI7d0Ofmx5E80KEIXQE=; b=WxBSHF8Fw+hyU7GyFPaMocHjE
	ogcZYoqszATWp1TWPvu0F6YreKHApPVETFLA7QJzU/3Eyf3w4KlcotYHQvSIlTWAbGOTSZZFpH/6e
	sHMTXCEavB35lt1ZTjfXrYndFU/n009NABtkjWf5xrRFV7aQgsRFH+Yztye2LS1mrpmCPMAewa9FF
	5UlmKqBsgWI7+Htk0uvWnaskzrwSOH47Ohlq2ARwN+eAjFZ8eCnpR1DB4K92ZIryuHwjz/ozqnoki
	YRywrrXTcsxKmXq3NwmuxPmekbNXbqnq1fVM9+k2z8LAabuvKTsTVCxESmSktYD7E4AbmGzvihZ6S
	ezWmwTQ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRx6-0001er-DO; Wed, 05 Jun 2019 09:11:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRwz-0001dX-Cj; Wed, 05 Jun 2019 09:11:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 627BEAE16;
 Wed,  5 Jun 2019 09:11:14 +0000 (UTC)
Message-ID: <17ea99902e4329db735080d1a8fc04f5c06c9bf0.camel@suse.de>
Subject: Re: [PATCH 3/4] clk: bcm2835: register Raspberry Pi's firmware clk
 device
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Eric Anholt <eric@anholt.net>, stefan.wahren@i2se.com, Florian Fainelli
 <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, Scott Branden
 <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
Date: Wed, 05 Jun 2019 11:11:12 +0200
In-Reply-To: <87muiwzyrw.fsf@anholt.net>
References: <20190604173223.4229-1-nsaenzjulienne@suse.de>
 <20190604173223.4229-4-nsaenzjulienne@suse.de> <87muiwzyrw.fsf@anholt.net>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_021117_579317_74E74A94 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============0327317674296771708=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0327317674296771708==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Y0gkZzcIbprnY+sekDS2"


--=-Y0gkZzcIbprnY+sekDS2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-06-04 at 17:00 -0700, Eric Anholt wrote:
> Nicolas Saenz Julienne <nsaenzjulienne@suse.de> writes:
>=20
> > Registers clk-raspberrypi as a platform device as part of the driver's
> > probe sequence.
>=20
> Similar to how we have VCHI register platform devices for the services
> VCHI provides, shouldn't we have the firmware driver register the device
> for clk_raspberrypi?  Or put the clk provider in the fw driver instead
> of a separate driver (no opinion on my part).

Makes sense to me, I'll move the platform driver registration into the firm=
ware
driver.


--=-Y0gkZzcIbprnY+sekDS2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlz3hzAACgkQlfZmHno8
x/5W0AgAk1lBDDOGbH2IxMCBbNMjMT+5XCPJUI+HhTTIY6r2lj0vF9v2mMl6idjj
Dy1k0dx1BmB4S8bAAoLUO0AjOriCapLoDDwotUSpT5XPXABdmQyacS0hzbgNtdR2
e/6Ks/dgPThgKTyWrFH5ebLK5GBqm+NtYUkFOIugECaL2oIAwaM7jFntdSin/42W
1/ZInxhc6/yeMOGZqtfnOKlzxJQ2yO6kamz6neOY6prXtJSSjjVQ8NLRun5gj8xB
FThb3WLHnZ3xUit7GnbhzzSkUAgdvTrRVesxViN+FtmGySqYeI3HVCHjjyBEu6CY
yrDjYy0kizct4ZRNg3HEGeF3/kd+EA==
=Ryff
-----END PGP SIGNATURE-----

--=-Y0gkZzcIbprnY+sekDS2--



--===============0327317674296771708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0327317674296771708==--


