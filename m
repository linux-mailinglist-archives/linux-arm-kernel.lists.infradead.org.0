Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8121EFC5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 17:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dP+3+S5JbSCSNy5bTzXcZ4pw2aEpM8y0LdkHPPDic1s=; b=U9mI2ljU2CApycMnuIZAsn67q
	Oj4X13WaG8uZijBvOkxaN10fiVilbu7ErciNt2Xaqn2x2qZsOjQqjSbAV+qsT921DWkvwZ21RgSvY
	Cv41P5ekTUKS1BvWXZdFl5ee7L8SvruF4Bj8Fscw3t5gwcDBe0/LqBU32Pn7USNtSqLequGjp8tvr
	PypEJ5CBEeiTroXMYsSWtvpMQyk6bunIoV4b9aQetBA4aCE/ld4xsmLZxb4RPBMaUFLVGEKOjUJaS
	Rg+cOzn7YhJugNQAgypC/IEBC0qBIIhiroEx2jxbC5mLX0ifW3h+gx3zs0E6C9k5FAWIOB+ni1M+2
	OTGVz4iYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhE6v-0002ZT-MS; Fri, 05 Jun 2020 15:18:21 +0000
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhE6p-0002Yx-M2; Fri, 05 Jun 2020 15:18:16 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 1B2636C7;
 Fri,  5 Jun 2020 11:18:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 05 Jun 2020 11:18:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=eDXBvR6YBBtfhuiC0E7a3EHj/Ym
 N6ySkgO12Cpj2Nrw=; b=ExN7CqWrg4jyViAfCa+fhX2rn1O70zwpNpT8K2nymCT
 EuTVoVh9M//JKOtrBcux+WH0wuXC8PziL8fNrzpSYTpyRE2wef7A4T0PnafZpjud
 6sN3kEk4DoSg3t9Y8mnsNgaT8x1mF+fwcOQl7syJlyahtXCmIbndzuSAKNT+FxBs
 1cvp4M5CWvtPKzQjvmEcBK40/5fMlaEXeZ12+KTQEpcRukiquUZIuvF/J0dV4azf
 7IkhOjzRYHRM8bm24gnasbK95WWj0gIZWErDzl4NNfVDCl9ZKJCMIMdxxFwCVrxf
 0t5vWIQwi3/8NXvVfgnZ0LFbKE0L3ckwIQtqFCzn6Fg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=eDXBvR
 6YBBtfhuiC0E7a3EHj/YmN6ySkgO12Cpj2Nrw=; b=F0SyF/JMN+D6e7CqCPOP8K
 6avtHMvP25wWVwrKG5TCReTrYZ3fDN2pHRRntboqsU9Ga54gNOPT3nZVxQQMCYdk
 2aB8dJcV2gykE3hO8WIXSLj0x3VzvNaR66QhRbjKhNGYGT7g5xwACa7XD0tNlblp
 uHmki7hCqRI45kd2mFgN8KmpY8ZGuM1uDEGtlW8k1Jr7LjmdXHNBWZantFQsk0YA
 rH7hRjfm1lnRi2epqsx4zxHIhI18Mbyr3ZIlYxIUzDY9d4GgVC+NUarxm3Fk+Tvq
 FbDtnDDMZ0rUQFamzs49qJ4+qf2wsYKqX3H5rOlw0uwfMUvhvjeHSAqjh4gAHRFw
 ==
X-ME-Sender: <xms:NGLaXsqg53A4vXafdJw4pq_lA7qt40tpwRF8q4-tc0E1SUULdOQmdA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudegfedgjeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:NGLaXioOQ9sTvkE8t2fbvYnoB0Xdmszj0f2VF6Phs5vc2DkgVxKx2g>
 <xmx:NGLaXhMcXwxl2_nKkYrgvE1SLyP_jqHsdtXwd4bNpkxWdr6SjKT2SQ>
 <xmx:NGLaXj5yH1gEu92lw8JY84PtauSDbXcZZBVvgtet0WogpEJQhdQadg>
 <xmx:NWLaXlsvqfIBPxsHWFF7JELiV3ds3aGkrB2r5WzrUyP-TK4b56pJuQhRsR8>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id F39FF3280065;
 Fri,  5 Jun 2020 11:18:11 -0400 (EDT)
Date: Fri, 5 Jun 2020 17:18:10 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Frank Lee <frank@allwinnertech.com>
Subject: Re: [PATCH 1/2] mmc: sunxi-mmc: do not hide address in sunxi_mmc_irq()
Message-ID: <20200605151810.vmgnnzp7cadfwsu5@gilmour.lan>
References: <20200605125545.31974-1-frank@allwinnertech.com>
MIME-Version: 1.0
In-Reply-To: <20200605125545.31974-1-frank@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_081815_760538_95EA42AB 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: marex@denx.de, ulf.hansson@linaro.org, tiny.windzz@gmail.com,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, rmfrfs@gmail.com,
 wens@csie.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, matthias.bgg@gmail.com,
 chaotian.jing@mediatek.com
Content-Type: multipart/mixed; boundary="===============0696852361726775728=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0696852361726775728==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lqyrkswqzjhc3pkq"
Content-Disposition: inline


--lqyrkswqzjhc3pkq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jun 05, 2020 at 08:55:44PM +0800, Frank Lee wrote:
> From: Yangtao Li <tiny.windzz@gmail.com>
>=20
> Using %px to show the actual address in sunxi_mmc_irq()
> to help us to debug issue.
>=20
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> Signed-off-by: Frank Lee <frank@allwinnertech.com>

I'm fairly sure this hash is on purpose, and both the commit log of the
%px introduction (ad67b74d2469) and the checkpatch message are pretty
explicit about it.

What issue were you trying to solve here?

Maxime

--lqyrkswqzjhc3pkq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXtpiMgAKCRDj7w1vZxhR
xX8tAQCtvLK2kLjK9ek6BhW0HKPRmxoCrg3HRrnR7yKGjtdBLgD/Ru2M3MqS1iws
hyuU+IoR9fzMA4nBd/Rq7FQ104ypeQQ=
=VGny
-----END PGP SIGNATURE-----

--lqyrkswqzjhc3pkq--


--===============0696852361726775728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0696852361726775728==--

