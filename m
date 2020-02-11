Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E6015935A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HeM7Atr/1MF1Lr9Qtw41STzL3uL2QyGu0XI6rPyZbU=; b=apKI01hzMSXtMM
	/hnKBWg6wEr3j9/iDj8LV8JqeIg2cA7lZ8ozb8CD00HUgs8agF+CbwgiGh0jTxppLsQAMSCzYtbQD
	qRe1ZMeWNnDZBUwTcYuL4EaJQYghKtkOGW0teV9wRupxiZ++w1KP96qzfS62PgNbz61dCrHSt06w6
	BGz8bLO2GwsJrG2eesq8kUd4xioPEvY+FkyfBnbnZMr4VXL6z6yHsSw6yceMp3lMUX5eigVzywWNh
	tO9JjKpBU6bTH798chQofdaoTDPoIlDLGY0U12sYVVJjwRFB7EdBCmI8OD4FjcoQ4H6txdAESL2ix
	ivVO6NZ5L9FOzjptV1WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Xe2-00073g-J3; Tue, 11 Feb 2020 15:40:14 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Xdm-00072l-Io
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:40:00 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 13D336CB;
 Tue, 11 Feb 2020 10:39:55 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 11 Feb 2020 10:39:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm1; bh=g
 eOJVgUznMXc04Wg5cWpEzjCkLi35gMNLg6tLpVl2JQ=; b=dtD67+0w7k2n6Ifut
 fTEwMUcRfu2ruL/W8mqk50jMfzG76FOePwgLsjcRUEMAOFIgFZnz9GOZAvr0rqpl
 cVZLWYqEgILBU4dN6A3cn4gkhpb6gnk9n/wMpGbUTem/Hmh3Zmt9obngPdT2iWiD
 ueSSVFbhPbZ/5Zcapo2Fl1d+LV6KtI2KA7Oukvo5wnH/7Ea0YHJRoIav1yzutZE5
 eLH0bhERLu3QqhB5TkrZU9uwS6Wnw4JoTAC/sHlY8pF24hD37ND2OyOj0umnNmiv
 lpORI6xsHTxX0cNJqvG+OVnF0RjKfOaxLBPlX6uADnDB1bup3PnAGyS7xW2yAeSM
 LpGMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=geOJVgUznMXc04Wg5cWpEzjCkLi35gMNLg6tLpVl2
 JQ=; b=bfklLuCuPajZRlDO2jvNxRuM0XFstbC6QBUGi1yNQ/1nnjZ7T/+Cosuq9
 +/922FLVgTbSO7P3xjzBLukL+k2yZGl8LI4WBGWdldn1PGux6IkHAL3zrXcKMsfR
 g+t1+PkhrVB2+G6BJ9NxnRYc906GvPQFPo4zGsPilL5Q94/72zYzjfjVZ+3cpav5
 kNJExTW5MPSUKosoVzhD1IUV1omjTmLC86C7UlLZtFsTYWnsxQsd12iK2dR1ZGaT
 OVDQ2BUaUnK6XX9zofA5jVa4r8gCh15piMrMe0UntpIBos5Dw4J38K1n+kiDpZv/
 VJJS8/V6C4cBlBVo3FYC67T1MKvpw==
X-ME-Sender: <xms:ycpCXnn_miu7inm3Z75aEdLFmAnJ2EF4yQF1rszpL3UnwAbrWWpOnw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieefgdejiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:ycpCXrByWnj5nQzYhoEHSryBys9wmCYqvpmT4xiL3ShXrlFaKWpzYw>
 <xmx:ycpCXvc9pwO6rOiUbJgFBH3ppZvSg4j7iLF3vdU1ddgiZIoH53e72A>
 <xmx:ycpCXuLJWwt-2kgJmTCGZVDv0_Q5xAySJ9k7O-rXhd5PlE1eBNr51g>
 <xmx:yspCXjgH-UyExNVLm87VXJMVzk453H17EjGMAC8TtMjPQ4xjv5NkZQ>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4FF5E3060840;
 Tue, 11 Feb 2020 10:39:53 -0500 (EST)
