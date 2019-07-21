Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639696F697
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 01:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TT80eMcGC7olCaP/6Ey/EdAJKMSgxWV5f4H2ymlctKQ=; b=a2rSLqVO7EgSK+
	yBpSQCzJ2Gn28YjB+4v7qBBNt2S73yMzf8mIF7blNw+PK1PE7EWsiNt1LUwasn1fOnn9jw1w5t+oB
	RGtYtFQobQbUtyCGttwIOmMCy4jcvzSKoOuhgSK2lFI9dou3MvMO9I9kpDved5PpuYxLYzpar8eO+
	guCcng3dEO3h5xxl3u9Jg+RoJvPSs4PtxVORz4PY37Le93BOEn86H77xAeFnSTGlPd7bDD+TPb2sO
	fp5ipbh+f5ttOS0a+hDa7wETMZf0SkHc+RvA2469GHGnVc81hWkVYHyf1MCTAvsTIfHLKYWshcBQL
	WCHYvSBAzniFOxaAf6UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpKpR-0005zV-2k; Sun, 21 Jul 2019 23:01:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpKpA-0005yw-P6
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 23:01:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 7E59628A24F
Message-ID: <22d7eca4ad8aa2e73933c4f83c92221ce6e0945a.camel@collabora.com>
Subject: Re: [PATCH] Enable backlight when trigger is activated
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Pavel Machek <pavel@ucw.cz>, kernel list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, tony@atomide.com, sre@kernel.org, 
 nekit1000@gmail.com, mpartap@gmx.net, merlijn@wizzup.org, 
 jacek.anaszewski@gmail.com, linux-leds@vger.kernel.org,
 b.zolnierkie@samsung.com,  dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
Date: Sun, 21 Jul 2019 20:00:44 -0300
In-Reply-To: <20190718190849.GA11409@amd>
References: <20190718190849.GA11409@amd>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_160100_948831_2FDB9A50 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

The commit log is lacking the proper "leds: triggers: ".

Also...

On Thu, 2019-07-18 at 21:08 +0200, Pavel Machek wrote:
> Configuring backlight trigger from dts results in backlight off during
> boot. Machine looks dead upon boot, which is not good.
> 
> Fix that by enabling LED on trigger activation.
> 
> Signed-off-by: Pavel Machek <pavel@ucw.cz>
> 
> diff --git a/drivers/leds/trigger/ledtrig-backlight.c b/drivers/leds/trigger/ledtrig-backlight.c
> index 487577d..6e6bc78 100644
> --- a/drivers/leds/trigger/ledtrig-backlight.c
> +++ b/drivers/leds/trigger/ledtrig-backlight.c
> @@ -114,6 +114,8 @@ static int bl_trig_activate(struct led_classdev *led)
>  	n->old_status = UNBLANK;
>  	n->notifier.notifier_call = fb_notifier_callback;
>  
> +	led_set_brightness(led, LED_ON);
> +

This looks fishy.

Maybe you should use a default-state = "keep" instead? (and you'll have
to support it in the LED driver).

That'll give you proper "don't touch the LED if it was turned on" behavior,
which is what you seem to want.

Regards,
Eze


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
