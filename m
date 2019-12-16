Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2920A12028D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:30:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tOVlVmrrmZwkYJTUHJ7MxNE5a0BfJpWAlv0l/TabPFA=; b=fqeYScKWQL6g6tol3sD1NZQT8
	LoGqzIDgSTLU/G3qHMjoO2e70p0gJzpvVuvX6TtJV5dmpwDu/YS1gw7qEHrQVZ4AB1AWKToKYmDl6
	3ZpQlEfGN4qJOg87Hbs+EX5DHtrbe1FDDQI/1T2x57ezi5nLZSeRdNP4dok+eLgK0eNZmCBqHuUVy
	surLhJR8H4ee1lqWz06vIeo69ypipMX+uVcMrTZ7jJYVWV6NOWUva+9ErxHzISY1croBAd1hi6VHm
	xZr/qYtyFep5NWa4ndrKruIK8MA9gtUcNo8Xa71qChqM8TmtqJJh0yI7xaDpPG0CPeK3Qz9B29chN
	J9Nijba9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igne9-0007SE-8n; Mon, 16 Dec 2019 10:30:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igndk-0007Ip-Ax
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:30:14 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CAF8206CB;
 Mon, 16 Dec 2019 10:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576492212;
 bh=TP9DzZcKSVrQpP32FqzNgOZaTZ4ylpfJByIaBDD/rtI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cbW7rAD98yBt5ylWkUjbozPxRKW1HZE5UawycIiZRFQ7gvrOSblVeXGoelAraXm6z
 BkbndCnYJ4/iiZpb3JLUY79l3nikIgQSfsGIToNvNie7cu1JTu1PeaXTB4430bcJ5J
 E2BhjDjV/XFCPZXxpWRtwB/0M1JZKrVzw/bN05+8=
Date: Mon, 16 Dec 2019 11:30:09 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 02/14] dt-bindings: media: sun4i-csi: Add compatible for
 CSI0 on R40
Message-ID: <20191216103009.knlby7rxf5pghf5q@gilmour.lan>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-3-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191215165924.28314-3-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_023012_915073_08049F2E 
X-CRM114-Status: GOOD (  14.04  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6128976981162589407=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6128976981162589407==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="j4c5uoispaqa4lve"
Content-Disposition: inline


--j4c5uoispaqa4lve
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 12:59:12AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The CSI0 block in the Allwinner R40 SoC looks to be the same as the one
> in the A20. The register maps line up, and they support the same
> features. The R40 appears to support BT.1120 based on the feature
> overview, but it is not mentioned anywhere else. Also like the A20, the
> ISP is not mentioned, but the CSI special clock needs to be enabled for
> the hardware to function. The manual does state that the CSI special
> clock is the TOP clock for all CSI hardware, but currently no hardware
> exists for us to test if CSI1 also depends on it or not.
>
> Add a compatible string for the CSI0 block in the R40, with the A20
> compatible string as a fallback.
>
Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--j4c5uoispaqa4lve
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfdcsQAKCRDj7w1vZxhR
xdV4AP43TuArwkolNnd0v+MEWhLJJWbvcpaXKB28P0p/Or8XqAEAtdXmz4ciBhek
kycHLr2wxDL17v6dVj+QU3bE3MLLvws=
=nnf8
-----END PGP SIGNATURE-----

--j4c5uoispaqa4lve--


--===============6128976981162589407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6128976981162589407==--

