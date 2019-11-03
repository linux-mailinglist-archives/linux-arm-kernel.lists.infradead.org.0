Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8AFED3C4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 16:59:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+RXwFlbjGpYMjMxf991cXwcf3CU/YbD/1B8XYbyNwfY=; b=ESRnkOe9Fi4k7Xn0qhDEHFVBu
	46dzD1OhS+GZxjeP/xDgoVrnXrhNFoNP2b8VxtlhumJQ53u3nNJc5eR5DhThU+KGryhLIovOI9mGK
	VTdxlYt3Ta5myebrRDCAc+wvVxGHWW9J7mM6leLSmd+Vk756xHu0yJiVnu5M3y2oZQD8mOFnh/0Y6
	PY6/zyjcEg3jE7YSg/kN1kZWIC8UMUfvxGGan8fqIz6bWVA6Lp+CbPPgYrxzuBZ0d+E3g5eAiJDM+
	774Ub+JbAITZLjOGjBAQliZG+MBBoJoeOwnO8AfmQrhsTJesAclC2Fkoc5kfoWJbRhFptC4+77TgD
	8ndp3ZjKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRIHa-0003Q9-FA; Sun, 03 Nov 2019 15:59:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRIHS-0003PH-76
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 15:59:07 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60FA920578;
 Sun,  3 Nov 2019 15:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572796744;
 bh=STPgCcvb19pfRf+vnfbC1wTtiEh0IBWfIryoTNEJMEA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TWHerJGBCwtOqQStSNzF3VL2JaGGK3XHgLAfZDlqRHGVbSHM0qWqvmIZ2JO8gIlyQ
 iHIR2oY9pr5KRvDKjNBx3SjgjbhL+vrRCscsJa17npYGIOwVYksL1rkf27GNCjQRUI
 eq9YtHm10ACDH+EykS5F4Je1V8NqYfScJwHW9WFo=
Date: Sun, 3 Nov 2019 16:59:01 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v2] cpufreq: sun50i: Fix CPU speed bin detection
Message-ID: <20191103155901.GC7001@gilmour>
References: <20191101164152.445067-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20191101164152.445067-1-megous@megous.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_075906_277601_EC1A2923 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0152313135766840344=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0152313135766840344==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WYTEVAkct0FjGQmd"
Content-Disposition: inline


--WYTEVAkct0FjGQmd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2019 at 05:41:51PM +0100, Ondrej Jirman wrote:
> I have observed failures to boot on Orange Pi 3, because this driver
> determined that my SoC is from the normal bin, but my SoC only works
> reliably with the OPP values for the slowest bin.
>
> By querying H6 owners, it was found that e-fuse values found in the wild
> are in the range of 1-3, value of 7 was not reported, yet. From this and
> from unused defines in BSP code, it can be assumed that meaning of efuse
> values on H6 actually is:
>
> - 1 = slowest bin
> - 2 = normal bin
> - 3 = fastest bin
>
> Vendor code actually treats 0 and 2 as invalid efuse values, but later
> treats all invalid values as a normal bin. This looks like a mistake in
> bin detection code, that was plastered over by a hack in cpufreq code,
> so let's not repeat it here. It probably only works because there are no
> SoCs in the wild with efuse value of 0, and fast bin SoCs are made to
> use normal bin OPP tables, which is also safe.
>
> Let's play it safe and interpret 0 as the slowest bin, but fix detection
> of other bins to match this research. More research will be done before
> actual OPP tables are merged.
>
> Fixes: f328584f7bff ("cpufreq: Add sun50i nvmem based CPU scaling driver")
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--WYTEVAkct0FjGQmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXb75RQAKCRDj7w1vZxhR
xWJzAQDSTsPAfe3tzFoFc8OXfLqCONSQW6Y7iTt9VnVtov6sNwEAuBQWjBl3soHJ
5L0MFRa27tIkr2hh5oVbQSGj6vO5rAw=
=0Y7o
-----END PGP SIGNATURE-----

--WYTEVAkct0FjGQmd--


--===============0152313135766840344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0152313135766840344==--

