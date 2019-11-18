Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D83F100C79
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 21:03:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3nDSUGRSqwpSVZL/crbA7LSkW+BWvIGZwsiT3ul09s=; b=VS3Odg9ODP7jsL
	BTSzDgSnaOxjAKA7XaPHkvagPY5rIvM5DAw1ajeLFsykJd56hVmXzTBWTQgBUGq/X1p1vZqvxNQvc
	wXG6dY5lB8sW9x7IuZgGvloB5rTvCMTg3OuMNeHB3deJEiltwPA1VknwQcJTDJx8skfJp8l9LQdKH
	/ZjD1zuV4XYwB5RYv96DHyL2X+If9xpiCn+wTsxj9Pgr2guI64QqaZKiqoqgwbeo+M/BbRh6lZqKy
	jprODnj4ZQ6qonymQvN8TD5eZPoPxZ0TyBeq9ueQXuXUNKi2hv8bMbA1bloCVRcaa7CYWf55rDz0O
	LroEDaQSTk/NKWRk2jSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWnFP-0001oe-BC; Mon, 18 Nov 2019 20:03:43 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWnFE-0001nq-TC
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 20:03:34 +0000
Received: by mail-ot1-x344.google.com with SMTP id z25so15683995oti.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 12:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2PDaqtIBFBkrRQtsY42nVpJi6m3lJCgdaGJOcPD9Eus=;
 b=UxPgDGEUGSS2r8QojZ/ioqZmAmyhiiIEOQoy9RtBqwwu3kaOweSHsI8J4m2K+HhZA2
 mjvPBHZeE6rg6BOyz/I2PnBSCrqeMEqNQ6qYLKjizgjbfQauOxWanDCnsw3hAhfcpw40
 76vwRpGOIpHjgHlFudj72VJL3sr8VtLtvfikY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2PDaqtIBFBkrRQtsY42nVpJi6m3lJCgdaGJOcPD9Eus=;
 b=Q5MKNd4PPU5Yjnm6DIJo0FKItSHmTA9zWfl756+hBB7DnjsQLhfro8+5+p+tZ2C/+7
 wZFThpyhXJKo7opcocrb3x++EC84j+toSulSh5UnjjO5pSgQG8iD9puLCGl4M7mHI5+s
 TXBtEdkHVNWPGKCm5EsjdQ3cN0WTaBGl+sIz4ynwHINQ9/WcENsYRfxqpVTbi8ADmdBO
 SwupuuP6xPp1RFXJE0MIJnsfuoe9Nk5A02tm3NFOQuHTTlmmXR5YdWhCu3a5JF4YaofH
 Pq89bwcDlOtzmqiK8fKc4u4k/mLzMA8aWmoweCg/6ZUMbO3yYjeC/OZGcMoe28APlkyI
 S66g==
X-Gm-Message-State: APjAAAXl8byn5UcrxsF11VL2C9hxV4D5ckW71Cw38WGnohiu1wCgDcIy
 Jc1GxrV3mJMsBy3IkxJFQ271l7+MztZ1x7iz7aQokw==
X-Google-Smtp-Source: APXvYqxmAHc8pVLhK0Y0804VQwtyYsvapomac1UHPu9BRJmQq3WYdIqSwK6xX5pOlFN607Lp+Hp7TwzWoW9x/GPS1/Q=
X-Received: by 2002:a05:6830:22d0:: with SMTP id
 q16mr849080otc.188.1574107411531; 
 Mon, 18 Nov 2019 12:03:31 -0800 (PST)
MIME-Version: 1.0
References: <20191114132436.7232-1-wambui.karugax@gmail.com>
 <8736ep1hm2.fsf@intel.com> <20191118192450.GA135013@art_vandelay>
In-Reply-To: <20191118192450.GA135013@art_vandelay>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 18 Nov 2019 21:03:20 +0100
Message-ID: <CAKMK7uG7Tb6oocrRgRFvq5oB2Rxjy+JmyOSXQtjo6Gt_WH91+A@mail.gmail.com>
Subject: Re: [PATCH 0/2] add new DRM_DEV_WARN macro
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_120332_998954_B69E69E6 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dave Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 8:24 PM Sean Paul <sean@poorly.run> wrote:
> On Fri, Nov 15, 2019 at 01:52:53PM +0200, Jani Nikula wrote:
> > On Thu, 14 Nov 2019, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> > > This adds a new DRM_DEV_WARN helper macro for warnings log output that include
> > > device pointers. It also includes the use of the DRM_DEV_WARN macro in
> > > drm/rockchip to replace dev_warn.
> >
> > I'm trying to solicit new struct drm_device based logging macros, and
> > starting to convert to those. [1]
> >
>
> This sounds good to me, I'd much prefer the non-caps versions of these
> functions. So let's wait for those to bubble up and then convert rockchip to
> drm_dev_*

Care to ack Jani's patch directly, so this is all formal?

Jani, can you pls also add a todo.rst patch on top to adjust the
relevant item to the new color choice?

Wambui, I guess slight change of plans, it happens ...

Cheers, Daniel

>
> Sean
>
> > BR,
> > Jani.
> >
> >
> > [1] http://patchwork.freedesktop.org/patch/msgid/63d1e72b99e9c13ee5b1b362a653ff9c21e19124.1572258936.git.jani.nikula@intel.com
> >
> >
> >
> >
> > >
> > > Wambui Karuga (2):
> > >   drm/print: add DRM_DEV_WARN macro
> > >   drm/rockchip: use DRM_DEV_WARN macro in debug output
> > >
> > >  drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
> > >  include/drm/drm_print.h              | 9 +++++++++
> > >  2 files changed, 11 insertions(+), 1 deletion(-)
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
>
> --
> Sean Paul, Software Engineer, Google / Chromium OS



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
