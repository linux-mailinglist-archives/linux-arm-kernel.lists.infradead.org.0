Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA75C15FC62
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 03:38:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6F1w9do5fP8McQKOxbTrKPMDTcHtTeZw571KdAWSoY=; b=uak9GoT80SbGfD
	HYW6EDLvSGdTDs2z/KxNz4vFU2aVp/IhF81xRGYVDyHMCF/1aSjR7/Ol37TrUBskNUMwZigihLzK2
	SA1Q2JZ4cQDq0g/7jCm2Rjzv2Ac+Gr7mc4q/E17Zf09kPhYNzwqcy9hsrGneLMJLik0J3uw/btKTX
	vlu0vCulpx/IFRvyWUasxVGpCSXKMZjDx/Qn6gDifJI2BBtA4v8FQ6S47rKUsT/3N05IGUnWOJ2MK
	ctsM1BdOoJ0B21ugDazlzR3dkQWJ6fsfC5b+Rpxk5OLmcLCPvdaTfrESKYlY0a7FvT4eMhgPGitk8
	AuUw7s82nHgjhfIfZR0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2nLM-000314-BW; Sat, 15 Feb 2020 02:38:08 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2nLE-00030a-LX
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 02:38:02 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 1F02C50C;
 Fri, 14 Feb 2020 21:37:59 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Fri, 14 Feb 2020 21:37:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:from:to:cc:references:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm1; bh=U
 5XWK2loldXj1dAeBzE4apXVfe2BNOW6MilrKnw8LsQ=; b=aDncgyPLmGZwqJbhd
 t6uTD4uHvMYc2D9ITAXmy9F5I9tXXJq5J1qAGBi0ySTQ2HdYSncg/b2SbhmYKn54
 gJkqdMBZOqzfH6ZuLf1yYlu2ZWDllVJsNxoxhkVJswwbIRZBFKzyaCZCFIn4//C6
 Jva42viJhVLg772tJ0+1nTijHTY3/4khycNfE7WWhfUQSdfIvpT0p4Xig7DmV8NX
 CqfECQWgY2akADkg+d2XnAnPD0WQqpq/5h5q3JvomHf0id8dF7J0PRcajsuGcSKE
 I8Qro2rv7R3jOqQK8G8KlkouthleEt2hnvIn4aT/2h6KgR7qoxydQx+5xOnF/CCt
 ylR7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=U5XWK2loldXj1dAeBzE4apXVfe2BNOW6MilrKnw8L
 sQ=; b=SB/gcvyjG+9RV/4TDGuytTqS3iL34NCiLwCmsTDfFik8YOfBLcOTqtb2k
 xrZGLKAmGNK+KC3TeR8i9joQZ5ZeaCStFBq5gnR3FLEUa2KVlB53LqgnrDSGdrYq
 3zwD5ngZsjZ0xg++2vROFu3rDZs0MrpZ0M0b8/HqE5RD6fKmVxYijRlbfavle+fl
 GkoUea/tmfbcuRk8MAazagQoPnhACmc/TkmCak5/Tu9OIAGSnS1RQV1ui7HQVsjQ
 ItrSNQk82SnHI5zplMnUCGU4osAT8s2zMINq2MrqOa3I4NG59Uyf16+nrm34NW88
 PlxQVBfja6ZZfWJSvs+d+52olRTJA==
X-ME-Sender: <xms:gFlHXtcagPedSothVq9mF6RBUjV8Jnmy40PBk9nCQlyXTk6GHsLcxw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedugdegkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuhffvfhfkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:gFlHXniEh2sSx7Aa5BMfX2WMJWCCUCHvGa14Sp-nb0NOEL_706JOkw>
 <xmx:gFlHXpRAVsemeBXYAZ9cdGmQvT9YiDZozWinZM76TW3IlJws-o8hDg>
 <xmx:gFlHXowWwhbiWaCP6l9-kXrilHeLzDFAerggR-ajZVs_XnGmtikhdg>
 <xmx:hllHXnXLOxcUteGTWC6dah6PPD4OU-lnMBeTbASqmCj7vLcC9n2fQQ>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7D12E3060C21;
 Fri, 14 Feb 2020 21:37:52 -0500 (EST)
Subject: Re: [PATCH 4/4] drm/sun4i: dsi: Remove incorrect use of runtime PM
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime@cerno.tech>
References: <20200211072858.30784-1-samuel@sholland.org>
 <20200211072858.30784-4-samuel@sholland.org>
 <20200211082627.nolf6npspw2a2rxs@gilmour.lan>
 <dd5869d5-abbc-32e5-4f5c-cfad1fa35e0d@sholland.org>
