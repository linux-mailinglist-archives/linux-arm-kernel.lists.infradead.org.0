Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C068E204
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qWeYpvA+G5H5WphsADaPHeTav51yclzFuayAwpSeeo=; b=HSkNwH/VrxE1eI
	1AbO7V5UuKQDrZ8PRhICjT8hDSeEGpOzI2tC6Dpi4PSuI/JR7Gs7CZYam5qWtqEqv/vlbXkFPVxqy
	VGXEQlXyJtUx6A2wl6sHOt+V7ZCKfZzm+JpSVfRGgLX5GcBiVj+E9cCKpBUy4hR1kY3uZFzbPqbV7
	rJf+W/vTRDRNNVDs2E1Js6xprN302OdpiPuNr83n0KpT4n/6oMN3S/MXLuU477FB27ibyzX0dwPjs
	pb5eqsvHOW14fW38ljCU/N3CzGzLNCuvoyXQDMtqINQkSM8TOUOQBvwEFAQiHQ8bduz0m3eZnS6x2
	m2PJJ6Oyi7yh8hZcpq2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy3xJ-0004cS-Gk; Thu, 15 Aug 2019 00:49:29 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x4-0004Zz-53
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:15 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 1F73C3E9DE;
 Thu, 15 Aug 2019 00:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830152;
 bh=kd0RcC8EypG7pu0fFFwfrtGaJLMU4ZBdU98OJAZs4wc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Zyr/OmmFc1pFqaN7q1uS3WkW7lsWqpU0xv5LyXFy4NGocFyuwV0Cz/JWVi7tQxsAj
 rw+LjB0NmAWn5XnoC4egZzqXVUHMH4ArPs5aOJBFQ0HO65BMLTuxR6o73aNOdzFJZZ
 ZOVLfYqsyC+2nMJ2TosUl5r0beffcAFXtHU58h/E=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH 02/11] drm/bridge: analogix-anx78xx: add new variants
Date: Wed, 14 Aug 2019 20:48:45 -0400
Message-Id: <20190815004854.19860-3-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174914_273203_CF13B206 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the 7808 variant. While we're here, the of match table
was missing support for the 7812 and 7818 variants, so add them as well.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
 drivers/gpu/drm/bridge/analogix-anx78xx.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix-anx78xx.c
index 3c7cc5af735c..9acdbedf1245 100644
--- a/drivers/gpu/drm/bridge/analogix-anx78xx.c
+++ b/drivers/gpu/drm/bridge/analogix-anx78xx.c
@@ -1301,6 +1301,7 @@ static const struct regmap_config anx78xx_regmap_config = {
 };
 
 static const u16 anx78xx_chipid_list[] = {
+	0x7808,
 	0x7812,
 	0x7814,
 	0x7818,
@@ -1463,7 +1464,10 @@ MODULE_DEVICE_TABLE(i2c, anx78xx_id);
 
 #if IS_ENABLED(CONFIG_OF)
 static const struct of_device_id anx78xx_match_table[] = {
+	{ .compatible = "analogix,anx7808", },
+	{ .compatible = "analogix,anx7812", },
 	{ .compatible = "analogix,anx7814", },
+	{ .compatible = "analogix,anx7818", },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, anx78xx_match_table);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
