Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D861E0294
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QbqKyky4BvyvmhMjaLrpHTUqFPmbfdzlvVhJsCqqdFs=; b=PWhT+gW3ux4/BOW25z3dTHQbFx
	+ZuBaPFzQ1Ad045WVquePt/Axx5ccB6kjwG0NWbRsIKNkZxhixF3S7MCJ1GkOQf4DKC2yy+sa+Srl
	1RY85waC9zFbdEsy8oYo2iFd3YFLOrJqrl1pS9avDiyZr7MQwhpR/1o2rbJZigqmTBWrmdf2rXNV6
	5J4MJJswvpUBnUCCRKvTMqt+a5S4K/cMpYT0oSN+EUxHkd66BppyU0wtKQXMQEESZRf0TffkdmaXC
	t7p9shRrcNcDVv9vfzxrhvi0DjcWwPlqR2IYNBPBcWjKmBwdJXqUoQXBRGbiCIo+vu+0jNzH9uapd
	asIS5V9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwMM-0005ep-Ra; Sun, 24 May 2020 19:32:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwFy-0006Un-UP
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:26:02 +0000
Received: by mail-lj1-x244.google.com with SMTP id m12so16149293ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 12:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gOEmyTIXLGf07K4H6sbyOUY42DeO+G/ARk34mfyH9Kc=;
 b=PQ6va+bBos8A51P/Wj2BBF99a+zevl/gbe2oENYX3N1gUZQyc+SEAF4KQmNBB8Zt/l
 K5OUnbR74VUvV8nH5Z+GlVFjwKIeGzd1J0hiUMFdkqM3R1O22CGCxzo365512pREm/qf
 X28f38wZULiPdFMf3318ypK07QQ275PpSiqUWzpKHKmLIlCjwSS2i9+opfMxaGn8Y0e7
 bt6NDkScz+SyU+LxR/eWNCffvnRNGkW7gy7RDQSzK3ErA1yPI6ZoxmwCZ+G47Onr1LJl
 +wJzNRQZRGQ9Y4J62UeHaoWDEWiLUDx7Ob11nhwzE8NvaRKqSrM+EatW77eA2zlASbZo
 ywXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gOEmyTIXLGf07K4H6sbyOUY42DeO+G/ARk34mfyH9Kc=;
 b=bDuuNqPWwcNROKbGxPT4xwHgfTo4BBFGjc62eNXO3IQcZd5tpCpDekgKlQ5iN6R6JP
 6CDRjbdAoa0kLjrX3Uy/iqBquETK9J/CB8X4/GcnKzPCOhsTomEPAO3lKDMC62lLJTi9
 Z+xRzABc0dwzUPPFQ/lKPAC99+g5UMmueYhZQySXFdP9XKyXiCMaFxJm5YL1Nvvt9U3d
 O9VOivd4txWQrIrujmh3+SeE9FwRdCeq3qxrdq2ReBRnCajUR4h7Ov8vsmt1Fl/6O/kc
 lC86Qz49T81v7Uj4u6RC6p58VZCOZ2hoGKZZ237usd6a3lCJKgCGXJDcA7el+WpWKS+4
 OK/Q==
X-Gm-Message-State: AOAM531LEcBrMwEwzCRsyCcIIaQFl9pfHGuQDPmhyhn4q2rGdtUH7l5z
 7ZAXlkQG9SRLVRBXkK34AiDT0A==
X-Google-Smtp-Source: ABdhPJzTJjWtrQpvchNNsRDE9WSqRA6ghX1gFq3L/OgHr76p50AS89FmNt0BQKK9wQJuovOMHBKI+w==
X-Received: by 2002:a2e:8e6c:: with SMTP id t12mr10024175ljk.376.1590348356964; 
 Sun, 24 May 2020 12:25:56 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id v10sm3878137lja.23.2020.05.24.12.25.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 12:25:56 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v3 10/10] media: i2c: imx290: set bus_type before calling
 v4l2_fwnode_endpoint_alloc_parse()
