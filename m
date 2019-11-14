Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8D0FCEBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 20:27:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tjJ/FUQylwCfGg9rb8Dox10JjqYRxs9Xrt4AomdjSfM=; b=GggY8sK4n4GmUqTs0cmL3ojoS
	tdvBDk8sjVfSPTTQeTtUzx2rF0scZD4xCvb25SNUnKkohWaH453/lIeZnSaN7e/crbLPrMtGE6dp5
	JWJelARFIQecUsYi59Jl6efyjgwIu3GtQU4lzB32+YzulHjDoku0/AAyRp4r4Pgo8kt6f8EpaLdD9
	Ke3quesZc4FCMn3uIgxIW8gheASRY2HtwS5oZYbs7Lk+jAQp7CyH10gJO1pMNuraTcXZVYxG2/RXk
	/rd74lC1rr62+zd7NrkfURWXhw/7skqiOayH3EV/+R8mc/gH3cEwVXFBaUppGBkS0LpS8tSP8i5lK
	chAsMi7mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVKmH-0007gi-3g; Thu, 14 Nov 2019 19:27:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVKmA-0007fj-3R
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 19:27:31 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCE1120725;
 Thu, 14 Nov 2019 19:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573759649;
 bh=tlPXQr9K0JHcO9hjmUxoCvQEtHBTWA1pDKjwjzUu/S0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k4MqYahsoAugDXrOcIbK0SghUV0BJpL74XNPnwi9gGFRl/NvKf7OmYraXPE7m8btL
 1bX2nsJcJFr8Rw9jTf3aLwf3/gDYESm+Kb0ziXquV/nuPP4EHDdnfaz//z8/Y8fEgw
 cwbBbQD99JPc3Z67N/+MoASCdjiMllV6Tq4eBWsI=
Date: Thu, 14 Nov 2019 20:27:25 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v5 0/2] ARM64: dts: allwinner: Add devicetree for pineH64
 modelB
Message-ID: <20191114192725.GX4345@gilmour.lan>
References: <1573746453-5123-1-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <1573746453-5123-1-git-send-email-clabbe@baylibre.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_112730_165241_EB52C341 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3789716101205737165=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3789716101205737165==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JVdfu60Euw8Ey+/T"
Content-Disposition: inline


--JVdfu60Euw8Ey+/T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Nov 14, 2019 at 03:47:31PM +0000, Corentin Labbe wrote:
> Hello
>
> Pineh64 have two existing model (A and B) with some hardware difference and
> so need two different DT file.
> But the current situation has only one file for both.
> This serie fix this situation by being more clear on which DT file is
> needed for both model.

sorry I didn't tell you on v1, the prefix for arm64 is lowercase
(unlike arm where it's uppercase).

I've fixed it while applying, thanks!
Maxime
--JVdfu60Euw8Ey+/T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXc2qnQAKCRDj7w1vZxhR
xSWVAQCBPr2s0WW9ArMBn4OEKu8Q5C7BaeyG22Vq1rN5Z8PwVgEA533j7d1rP19K
sGwHnhtbWexfClKTTe+6B1qfHaK5jwo=
=AIGJ
-----END PGP SIGNATURE-----

--JVdfu60Euw8Ey+/T--


--===============3789716101205737165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3789716101205737165==--

