Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E056F656C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aGIia8/ikXXwoS/Bb5Or9q+rslFerf95ySO2gkceBho=; b=L/1cFhir1NrzCm4ATKn1+HJfx
	LrEe0F6x961n6HrK/8IYSwjNp/qKgn3aOf/3fMdNxFU8eNmfs3eAn5xdOPW8pBq9QqadAoKBhYdUk
	oe+wuwaX566ivujE8mIlzCmDylxRehrhEmxJmry5NpkFMou2fP9KTnExv1QI/ga+UJqrDX0i6O8BO
	d4xabzviXj8Ui0qLdEfN31Z59vw9xmdG7fpQIWJ5E75M6qXVbA0JUuoiMA+Sj337b1S+nvFNBfUZp
	sTt4UiP9EHs7yMu3Ri6IxoGRa9iUcvFgXu6d1Aac7uPanBVnhtgVXj/5s9Y/KVO1xBMFlaafzB1cD
	XmgIt6sVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlY74-0003jL-8s; Thu, 11 Jul 2019 12:23:50 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlY6W-00039a-Va
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:23:18 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 9FD24C0004;
 Thu, 11 Jul 2019 12:23:07 +0000 (UTC)
Date: Thu, 11 Jul 2019 13:20:39 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Zeng Tao <prime.zeng@hisilicon.com>
Subject: Re: [PATCH] phy: Change the configuration interface param to void*
 to make it more general
Message-ID: <20190711112039.leuvelpm7opeoaxq@flea>
References: <1562868255-31467-1-git-send-email-prime.zeng@hisilicon.com>
MIME-Version: 1.0
In-Reply-To: <1562868255-31467-1-git-send-email-prime.zeng@hisilicon.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_052317_168354_B4B99B80 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============6205672264339325809=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6205672264339325809==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c2tecu4d2tdhze26"
Content-Disposition: inline


--c2tecu4d2tdhze26
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 12, 2019 at 02:04:08AM +0800, Zeng Tao wrote:
> The phy framework now allows runtime configurations, but only limited
> to mipi now, and it's not reasonable to introduce user specified
> configurations into the union phy_configure_opts structure. An simple
> way is to replace with a void *.

I'm not sure why it's unreasonable?

> We have already got some phy drivers which introduce private phy API
> for runtime configurations, and with this patch, they can switch to
> the phy_configure as a replace.

If you have a custom mode of operation, then you'll need a custom
phy_mode as well, and surely you can have a custom set of parameters.

Since those functions are meant to provide a two-way negotiation of
the various parameters, you'll have to have that structure shared
between the two either way, so the only thing required in addition to
what you would have passing a void is one line to add that structure
in the union.

That's barely unreasonable.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--c2tecu4d2tdhze26
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXScbegAKCRDj7w1vZxhR
xR7EAP44QxBQgbt8VyM5okXONW5XGgzi5lMv3iAHBL15ZA3WXwEAnVGOHiv5Ouz3
Bw95hMz8t5Qmcma+5/zZiPcoNIPCdwA=
=sALA
-----END PGP SIGNATURE-----

--c2tecu4d2tdhze26--


--===============6205672264339325809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6205672264339325809==--

