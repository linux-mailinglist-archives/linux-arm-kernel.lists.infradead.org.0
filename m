Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7EF1F47CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 22:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivqo2w0IxAQ1SXRHc3Ta8P+rlsvsH+kpxjc/zgtHgbk=; b=mFmuNPSdfn5aoS
	aS4k0XI/eUZHAobNfSk8gXwDvfSWINQrDWOtWgRFxEBsNeDDkTZwHdxV2Ee6X9XFdUhZc9AeYzxhj
	dvn0u+Q5accni6CGgotG75MhIYJPgAyT6PovRmuppEDLtJbuhEfiJnfpvAaFjwQ6vqF9JgutLqu7p
	VA1yH9Z6HwD/xpT/R7J3Wlcomj/mCAjy8oPDY/Gp+nQF14FPx9MgINmpIYFm6wTTDh9RhmXZJ4Knk
	gvtYXXf1JUr6tdn4kCYjOI3iePUUfYp9mTDbV4Q4PWb/+C7sj1elJ26P3BIlWEWgU35ZGsqH8hcIF
	0AymcNhz+WaNCOLBzkoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikaX-00051u-1t; Tue, 09 Jun 2020 20:11:13 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikaM-00051I-Cu
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 20:11:04 +0000
Received: by mail-lj1-x244.google.com with SMTP id q19so4002024lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 13:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8dCMnOVOgOR5s9pzdFxwTiGI9fgNOigFT29dTOODBP8=;
 b=idoEsbgOfkrWdv2SoJSX5CT2XH97WJ9sUbL5zFq8q2BHUv3RHnLEvo+3IiyG/Myqj7
 so84MIsk6lHz0s2UTPUoCb/GoodADdcoX/9p8kMHzwcQ6zTQBv1BTUyVMeh1QO1lARLf
 Ns6wZHPmwMxNt0CXVgr88IGdSDqcAoUSN0BrUPIZpBea60/teJ4dRkjsXQi4TtrKqQTN
 c7goJm8Cs9WLqcVLuKrTDGEJx/rVMqlDsg1+scK2a3H/X610ux6eWbs13A2/eatUTkBq
 RwUh/SLK1Bp5d5NzVjuBw5SAZzIkUbU8l7zqTyhVDAeFTAmPoMYEcVPa8/lfeO7bY9PE
 Hbhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8dCMnOVOgOR5s9pzdFxwTiGI9fgNOigFT29dTOODBP8=;
 b=LcEes/wrwnyVE5rCgsnTWM80V4TC985DZxz26pYFjJ/EvGuEvSJb8Mywke+PlFNMgo
 2OsoWScaXoIfcPkSQNveLorMlJ4rd/074i87ZkPVBruFIk/HVXS+M/6/LNQ3pffFxejo
 ydt43Jd52rw6FjcCrK0T/Fd6Y4GmafOD8K5BoMLQOrfJBGQXDG6B8nJQmOSOddH40Vdf
 72noRby1Ik22ssMG7iHjVWAY3Aa9c0M8S6mb58xNg4ljH35F5n+q3k6IDF3r8HVeJaXI
 GaeYgU/PKS7daKrOluCTq/XPPxs8qeA+Mcl/oTqrdX8ICKZC+ZAZ5xlxOEaA8+TV2vZL
 gMWA==
X-Gm-Message-State: AOAM533xTBF/wPPzybm3tY2s4SZXEHMjOh1CV3QbudG3yQF+LTLy5KqR
 Nex7n8jPZKEZ9gTq8GE51zFY4lXKjO52myNN9saehA==
X-Google-Smtp-Source: ABdhPJywU+IvCcK+CxNrONN5RubwqDrv/dqAItFcp2X7x60N7mS14ofkN5Alm/E2jSrQHo51sWWCT94GkDp4ceibdN4=
X-Received: by 2002:a2e:9b09:: with SMTP id u9mr15962060lji.207.1591733460043; 
 Tue, 09 Jun 2020 13:11:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200609200446.153209-1-linus.walleij@linaro.org>
 <20200609200446.153209-4-linus.walleij@linaro.org>
In-Reply-To: <20200609200446.153209-4-linus.walleij@linaro.org>
From: Eric Anholt <eric@anholt.net>
Date: Tue, 9 Jun 2020 13:10:49 -0700
Message-ID: <CADaigPX_9mBqr3hKA0-aC-TOY3hEnXnQremMiPopw8DUcGCzgQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] drm: pl111: Update documentation
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_131103_290431_1F4D7A47 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Russell King <linux@armlinux.org.uk>, Maxime Ripard <mripard@kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 1:08 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Remove notes about migrating from the old driver which is
> retired as all users are now migrated.
>
> Update the text to reflect that we support PL110 and PL111
> alike.
>
> Drop the bullet on memory bandwidth scaling: this has been
> implemented.
>
> Cc: Russell King <linux@armlinux.org.uk>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

FWIW, series is Reviewed-by: Eric Anholt <eric@anholt.net>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
