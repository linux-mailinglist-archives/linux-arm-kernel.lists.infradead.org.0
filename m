Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5723319F178
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 10:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nr30gRL4Ze4ECVgTwDvkD6AXYknIwuVFeFPpKYsrIog=; b=JQvshYhopgpQ4Vjh4XKF57WCs
	O4hsswIBBJrsL9piE+g1jum/ONx6Ok6FkMx8QvCRTr4V7dltxRbqsWH4d2XMeylrch4MWRY7Mz6pH
	O6gXrJe2T5wL8Von+e+o3/zoAxzpbuyNQFeGVGHhS+hf4URLHmf2vJsZm3Tsgj1DgmtMeiJwwB95I
	iX8LC2zTCyaPjIz69aKJIi/cymVIkvcSeDjcVeVuq/zHbEQgKh1Wo18jsgtl3i7cWPePVnIqdcvMM
	qQw8AMT58oFQyxIbUWOyunUdkpO4hyFpAadAGuKuMe3ejkMr03Sh1rcdf2rx42KgDCy75AnvJOzAw
	xxEiod+1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLMz8-0005gg-Qx; Mon, 06 Apr 2020 08:19:58 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLMyy-0005gK-TK
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 08:19:50 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 216F65C0185;
 Mon,  6 Apr 2020 04:19:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 06 Apr 2020 04:19:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=wvTAY1mSJtdwdZNb7GGd9/3Iuv4
 S6eSRHy8ZndtxRXA=; b=DCBWd0G3K+Posw3LBukUYObJE+20LKVDGdpU1Lx0f3Z
 dcRwVFJKO+/ePpuSzgdG7qFDwddkwtK9MUKFXjd1ZONrZRqEGlC7ewjOMEOW2XRE
 ASxRjLE6ORNXqtobo6VAS68z1C4Ym0urqTeuPpcMMizINRg6K7uTsi9Syx1BmFVM
 /CpWpv0nEwxEJCGB5M5PynFBK49My2n0jNyhCclbfv/pn83pripeX7u0hmruL9sC
 0WqX6MiZS6/H4WTv+tafQn1vs7PCE46+JLmbgyPBL3FuelOYMcme8IkOhrScR+12
 rS+3qUx7gUysFluSxWGDLEObCARfUfUOi7JWKjRz3Sw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=wvTAY1
 mSJtdwdZNb7GGd9/3Iuv4S6eSRHy8ZndtxRXA=; b=U2MrMu41nXxJKr6X9/ftsp
 5ZQTwpAdqdiGlXMa0oCHJ3nKYrk5H/L3qXzFSP9t7cSgzZXN42XTryqXUga1dLeD
 BSAYZoEKjLc1loes0xXM7+maWw2fz0g5QqP6S/3cgc7OZNw0JPm5EKYvgt+fE1Ro
 bx3Ko9d+EV/g+hW1Y2U5o3f6tGwVIpNWI0SS4ZS0l6yBrbGfsJprXlvha4/Mg+R1
 mO+BPEZXU3CQFcMV/b+fI71a6BbNmbsXXEJBMlh6xpQnsSeuVzGLlnelpASz39eg
 jcVQ9hRQZoROO3VFReeEOY4Ox4//1QKlD0vSmKwnauY7BnHzqxl5PFWBZcZtMFSA
 ==
X-ME-Sender: <xms:IOaKXp2uhVufQ5k3U3wmYk0QyRKlxDo1ziCj1Y-fQOlFIfOeHabZmA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefgddtgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:IOaKXkUDg_9Kr4O6EwIHAtnWo1D_BU6a5RVJQrydnx1YNFkN4m1SDg>
 <xmx:IOaKXtdVpVvGkRyGh1MvZq3-fCNY986eC6nN_bqkMysdmUn5UYrsKg>
 <xmx:IOaKXl_H5HxRW_4cxBsYz2SA0L8jmObuU-X33Cg5hxe3F0xCsudGlg>
 <xmx:JOaKXlnlmyLso9lN1qP0VCETdRXBw9ChJaAT-ySNOaX5gIMpcEY5eg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0BE41328006A;
 Mon,  6 Apr 2020 04:19:43 -0400 (EDT)
Date: Mon, 6 Apr 2020 10:19:43 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] drm/sun4i: tcon: Delete an error message in
 sun4i_tcon_init_irq()
Message-ID: <20200406081943.hwjohk63lfpgrdvf@gilmour.lan>
References: <5a6cf5a7-3f27-5425-4d6a-550a17bc51e3@web.de>
MIME-Version: 1.0
In-Reply-To: <5a6cf5a7-3f27-5425-4d6a-550a17bc51e3@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_011949_083417_C0A53BCF 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tang Bin <tangbin@cmss.chinamobile.com>, David Airlie <airlied@linux.ie>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4463992359781307431=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4463992359781307431==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2o2zzt4r53mxdgxh"
Content-Disposition: inline


--2o2zzt4r53mxdgxh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 05, 2020 at 01:53:05PM +0200, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Sun, 5 Apr 2020 13:45:53 +0200
>
> The function =E2=80=9Cplatform_get_irq=E2=80=9D can log an error already.
> Thus omit a redundant message for the exception handling in the
> calling function.
>
> This issue was detected by using the Coccinelle software.
>
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

Applied, thanks

Maxime

--2o2zzt4r53mxdgxh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXormHgAKCRDj7w1vZxhR
xcHuAP0WjOHzG00wGwXrC/L73opxmCYhJn2ZOmAfjN2ZfVnbHQEArryLB/dfTFEh
yOQICYvOYcUiHRoH6LIRW07gu19BxQU=
=YqNo
-----END PGP SIGNATURE-----

--2o2zzt4r53mxdgxh--


--===============4463992359781307431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4463992359781307431==--

