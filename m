Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D817E116A24
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:50:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1QKiWIh+xY08+2jr17LL5F7t7JTRG0z451yJHvDEvaU=; b=dsCMQhLAUYmpp4HvtUt6ZxgJO
	TZ+tcStOuFFpKIvCrz0V/cnhLtuFFi/aOB9g8vKOAwb7R+dyMPA8nMiAu4ZDqZJ+wnv82mTf0ExKX
	IpxAzrdqBtYUHqWzi6quGHh67Wx1s71v1m6Ajs3nAcHRZjF+YiBbMwjQEO7MeeaLlsjF9vQ+KdZoo
	h/YOfXegAHsKks109f+6T9Wxen0CxpxIDcm8Qi8ksfrRM0pZQTIuuVWYSEHfjODAIpK1+/Kx6FMNJ
	QxGUJvWfCKO1bMmdoPgyAi1HpWGBr+/P3a/5U8UNpiqQOlbomDBtG2opM8fJ77qXiYGdo3XXVUSiO
	LHgNgrXQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFgg-0003Ae-QS; Mon, 09 Dec 2019 09:50:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFgV-00039d-Cr
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:50:32 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 393F324680;
 Mon,  9 Dec 2019 09:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575885030;
 bh=kK/I1htj5iKmRP2SOIMYrpp9j8JAcrd7L6geivuOKJ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pd3bkAeCwLsfknhYLwW5D5ACMrJir0Nd8fxBEHXzX23+IvhzeXMqC795QiGC6ii+t
 Ab/ujdrOpc5MkZkjlFcuehhQsp+UtrbtsuVAZXR09sVyu3LXeVIzUPJJ/QlVWw25Lg
 p9/gl1rc3XARVg/MwzOjTm7CT9xzPxo9/fE4NTOw=
Date: Mon, 9 Dec 2019 10:50:27 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] rtc: sun6i: Add support for RTC clocks on R40
Message-ID: <20191209095027.ivvatpcmft6357hs@gilmour.lan>
References: <20191205085054.6049-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191205085054.6049-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_015031_456333_5DA44EDA 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7058208552965722434=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7058208552965722434==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="adfqrlv2c7xcdepi"
Content-Disposition: inline


--adfqrlv2c7xcdepi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 05, 2019 at 04:50:54PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> When support for the R40 in the rtc-sun6i driver was split out for a
> separate compatible string, only the RTC half was covered, and not the
> clock half. Unfortunately this results in the whole driver not working,
> as the RTC half expects the clock half to have been initialized.
>
> Add support for the clock part as well. The clock part is like the H3,
> but does not need to export the internal oscillator, nor does it have
> a gateable LOSC external output.
>
> This fixes issues with WiFi and Bluetooth not working on the BPI M2U.
>
> Fixes: d6624cc75021 ("rtc: sun6i: Add R40 compatible")
> Cc: <stable@vger.kernel.org> # 5.3.x
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--adfqrlv2c7xcdepi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXe4Y4wAKCRDj7w1vZxhR
xYNaAQCetuw+MBQxkDVO9bmDf8kmcwTq+uA3DS6rDGX1p7rgGwD/SEy8iOesX8M3
XURC17yL4C6iJ4kO/yUvMDP24FhMpg0=
=FAWR
-----END PGP SIGNATURE-----

--adfqrlv2c7xcdepi--


--===============7058208552965722434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7058208552965722434==--

