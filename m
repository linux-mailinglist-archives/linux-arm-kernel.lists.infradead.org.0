Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE86F19F261
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yGc5dQ6I2HFNmTCuzIe96LT/kJtJOeVQy05aYnJ9hpQ=; b=N42dOQiVRyAI+EsgUj7Ki9jTa
	QqHak3C39PP7DMRF7f7610kbNNhECUErcXJAdAcT/zpclMZWAvCYftaz8begkSmxOV+YB65F80D0W
	ojqoJ/C92aik6Obfw5JzfGarKaVHTfx3EutZwgh4KYQ3g+Lqy9acbtyMnINSlLl+JYJT2n4Gf516c
	2aGgPHVnKSvcWMzcloCrxJpDsGHaI7l34xNN6ct9cKJcxALLHHXQwYtqf8AZw0JF/7rdq0V0DYItE
	P0sYNWWYGoWmxg3YY80rfb7FZQ+K6XC8FQyzUS9snkXJSnbJerh3f1GmxxS+qwHjwZOynLkWGonj5
	2k+yDMXug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLNx0-0005QQ-7q; Mon, 06 Apr 2020 09:21:50 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNws-0005Pg-OJ
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 09:21:43 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 2E3F25C018F;
 Mon,  6 Apr 2020 05:21:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 06 Apr 2020 05:21:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=oMeIIJ1mDIWN3kALdLXCgbaXtnO
 iigOn5+MO3vnZOUI=; b=kNhzk0My+PGFQesmQtfITGCTkAeUIuaxp6gv1SR4m5/
 H1dk3sWdxRwvl7KHVmHoXvAgg0Ut7ayn2alYB1MG9NLASeBGuOqcpvHj+273H+jz
 o/ve/EiunT8XbLNS/wb0JtQDO+i5WaRm/d1hCf+572uib0klzX7gphcXAMcHT1Bm
 +jTCC3C7lsCvJnZ4Nf8SF0xuOWZ/Ewv4MX8z4GlamBAZK4bk4igE536nHw41nLRR
 pFmP24HGe7TTLr7/tQrWq5Hrg5yVREHVOVku+JTT+t9DGRUyrKmFalCqkjC3hXpp
 RH5IkGnQFgMNoDUX02hGc1XOsf8QTve37DmCF7t2YBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=oMeIIJ
 1mDIWN3kALdLXCgbaXtnOiigOn5+MO3vnZOUI=; b=2YEk2iM0BCpDj6J2DwGxRb
 CNvPyqIgYSnkOeedlqJfT4R51xuWw3305b5b4Eoxcv6h8/Jnek6q8VDatcDuS5cO
 /YaqEcroXtKy1UGkIJX718/tp5O/8U0etMLrrqGzNkKqcWF5IRD0AODQ0PW5JLkz
 CTa4l+wc2DWHtiXbHff1a6hLOsOxk4De7aMbJP9/9Nv9y6g64RHUkYmZ1jhxCddT
 Z/QQW8DTAnIe8dOGX2aWLiGUOdW8zbe++oYSrLhZaiFZsvwXk05KJp42uW02uLu+
 QxSc2H/EYtX7+/qnoLfn48SEELr2plGm+xbFwuv72lO0GIQnLwgRYTBUsNyz9jvw
 ==
X-ME-Sender: <xms:n_SKXov82wD0S1qvcrji2PDWNwVHREeDi65UkUo8dtE63J3pQngYpw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefgdduiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:n_SKXjD-OFB8wBhpApb-_WEl3SFb8u7j9noWylh2j2Vj1KSnSnPvfg>
 <xmx:n_SKXsxSRR5VgKXcX_bMSuxNF_spethl7D9dYS7QdLUUNjlvtmE0sg>
 <xmx:n_SKXmFlGuzOkszQTm6wqMLvNpfr4JoNBx2tu1HuQmgJneHiK6wPrg>
 <xmx:ofSKXt4XozOGp_tz2A4geXQex8OTLlg0pelVgZrOipjfRmrbaSP6GA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 43150328005D;
 Mon,  6 Apr 2020 05:21:35 -0400 (EDT)
Date: Mon, 6 Apr 2020 11:21:34 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] ARM: configs: sunxi: Add sun8i analog codec
Message-ID: <20200406092134.ugxuj46qp6tmjf75@gilmour.lan>
References: <1585820061-24172-1-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <1585820061-24172-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_022142_857898_E1C0665E 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
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
Cc: wens@csie.org, linux-sunxi@googlegroups.com, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4561874349486034889=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4561874349486034889==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y4kqwfcf6dwztl2s"
Content-Disposition: inline


--y4kqwfcf6dwztl2s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 02, 2020 at 09:34:21AM +0000, Corentin Labbe wrote:
> On my orange pi PC, I got lot of "sun4i-codec 1c22c00.codec: Failed to register our card".
> This was due to a missing compoment: the sun8i analog codec.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Applied, thanks

Maxime

--y4kqwfcf6dwztl2s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXor0ngAKCRDj7w1vZxhR
xX1NAQDtmDUG0N56YtytHARXBanE8n3MN0rgFqs5YzsPTH7BKgEAlr+sj0EyZc5+
dGB6hLBjFhR/iA7JQIbMnPSJPRYKIgE=
=Umyl
-----END PGP SIGNATURE-----

--y4kqwfcf6dwztl2s--


--===============4561874349486034889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4561874349486034889==--