Date: Sun, 24 May 2020 22:25:05 +0300
Message-Id: <20200524192505.20682-11-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200524192505.20682-1-andrey.konovalov@linaro.org>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122558_989539_965EC364 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Andrey Konovalov <andrey.konovalov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The bus_type field of v4l2_fwnode_endpoint structure passed as the argument
to v4l2_fwnode_endpoint_alloc_parse() function must be initiaized.
Set it to V4L2_MBUS_CSI2_DPHY, and check for -ENXIO which is returned
when the requested media bus type doesn't match the fwnode.

Also remove v4l2_fwnode_endpoint field from struct imx290 as it is only
needed in the probe function: use the local variable for this purpose.

Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 drivers/media/i2c/imx290.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index ee5c95cf64f3..05a3d897614e 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -74,7 +74,6 @@ struct imx290 {
 	u8 bpp;
 
 	struct v4l2_subdev sd;
-	struct v4l2_fwnode_endpoint ep;
 	struct media_pad pad;
 	struct v4l2_mbus_framefmt current_format;
 	const struct imx290_mode *current_mode;
@@ -887,6 +886,10 @@ static int imx290_probe(struct i2c_client *client)
 {
 	struct device *dev = &client->dev;
 	struct fwnode_handle *endpoint;
+	/* Only CSI2 is supported for now: */
+	struct v4l2_fwnode_endpoint ep = {
+		.bus_type = V4L2_MBUS_CSI2_DPHY
+	};
 	struct imx290 *imx290;
 	u32 xclk_freq;
 	int ret;
@@ -908,15 +911,18 @@ static int imx290_probe(struct i2c_client *client)
 		return -EINVAL;
 	}
 
-	ret = v4l2_fwnode_endpoint_alloc_parse(endpoint, &imx290->ep);
+	ret = v4l2_fwnode_endpoint_alloc_parse(endpoint, &ep);
 	fwnode_handle_put(endpoint);
-	if (ret) {
+	if (ret == -ENXIO) {
+		dev_err(dev, "Unsupported bus type, should be CSI2\n");
+		goto free_err;
+	} else if (ret) {
 		dev_err(dev, "Parsing endpoint node failed\n");
 		goto free_err;
 	}
 
 	/* Get number of data lanes */
-	imx290->nlanes = imx290->ep.bus.mipi_csi2.num_data_lanes;
+	imx290->nlanes = ep.bus.mipi_csi2.num_data_lanes;
 	if (imx290->nlanes != 2 && imx290->nlanes != 4) {
 		dev_err(dev, "Invalid data lanes: %d\n", imx290->nlanes);
 		ret = -EINVAL;
@@ -925,19 +931,12 @@ static int imx290_probe(struct i2c_client *client)
 
 	dev_dbg(dev, "Using %u data lanes\n", imx290->nlanes);
 
-	if (!imx290->ep.nr_of_link_frequencies) {
+	if (!ep.nr_of_link_frequencies) {
 		dev_err(dev, "link-frequency property not found in DT\n");
 		ret = -EINVAL;
 		goto free_err;
 	}
 
-	/* Only CSI2 is supported for now */
-	if (imx290->ep.bus_type != V4L2_MBUS_CSI2_DPHY) {
-		dev_err(dev, "Unsupported bus type, should be CSI2\n");
-		ret = -EINVAL;
-		goto free_err;
-	}
-
 	/* get system clock (xclk) */
 	imx290->xclk = devm_clk_get(dev, "xclk");
 	if (IS_ERR(imx290->xclk)) {
@@ -1063,7 +1062,7 @@ static int imx290_probe(struct i2c_client *client)
 	pm_runtime_enable(dev);
 	pm_runtime_idle(dev);
 
-	v4l2_fwnode_endpoint_free(&imx290->ep);
+	v4l2_fwnode_endpoint_free(&ep);
 
 	return 0;
 
@@ -1073,7 +1072,7 @@ static int imx290_probe(struct i2c_client *client)
 	v4l2_ctrl_handler_free(&imx290->ctrls);
 	mutex_destroy(&imx290->lock);
 free_err:
-	v4l2_fwnode_endpoint_free(&imx290->ep);
+	v4l2_fwnode_endpoint_free(&ep);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
