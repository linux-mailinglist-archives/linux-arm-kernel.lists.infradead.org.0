Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54458158A11
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 07:49:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3D/e6Y+lSnqzJQiW92AlMvcCDZGrnX+Xr2t/hFIaJwY=; b=fDEZVUAVXdeWHjB67I213xzLD
	bv1lDrKKx+Cp9c2HFsoeDyjyM34F8RuqxMclztxHgyMolsVH5wFGHuaMCJVr/HLlgiwUFwIyzotEK
	OqtdCpUMlkWSydgSMDX6X9oR1sr6LnbLKHsCtyRb3Xkn1dadyQnbWqDRuJqVC2jodrByEg4hTgbSY
	1TASQR4aotewAtC7V+9BALBejldlJDTOSWEsTU5X2zKCN4J2vnuLU2MPMKAuWeuEw5fwk0VQBJEp6
	dyc/DfJMJ6zeoYomSJ34pSO9i+wZ2ns/I9kfc4fJRODk4+z3M8iplqqCNhjcfj6daQ3EdTp1m948k
	WCzXsWL2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1PMe-0003lv-P7; Tue, 11 Feb 2020 06:49:44 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1PMX-0003lO-Lw
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 06:49:39 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 32CC221FC6;
 Tue, 11 Feb 2020 01:49:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 11 Feb 2020 01:49:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=XdztXMV9iyXzMFlJWwifunfdijp
 ZRx0c+G9mn+c5wW4=; b=gFq6btPzW+RpRULrPtwkrOzprABO+88TuN7FjK6PjiH
 cuZDuxURE2jMWvg3+zXYfbf/za4X06QjtSbnWYgGeWN0RszLy7jXbz3wDI8g2y+Y
 A39qbWuCOiwp00cVxNqYXBXQCDqeCiyERsvuXRGF2MWEtD3C9aQkAOD0+hceOuY4
 j7oVjR2xUPp2u4OTrL5RCb3IyCbd9IaGuQQUPI9JdV0TDJifDBNcHE5Y3D+/0zUo
 GsxSi1jQjopXopwAtfgWx9RpSiWC9gt1gOjzNDaJm1cL+UhjiHBNnFLdrlWFN5oB
 OpqfpaFS+GGZl3u+45p2ZEbVvCmQZ/NQ4GHbtB+lu/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=XdztXM
 V9iyXzMFlJWwifunfdijpZRx0c+G9mn+c5wW4=; b=X1enKO5gTifLFa1Tyq39P9
 IZomnM1+PMGLA6dOvBmOrZmJrAySBoNu4wYwDa9w9vq8Tz1Oxv5VR0C2c+A6uPR3
 SnMfFFWBKnGO9tBRcMAENzappH5aE0Dt5x0x9rJvGQo+tT0D+GZ4ZWzOUexCw/qv
 qX2ArAqCqF6GVWMDEq0fWogXSjmZ3Lvwry0hqVCK/eEV4V48lMFy/2Ms8ni6CPV7
 6SC8sob0bYo9p74F3e46OgBGt8SDrcjP82gxRe/iQWxNeBwOMyRsCnkLu880wJ0w
 IGsEPfxTyYrfOxK2SUv3cCKtn8xahZvKZvDuCPq4JCTbhayPKUMdkVE97mf8tIeQ
 ==
X-ME-Sender: <xms:eE5CXsffZtlZVleiv-xYIOb7dSUU1tXVbmXaqhLacrcVX6rLcc3bkA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedvgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:eE5CXizdT_P2cmtLz9-0qpl2aw-5W7Jrx13LktK0vfB6p5hQE5pWZA>
 <xmx:eE5CXi8394U4vLUXdnborBVnucisXG-X3X23NwonmszUeDGO2WXt6w>
 <xmx:eE5CXkkhGSrQzszh99htJax3bgSvKJc5p0ydGn0nDzdTs1hHC0woug>
 <xmx:ek5CXna2lWWhM6KBrYlE2fM7k798qQytAwxLRhg2a5cS6V1jJm1ipA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 491B3328005D;
 Tue, 11 Feb 2020 01:49:28 -0500 (EST)
Date: Tue, 11 Feb 2020 07:49:26 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 0/5] arm64: dts: allwinner: a64: Enable deinterlace core
Message-ID: <20200211064926.muxnaphoq4nbrs72@gilmour.lan>
References: <20200210170656.82265-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200210170656.82265-1-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_224937_869160_E359220C 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0523221460374731250=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0523221460374731250==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rwr2mhgisf5go3ox"
Content-Disposition: inline


--rwr2mhgisf5go3ox
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 10, 2020 at 06:06:51PM +0100, Jernej Skrabec wrote:
> Allwinner A64 contains deinterlace core, compatible to the one found in
> H3. It can be used in combination with VPU to playback interlaced videos.
>
> Please take a look.

Applied, thanks!
Maxime

--rwr2mhgisf5go3ox
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkJOdgAKCRDj7w1vZxhR
xU35AQD3LjdGbe0ijT1ImTTyhYz9dseJPfQ+YsQLd+m3QBvTEwD8DJEmtNRM/8AC
3IZoFJmm5wKb4si4CoYWpoVwsaHnnwk=
=dTRv
-----END PGP SIGNATURE-----

--rwr2mhgisf5go3ox--


--===============0523221460374731250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0523221460374731250==--

