Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE69214B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/MVhNE1iRFLmLk9+9u/cUDvmpm34IORchrEy1S8fA6c=; b=SPW9JOiXkgjTAby4RJdY+erb0
	YlOSef56CefXx3Xrt9pQc16lX/EEHjxkPXaaQmP4KX97agnFkik3H+AntJcUZRF1iH5NDj+qTxbX1
	6NLolgNtmJfbN0WekU6h0a41RebqWBeNATnOSnPG+wzpzuIhHMaLCTIW0U8PGwdZB2BiFCs8f3Yg5
	gf+P0SXRCvR+xdtJUsZoACkfGurykgcClNga2KX80h+/M11D8PGuvEu4nJfiE78fz5owiN2SY1A5P
	zcepGDDlzX8wABXnBBbe2gbjjNKXvyNXhuY3oEFLuALqSzQ5Zc2lRGxpiQsFEykARe+Px5j67rbwO
	D/ZfdZXsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXXD-0000sA-Kw; Fri, 17 May 2019 07:44:07 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXX5-0000rX-T7
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 07:44:01 +0000
X-Originating-IP: 80.215.154.25
Received: from localhost (unknown [80.215.154.25])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 37CA020009;
 Fri, 17 May 2019 07:43:51 +0000 (UTC)
Date: Fri, 17 May 2019 09:43:50 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v2 0/2] add thermal driver for h6
Message-ID: <20190517074350.m4wtxn5rgiqkjgnz@flea>
References: <20190516172633.12607-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190516172633.12607-1-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_004400_089791_8E9E9B56 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 wens@csie.org, robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 mchehab+samsung@kernel.org, rui.zhang@intel.com, paulmck@linux.ibm.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2568750603475094123=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2568750603475094123==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uiqnaa7feozmkfnb"
Content-Disposition: inline


--uiqnaa7feozmkfnb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, May 16, 2019 at 01:26:31PM -0400, Yangtao Li wrote:
> This patchset supprt H6 thermal controller.

The discussion is still ongoing on the v1, it would have been better
to wait a bit on it to settle before sending a new version.

Anyway, some comment made there still apply.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--uiqnaa7feozmkfnb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN5mNgAKCRDj7w1vZxhR
xdGaAQDw2HatyDwe99md5xjAb+SPPeYer/Zb4obBMYGlhQuO9AEAkn/HI2qNYsxw
/7OQTPnikOxNibnfTB1JZq1yrq3HeAs=
=fhoH
-----END PGP SIGNATURE-----

--uiqnaa7feozmkfnb--


--===============2568750603475094123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2568750603475094123==--

