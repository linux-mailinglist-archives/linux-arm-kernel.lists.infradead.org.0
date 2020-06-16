Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7B31FB004
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eCYtWGrujLvl8s/nLv6BVOrvE9mhWSB1aLTAhSY+fQM=; b=DhoQpSGYjVTtYHXnIn6VTfzNT
	VnismtouP14FNJEQYcCNHTMGIVLVL3kd8gXNQ9mrqCk+08eeDrmf/jz1Ix0VGCmAV/HvzDWkRo/A5
	egz8E8HGQLxsZRPSoumnIcf0Q/QREgweMbbl9hO3Fs/E6yOLpWw8nf9XtQYtrebC/KeWSpNYAzi5F
	1wF0E3NAP2trG11YT7Sn7eajtk9q44BdEAVQ9XU6UUP99T9cZnvYM7xB7BOgenEF10+M0niYrHOhQ
	hCGJwSadVV32nCFu36jK3b+dWy+zLuOd66ES4+Kw9yCvQEYFwSBo/ymEX2zHS/ahWYcEpq5wqpXTV
	Ev+Oaqpmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAWP-0008NV-7R; Tue, 16 Jun 2020 12:16:57 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAWG-0008Ml-4t; Tue, 16 Jun 2020 12:16:49 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0F4F258022A;
 Tue, 16 Jun 2020 08:16:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 16 Jun 2020 08:16:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=q9eVcFed6me6zfjtvNk1obWG+SN
 i2fnGdjrskD0vSG4=; b=BAHU/pAeM2scQGmMJ0hhcXovaHhPr34Xzz0ChofdSJg
 AbngtQzbdsT7IerRj1Z1T5xkSME4ko5EOFNaMDWtlnUNKkDtgQx8lEByQatHXC+W
 i11GKw2L2mJCSxb6Ovn5yQuKO6H9Xf9oKpa4LHg6jRzhZCDMh/oJAjew9Th3TNbH
 c9EZ8FtFcWUjVJq/GUxiUSwnXIY8GQYkWuBq78+J9ZwmP1RVB81Kf17eWqeY+8Wb
 1k67hGDTa03Pq9CKD+mphuZ8qBsEn9ILBPVFDvbjhjzCE60mDq9F8HzwewemcU3t
 z3Ys55/lZEZCtEEcREdgROoCw43S+7fnCgfM1Eped/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=q9eVcF
 ed6me6zfjtvNk1obWG+SNi2fnGdjrskD0vSG4=; b=UIDDPxWGVNnO2saImDFp4B
 +bhlEotEEI/0Az/S9cQm9LMspnTo7S4IS3SmERDhhUeC0vYxLM3OlAL3KUzrlUun
 v3T7yC0SO9eMs1tk0nH01iShh6+urULcFjrxkJ2ayWEj2iSgvJV6GwFclaxA8xrF
 CXB2A87ZeGgEwRfUsJg6j6wu6yj2kIcnJmpVwXJq+xkHyszgiwBPxfX1DnP/d4yF
 bbVa2npUz6VprOfF8wAdA44+Q2+1OneFdSXHD8DEWb4K5dFcwwd+EZ0vrHNKsqj+
 grHQUbcGqD9gGd5l8xP595frNA2sf9bQNeN/jqnQXljnBdbDVlqHgDQJNUpIGGFQ
 ==
X-ME-Sender: <xms:LLjoXiUWFpcp-6aNeYQZMr10z6NghfcX-JKiF9jaB6MYwVMrPZ-1LA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudejtddgheefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:LLjoXunHXvSuz4MdOPO4yUkIKHWS-G0gMmh6WktCHNEt6PcpQYcLDg>
 <xmx:LLjoXmbMIoR76LZEpL2Tww1pGkXEXzzpUPrtvmHPKhZDSekUlxoJsg>
 <xmx:LLjoXpUXYK2Pfp-lvrXSbNcOzK18o-6NQ71VY69t5ZGM885RYMGkng>
 <xmx:LbjoXm6aVegWGcdleeGvE_4GmmmiCjxtz-Bb7cm__1AVd8F6-_sPsg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E6F793280063;
 Tue, 16 Jun 2020 08:16:43 -0400 (EDT)
Date: Tue, 16 Jun 2020 14:16:41 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v4 3/3] ARM: dts: bcm2711: Add HDMI DVP
Message-ID: <20200616121641.jpoz237p43sbndg2@gilmour.lan>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
 <e22222ca7f41b960e9bb1a31e0dd2de95b8c0cd1.1591867332.git-series.maxime@cerno.tech>
 <810816166d8ef554e1bb1f4a2b39ea0b8a1a3d5b.camel@suse.de>
MIME-Version: 1.0
In-Reply-To: <810816166d8ef554e1bb1f4a2b39ea0b8a1a3d5b.camel@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_051648_584294_45BD8F94 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8547578485528404039=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8547578485528404039==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ci3vlkf364l5m74a"
Content-Disposition: inline


--ci3vlkf364l5m74a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,

On Mon, Jun 15, 2020 at 06:26:19PM +0200, Nicolas Saenz Julienne wrote:
> On Thu, 2020-06-11 at 11:23 +0200, Maxime Ripard wrote:
> > Now that we have a driver for the DVP, let's add its DT node.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
>=20
> I can take this patch, but I guess the rest should go trough the clock tr=
ee.
> Is it OK with you?

We have a build dependency on the reset framework for that driver, so it
should rather go through the reset tree (or Philipp should make an
immutable branch that the clk maintainers can merge).

Maxime

--ci3vlkf364l5m74a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXui4KQAKCRDj7w1vZxhR
xR6QAQDrS5Zm0rFCB485zOO5ySoYqmG8mz7ONQ28lCcVXz77/AD9FfLXEu+FTL5M
nXMtMehcZqAyWNkNLhs4fiYUEQ69yQ4=
=oeEm
-----END PGP SIGNATURE-----

--ci3vlkf364l5m74a--


--===============8547578485528404039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8547578485528404039==--

