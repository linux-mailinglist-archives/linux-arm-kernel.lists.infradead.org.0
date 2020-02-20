Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D84011665AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 19:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=74eyXY6bA+woIHmArcOzMfmrvNKLJf1oWpHMXu/S0zI=; b=NVl7Z8P38WQd7IYYxP9W7ZanS
	Xi7mC7LKMhSyTl72TmwfGoq8cYiVHg8WdIIb/k2RkTI0q3Kp0iZb4YvFxxZ9I3XKUSEaZnht9/+VB
	k2oISVPF4MPdA0BSFSt4gemrDvx2lf9aVwi1DmyiXqbcmzesmUM9/EYhwA4oaYgTDV0AFgJjrUzar
	dkZfLTs2+JOMW5Bep9KUfZOfixZ3VEKZBzmlUI/Kd78DhdLrBvlUcNXkGr+bALG5meyy1HRHQsm+W
	TWDmq7g4MWpxvDGtEghQ1rQneDCChDsE044HyuDXNGXux/fnHpkSE1Vg5rAQaRThavyT9s46ljuXN
	IRc9R7tfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4q7q-0001xB-9V; Thu, 20 Feb 2020 18:00:38 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q7S-0001mf-HM
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 18:00:16 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id B66DD56C7;
 Thu, 20 Feb 2020 13:00:13 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 13:00:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=3iVZpI1OxXxQS2+5cTW4IrNcV5c
 F9OxDP+rQ8UJEwO8=; b=xROZRlrvRLpbuKTf7VVAF515Y3a3vu7WPZ7jx0QgY6F
 tvZAHye/3hKTvCHKfHoz6SDsGab9+J4J6C4dmLzEdqFW5XT1YyONXJQb0SrI5myB
 pMJOn6wCcO8pnyDEGyPwLa1zEN0osN1ECGqUa+Hf5AJNxYgyP3PNGW4yU8JOSrIb
 WgCvL02SkA0ZukAYD4YbQjxzRCDmQILIhJ2ZnWeVZZ7ZkH2utSZ7+kOGelXV+rqD
 kMzAx3cZ2sKybmJaji6baVN3//M8HQy27x0nyAM/x3aKPXgTubCmXzFqvY1C8Bgi
 ++fAJoBKlIy6uFRAryEIHTHkmvS+mfflUJIL4mLA1UQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=3iVZpI
 1OxXxQS2+5cTW4IrNcV5cF9OxDP+rQ8UJEwO8=; b=JhT8mtKHS1kel2Jve1v6Cm
 tzEFJQmKFJLY2lXkDtCG5h8CIYx48fcHj9gfzYyyNzIFfQZmqH0sdAERvmQsTyl2
 Q3BtlHbbGV8dT21vB9nGQcHKmopPktYTeGsNEWCfmzFRiAdK3xL8RM/DkpPYOI0N
 VYv+0la9bb4e7vgljOAdrrMf6pjWH9drLsFrHOvvcJhvICkdISEt5eWEtw5KmOOO
 te2GMzaTzNqNu6XdLrPblyrW3w//ReNcdWATBsBodhkt/j7gnB9lCXbwW3fPiv08
 x4AoYMIiJHShR9XIoLAxzZnCaGnNuE6+FL7BpSmZMryzE11IkG+WD+eyTmqEOUOQ
 ==
X-ME-Sender: <xms:KclOXglDO_oxqApfDRUGzu17fuwLMsP6-OANHX6HAg7BeUDIYBttuQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgdduuddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:KclOXnSYkxXSwxoSDl7CV6KgxF34YCtKGpbSXUkQaJtRori60SgNkw>
 <xmx:KclOXsApPiLw8ZwHDPH49U7BUCGT8NsqBUrhvj1Cr4Kcq_4Nkgk-hA>
 <xmx:KclOXmTKxFPmLQeR09YROPaScynFunYEZgqLKM5L0yaesI-J4erFPw>
 <xmx:LclOXrHApIyF1i4BfvXVZ7k3EqIpb0XQ3AubpxKTGEe90K3CWTlgUg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 92F9A3060D1A;
 Thu, 20 Feb 2020 13:00:09 -0500 (EST)
Date: Thu, 20 Feb 2020 19:00:08 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 1/4] drm/connector: Add data polarity flags
Message-ID: <20200220180008.mfl2pfcea6rafmt5@gilmour.lan>
References: <cover.b12a054012ce067fa2094894147f953ab816d8d0.1581682983.git-series.maxime@cerno.tech>
 <b541006fa0a1c34ac5f668dc561aa1598f8fd86c.1581682983.git-series.maxime@cerno.tech>
 <20200214161359.GB18287@ravnborg.org>
MIME-Version: 1.0
In-Reply-To: <20200214161359.GB18287@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_100014_756128_336755EF 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0125253285997099480=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0125253285997099480==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="djjcychys4abfub2"
Content-Disposition: inline


--djjcychys4abfub2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 14, 2020 at 05:13:59PM +0100, Sam Ravnborg wrote:
> Hi Maxime.
>
> On Fri, Feb 14, 2020 at 01:24:38PM +0100, Maxime Ripard wrote:
> > Some LVDS encoders can change the polarity of the data signals being
> > sent. Add a DRM bus flag to reflect this.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  include/drm/drm_connector.h | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> > index 221910948b37..9a08fe6ab7c2 100644
> > --- a/include/drm/drm_connector.h
> > +++ b/include/drm/drm_connector.h
> > @@ -330,6 +330,8 @@ enum drm_panel_orientation {
> >   *					edge of the pixel clock
> >   * @DRM_BUS_FLAG_SHARP_SIGNALS:		Set if the Sharp-specific signals
> >   *					(SPL, CLS, PS, REV) must be used
> > + * @DRM_BUS_FLAG_DATA_LOW:		The Data signals are active low
> > + * @DRM_BUS_FLAG_DATA_HIGH:		The Data signals are active high
> Reading the description of these falgs always confuses me.
> In this case if neither bit 9 nor bit 10 is set then the data signals
> are netiher active low nor active high.
> So what can I then expect?
>
> We have the same logic loophole for DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE
> and DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE.
> So it is not new, but can we do better here?

Honestly, I don't really get it either. I *think* this is to handle
the sampling / output inversion properly which wouldn't be possible if
this was only a bit set or not.

Maxime

--djjcychys4abfub2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk7JKAAKCRDj7w1vZxhR
xQxeAPwLFn41l30eKqukNP84sFPMXbLHQVADj+Faro+XxhjBGQEA4Y58gz6z1NXr
ic+uREN12TeqDmmfkPeNrnAd17ffFQ8=
=EVQZ
-----END PGP SIGNATURE-----

--djjcychys4abfub2--


--===============0125253285997099480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0125253285997099480==--

