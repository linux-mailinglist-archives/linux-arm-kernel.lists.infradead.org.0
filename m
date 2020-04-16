Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957F61AC068
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gHAuReXu1cNkEV/xiiOQvyWdNtObAayzYNcOU7unm5I=; b=mREZ2LgkP/ifw3
	5q3W1kEVaXcSdErxXpMm7G/RN4BWaBewUoz+T5A5+itrT4T9+m96PmkOLhXTtnXpd2dLfAKcaOy7L
	yJd0zt8Uc3ekMbfwap/OBZ9YahLONaqyUFUJT5jYXdKJJ5glMyf81yCRUupUUqOx5UB9wVPKOAsLI
	rzMqyns8zXC2rZFS1yAUyZpdS0LrSn477xFETDC6DPbohpKEroT41poEq4R3/yflrgD5L/hLQ5bxb
	V+obkO1VoApT/OMyKRzPKJXNgY7C5on4RD4xO21YbxCq/1IUqi8cXvOm1Hnc2V18r4mxJKq6FeVwg
	yUj+8I19G/h5OCoqxydg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP380-0000B9-KU; Thu, 16 Apr 2020 11:56:20 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP37s-0000Af-RH; Thu, 16 Apr 2020 11:56:14 +0000
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id A53EA60015;
 Thu, 16 Apr 2020 11:55:15 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] media: rockchip: rga: Only set output CSC mode for RGB
 input
Date: Thu, 16 Apr 2020 13:50:47 +0200
Message-Id: <20200416115047.233720-5-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_045613_014463_AA8E9FCF 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hansverk@cisco.com>, Jacob Chen <jacob-chen@iotwrt.com>,
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

Adapt the logic to only set the CSC mode when the output is YUV and the
input is RGB.

Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/platform/rockchip/rga/rga-hw.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
index 4be6dcf292ff..cbffcf986ccf 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.c
+++ b/drivers/media/platform/rockchip/rga/rga-hw.c
@@ -216,13 +216,17 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 	}
 
 	if (ctx->out.fmt->hw_format >= RGA_COLOR_FMT_YUV422SP) {
-		switch (ctx->out.colorspace) {
-		case V4L2_COLORSPACE_REC709:
-			dst_info.data.csc_mode = RGA_SRC_CSC_MODE_BT709_R0;
-			break;
-		default:
-			dst_info.data.csc_mode = RGA_DST_CSC_MODE_BT601_R0;
-			break;
+		if (ctx->in.fmt->hw_format < RGA_COLOR_FMT_YUV422SP) {
+			switch (ctx->out.colorspace) {
+			case V4L2_COLORSPACE_REC709:
+				dst_info.data.csc_mode =
+					RGA_SRC_CSC_MODE_BT709_R0;
+				break;
+			default:
+				dst_info.data.csc_mode =
+					RGA_DST_CSC_MODE_BT601_R0;
+				break;
+			}
 		}
 	}
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
