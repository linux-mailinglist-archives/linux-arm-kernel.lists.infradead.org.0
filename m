Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F32158B39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 09:26:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xWjFwzrOQzYOuwVMEeiVIKbb4/WgeSlBDvf0s057rKc=; b=P3QO83xl+SpmLQ81JP/Ru6Ck3
	Cc7Zuh1G2QHTOHx7GS/XGwCXZozW5jjpUlrjNdhzFAzzRp1R4ATTr/pPvTsUqHn3lp1r5bVLa6aNq
	MS9ILBNqAUYUwmOejccjxo75gO3Kyw68Jg9U/yjq/+MCDAS4GSCw2VUIpv/XaJ8L9NWxKYLUjRig4
	2CB4MmPqQ1ZK0TuOVCSsLmlZDWuW5srRj6Af0pXdDTEbx5htk+033ZY4sAU89AbVyh4ZVT+qyvHYw
	1W5oMhNdIKwOycG5xRB7h296d0MUc3entCqPEyBXb3519mZieoxyYt0Hn8xHhInf5AnjyjFtrNr3l
	7zjen/UYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1QsT-0000CG-I8; Tue, 11 Feb 2020 08:26:41 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1QsM-0000Bq-Fd
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 08:26:36 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 8EE26217FC;
 Tue, 11 Feb 2020 03:26:33 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 11 Feb 2020 03:26:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=aJFuuqSI2HhjxwelhEtc0Ez5YPf
 0KrosR/wT6D9AufM=; b=SNpkHcj8DpzU9/RJO4Dx7NW+qlKd91YZZI1QJXfYz/r
 mjM6R+IwGn5lZEYn3UCPb5Qju528nBi/21tUOY/rEuvzmK8wnSnACdnG29mYio4t
 udEXGLB+eBK6xQn7/HDoPcBvcmfsKnO2ckqZcjmiDLx+m296E1rOHeap+Vi/Ry3n
 NhW4axLlOqzvys1Ul7u7Jq9MYLR2rlc1WTcwDpPJdOIGZzKzhhd1QXn3/0H8p365
 8FvXCm0Wd28Tn3ycvgY9T/vMjdZOhf0yXRjjwi5IUT3Me4n23mMvT+qO3qoIizFL
 LSBnlo+dwPvRen5j179JPXmPAhSs41TvHkXt38svVPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=aJFuuq
 SI2HhjxwelhEtc0Ez5YPf0KrosR/wT6D9AufM=; b=Wml2BvHI6FDEY4f5OH7zsZ
 nYzr6x37E8Ztk9Hqxr4Yn2iacvL+KNSKkgrbzvsQkulIZUumb2iL2yLppIwQ2p6b
 bHs4jnVn2qMCF0CY/JyebH2oWKn1w1HyewQ8WGkPtZ28yZxOWw0J3uOOCdBunMhc
 xZwSIvsphbzbGHF048UA1zyi6cbAlmVJ3DHMdFGqGaRPfQue2Nyn8eckBihTpYqp
 eGiAsh+h6QgACz9ELwizRbuEBla1yg4CU6RnmiBcN4xBtfGd1eXfV/Ax5opKnJCJ
 02DchwvpAAWoO+fXDSxIn53Vw/9zCmAcqtZad5bgNPKbmtP0u15jmhsjOnYVxkLA
 ==
X-ME-Sender: <xms:NWVCXtyBNsa7zJ6-4S4NZ5g5IwIr29AdqnvZnAFWIbQ9O_ggJAybag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedvgdduudelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:NWVCXmso8okp7MHQWlJU0Ryben_orT0c0mClRSczluznL_7UQdqHiA>
 <xmx:NWVCXm6lpacM8pWcwl2hSenwQtEBBBTKC0dmupVJxxF7gpgUahwV-A>
 <xmx:NWVCXlRXe6Fq4qqTmT5AcSBgjyOwfoTKYrkdR7Xv-7GWfr_AK_ZmIA>
 <xmx:OWVCXiQq_WypclKpll63jsqtz_c_x-n2-UynCFHnSLxcIZQ766gZyQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C7872328005A;
 Tue, 11 Feb 2020 03:26:28 -0500 (EST)
Date: Tue, 11 Feb 2020 09:26:27 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 4/4] drm/sun4i: dsi: Remove incorrect use of runtime PM
Message-ID: <20200211082627.nolf6npspw2a2rxs@gilmour.lan>
References: <20200211072858.30784-1-samuel@sholland.org>
 <20200211072858.30784-4-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200211072858.30784-4-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_002634_667317_FF6078B4 
X-CRM114-Status: GOOD (  26.33  )
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 stable@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2424062203231990863=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2424062203231990863==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kwpruo3coc5fkck7"
Content-Disposition: inline


