Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7737B126831
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:33:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CGrO99/Z+ET4sjnZiTuTf6g85zEWDqQp/zQtB4zi5us=; b=i9wxUiVGsyMNSQJEoOOoot7ke
	RjuJrTi1FzsFq5ElOtuD9NCZRnc4ZtTkZhZPDoA/M7e9QZacoVr9PsosUdBLVtw+ZKu83WNV6H3iK
	KbgPU/icWiceO5rotmOn7OPoxLIUbeS/E6/I49Zj9h2PQOcnMRxnk5vrLsXxjlNA++9gf2fpjc8CD
	HamgZVH+p1QyXf6RDHj5JdwfJFFOXn/qxEfLSlY45p+CNlwRziJVy5keSyN0iLh8VtlE6SGGpZ3lP
	KTCieDtcDyO5KOlnsIK+cMFmiHyQJTIimCfAf6OLNjU659sRCFrjOm+ti1nWzV7pNFG6jLfdKvxi7
	T2qGyxC0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzfQ-0008Ez-P6; Thu, 19 Dec 2019 17:32:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzfH-0008Eb-BF
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:32:44 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62FF221655;
 Thu, 19 Dec 2019 17:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576776761;
 bh=k50cd5B88xhBvXY5ZkbJXqjGZEzoE+Hb2bzMFriQpZ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l+pkf4mWOw9JhNDQ7HH184KSQ2rLXHpRDxLiDMXneBjcfNPsiqN9pwBDqncxUqp3y
 02V9/Hy5Xt7Ba71s2LypscPsGoMfVn7kl28ZVRnwLrByw9Peto+nA532n1Y8Fgg0hZ
 gS09GGMTJWITcGexVVTd9FY8vVCbldDv++OTw5tQ=
Date: Thu, 19 Dec 2019 18:32:38 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v8 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
Message-ID: <20191219173238.zfcpfac46bs2gejk@gilmour.lan>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <20191219172823.1652600-3-anarsoul@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191219172823.1652600-3-anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_093243_409980_ACD5F182 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1881012224289628914=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1881012224289628914==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qvpkkhg37mvl6gwe"
Content-Disposition: inline


--qvpkkhg37mvl6gwe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 19, 2019 at 09:28:18AM -0800, Vasily Khoruzhick wrote:
> From: Yangtao Li <tiny.windzz@gmail.com>
>
> sun8i-thermal driver supports thermal sensor in wide range of Allwinner
> SoCs. Add YAML schema for its bindings.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--qvpkkhg37mvl6gwe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfu0NgAKCRDj7w1vZxhR
xTsHAP4pjKvGwYzFATi3ZRZ9Icy+5en/9wH9EXDxgCLFt/7Z2gD/WbLkhcAZQUIg
h4Q76OJzfvYCKvCdvc/BVGFPYmKwQwU=
=TiK5
-----END PGP SIGNATURE-----

--qvpkkhg37mvl6gwe--


--===============1881012224289628914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1881012224289628914==--

