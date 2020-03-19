Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD13E18B08C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 10:55:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jxuLGYIguQ4j0GRmS9M6ChnQ87r2bXKYsUNTjasdA/w=; b=h8eFL4RUKkJobD1FcyFOBWiSO
	dhO+e+yoOEVtlKrpeUHQGgY/YSl7W49f8COt5NicHbq9GreVok0H9eTKY1KXJ/6QrXVnVFBaiv0j6
	C9m0knfnQ7q35gpwd1i3UAukHXwNCRkAoz4ojRd7VL5fYKZmzGv675IjxRG27CFjRH9KD5mRfOjtx
	VHdLIglx2FdB5rdWqOQkVmW1b0E3gJp2IZb8okv7ZVEC9bbgRybeBSlzDg0GkKM0oo/w0HQc6h+Ti
	TxXpjCmyam9YJzBAsZ3/o01fxyHxl+vpdIkhnXyIc2FnvzZZ39sTOSMJEiIn8Cspb1FQku08Hio4C
	fWidUdgoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jErtW-0000eu-6t; Thu, 19 Mar 2020 09:55:18 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErt7-0000dT-LJ
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 09:54:54 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id CC5E23BC;
 Thu, 19 Mar 2020 05:54:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 19 Mar 2020 05:54:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=AEweTAoYqzmbnIPkNbbqyUDpsBm
 QCn1jJNkZ+yktwS8=; b=pHUPtJq47kWB0/PzKUMTMDB8z2sBBBnhmNVh+Zkja7l
 YoyY6wekqF11f8jv+oZ9rY6cY/0+BwGn7LO2dlZxi0F7N9lz9PQZXH1m42FFp4bA
 HuEZ2WvwO4KzawnPzhH3ktHoELxkzQdopswvHlQTm2pIsNy2jCymTkuBq5FkFUVo
 DqH8mmfQzGpg9QrKBjp1BoveMbE8czQLI+yEgZJ5qvyFQxIkmqrlfmrUUjjoASeH
 U7AtTa//bmNddEVXUDAEhpMyEMhP+3MU0VTN0N72M8VjxP5wzTRpUqEOLDXWxDk7
 U6BgeIW24scdtKBWkEoGAR3QhCJ3HpFA10Lo6Eq5dPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=AEweTA
 oYqzmbnIPkNbbqyUDpsBmQCn1jJNkZ+yktwS8=; b=Wa5MNnrXfnbc0Ga1eRa05I
 9E+hM5kg/2N10ZhFu1qyF2q9kiPFFy3NrKBe+YLIVneH87/dU3vunv9fmeTzU30H
 xgP2ZYpmUCQ9VGqgJehzd2+t2JAtL8ZyzUdNEhZXiKQ0CyZ0Q+h4HQx8B+ora178
 OZ7vVvDDaf9OClMs9adfidvJNXZocwrCf0F467ObeL5sWpEfja9vYGwpvx4IeXOA
 zrSVYiYDAf6AYbnQ73SZonwHPwBHysSkS9KT0CgPwmN0r1rn1hLoBAm3HanRFayn
 r3raqSnPkHUFTil7FD3Jf9Tw5ZCa8H3JaSy332Ds92TsyZxv1/GBxrjgCb/sD/gg
 ==
X-ME-Sender: <xms:YkFzXgg5ohRlCNSyYewsJFE-Ihb1N3TQvAKCV6mtZ_tL0oU_aeOy1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefledguddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:YkFzXtRt1KyM74jD9WTebfQ53NFpn52mMKp4Q0NEVzOqdXnteglveg>
 <xmx:YkFzXjEoOkqBt0MeQ846QAL8ky4CFFRefhkvn-mQenTfpiU5n3h5ew>
 <xmx:YkFzXlksCnUDCp552SGsmrBF4xXVYC7IUkXR80osywZ_LnX8zGPQIw>
 <xmx:ZEFzXsOvBqFJtWlO-qhnAZjIomuTgyzpM5HmQo80aJ2HtFdKv5UYNaWMTwc>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 92843328005A;
 Thu, 19 Mar 2020 05:54:42 -0400 (EDT)
Date: Thu, 19 Mar 2020 10:54:41 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 4/5] drm/sun4i: sun6i_mipi_dsi: fix horizontal timing
 calculation
Message-ID: <20200319095441.zfaivhnh3pwuphp4@gilmour.lan>
References: <20200316133503.144650-1-icenowy@aosc.io>
 <20200316133503.144650-5-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20200316133503.144650-5-icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_025453_733266_CDF8DB0B 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7167842170924952289=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7167842170924952289==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="du2tzzvxzpnq2xcd"
Content-Disposition: inline


--du2tzzvxzpnq2xcd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Mar 16, 2020 at 09:35:02PM +0800, Icenowy Zheng wrote:
> The max() function call in horizontal timing calculation shouldn't pad a
> length already subtracted with overhead to overhead, instead it should
> only prevent the set timing to underflow.

Some explanation on why it shouldn't do that would be appreciated.

Also, with the changes you have below, the comments above each max
call don't match anymore and should be updated.

Maxime

--du2tzzvxzpnq2xcd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXnNBYQAKCRDj7w1vZxhR
xVK2AP9MrOr+g0Wxeod4btE4njIJOm/ARGGGAOMiH4E54MPtvAEAvxcr9/HggXHX
CbB5ndVBG5C8Z2r5jKBQqYK0BN+Iqgo=
=YB6s
-----END PGP SIGNATURE-----

--du2tzzvxzpnq2xcd--


--===============7167842170924952289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7167842170924952289==--

