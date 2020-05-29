Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF741E7B41
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 13:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=usUB3QhChefPdeWWRAkyUSLwEi5rcPNBc18vJV7H6XE=; b=qh4mMRCzY7lfUef688giR44U1
	p/xVEmTWyQkyRB2dSJaRetDWn2pt95+gYPPFYTpmiBC8pSrSu084czApsyciSjCe200ydZtM8rfaL
	gGt5udVfvHiAZnVt46BF89BTtmmodRJritBW+gNpMkbrfVjcaZYK260+CO8/6VdtHirh9VLqdV9lk
	Rhhup7ZdrACYF0chyCGjdp3rwJgfVMJEs7Aksgck1LbaMPqeZJALm+U8J7YXbpuj+e65u6LP1fC/B
	kalusakmRUjLW/WyzfseIAmT3yvMQBtpsd2cwZoOWpXVyJ6yfKXsYVDba3lnXlGNjAK5g3oaeUi38
	WLWuUvqhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jecsI-0007pa-TB; Fri, 29 May 2020 11:08:30 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecs2-0007nv-TA
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 11:08:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 62C621715;
 Fri, 29 May 2020 07:08:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 29 May 2020 07:08:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=SxWQBChLhXnrPHqeCmBO4IZDrkY
 HZslBN1SC7IncoZw=; b=m4awqB9JDpZw7mHkuvrM2/gcKJlHPxysFnTIbIxVXnb
 VFDUZkqNWe7HuSdVI1pbrA+6H4L0v3NPVT1rhX/9oIlaMDtm28tVOFbHKLH/CRwr
 cvCdBlviNGNVcLkowm4Slv6zXCNO6HFLDBokfPelQOcrwkhs1Zsx+2hjbt1cuTew
 NaE5aXmZ+fT2W9Ri3OlKL0M8rccNsJBoApkdRIGjUX/akxsXiqgJQjAc+y/M/NJ2
 rtc9cV5/+6pfHTejKOyF/BOvdlZa9wuqg0b2aI1jUUfpJ+XZLwlh2D4zwhG95y0I
 /GpLP6aL2NHpKoHJucd6f82htQVYB/mDZOIvhT2ChwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=SxWQBC
 hLhXnrPHqeCmBO4IZDrkYHZslBN1SC7IncoZw=; b=iQkIKl7TCD2huV+kPTxyoX
 pakucsKYS//IHle36N+PpFReoUmruON53vh/T1mWgp4qQktuJL+DM6H8Z4/pzvtX
 yhzlvIFEepPSUS45kGXEuUE966cGpdb17bkKHYQEvBGUUnTaKU/2IfhbCIjgR3sT
 BhNLqvWuqRRVjToSXHQqA0dhiMRBMc9WbNUyliEwOLwU2O/H3++e+kESdjLyUoY6
 Y/Lk7f2sUeq7BSKSDxWKi5I/105njvbMlwfa50krJQJgeREDcQ2OeUHLgpUnnaP0
 ZlkQvnvA2izCxwkYKhcF0ZiiWDbJ1ZQYEY5WRoCCo/BTgn4uzPVGoi7oMcJEniVw
 ==
X-ME-Sender: <xms:F-3QXiVLCwHiW3iFohPv1pLT8lo8jahs2-Y8Zhjbeg-WwOsfs4l1Jg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvkedgvdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:F-3QXulYZDsqd_pQKBhaAxIDg25R2iNioGkxHjnGF2UizvJZABUeTQ>
 <xmx:F-3QXmaJx22JYp0z9GToMbzuH9fYpZSrAbZ5x5XwaX20VdwspUYUXQ>
 <xmx:F-3QXpWQUmYw59fowYgL7v9M-g_-aiOCrtV4FdPQBSh8q3eJUStECg>
 <xmx:Ge3QXrstdt3sLo0l6eH_by8XeHhWKClt-j7o3SckdFkJCWzEDi5Xrw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5BC243280059;
 Fri, 29 May 2020 07:08:07 -0400 (EDT)
Date: Fri, 29 May 2020 13:08:05 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Frank Lee <frank@allwinnertech.com>
Subject: Re: [PATCH] watchdog: sunxi_wdt: fix improper error exit code
Message-ID: <20200529110805.d7q6y54vmhsc2azy@gilmour.lan>
References: <20200529094514.26374-1-frank@allwinnertech.com>
MIME-Version: 1.0
In-Reply-To: <20200529094514.26374-1-frank@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_040819_542192_F53851A4 
X-CRM114-Status: UNSURE (   5.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [64.147.123.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-watchdog@vger.kernel.org, tiny.windzz@gmail.com,
 linux-kernel@vger.kernel.org, wens@csie.org, linux@roeck-us.net,
 wuyan@allwinnertech.com, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2285974812595819054=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2285974812595819054==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ca6lng7rcdaswecq"
Content-Disposition: inline


--ca6lng7rcdaswecq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 29, 2020 at 05:45:14PM +0800, Frank Lee wrote:
> From: Martin Wu <wuyan@allwinnertech.com>
>=20
> sunxi_wdt_probe() should return -ENOMEM when devm_kzalloc() fails.
>=20
> Signed-off-by: Martin Wu <wuyan@allwinnertech.com>
> Signed-off-by: Frank Lee <frank@allwinnertech.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--ca6lng7rcdaswecq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXtDtFQAKCRDj7w1vZxhR
xXMOAQCjE+1Rd4EClkmssnyOcaObsF1+kumPmeztCrmYIRyK7wD/Tqi0pk8lCIsJ
iFncOmTNd4SD6CZPBKtkhym2VAJ70Qc=
=Xr1z
-----END PGP SIGNATURE-----

--ca6lng7rcdaswecq--


--===============2285974812595819054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2285974812595819054==--

