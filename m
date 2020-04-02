Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AFB19C03F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 13:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nb6+axktTpx2nvtuT1Qi2UF12aT4mdlSDn++zYLOpL4=; b=kTtw0igNHyP9vIgtjlx3nw6cJ
	Eg+h0bqJT+Cv+x4Nqm2GiUmwQ4bHw2JzaTiRrHHwhdrYXvw5HMw8jnktKL6U8L45Akdq5vPBtkGus
	dhxdr9h5jFytRFZNVRMTH1HVYHmD1DNjIrCx99ra1DaKklXml1CaynHpM+hW5B4n9bND73kC4ktNo
	xNb6aPG6zPx1FN9+HwcoQReI8vHoJhRZT/aFf76hJZNoSrqDKHP/WopNSK5ft56fiyhTLXgKU36rx
	e//f5qay68womKO4/7qo/CIPPE4fmfscYIQNG4i4j/r3tA7pVzWuTPZIV/2VsseB9LdpJWZcbWhEJ
	0+sGBqi5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJy5y-0004Cr-Sd; Thu, 02 Apr 2020 11:33:14 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJy5p-00049T-Ef
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 11:33:07 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5E0D95C0197;
 Thu,  2 Apr 2020 07:33:02 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 02 Apr 2020 07:33:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=kA1QfLW3eMIxQfptPPeBMuZlNRg
 ZIGrXylNEE/sNhVc=; b=HOUmEwr1sk1oEZD4aOIfaOtl7vLi7xDDxRPN/4TxLMp
 hMf5IO4aZQnozWpA/Kpj+M2rzKrkcYxwoAsBgNNxJ786jvOQTe9wRY7hCUBQl4Qu
 urALDKUiHsLMtSxgG8coH2YVwI6X4MJ75+Gy9IreSR81/pj78NPHodZNrInXum5F
 t/hY9sjppmwcDU9hRFKP9R2o0qL1fZY1xvNAdU5ubh5TOjrUXOF03LhjAQfaEc6s
 NvAqYyGCruaZ3dzfosuvCjPmOgWW0btO4hi7xFwCeaBFWiUr29nCE1gMQ1pCSZ8e
 MzQRmKp5I0Jo5RdLnJHJtvVyBydiKbMT0m2JGTZlXqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=kA1QfL
 W3eMIxQfptPPeBMuZlNRgZIGrXylNEE/sNhVc=; b=3Du/3zZHqdsS0GGADq1tbb
 UIq2LFztd7cF1pDIgJqY87xx5MWFqDIPrEjxMPh3BhKhQTXlcyOQDR9Ud2inbtY5
 oqzPW1CNF9m/KNbRZ8uWv3nWXCMboEH9/cdBi8+e89GGNuO2q4yDwou6yCMyLomE
 KmgxLCy83ynzA4AsYDPFRWHYkrdQcxHbTKjfwzvTZJw/oa3h4dgSwZ0oCaGjQ75k
 W2PaDjs3dd36j0aWnt1xAF5aHFe5ORj3pLZuklXcOFbNYrsPCnXKC2JprZiprMEo
 v4z96cFB0GHfn37vHh/TTeizJCq66GQipfTkc7ItQEUsmwZuWQpvir4IdQFnhXUQ
 ==
X-ME-Sender: <xms:bc2FXhuBLKzXVF2Vrdl04MrVTHvU1OwslYBmSfrdJRodbBIjNL1aFw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtdeggdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:bc2FXjloDRyooU-ygixI0rB9CSbSu6saMZ3BresCuveeJOEUHDKnrg>
 <xmx:bc2FXtoICRRfnfWvhvXf5GqocHseUQkLlZJbfsbBBSOMlFCbMKAfPA>
 <xmx:bc2FXq2U32p1FQJp2CZB2rm3VG6s4HwKQ3m9dW4YEeoM-ekIsRa-kg>
 <xmx:bs2FXurbv5p-sUVIc5P5YquHbTsJyXM0B9n_A9FKFXw9fG2aXDll0w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 668683280066;
 Thu,  2 Apr 2020 07:33:01 -0400 (EDT)
Date: Thu, 2 Apr 2020 13:32:59 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] pinctrl: sunxi: handle probe defferal
Message-ID: <20200402113259.jalwc7hwxtymtms4@gilmour.lan>
References: <1585818532-23051-1-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <1585818532-23051-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_043305_803741_40C6382C 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linus.walleij@linaro.org, wens@csie.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3664142054666689042=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3664142054666689042==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tjv7bzkjk4m5tndt"
Content-Disposition: inline


--tjv7bzkjk4m5tndt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 02, 2020 at 09:08:52AM +0000, Corentin Labbe wrote:
> When checking the logs on my sun8i-a33-olinuxino I saw:
> sun8i-a23-r-pinctrl 1f02c00.pinctrl: Reset controller missing
> but this driver was working after.
> This message is just here because the reset controller was still not probed.
> So don't say anything if the return code say to wait.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--tjv7bzkjk4m5tndt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXoXNawAKCRDj7w1vZxhR
xfzAAP9ylLtzCnrw2H6mzX/G1HyeNRlmKneYZuDx6o5HAAm0BwEAmpRgI1Hh4Jln
/kdUr3TBTGjQqWJO+H4/JvS/93oyhQs=
=iteN
-----END PGP SIGNATURE-----

--tjv7bzkjk4m5tndt--


--===============3664142054666689042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3664142054666689042==--