Message-ID: <e8492bbb-6f77-a1e3-25d7-c9869f20dec1@sholland.org>
Date: Fri, 14 Feb 2020 20:37:52 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <dd5869d5-abbc-32e5-4f5c-cfad1fa35e0d@sholland.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_183800_748938_1235D293 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 stable@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Maxime,

First, sorry for the tone in my previous message. I wrote it too hastily.

> On 2/11/20 2:26 AM, Maxime Ripard wrote:
>> On Tue, Feb 11, 2020 at 01:28:58AM -0600, Samuel Holland wrote:
>>> 3) The driver relies on being suspended when sun6i_dsi_encoder_enable()
>>>    is called. The resume callback has a comment that says:
>>>
>>>       Some part of it can only be done once we get a number of
>>>       lanes, see sun6i_dsi_inst_init
>>>
>>>    And then part of the resume callback only runs if dsi->device is not
>>>    NULL (that is, if sun6i_dsi_attach() has been called). However, as
>>>    the above call graph shows, the resume callback is guaranteed to be
>>>    called before sun6i_dsi_attach(); it is called before child devices
>>>    get their drivers attached.
>>
>> Isn't it something that has been changed by your previous patch though?
> 
> No. Before the previous patch, sun6i_dsi_bind() requires sun6i_dsi_attach() to
> have been called first. So either the panel driver is not loaded, and issue #2
> happens, or the panel driver is loaded, and you get the following modification
> to the above call graph:
> 
>    mipi_dsi_host_register()
>       ...
>          __device_attach()
>             pm_runtime_get_sync(dev->parent) -> Causes resume
>             bus_for_each_drv()
>                __device_attach_driver()
>                   [panel probe function]
>                      mipi_dsi_attach()
>                         sun6i_dsi_attach()
>             pm_runtime_put(dev->parent) -> Async idle request
>    component_add()
>       ...
>          sun6i_dsi_bind()
>       ...
>          sun6i_dsi_encoder_enable()
>             pm_runtime_get_sync() -> Cancels idle request
> 
> And because `dev->power.runtime_status == RPM_ACTIVE` still, the callback is
> *not* run. Either way you have the same problem.

While the scenario I described is possible (since an unbounded amount of other
work could be queued to pm_wq), I did more testing without these patches, and I
could never trigger it. No matter what combination of module/built-in drivers I
used, there was always enough time between mipi_dsi_host_register() and
sun6i_dsi_encoder_enable() for the device to be suspended. So in practice
sun6i_dsi_inst_init() was always called during boot.

>>>    Therefore, part of the controller initialization will only run if the
>>>    device is suspended between the calls to mipi_dsi_host_register() and
>>>    component_add() (which ends up calling sun6i_dsi_encoder_enable()).
>>>    Again, as shown by the above call graph, this is not the case. It
>>>    appears that the controller happens to work because it is still
>>>    initialized by the bootloader.
>>
>> We don't have any bootloader support for MIPI-DSI, so no, that's not it.

You are correct here. sun6i_dsi_inst_init() was indeed being called at boot. So
my commit log is wrong.

>>>    Because the connector is hardcoded to always be connected, the
>>>    device's runtime PM reference is not dropped until system suspend,
>>>    when sun4i_drv_drm_sys_suspend() ends up calling
>>>    sun6i_dsi_encoder_disable(). However, that is done as a system sleep
>>>    PM hook, and at that point the system PM core has already taken
>>>    another runtime PM reference, so sun6i_dsi_runtime_suspend() is
>>>    not called. Likewise, by the time the PM core releases its reference,
>>>    sun4i_drv_drm_sys_resume() has already re-enabled the encoder.
>>>
>>>    So after system suspend and resume, we have *still never called*
>>>    sun6i_dsi_inst_init(), and now that the rest of the display pipeline
>>>    has been reset, the DSI host is unable to communicate with the panel,
>>>    causing VBLANK timeouts.
>>
>> Either way, I guess just moving the pm_runtime_enable call to
>> sun6i_dsi_attach will fix this, right? We don't really need to have
>> the DSI controller powered up before that time anyway.
> 
> No. It would solve issue #2 (only if the previous patch is
> applied), but not issue #3.
> 
> Regardless of when runtime PM is enabled, sun6i_dsi_runtime_suspend() will not
> be called until the device's usage count drops to 0. And as long as a panel is
> bound, the controller's usage count will be >0, *even during system suspend*
> while the encoder is turned off.
> 
> Before the previous patch, the usage count would never drop to 0 under *any*
> circumstance.

FWIW,
Samuel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
