Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AA2667B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 09:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fFW9SVd9jabplLFXdS8ljuGSSJuQ4iduxWnLd7pnQrM=; b=CvpsENQVnP7HFspXjRVGY0a+l
	lJLQAa1ThdutM00GoZ1ABIBAp6xNUlVFUbBYIWwm6m4hzsz4TS0+rQ0dkfjrQTCcxXFH2NGHiq6B3
	jH4oyvL5aoF5a7xJZYYMFqd3IqJN/ksJxFjmBPRmM8IeaXxCngS9KkRpAIiThlDJhkknXFlPfPiRM
	6uJTg9/u+7Fm5pmzigh1AbLdGtOU4oNj3v4up1OdYD+ktd5gkFb4cgYR7WkzoEbcrgVA/0r6itU0C
	U8Bpqnz797/4hjm5SUdg5+lI23EmnRGc3iBT29rCeAcud9Nyx592QGMZTehNlsw2NucPCVThBDAvI
	T6wBYAWRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlpsd-0002Qc-8J; Fri, 12 Jul 2019 07:22:07 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlpsQ-0002PU-L6
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 07:21:57 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 54820E0004;
 Fri, 12 Jul 2019 07:21:46 +0000 (UTC)
Date: Fri, 12 Jul 2019 09:21:45 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Zeng Tao <prime.zeng@hisilicon.com>
Subject: Re: [PATCH] phy: Change the configuration interface param to void*
 to make it more general
Message-ID: <20190712072145.gr3dbfvdfgrye6yi@flea>
References: <1562923580-47746-1-git-send-email-prime.zeng@hisilicon.com>
MIME-Version: 1.0
In-Reply-To: <1562923580-47746-1-git-send-email-prime.zeng@hisilicon.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_002154_853405_507D7D2F 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, kishon@ti.com,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1678082380918828346=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1678082380918828346==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q4ycfudq7dncn663"
Content-Disposition: inline


--q4ycfudq7dncn663
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 12, 2019 at 05:26:04PM +0800, Zeng Tao wrote:
> The phy framework now allows runtime configurations, but only limited
> to mipi now, and it's not reasonable to introduce user specified
> configurations into the union phy_configure_opts structure. An simple
> way is to replace with a void *.
>
> We have already got some phy drivers which introduce private phy API
> for runtime configurations, and with this patch, they can switch to
> the phy_configure as a replace.
>
> Signed-off-by: Zeng Tao <prime.zeng@hisilicon.com>

I still don't believe this is the right approach, for the reasons
exposed in my first review of that patch.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--q4ycfudq7dncn663
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXSg1CQAKCRDj7w1vZxhR
xcl7AQD/l+gpdt4tLbilzX+6ZMKAGS3WAQO2akmyeVmUZrz6cwEA9wIVIvz4R8Zy
JSba5uROdmHDOd3ljw0dOctpSOHXmAw=
=FZ3v
-----END PGP SIGNATURE-----

--q4ycfudq7dncn663--


--===============1678082380918828346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1678082380918828346==--

