Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D42845AC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hw6mWB4O2WWhab6KiVxmdgoT1coqGelXY+W9YwxNJE=; b=H1eXMkSr2EDb1B
	KoRXtL+K1l3vImsrUem6FXt5pK7GDR+jco5gMIywZdGpyaE7M7jgKsZ5ChZsxt0JFATD2Angq9zh+
	wADfxJ7it+f3izlH9uMK0zVPAFKu9t2dCatZfzjI9GcKJcXDvXb0SqVTAWRDY8VmZjaYwzi1zXYms
	aa/QWltZo8D37PfyDpU68+2AkGBvP2KDl6CyptgOoVhJ1SqzufIaSiG997RvcN7/cKnizGhrDbuO8
	eWld8hAplb0RRzhG8rY91szES9WAmNw7bKkHi3N6l2pl8lLA8t9PFnZrBBQ0ZHP5O8Rg8d8A/LmDw
	ze6HVJ917VVYkCH8Ll7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjer-0000Hb-Ld; Fri, 14 Jun 2019 10:42:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjcV-0005w9-Ph; Fri, 14 Jun 2019 10:39:48 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbjcK-0004XL-Mp; Fri, 14 Jun 2019 12:39:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
Date: Fri, 14 Jun 2019 12:39:31 +0200
Message-ID: <1584725.WvTV0KElQL@phil>
In-Reply-To: <20190401171724.215780-1-dianders@chromium.org>
References: <20190401171724.215780-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_033944_020460_F994FC8A 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 David Airlie <airlied@linux.ie>, Viresh Kumar <viresh.kumar@linaro.org>,
 Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Enric =?ISO-8859-1?Q?Balletb=F2?= <enric.balletbo@collabora.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 1. April 2019, 19:17:17 CEST schrieb Douglas Anderson:
> I'm reviving Sean Paul's old patchset to get mode support in device
> tree.  The cover letter for his v3 is at:
> https://lists.freedesktop.org/archives/dri-devel/2018-February/165162.html
> 
> No code is different between v4 and v5, just commit messages and text
> in the bindings.
> 
> I've pulled together the patches that didn't land in v3, addressed
> outstanding feedback, and reposted.  Atop them I've added patches for
> rk3288-veyron-chromebook (used for jaq, jerry, mighty, speedy) and
> rk3288-veryon-minnie.
> 
> Please let me know how they look.
> 
> In general I have added people to the whole series who I think would
> like the whole series and then let get_maintainer pick extra people it
> thinks are relevant to each individual patch.  If I see you respond to
> any of the patches in the series, though, I'll add you to the whole
> series Cc list next time.

sadly it looks like the panel-simple parts haven't made it into
drm-misc yet and the conversation on patch 1/7 seems to have stalled
after Doug's replies.

Thierry, do you have an opinion on these?


Thanks
Heiko

> Changes in v5:
> - Removed bit about OS may ignore (Rob/Ezequiel)
> - Added Heiko's Tested-by
> - It's not just jerry, it's most rk3288 Chromebooks (Heiko)
> 
> Changes in v4:
> - Simplify desc. for when override should be used (Thierry/Laurent)
> - Removed Rob H review since it's been a year and wording changed
> - Don't add mode from timing if override was specified (Thierry)
> - Add warning if timing and fixed mode was specified (Thierry)
> - Don't add fixed mode if timing was specified (Thierry)
> - Refactor/rename a bit to avoid extra indentation from "if" tests
> - i should be unsigned (Thierry)
> - Add annoying WARN_ONs for some cases (Thierry)
> - Simplify 'No display_timing found' handling (Thierry)
> - Rename to panel_simple_parse_override_mode() (Thierry)
> - Rebase to top of Heiko's tree
> - Converted changelog to after-the-cut for non-DRM change.
> - display_timing for Innolux n116bge new for v4.
> - display_timing for AUO b101ean01 new for v4.
> - rk3288-veyron-jerry patch new for v4.
> - rk3288-veyron-minnie patch new for v4.
> 
> Changes in v3:
> - Go back to using the timing subnode directly, but rename to
>   panel-timing (Rob)
> - No longer parse display-timings subnode, use panel-timing (Rob)
> - Unwrap the timing from display-timings and rename panel-timing (Rob)
> 
> Changes in v2:
> - Split out the binding into a new patch (Rob)
> - display-timings is a new section (Rob)
> - Use the full display-timings subnode instead of picking the timing
>   out (Rob/Thierry)
> - Parse the full display-timings node (using the native-mode) (Rob)
> - Wrap the timing in display-timings node to match binding (Rob/Thierry)
> 
> Douglas Anderson (4):
>   drm/panel: simple: Use display_timing for Innolux n116bge
>   drm/panel: simple: Use display_timing for AUO b101ean01
>   ARM: dts: rockchip: Specify rk3288-veyron-chromebook's display timings
>   ARM: dts: rockchip: Specify rk3288-veyron-minnie's display timings
> 
> Sean Paul (3):
>   dt-bindings: Add panel-timing subnode to simple-panel
>   drm/panel: simple: Add ability to override typical timing
>   arm64: dts: rockchip: Specify override mode for kevin panel
> 
>  .../bindings/display/panel/simple-panel.txt   |  22 +++
>  .../boot/dts/rk3288-veyron-chromebook.dtsi    |  14 ++
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts    |  14 ++
>  .../boot/dts/rockchip/rk3399-gru-kevin.dts    |  14 ++
>  drivers/gpu/drm/panel/panel-simple.c          | 171 ++++++++++++++----
>  5 files changed, 203 insertions(+), 32 deletions(-)
> 
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
