Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 133171C02DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:44:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Y+9cV6qtEyWzmN9X59dCKGb7mm7CK023eRZgOWfthw=; b=sPjojiWhJCMr+K
	W4vAtCeutY/pGeb8JcwO8PwQLbygt0dNNGZZ+PsStxWUacTa2HESZKkoqRUjKD8CzlL/jkLNUa8Kj
	Zm8JEyjLAibM9Cdn2NMKP1lgYyWmM6rycalUnjhKyroRDOYS6wGc2LB9YOqRlIQ4XpZmIBwrYtwZj
	KiLbQ3vMLZn/QWX8iw/UpyXrL85+uQokVRRP18lrHpPlIYng/7LiR4YNIRpJJoO1egDoHZigQ2lK6
	bhiEO4foA7EDoeR4qu6ZpFFF80JZ1pk2g5mm5mrHoEd7T96zmcWINUxTwQr702ekr65l6QIbKcVSb
	GpvIia7C26CcYeHlHt2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCHx-0006gU-UY; Thu, 30 Apr 2020 16:43:53 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCHA-00068U-Uf; Thu, 30 Apr 2020 16:43:07 +0000
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 285FE1C000C;
 Thu, 30 Apr 2020 16:43:02 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/4] media: rockchip: rga: Only set output CSC mode for RGB
 input
Date: Thu, 30 Apr 2020 18:42:45 +0200
Message-Id: <20200430164245.1630174-5-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
References: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_094305_114833_214ECBEF 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hansverk@cisco.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setting the output CSC mode is required for a YUV output, but must not
be set when the input is also YUV. Doing this (as tested with a YUV420P
to YUV420P conversion) results in wrong colors.

Adapt the logic to only set the output CSC mode when the output is YUV and
the input is RGB. Also add a comment to clarify the rationale.

Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/platform/rockchip/rga/rga-hw.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
index 5607ee8d1917..aaa96f256356 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.c
+++ b/drivers/media/platform/rockchip/rga/rga-hw.c
@@ -200,6 +200,11 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 	dst_info.data.format = ctx->out.fmt->hw_format;
 	dst_info.data.swap = ctx->out.fmt->color_swap;
 
+	/*
+	 * CSC mode must only be set when the colorspace families differ between
+	 * input and output. It must remain unset (zeroed) if both are the same.
+	 */
+
 	if (RGA_COLOR_FMT_IS_YUV(ctx->in.fmt->hw_format) &&
 	    RGA_COLOR_FMT_IS_RGB(ctx->out.fmt->hw_format)) {
 		switch (ctx->in.colorspace) {
@@ -212,7 +217,8 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 		}
 	}
 
-	if (RGA_COLOR_FMT_IS_YUV(ctx->out.fmt->hw_format)) {
+	if (RGA_COLOR_FMT_IS_RGB(ctx->in.fmt->hw_format) &&
+	    RGA_COLOR_FMT_IS_YUV(ctx->out.fmt->hw_format)) {
 		switch (ctx->out.colorspace) {
 		case V4L2_COLORSPACE_REC709:
 			dst_info.data.csc_mode = RGA_SRC_CSC_MODE_BT709_R0;
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