Subject: Re: [PATCH 4/4] drm/sun4i: dsi: Remove incorrect use of runtime PM
To: Maxime Ripard <maxime@cerno.tech>
References: <20200211072858.30784-1-samuel@sholland.org>
 <20200211072858.30784-4-samuel@sholland.org>
 <20200211082627.nolf6npspw2a2rxs@gilmour.lan>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <dd5869d5-abbc-32e5-4f5c-cfad1fa35e0d@sholland.org>
Date: Tue, 11 Feb 2020 09:39:52 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200211082627.nolf6npspw2a2rxs@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_073958_730927_B91F9AB6 
X-CRM114-Status: GOOD (  30.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Maxime,

On 2/11/20 2:26 AM, Maxime Ripard wrote:
> On Tue, Feb 11, 2020 at 01:28:58AM -0600, Samuel Holland wrote:
>> The driver currently uses runtime PM to perform some of the module
>> initialization and cleanup. This has three problems:
>>
>> 1) There is no Kconfig dependency on CONFIG_PM, so if runtime PM is
>>    disabled, the driver will not work at all, since the module will
>>    never be initialized.
> 
> That's fairly easy to fix.
> 
>> 2) The driver does not ensure that the device is suspended when
>>    sun6i_dsi_probe() fails or when sun6i_dsi_remove() is called. It
>>    simply disables runtime PM. From the docs of pm_runtime_disable():
>>
>>       The device can be either active or suspended after its runtime PM
>>       has been disabled.
>>
>>    And indeed, the device will likely still be active if sun6i_dsi_probe
>>    fails. For example, if the panel driver is not yet loaded, we have
>>    the following sequence:
>>
>>    sun6i_dsi_probe()
>>       pm_runtime_enable()
>>       mipi_dsi_host_register()
>>          of_mipi_dsi_device_add(child)
>>             ...device_add()...
>>                __device_attach()
>>                  pm_runtime_get_sync(dev->parent) -> Causes resume
>>                  bus_for_each_drv()
>>                     __device_attach_driver() -> No match for panel
>>                  pm_runtime_put(dev->parent) -> Async idle request
>>       component_add()
>>          __component_add()
>>             try_to_bring_up_masters()
>>                try_to_bring_up_master()
>>                   sun4i_drv_bind()
>>                      component_bind_all()
>>                         component_bind()
>>                            sun6i_dsi_bind() -> Fails with -EPROBE_DEFER
>>       mipi_dsi_host_unregister()
>>       pm_runtime_disable()
>>          __pm_runtime_disable()
>>             __pm_runtime_barrier() -> Idle request is still pending
>>                cancel_work_sync()  -> DSI host is *not* suspended!
>>
>>    Since the device is not suspended, the clock and regulator are never
>>    disabled. The imbalance causes a WARN at devres free time.
> 
> That's interesting. I guess this is shown when you have the panel as a
> module?

That's the easiest way to get sun6i_dsi_probe() to fail, yes. Even if the panel
was built-in `modprobe sun6i_dsi; rmmod sun6i_dsi` would likely trigger the
issue, since sun6i_dsi_remove() has the same problem.

> There's something pretty weird though. The comment in
> __pm_runtime_disable states that it will "wait for all operations in
> progress to complete" so at the end of __pm_runtime_disable call, the
> DSI host will be suspended and we shouldn't have a WARN at all.

No, that's not what "operations in progress" means. That only waits for a
callback that is *already running* on another CPU to complete, in other words
`dev->power.runtime_status == RPM_SUSPENDING`.

Here the callback does not get run at all. At the time __pm_runtime_disable() is
called:

dev->power.runtime_status == RPM_ACTIVE
dev->power.request == RPM_REQ_IDLE
dev->power.request_pending == true

because pm_runtime_put() calls rpm_idle() with the RPM_ASYNC flag.

And as I mentioned, that request is thrown away by __pm_runtime_barrier(). So
the device PM core is working as documented.

