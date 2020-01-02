Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CC012E46F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 10:30:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eXQPzqgsDc+HcyKl4EfdGJBwZ65TNGkJFOIZ+6eQYtk=; b=Wt9qHRJs8VSh7HD0/bc9feHyx
	SMRMMO0T/YGg4yeQRkUIlwX9t7NBNmwePciPJ9Z17lNdMSDWJAb0GoFOJoUguh+AI/ZGMDMHZwHzh
	UHlT4+eDzKNk72wAd8fKePA4kYgpL2vRWc6F3Tu4O1Bh0KiMnI9ScCtyXUAxmGn1XQb62jZPWB+Q3
	fHu+EEHVqEyW+5h3VwC905UT1TNokHiq7WEo3fFavXtho1AsvgZevICMbIr5g+NZmijTRxdVtXugd
	sX8OFFC+VPRKkZuWMAeM9BaJKP0GDWzSp7+75MBEKVdNCeDyRrr0BSp8ebnbLm2wyqi0Akws2O3Jx
	Cib2SOGKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imwoP-00061f-M8; Thu, 02 Jan 2020 09:30:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imwoI-00060g-9i
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 09:30:31 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85A8520866;
 Thu,  2 Jan 2020 09:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577957430;
 bh=ph0Q4sVVHmPTWO2WvokDdOrhzisfVS7J7uED9CccCzc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=onBLeU3oBuFFk4MiR7WjNJBfnnVybOzgnmvvy8pL05HxVM/WZYxBG8kURNqU5HGNl
 9miZ9isKVzDm3b1D9Boy31+TFfplbz8Fpszr0dCEjmwY9yUtUmWYorzQDaGYoPuwGg
 ea/wVmGa/RFKpbXZjwO4PTDLKF1IZlIhU2NQ4Rj8=
Date: Thu, 2 Jan 2020 10:30:27 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 2/2] ARM: sunxi: Enable CONFIG_SUN8I_THERMAL
Message-ID: <20200102093027.tfs7qde2bnen7wnj@gilmour.lan>
References: <20191229111707.16574-1-tiny.windzz@gmail.com>
 <20191229111707.16574-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191229111707.16574-2-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_013030_355064_CC8438C1 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aisheng.dong@nxp.com, amit.kucheria@verdurent.com, plaes@plaes.org,
 Anson.Huang@nxp.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 marcin.juszkiewicz@linaro.org, dinguyen@kernel.org, wens@csie.org,
 clabbe.montjoie@gmail.com, p.zabel@pengutronix.de, olof@lixom.net,
 shawnguo@kernel.org, rui.zhang@intel.com, leonard.crestez@nxp.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7674193994287967015=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7674193994287967015==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xq3543oi35jh4lug"
Content-Disposition: inline


--xq3543oi35jh4lug
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Dec 29, 2019 at 11:17:07AM +0000, Yangtao Li wrote:
> Many sunxi based board needs CONFIG_SUN8I_THERMAL for thermal support.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Applied both, thanks!
Maxime

--xq3543oi35jh4lug
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg24MwAKCRDj7w1vZxhR
xddIAP4kjfpx7F958ZqZ38Qsbux5R89DGxYs7EJiKjlaK3GHDQD/cYwNoqMtuwGe
Mn0/B8dq8QAx9w6gXPQn9yaaWgdQdAQ=
=tpOZ
-----END PGP SIGNATURE-----

--xq3543oi35jh4lug--


--===============7674193994287967015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7674193994287967015==--