--kwpruo3coc5fkck7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Feb 11, 2020 at 01:28:58AM -0600, Samuel Holland wrote:
> The driver currently uses runtime PM to perform some of the module
> initialization and cleanup. This has three problems:
>
> 1) There is no Kconfig dependency on CONFIG_PM, so if runtime PM is
>    disabled, the driver will not work at all, since the module will
>    never be initialized.

That's fairly easy to fix.

> 2) The driver does not ensure that the device is suspended when
>    sun6i_dsi_probe() fails or when sun6i_dsi_remove() is called. It
>    simply disables runtime PM. From the docs of pm_runtime_disable():
>
>       The device can be either active or suspended after its runtime PM
>       has been disabled.
>
>    And indeed, the device will likely still be active if sun6i_dsi_probe
>    fails. For example, if the panel driver is not yet loaded, we have
>    the following sequence:
>
>    sun6i_dsi_probe()
>       pm_runtime_enable()
>       mipi_dsi_host_register()
>          of_mipi_dsi_device_add(child)
>             ...device_add()...
>                __device_attach()
>                  pm_runtime_get_sync(dev->parent) -> Causes resume
>                  bus_for_each_drv()
>                     __device_attach_driver() -> No match for panel
>                  pm_runtime_put(dev->parent) -> Async idle request
>       component_add()
>          __component_add()
>             try_to_bring_up_masters()
>                try_to_bring_up_master()
>                   sun4i_drv_bind()
>                      component_bind_all()
>                         component_bind()
>                            sun6i_dsi_bind() -> Fails with -EPROBE_DEFER
>       mipi_dsi_host_unregister()
>       pm_runtime_disable()
>          __pm_runtime_disable()
>             __pm_runtime_barrier() -> Idle request is still pending
>                cancel_work_sync()  -> DSI host is *not* suspended!
>
>    Since the device is not suspended, the clock and regulator are never
>    disabled. The imbalance causes a WARN at devres free time.

That's interesting. I guess this is shown when you have the panel as a
module?

There's something pretty weird though. The comment in
__pm_runtime_disable states that it will "wait for all operations in
progress to complete" so at the end of __pm_runtime_disable call, the
DSI host will be suspended and we shouldn't have a WARN at all.

> 3) The driver relies on being suspended when sun6i_dsi_encoder_enable()
>    is called. The resume callback has a comment that says:
>
>       Some part of it can only be done once we get a number of
>       lanes, see sun6i_dsi_inst_init
>
>    And then part of the resume callback only runs if dsi->device is not
>    NULL (that is, if sun6i_dsi_attach() has been called). However, as
>    the above call graph shows, the resume callback is guaranteed to be
>    called before sun6i_dsi_attach(); it is called before child devices
>    get their drivers attached.

Isn't it something that has been changed by your previous patch though?

>    Therefore, part of the controller initialization will only run if the
>    device is suspended between the calls to mipi_dsi_host_register() and
>    component_add() (which ends up calling sun6i_dsi_encoder_enable()).
>    Again, as shown by the above call graph, this is not the case. It
>    appears that the controller happens to work because it is still
>    initialized by the bootloader.

We don't have any bootloader support for MIPI-DSI, so no, that's not it.

>    Because the connector is hardcoded to always be connected, the
>    device's runtime PM reference is not dropped until system suspend,
>    when sun4i_drv_drm_sys_suspend() ends up calling
>    sun6i_dsi_encoder_disable(). However, that is done as a system sleep
>    PM hook, and at that point the system PM core has already taken
>    another runtime PM reference, so sun6i_dsi_runtime_suspend() is
>    not called. Likewise, by the time the PM core releases its reference,
>    sun4i_drv_drm_sys_resume() has already re-enabled the encoder.
>
>    So after system suspend and resume, we have *still never called*
>    sun6i_dsi_inst_init(), and now that the rest of the display pipeline
>    has been reset, the DSI host is unable to communicate with the panel,
>    causing VBLANK timeouts.

Either way, I guess just moving the pm_runtime_enable call to
sun6i_dsi_attach will fix this, right? We don't really need to have
the DSI controller powered up before that time anyway.

> Fix all of these issues by inlining the runtime PM hooks into the
> encoder enable/disable functions, which are guaranteed to run after a
> panel is attached. This allows sun6i_dsi_inst_init() to be called
> unconditionally. Furthermore, this causes the hardware to be turned off
> during system suspend and reinitialized on resume, which was not
> happening before.

That's not something we should do really. We're really lacking any
power management, so we should be having more of runtime_pm, not less.

Maxime

--kwpruo3coc5fkck7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkJlMwAKCRDj7w1vZxhR
xYOyAP4i7bV29YYxSgA7p6SjdiD9FeE7lQtf60arSA++ez4MuQD/bU6dsgSPYiwK
hMZXytraIuKsW3QZc8GHvc91c2y+dAQ=
=fkj2
-----END PGP SIGNATURE-----

--kwpruo3coc5fkck7--


--===============2424062203231990863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2424062203231990863==--

