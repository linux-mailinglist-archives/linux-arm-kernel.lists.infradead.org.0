Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF002A352
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 09:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mcMYYtzXepACtC5heXvPvVA1vfxOPdcffwm0MzO/6o=; b=UMVgtW8v1jmk+Z
	ek/eqtbkp0se5KDifiw1BvNaCqWx3S2Pak2on+ZpVXvKzl1aTV+A5qqdlo1N5Uzu+98H73iQY0/qt
	kHDmIH1ql2cDZ0147KRiIqdxiG23vLSJkLKe+5q+vOs6qOvr+5SB2OWQ+wfmKhQeLU4wyLswN8933
	zlEQkg+Sni52eK0kZbjQMU0gIMq/61OEjUnq/r9iDg5L5sCo3/JTyZ2cpx6TWlHteXx4GMyY3vaa8
	eq+gtnbdIdf5lI8NWKFLjClWVeOlq5MjXgco/qUktFbvz3EyOXCsjLgt8ZiPbmEAa0wJ9rx6DbwHX
	0nrgn/RfWJndHKWKZv8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUREE-00054Z-AZ; Sat, 25 May 2019 07:36:30 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hURE7-00053w-Cp
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 07:36:24 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id C8916804BF;
 Sat, 25 May 2019 09:36:18 +0200 (CEST)
Date: Sat, 25 May 2019 09:36:16 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v3] drm/mcde: Add new driver for ST-Ericsson MCDE
Message-ID: <20190525073616.GE9586@ravnborg.org>
References: <20190522072153.13727-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522072153.13727-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=m_Je5-PlRfT3v9rmweEA:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_003623_609488_005C9829 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus

On Wed, May 22, 2019 at 09:21:53AM +0200, Linus Walleij wrote:
> This adds a new DRM driver for the ST-Ericsson Multi Channel
> Display Engine, MCDE display controller.

This driver breaks build in drm-misc-next at the moment.

Following patch fixed both a build warning and a build error.
Could you take a look and get it fixed properly.

If relevant - then patch is:
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

diff --git a/drivers/gpu/drm/mcde/mcde_display.c b/drivers/gpu/drm/mcde/mcde_display.c
index 17dc46d554b0..f3ef108a41d9 100644
--- a/drivers/gpu/drm/mcde/mcde_display.c
+++ b/drivers/gpu/drm/mcde/mcde_display.c
@@ -823,7 +823,7 @@ static void mcde_display_enable(struct drm_simple_display_pipe *pipe,
 	u32 formatter_ppl = mode->hdisplay; /* pixels per line */
 	u32 formatter_lpf = mode->vdisplay; /* lines per frame */
 	int pkt_size, fifo_wtrmrk;
-	int cpp = drm_format_plane_cpp(format, 0);
+	int cpp = fb->format->cpp[0];
 	int formatter_cpp;
 	struct drm_format_name_buf tmp;
 	u32 formatter_frame;
diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
index 456b43482448..07f7090d08b3 100644
--- a/drivers/gpu/drm/mcde/mcde_dsi.c
+++ b/drivers/gpu/drm/mcde/mcde_dsi.c
@@ -191,7 +191,7 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
 	}
 
 	dev_dbg(d->dev,
-		"message to channel %d, %u bytes",
+		"message to channel %d, %zd bytes",
 		msg->channel,
 		txlen);

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
