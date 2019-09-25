Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E01BDCAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 13:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X4MQ/M6y+QQe+2QuXCYdSR/bUls4w0490owG3SWOZlY=; b=Qk0suEgCXizd03kPBuPj8p2KD
	74lx7/i/Y5mIuUCMJnhjVjIVpDJHFlmoRyPN9Pt4FalV3KEd1IdXZMIdPYYNP6sZ4z2kWF5xCBJBQ
	1vDt2XHj/ch/Wfxh/l1Iq8A9+m+rdribhfQ4iOpLNgZNEEhfpIXEgp9Hv0J92B3EKT6SNpoLLRbHK
	e5sWdQ7eqVhRpCAkB1Thz2TQ+lD1kLG4WZBXcRVE7N2LyQB6gqmKFmkD4gALvCYfSGqvomAwmvHHH
	6tQNSwHjwZKUGglh3IqWgwAOo/XMcTq00bsHrejzzolO6gKM+W0tIDJJ6R6yDoRIjf3kuYmw5AcPm
	NVmWIHGWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD57D-0000vD-L9; Wed, 25 Sep 2019 11:05:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD56q-0000uT-JI
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 11:05:25 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FB592082F;
 Wed, 25 Sep 2019 11:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569409523;
 bh=/puB6B6PVKDxmNtkS5LQbtyHN2zHMrrYX7SAlqLe9sE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wp8VnmbJnm8bwlyysvBz9wNIDjnZd8LK2RmHB52rb6eQLRXmGXgsE8IZeKZ7pjeys
 a1kY7TiE8A8mvxThlGZTR3n9GahOVvDMCtkQMXjLEzGr6YL3m8zKjfmNt0FefMAl+p
 gpqhM3Eb9aDPKCau92d2cKNWhWnhwGFoVV9NzHks=
Date: Wed, 25 Sep 2019 13:05:21 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v3 2/2] crypto: sun4i-ss: enable pm_runtime
Message-ID: <20190925110521.ad3igh3dkhtzl22d@gilmour>
References: <20190924080832.18694-1-clabbe.montjoie@gmail.com>
 <20190924080832.18694-3-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190924080832.18694-3-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_040524_698655_AC305C01 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1095793440942579602=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1095793440942579602==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="epxq7jf6b7rjqwnd"
Content-Disposition: inline


--epxq7jf6b7rjqwnd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 24, 2019 at 10:08:32AM +0200, Corentin Labbe wrote:
> This patch enables power management on the Security System.
> sun4i-ss now depends on PM because it simplify code and prevent some ifdef.
> But this is not a problem since arch maintainer want ARCH_SUNXI to
> depend on PM in the future.
>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--epxq7jf6b7rjqwnd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYtJ8QAKCRDj7w1vZxhR
xbUxAP9Pd7pxZ4HyWKEAjwRXgd0MYbOY1Igq24YqzLBkqoyWgAEAyOOvUiM/YyHN
RXo0PiTmebIKKPZ+S6FfAI3GeLQdEwk=
=/Pb0
-----END PGP SIGNATURE-----

--epxq7jf6b7rjqwnd--


--===============1095793440942579602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1095793440942579602==--

