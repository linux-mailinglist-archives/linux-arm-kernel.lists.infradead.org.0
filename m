Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA69817DA0C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:50:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7ASj3u6Md5hhItRRIZpRQBThIhUeN43xVmzheZy1No=; b=sXwgqoNTab34eH
	MYn4T/H12E7D57oWVTUIK23z3urW1P9Weh/VpJBnBoj5Pk0jnk0DosfOLkfzyxHQeD4m6dCc3Vu3i
	7Yr3/WdBoZTsRzGDDiPhF5xPqempNLdWFrP9uyCkepGB1jqLYcEHNqWGaataFBowLHZl2/US6qLHp
	caPQ+u0k+/N/id5c4rGKAe2Y/H5DEqhFpMh/0AZPlRQk9e0bOFS/DAk8zKDdFmWG8cl5fMT6jN1yO
	qEhNeUwMuaJ4fLDgrVmVCb1v13Yl+bhBC0YkjjD/cUjtulR97Emt4OfrqoOoZVJN5CIx+S+IwrU8e
	Clbdc77cX9kyNADaiDWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDAj-0001pd-FP; Mon, 09 Mar 2020 07:49:57 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDAZ-0001nV-G4
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 07:49:48 +0000
Received: by mail-ed1-x544.google.com with SMTP id ca19so1894167edb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 00:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tGvHVL+X8ENX8ZlFkJ4aTUiRtrm/fcY3/mfmmVzMIbM=;
 b=Jq7oN9z+T3yHMHlBWmtg/oPw3NMpUuf+HHE/AEB6ve19jbPtvt5AEZ3WDPvkS0xNRJ
 TxPi+1T+CforxzUbaOpceljyeEB1qThb+1+7Yv5FETpD/6MLNoUiLzGPTdjvfyt2N7yA
 204omxFy4IXZZH2/4KFT1X0Gv3NC+THh/SuOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tGvHVL+X8ENX8ZlFkJ4aTUiRtrm/fcY3/mfmmVzMIbM=;
 b=ji/7wVaw0tkp0KstCte02ktrmFxXU3V4t9HYxbx/BdUpCfDex+iee5rIpHsqtWK50s
 b0wmF5vTMcJluIWNoxWAqWDOzCHkCvRDcECqnCUHFxcUE2+5rj6cV/EfmXAxRsno2CwH
 Z4HCNtASuYMX2KxbVIRyvpbITFpioycF6twDG+z+9jRln5BTb0fCmrWxFFUtsUwpjj9u
 wkepEmL9HwnjuzqnRTinAJaYY0RXWx0RdgoS5DbTO2PXtoa0UwLBxTIk+jWyFqVXj2Hw
 34/VRWfUUfgDaoMkUh5vmoIUqdMFexLc8RCAVVfRUgBdhvFVx/SZAxpL0RVdHNXgJVec
 U18Q==
X-Gm-Message-State: ANhLgQ0k+9RH+OZDt/hbUhiwO17KjoEp/Chmon+LxXPsx4LPyQrNmaLX
 CPCJQhdIvZ5pp/3Ew8a7tlAn8zB4IvSsCeUfhqYNBQ==
X-Google-Smtp-Source: ADFU+vunIbfF7cF+cg/5HQCVkQIHDO6ScLBXRU/yTPevJyjOidbI5t2wOJVf0V1aAGYL0Qe0suR5rmu4QLvHq6Gpl3U=
X-Received: by 2002:a17:907:2154:: with SMTP id
 rk20mr13348435ejb.322.1583740177890; 
 Mon, 09 Mar 2020 00:49:37 -0700 (PDT)
MIME-Version: 1.0
References: <1583735298-19266-1-git-send-email-allen.chen@ite.com.tw>
 <1583735298-19266-4-git-send-email-allen.chen@ite.com.tw>
In-Reply-To: <1583735298-19266-4-git-send-email-allen.chen@ite.com.tw>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Mon, 9 Mar 2020 15:49:01 +0800
Message-ID: <CANdKZ0cB-nWR75RcpAet+UDj6t+QXi1rjF3jMiM6_+awhZzAOg@mail.gmail.com>
Subject: Re: [PATCH v7 3/3] drm/bridge: add it6505 driver
To: allen <allen.chen@ite.com.tw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_004947_539273_35EDD603 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Jitao Shi <jitao.shi@mediatek.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Yilun Lin <yllin@google.com>, David Airlie <airlied@linux.ie>,
 Jau-Chih Tseng <Jau-Chih.Tseng@ite.com.tw>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Jonas Karlman <jonas@kwiboo.se>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi allen,

On Mon, Mar 9, 2020 at 2:32 PM allen <allen.chen@ite.com.tw> wrote:
>
> From: Allen Chen <allen.chen@ite.com.tw>
>
> This adds support for the iTE IT6505.
> This device can convert DPI signal to DP output.
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Signed-off-by: Yilun Lin <yllin@google.com>
> Signed-off-by: Allen Chen <allen.chen@ite.com.tw>
> Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> ---
>  drivers/gpu/drm/bridge/Kconfig      |   11 +-
>  drivers/gpu/drm/bridge/Makefile     |    6 +-
>  drivers/gpu/drm/bridge/ite-it6505.c | 3022 +++++++++++++++++++++++++++++++++++
>  3 files changed, 3035 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/gpu/drm/bridge/ite-it6505.c
>
> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> index aaed234..ff81681 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -38,8 +38,15 @@ config DRM_DISPLAY_CONNECTOR
>           on ARM-based platforms. Saying Y here when this driver is not needed
>           will not cause any issue.
>
> -config DRM_LVDS_CODEC
> -       tristate "Transparent LVDS encoders and decoders support"
> +config DRM_ITE_IT6505
> +       tristate "ITE IT6505 DP bridge"
> +       depends on OF
> +       select DRM_KMS_HELPER
> +       help
> +         ITE IT6505 DP bridge chip driver.
> +
> +config DRM_LVDS_ENCODER
> +       tristate "Transparent parallel to LVDS encoder support"
>         depends on OF
>         select DRM_KMS_HELPER
>         select DRM_PANEL_BRIDGE
> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> index 6fb062b..e6c80ab 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -1,7 +1,9 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_DRM_CDNS_DSI) += cdns-dsi.o
> -obj-$(CONFIG_DRM_DISPLAY_CONNECTOR) += display-connector.o
> -obj-$(CONFIG_DRM_LVDS_CODEC) += lvds-codec.o
> +obj-$(CONFIG_DRM_DUMB_VGA_DAC) += dumb-vga-dac.o
> +obj-$(CONFIG_DRM_GENERIC_GPIO_MUX) += generic-gpio-mux.o
> +obj-$(CONFIG_DRM_ITE_IT6505) += ite-it6505.o
> +obj-$(CONFIG_DRM_LVDS_ENCODER) += lvds-encoder.o
>  obj-$(CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW) += megachips-stdpxxxx-ge-b850v3-fw.o
>  obj-$(CONFIG_DRM_NXP_PTN3460) += nxp-ptn3460.o
>  obj-$(CONFIG_DRM_PARADE_PS8622) += parade-ps8622.o

There are unrelated changes to it6505 in the Makefile and Kconfig,
please remove them.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
