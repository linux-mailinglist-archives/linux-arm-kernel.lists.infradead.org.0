Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A07191555
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:49:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nERHlxuefESw2wp9aq5WJ1naxIn6tIqKXbDEl5AJ7rY=; b=gx3sJ9C4Lwgqh6UBO6RtI08F4
	5QiFFTVzL8ac2zdkddRndIPKRc/k89c2arvA7eI4m3yNJZm86RRkybPlN3QEEQSfyXt8XK9H7i5jt
	o2xxgeFUYzaT3ZIuyo4Wj7bJs6kkN8T/58HTl3KwWNxnjyV9xYlxsP9M5IKEJvY0FkocWdsuhWS44
	aAegzFADgW1p6Qy3M8fCoaVUjkxUeufBa45hdbfNqXduxXeLJoVJlb0YTwW8D1k6WQPvCv3bl1ChU
	nqILCvIC8kiqMfunWi7dEYlvw6oWn11y+LDCCxPrbn+6se2E9NylKJEkaxRZfCTpk6sRA7qxUkKSY
	GlBRk1dNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGloE-0006Gi-DC; Tue, 24 Mar 2020 15:49:42 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlo3-0006Fu-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:49:32 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 963E4580208;
 Tue, 24 Mar 2020 11:49:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 24 Mar 2020 11:49:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=i7HBmzxid/ci7fk+gbb7Mxl+YrD
 WbK/5oiBZwSKFtdo=; b=omQWnEiN35VVoWHD5HNnqs+mGwGhtQ/DUI+4MwgSrOI
 5xKUariUf8Hqcn5hsOp6ol5Oldyos3xuIURl6a7E1e8kFBL4WdsKpy8/n1XpdYD3
 YwXSjFpaojQ+uMJu0GusJTUOTF9PG/RGvqFMCve4mIBYTNVA0B9tD2edyv8agphF
 Oi70ygmukHOdawpsnx3HWEdUcRVbcL+e6u5Ee5AEz8kri/obJgykARX8hSJAcO/B
 r7b6dM+sZYYgvE910PS4Guc6gXcfo4YPRGGiQr7lQlEz8Q201je4xzxSt9yQDl7p
 txJns9ytOdaTpLqs0DBeTrtLHIlIowuFh91Ylm2rfmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=i7HBmz
 xid/ci7fk+gbb7Mxl+YrDWbK/5oiBZwSKFtdo=; b=Sa24C2bMReuBLUxas1IqsB
 t7aUDg2OcLRo5hBwzT1O/hU+WJDqz5gP3v6s8ziTfuIANB/G7qmGMwXaUkax03Zd
 bIH3jYRQ2GM2EJEBOyZcuP7A9qDHf0tB3Lp2gbNdnKv7uhOt1u+t5vHt0Qzv22Zk
 UvYoBBW0sAWEMceUhydqsUI9Ulo6RNCsm1Gcbi7linSp3+viSn1RzUX6itf5BTgn
 tObmpbNk8JVKJb3thFuYKJrizSuLSoE/J71K+q0H9CTDGT3/M99iik+83YvrycWy
 ORPwwIdCWOHS9w9FQaE0wkzHOaDnBuB6VL5VCc+VIL+BeMh+LwwRwk6cFRMnJK+A
 ==
X-ME-Sender: <xms:Aix6XggI_XoaSRKF1cTbec_S__4Ws_hUKhL7Xb3u3gCW7Xv6gxjBCQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudehuddghedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Aix6Xi_hiquxvOuvSn2hh2bm6t0Ev4R1CVq4EpwP6xkG6H-f7ZZuFw>
 <xmx:Aix6Xp8kpUGnmlgCJGyrT29fExKE_3YhPocZYrvHIBj2wPJZ95M9LQ>
 <xmx:Aix6Xsvw0sz2LWAqfvg33JkDn5xh228gLSdXctVhd1TWNba11nskxQ>
 <xmx:BCx6XkBm-5giGTWGlsOJG8qvnhn90YLLEpzTGbzJvoJqa-zuVlPQSQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 85815328005A;
 Tue, 24 Mar 2020 11:49:22 -0400 (EDT)
Date: Tue, 24 Mar 2020 16:49:20 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Pascal Roeleven <dev@pascalroeleven.nl>
Subject: Re: [PATCH v2 0/5] Add support for Topwise A721 tablet
Message-ID: <20200324154920.sof6pu7eolnhwkrg@gilmour.lan>
References: <20200320112205.7100-1-dev@pascalroeleven.nl>
MIME-Version: 1.0
In-Reply-To: <20200320112205.7100-1-dev@pascalroeleven.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_084931_587464_F9424DA7 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8059835596375246257=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8059835596375246257==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6vyavs63upj3cdfk"
Content-Disposition: inline


--6vyavs63upj3cdfk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Mar 20, 2020 at 12:21:31PM +0100, Pascal Roeleven wrote:
> This series add support for the Topwise A721 tablet and it's display.
> It is an old tablet (around 2012) but it might be useful as reference
> as the devicetree is pretty complete.

It looks good to me for the last 2 patches, I'll wait for feedback
=66rom Thierry or Sam on the panel side.

Maxime

--6vyavs63upj3cdfk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXnosAAAKCRDj7w1vZxhR
xeQMAQC1tUnrU73kvtF/6Q8eBOkIo4PsfbA/FzLXnyX9q4izkgD/UhROpt15xFmZ
fjKg+K19nxzSkwcl7IBQrED6L4Ok1wk=
=SI+q
-----END PGP SIGNATURE-----

--6vyavs63upj3cdfk--


--===============8059835596375246257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8059835596375246257==--

