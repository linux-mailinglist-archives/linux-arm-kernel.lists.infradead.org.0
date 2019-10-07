Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAACCE139
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SSS/rA4GZ0MDw/4LvMXl5UsufaAqZLItv3nH8CPpIEg=; b=fDecWKu2jJAdd5BmAPi6aodsS
	6g5fWKnCAqyAA9JrLD1U9u1gsSi5cdfcX2ZUx6vEwa+YfcBhlOlKSvImrRnCoLw9KWpBOy2VSluO0
	VjpbS2vowjHaKaDgZkIAtY/2hu45mJ8vk8o8wWhqJJbVkFGUcqfwJc/u102a2znBOXQDenjYJYCvm
	abm0yRvObLSQrvdYlnnSwPd7uMJ/qL9nRE+h9HsQbj0ppEUMPMX+mo2THLPUbpmI/eLfIOdVAWcgX
	hx7iXnUJL1uikHqXr4Idh+2XOpGSqj1iUkq5ScX5OrW3tQLZo6gXQZhixOoTspL+cLcAu+kp+dRuv
	jO6YOKs/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRnN-0004U4-ES; Mon, 07 Oct 2019 12:07:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRnG-0004TS-By
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:07:15 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A59320867;
 Mon,  7 Oct 2019 12:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570450034;
 bh=arbaz8x3puASuQCFv3RH3ysmpiBHcA2eOWy0FamGrFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MnVmxZLoAkVyRKheU9X/YR5bMo6nKlHmcKS2ro6emQd2eneWrMDXRAALYjSXBxp1a
 X5Su7sdTQdbaq81iyYhr3iDbwOwriy8ZJQkNLXJ15ST40Mr4CcXjVRu2h6fGWExYN0
 KKxfdvMTK6e3SF6GYyWpJfvVJH5ai1c/WiucEvsM=
Date: Mon, 7 Oct 2019 14:07:10 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 3/3] drm/sun4i: sun6i_mipi_dsi: fix DCS long write
 packet length
Message-ID: <20191007120710.zhm6wkm32kpsqv5m@gilmour>
References: <20191006160303.24413-1-icenowy@aosc.io>
 <20191006160303.24413-4-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20191006160303.24413-4-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_050714_428786_02D12ECA 
X-CRM114-Status: UNSURE (   9.69  )
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4031621264352374438=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4031621264352374438==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q5xk63oitgdknstb"
Content-Disposition: inline


--q5xk63oitgdknstb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 07, 2019 at 12:03:02AM +0800, Icenowy Zheng wrote:
> The packet length of DCS long write packet should not be added with 1
> when constructing long write packet.
>
> Fix this.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>

Applied, thanks

Maxime

--q5xk63oitgdknstb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZsqbgAKCRDj7w1vZxhR
xWdGAPoD+SGxYVP/cSUjH/jrEJNThDwZjOU59WN8z3Qi9XF3BgEA0tiZksS/LTVL
rAlkltweDTGTlptVDBSyEjKNKRqzmg4=
=Ua0x
-----END PGP SIGNATURE-----

--q5xk63oitgdknstb--


--===============4031621264352374438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4031621264352374438==--

