Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74D51A9A29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qG9awVQsp2LQCD8mo+jTkzo44PwlB3qGGwvbL3mFB44=; b=qBvUxQ8lbNQOf0srRPOHtwLRd
	5+OohBPZK/LGnVIYwUEDEJX8JIM9guujlknKIORzew2uGDYBJog5JM6gUoFqBCuDSWkR8d+0G7+pc
	JVJUd/jXseeskt/rXpAp5dBmK9FWE7CsdshoOICrifc3dAGcIXHxFzoG8ivy4CzvQMx5teO5npsbh
	CNrP53Xb5+U3C8kyLYeN5Gh7VFdu2iyJt4tneCmeUUGSLu4/HlvbVgkCZI1sZIejJYnBkAxYidIUw
	Yifwo99yqUNrwV64wiljtfLs9wFbQqLyP3McWnoUV/j8ImVEJ+icRsTPF7LP339txT8rfOLB/m7yi
	x1PK9PlGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOf2X-0002BP-As; Wed, 15 Apr 2020 10:13:05 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOf2O-0002B4-KG
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:12:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4DB285800D5;
 Wed, 15 Apr 2020 06:12:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 15 Apr 2020 06:12:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=s0d/RgblpxRTpjT4bbVue6KEZrZ
 fSGVOQKbJKOBuu9A=; b=BaShE054Cu8Fnh/acc0XEM6aGr2IdsHSkCR9zQQPoWq
 /aTmayYFa1i876Z7z82YolyKSCv+sSCevnTUFtxinPBkn8GKyebYvCT6pPJ9zRFr
 +NJTV6cEhOa7ffWGY8hX8Qs8DSR/P/9odcyi/uCy/D6n9FbxLtigv5q+MvXjCQh/
 ts+GP1GwXvzH9hoKVZUpDYB3VmicdPXaGhKrXUPsyACGXlU3xfHbxGb3MytL2eOB
 ekvCku+QNFJQgDMw//fevXI8+zwzbY6vlSIIxg8yg4HK+X3u5VoHUa9bReq0Q0TP
 YDFUvMiQW9A4UiSCoCOmSKv6rJ88u56CqdSmWl+Zaow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=s0d/Rg
 blpxRTpjT4bbVue6KEZrZfSGVOQKbJKOBuu9A=; b=oLHqxo4uH7p4gID2Qfnx+n
 xTsOExk6MG4B0jJvQekYdqA0zg+qiJN/dSMI8PXd059NTmcBvXzqFaAQWsCvnnVE
 r+QzsD4lKzgSnGO5DyJvru3RA0X5Iz4aHbpMe57n1iiY3z/99OPYCWFys2qZ+Uig
 cTMw/2nF0nW/xekuYY04A3l9YlNpaNsJpDJGuHpuRtLscLwQbmUYzvrxutiIbsr6
 oKVP1afJWmj/IwNwClKoABb1nQVSOPgQZC8fuhifL8oNF25OWpnxiWybTwUm9gnw
 ojVbNiUrtarBNMy3BBcCCXPsfUd7SrGyLttkc8OvuckbN18ZCU4Yl4/+mTTH7apw
 ==
X-ME-Sender: <xms:JN6WXkp19ZHWXzjjhwwmwbdOPcn0MVPAoGysA4CHDf6qu7mq_HtyOQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeefgddugecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:JN6WXod6O9K8OpB2X5BQN7PGUGIJznWSSS6cdbBC5H0J7w-kqNbZYA>
 <xmx:JN6WXjqrHaeqthMijteG5ve3Eny-UFarS3pVNI9vFRFqYd7YHy2Dqw>
 <xmx:JN6WXpFRhkOqF7jbtSROO4HBcn7D2xf4JnjK_iBuz8tNwSN2k6bYZA>
 <xmx:J96WXrRWOVF0KWZkQ3adnheXFK8UNYgZRjktsI970Lrnzt5ahKFV-A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3FE073060060;
 Wed, 15 Apr 2020 06:12:52 -0400 (EDT)
Date: Wed, 15 Apr 2020 12:12:51 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v6 01/12] dt-bindings: add img,pvrsgx.yaml for
 Imagination GPUs
Message-ID: <20200415101251.o3wi5t6xvf56xmhq@gilmour.lan>
References: <cover.1586939718.git.hns@goldelico.com>
 <06fb6569259bb9183d0a0d0fe70ec4f3033b8aab.1586939718.git.hns@goldelico.com>
MIME-Version: 1.0
In-Reply-To: <06fb6569259bb9183d0a0d0fe70ec4f3033b8aab.1586939718.git.hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_031256_801106_D18F2CB2 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: multipart/mixed; boundary="===============8598673222156867717=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8598673222156867717==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jbdyoswmyxbgpiz2"
Content-Disposition: inline


--jbdyoswmyxbgpiz2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Apr 15, 2020 at 10:35:08AM +0200, H. Nikolaus Schaller wrote:
> The Imagination PVR/SGX GPU is part of several SoC from
> multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
> Allwinner A83 and others.
>
> With this binding, we describe how the SGX processor is
> interfaced to the SoC (registers, interrupt etc.).
>
> In most cases, Clock, Reset and power management is handled
> by a parent node or elsewhere (e.g. code in the driver).

Wouldn't the "code in the driver" still require the clock / reset /
power domain to be set in the DT?

Maxime

--jbdyoswmyxbgpiz2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpbeIwAKCRDj7w1vZxhR
xU7VAP0ctDLTdRYVZSwO4CYzL5No4vlTBQEUBes1IQ1qFIdPwwD/XfAzl1dg/Sh8
EZ+Ln+utszFGNQD3stVRlNmI74tEyAs=
=V+IJ
-----END PGP SIGNATURE-----

--jbdyoswmyxbgpiz2--


--===============8598673222156867717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8598673222156867717==--

