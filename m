Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E2F13CB4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 18:46:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aOtnOzH1BMTujcZzFGtdMSYF1ujVWHd4OqsfO58Hw7I=; b=DhMzPdn0HXW2NVrUGPZt/ABx2
	9uN2I6Z7bK0xsP+rVmXRhi0QCnIuuWCLKlt/7pKYFlTnGlSSJR4cQ4GwVFMiDSqhbl+YFmSZUs9bI
	lbP1i6+IppywyQe961w+cc8tgDK9wT7AZbv7eRPDZUulql3J2TKcMhrzNjHZ4Y/emy7Z2GXgZUjcx
	Qf7CGZXmOH7vulcfEb2Mwj2ze8BWWII2qJ6gCPRL0tQFVpOOgNvZ/m7s/KuRLzBK46u3r/PrHy6EW
	MzBmIFHKzckd9xBnes93Nm/VXtea6MVxQmbeNatGNZKnJ0ByrSMIU+zrPbfM8BbZtY+Yf8+UIwyZv
	iWoLVH4og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irmk3-00063l-33; Wed, 15 Jan 2020 17:46:07 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irmjq-00062o-Gk
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 17:46:00 +0000
Received: from localhost (p54B33239.dip0.t-ipconnect.de [84.179.50.57])
 by pokefinder.org (Postfix) with ESMTPSA id C51E02C0742;
 Wed, 15 Jan 2020 18:45:53 +0100 (CET)
Date: Wed, 15 Jan 2020 18:45:53 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 1/4] i2c: pmcmsp: Use proper printk format for
 resource_size_t
Message-ID: <20200115174553.GI1239@ninjato>
References: <1578992765-1418-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <1578992765-1418-1-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_094554_702753_E018C773 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Jean Delvare <jdelvare@suse.de>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5489443147480025839=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5489443147480025839==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="16qp2B0xu0fRvRD7"
Content-Disposition: inline


--16qp2B0xu0fRvRD7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> +			"Unable to get memory/io address region %pap\n",
> +			&(res->start));

My first thought was "parens not needed"; not because I like being picky
but because it doesn't look more readable to me.

checkpatch agrees:

CHECK: Unnecessary parentheses around res->start
#30: FILE: drivers/i2c/busses/i2c-pmcmsp.c:278:
+			&(res->start));


--16qp2B0xu0fRvRD7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4fT9EACgkQFA3kzBSg
Kbb91BAAjPtROcvdlQNblLFk8PxjameI1NyWeapD6DkN0jImw+pfJ5nJFMnOu+Wh
F6XntHHABtG0TIZrWZcaapSG2HtJBxJq1+1H00YyQMtlUqKnBsqZCcJ0qavL1Of8
4QoH/tLRxc263i7eSKo8Q/v7NJdrfzf6SXDGj0d2uyOgHXkiBcbiw7YOeIruvgF2
nPCAe65wsLvlS2/oVyEGjSuguyiFvkhz5y75LikWQ6KPA7mOTYYlsDFldEI0Jr0n
Cjcp26950LR3uH6dkPnKJncyvgo+bqTCXty2VQZriONaIM2BgsziesYD6lZchTvT
0OyNUxrFbM6ajIuwtLD5HMiQ7GmvfHRABUscFjhWutXrjyBTmLKiWlDHMsVLnYwb
z07XxGhjmufTlBSPI4rXIZtyMv81+aQGagjZXWDwefUnsKQjilb7DFo1f5fbnsxC
sKO/C6Pi4scgwXvUCBgok0xczp1jVE2NhVLgATIvSiGqzTaTSt0xzlIZd06bStO+
uUBiyilC5TPyGU9npLRLvcaDg2LROH9UrTrb+vZX4qz5EOs25uMKb55F9oLtC5cc
STUdu4uesKZgQc6xQEZ5ZoiuWiXTr/HZ6W8sBeaIO74SLgo+g4/6mtyaRBkz53u3
vibl9z27lUGZskp0ClfuU5AD1mH0GnRTizBlJmnZIBTmmzKM5bQ=
=cFSU
-----END PGP SIGNATURE-----

--16qp2B0xu0fRvRD7--


--===============5489443147480025839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5489443147480025839==--

