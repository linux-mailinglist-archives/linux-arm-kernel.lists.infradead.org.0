Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE94EC5DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h9y1xL7jaDvC2UZEIZidEW+xJO/j8SHD8Aop9pBr2qs=; b=Wv3kOuIKnr7In/M/7T0JyKnty
	sc3lfqipEhKvbFpVZmXGK9GgzuoI8N23wNllVKRuBqP1p/fvbDfoCoo/BotOi/e2Ki+vDd2QNBCfx
	6pQlBMN0fJ4F74y6ARrzaAbntfVO2LQKHJBHquAEsUtqYY89pGY7WVlZ6Ij6LxhCym76AAqrjJPMY
	OhMOCDsCwvXDRVICDxkalyhWUlsAvur640YOwkBB4Xf0eqlf57wGN3/xfJnD//0OkgdAf4/UFZAiN
	fkG5KOc2uL+w208ey8FpLDIK82rJQ69Q/owwz4jJP0QxiNcUCtIIHUZF8r18thLm67TpOa7Kv85w5
	k0K9VcqqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZBO-0003Fi-LE; Fri, 01 Nov 2019 15:49:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZBE-0003FI-4V
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:49:41 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C625721734;
 Fri,  1 Nov 2019 15:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572623379;
 bh=wdIW0/QLcRnGZarqavMjg3f1Q6gO9y6P1i5x8XnrKC4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=chJsFqRrFQAkIuvN3HeWEC/ZgBqGFyB54Lohux3DUr9V3T7pnBow3Tn11j/JLpRD/
 Wndm4HzwQJtvJF9DPGrJnTaDkiSwbsEdo3IgooYz2kh/PXILxPniKykE3XC/kUKQux
 AcI32uRZ3U1IV1D52C0TtrTxa+gQaGz6FvqY87HA=
Date: Fri, 1 Nov 2019 16:07:01 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH] cpufreq: sun50i: Fix CPU speed bin detection
Message-ID: <20191101150701.fgke7hoad5zn3vn2@hendrix>
References: <20191031181359.282617-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20191031181359.282617-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_084940_203594_98720401 
X-CRM114-Status: GOOD (  11.60  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5083156148986484503=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5083156148986484503==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cxmms35ejqeprbv6"
Content-Disposition: inline


--cxmms35ejqeprbv6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 31, 2019 at 07:13:58PM +0100, Ondrej Jirman wrote:
> I have failures to boot on Orange Pi 3, because this driver determined
> that my SoC is from the normal bin, but my SoC only works reliably with
> the OPP values for the slowest bin.
>
> Looking at BSP code, I found that efuse values have following meanings
> on H6:
>
> - 0b000 invalid (interpreted in vendor's BSP as normal bin)
> - 0b001 slowest bin
> - 0b011 normal bin
> - 0b111 fastest bin
>
> Let's play it safe and interpret 0 as the slowest bin, but fix detection
> of other bins to match vendor code.
>
> Fixes: f328584f7bff ("cpufreq: Add sun50i nvmem based CPU scaling driver")
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Out of curiosity, which OPP table is being used? I guess it's one of
the dozens of patches sitting there...

Maxime

--cxmms35ejqeprbv6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbxKFQAKCRDj7w1vZxhR
xfcRAQDCSZvITYVU4ONlpersX7CkPXMk47yfFv5qPasvorZbCAD8DOHH9GG8dEHE
Q0G94TyC+NiQEhK6W0kM+D5jpHiE0gg=
=Z6U9
-----END PGP SIGNATURE-----

--cxmms35ejqeprbv6--


--===============5083156148986484503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5083156148986484503==--

