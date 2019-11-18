Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40593100C30
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 20:25:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSYquUtwPKf2vvUi7uHMjHTr3K7e6K417heybUcErCk=; b=fnL/Hw22hco3oL
	b4YQFjkwFcdzGnNc+tBHQDZo0JfKqNkUEsgoG2+ELmKsPaATI+JdKVducgTreWC31BNCqqKE+clZA
	meSexW36UlnF/8s3Wl1FWgsP+t+krEPysC0RLLyDwm3VGGjc7Uwbod/ym0/GR2a/lUnh1Ej4vSfPQ
	rO+hj1Nfd2/IU0xHN6rzENjzma2DnV/nsJ/mjRS5MKZ/hGrREoqEO7120xesl6SULEJfMWzZ0d4Z2
	wHXDxpYjbTn/RD4OgRwPEqjRgPfduTQbSLK/HdpBl49GZeYPMD3+MALUP7c+yiZhgvCgV/IA+rTXI
	gbYN4YK7jlba215yZrmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWme1-0004aI-CU; Mon, 18 Nov 2019 19:25:05 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWmdq-0004Yk-3i
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 19:24:55 +0000
Received: by mail-yw1-xc44.google.com with SMTP id n82so6306230ywc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 11:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RR1Ga3A1uU2EwTdicRD/oRGttbdcdStZ/iHxBYKT5CE=;
 b=X3j1TWib3+Ts1yw/h9JSFot/7FOdRZxuSgzhQUhk9RX0px8sG0WBQZhDj4BBYPdlrY
 J4/WP8c5m+JUrfOTQmqzd3YoA61wc3CQh6jEEYyr1o9EJaG1j579HoLiQGB8tkRxyBaW
 XE9aGipx0u+/HUcxEay7fxGgq957hsoo3kGpuXpblgNkQqBm5Z5JhLDCY4uVqqWVtYD4
 WRmNouNlgix/ap6zSk2QUGxa3URJLevajDNFE3t6/jn8ofZ9vf5/RreGwxYmU8os0hcu
 9NGvn1khICOPssu0id2qHZC7cHZboqYSAGyoUNetFiJJAOh8jsKrlhFfeIKuO/tsUCGW
 jOIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RR1Ga3A1uU2EwTdicRD/oRGttbdcdStZ/iHxBYKT5CE=;
 b=ILCqi6SKpT1xpLcLMyjLm+IkLY9GlzNDT7FrEdcv0Y3p03dwVNz/rg4OeZHs0SQd13
 HAfha2Mm6sWWjbunV0y5C1YA2L61hG27bgfpiKnzkkicqpl134N2difpi/4/TAXfFy1Y
 UGXb7d+3rgQlMZ39E7zS+Nh42dVvU/sf/FG2kYG+UOkFtXGUSeNLqEmK926srmlIjnkP
 0Mmg2Sm1bZUIAUyegXv/WO3cs2hGZscqF3e2g7qzz3e6kBvpi0jyg4Bj73eVQCnxJgfY
 C6JoyvyYkEbhVD95Z6aKQPeoRSdSE1Ig3jcsXy6QKdDPnJpztzAoV/B/zsKl4FaN8bX6
 /n1w==
X-Gm-Message-State: APjAAAWJn3R7+ZSU7LXazkzHvrwnQcdQn5wv1fi3+kIqDAsnubBJkjic
 dkelII4KZtR1p31noQ47922v8w==
X-Google-Smtp-Source: APXvYqzl9A6vN6o+ULDkUlZz1ITko3Pi29zzVl0fCErvVOD1nwPrfbxJyGG33yD6KHdyQOeaz77hbQ==
X-Received: by 2002:a81:49d1:: with SMTP id
 w200mr19894554ywa.169.1574105091585; 
 Mon, 18 Nov 2019 11:24:51 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id r196sm8953955ywg.102.2019.11.18.11.24.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 11:24:50 -0800 (PST)
Date: Mon, 18 Nov 2019 14:24:50 -0500
From: Sean Paul <sean@poorly.run>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 0/2] add new DRM_DEV_WARN macro
Message-ID: <20191118192450.GA135013@art_vandelay>
References: <20191114132436.7232-1-wambui.karugax@gmail.com>
 <8736ep1hm2.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8736ep1hm2.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_112454_151630_4FB87DF4 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: airlied@linux.ie, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com,
 mripard@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, sean@poorly.run, linux-arm-kernel@lists.infradead.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 01:52:53PM +0200, Jani Nikula wrote:
> On Thu, 14 Nov 2019, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> > This adds a new DRM_DEV_WARN helper macro for warnings log output that include
> > device pointers. It also includes the use of the DRM_DEV_WARN macro in
> > drm/rockchip to replace dev_warn.
> 
> I'm trying to solicit new struct drm_device based logging macros, and
> starting to convert to those. [1]
> 

This sounds good to me, I'd much prefer the non-caps versions of these
functions. So let's wait for those to bubble up and then convert rockchip to
drm_dev_*

Sean

> BR,
> Jani.
> 
> 
> [1] http://patchwork.freedesktop.org/patch/msgid/63d1e72b99e9c13ee5b1b362a653ff9c21e19124.1572258936.git.jani.nikula@intel.com
> 
> 
> 
> 
> >
> > Wambui Karuga (2):
> >   drm/print: add DRM_DEV_WARN macro
> >   drm/rockchip: use DRM_DEV_WARN macro in debug output
> >
> >  drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
> >  include/drm/drm_print.h              | 9 +++++++++
> >  2 files changed, 11 insertions(+), 1 deletion(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