>> 3) The driver relies on being suspended when sun6i_dsi_encoder_enable()
>>    is called. The resume callback has a comment that says:
>>
>>       Some part of it can only be done once we get a number of
>>       lanes, see sun6i_dsi_inst_init
>>
>>    And then part of the resume callback only runs if dsi->device is not
>>    NULL (that is, if sun6i_dsi_attach() has been called). However, as
>>    the above call graph shows, the resume callback is guaranteed to be
>>    called before sun6i_dsi_attach(); it is called before child devices
>>    get their drivers attached.
> 
> Isn't it something that has been changed by your previous patch though?

No. Before the previous patch, sun6i_dsi_bind() requires sun6i_dsi_attach() to
have been called first. So either the panel driver is not loaded, and issue #2
happens, or the panel driver is loaded, and you get the following modification
to the above call graph:

   mipi_dsi_host_register()
      ...
         __device_attach()
            pm_runtime_get_sync(dev->parent) -> Causes resume
            bus_for_each_drv()
               __device_attach_driver()
                  [panel probe function]
                     mipi_dsi_attach()
                        sun6i_dsi_attach()
            pm_runtime_put(dev->parent) -> Async idle request
   component_add()
      ...
         sun6i_dsi_bind()
      ...
         sun6i_dsi_encoder_enable()
            pm_runtime_get_sync() -> Cancels idle request

And because `dev->power.runtime_status == RPM_ACTIVE` still, the callback is
*not* run. Either way you have the same problem.

>>    Therefore, part of the controller initialization will only run if the
>>    device is suspended between the calls to mipi_dsi_host_register() and
>>    component_add() (which ends up calling sun6i_dsi_encoder_enable()).
>>    Again, as shown by the above call graph, this is not the case. It
>>    appears that the controller happens to work because it is still
>>    initialized by the bootloader.
> 
> We don't have any bootloader support for MIPI-DSI, so no, that's not it.
> 
>>    Because the connector is hardcoded to always be connected, the
>>    device's runtime PM reference is not dropped until system suspend,
>>    when sun4i_drv_drm_sys_suspend() ends up calling
>>    sun6i_dsi_encoder_disable(). However, that is done as a system sleep
>>    PM hook, and at that point the system PM core has already taken
>>    another runtime PM reference, so sun6i_dsi_runtime_suspend() is
>>    not called. Likewise, by the time the PM core releases its reference,
>>    sun4i_drv_drm_sys_resume() has already re-enabled the encoder.
>>
>>    So after system suspend and resume, we have *still never called*
>>    sun6i_dsi_inst_init(), and now that the rest of the display pipeline
>>    has been reset, the DSI host is unable to communicate with the panel,
>>    causing VBLANK timeouts.
> 
> Either way, I guess just moving the pm_runtime_enable call to
> sun6i_dsi_attach will fix this, right? We don't really need to have
> the DSI controller powered up before that time anyway.

Sorry, but no again. It would solve issue #2 (only if the previous patch is
applied), but not issue #3.

Regardless of when runtime PM is enabled, sun6i_dsi_runtime_suspend() will not
be called until the device's usage count drops to 0. And as long as a panel is
bound, the controller's usage count will be >0, *even during system suspend*
while the encoder is turned off.

Before the previous patch, the usage count would never drop to 0 under *any*
circumstance.

>> Fix all of these issues by inlining the runtime PM hooks into the
>> encoder enable/disable functions, which are guaranteed to run after a
>> panel is attached. This allows sun6i_dsi_inst_init() to be called
>> unconditionally. Furthermore, this causes the hardware to be turned off
>> during system suspend and reinitialized on resume, which was not
>> happening before.
> 
> That's not something we should do really. We're really lacking any
> power management, so we should be having more of runtime_pm, not less.

This *is* adding more power management! The current runtime_pm hooks never
actually suspend the device, as described above. And even if they did work, this
would not extend the lifetime during which the device is active! I'm calling the
power-up/power-down routines at exactly the same point they were previously
getting called, except for two changes:

1) The device does not get powered up during mipi_dsi_host_register(), which you
just said was unnecessary.

2) The code in the PM hooks actually gets run when it was intended to be run.

> Maxime

Samuel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
