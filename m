Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B36591F0D25
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 18:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D2y1Np60bXQdt/twQMmjxntJPUTL54LS1FncJmfUI1c=; b=X9kuEHrBq5nRUcJyQj2zPkBO5W
	zOJbBM1fpg4qK+P6cdOU9FNbDcmnur4eHMkwM8ZcQ2vcTeoucs85LsrQZ3IGCpx4oP2TefGdUHPGT
	tXc9tepdJ/6gqPwwNHVvaPRpMTgvs2fttZA3ap1gjfeNfzPX2taQRS/LuHxxOrDLmSPSut3lMNyVG
	WyB12v40BX3++a11zAy5smtx3Wi0+6jfSYcItMl4kjwnp1g7bTLDdYhgfmIBpZ35+TkNYacM19VvI
	CO2DH2h/FA2aGmli9apS2MATkTnbA42f4nMvhviO4Iy1MLlEpSzyYs6D9p2ivvyR3W7n5w5ypeWmZ
	TyJgTw/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhyEt-0000oT-Ot; Sun, 07 Jun 2020 16:33:39 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhyCU-0007D9-Ml
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 16:31:13 +0000
Received: by mail-lj1-x241.google.com with SMTP id e4so17532533ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 09:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dfWTJRln/wUkUezGYMWTWyc7bZ4R2M6yJEVL+/18MoU=;
 b=JhsWDMxQZ1/NcZTwhhTdjBGtnXX8mULfjvyeevpeheQhRviLws+dfkfdQQLxDVl7XV
 kQYSxeIEb3bwXQcd/xxgN7wftXcZhFuWXw1Y3/OSDttBaHgtpHvyJSBjkBxv/NvRCzZY
 OQzXZmRokwALTD+miJSukeoL7BDilVnyKmxe++oZBGg1yJ0sB3YJFTw4X8/2iPRCg2sp
 WvLs6+AEZkY6J2r9jYaLN7UlJuLa7EeEMYBmXiyu65TTLJ7elaktN3aXkEB/JbnBCCRv
 5gZxFwmw4m1zYZke5l3KcAJ3+E8603d/UBkq2Wh+JRaGFvyVu4nVqHm/7crlEN3x2i43
 d85A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dfWTJRln/wUkUezGYMWTWyc7bZ4R2M6yJEVL+/18MoU=;
 b=gZc7ow2Jk5DS8Nn0byckWlV/NZX/OKE55hu+cd2C+fVBbXDQ9TA+zQZRMnLydbbCK9
 wPlgMnJ/WM8lRt0Lqw8NwstpR/h3twGI7jopghLQ89JFlJU1kKczX1giYTrbv0zeSTXi
 vqaz64Pb7OlAgpZ1XmKCNq+UGlEeOGs3rTPny2fLXssh7IpquLFWH7FWjLGrTHq1CPel
 1iJpRi36mTRbO81uKmuDqkwlkPM8DpFUrtqZ8kFjmC1AhAh16xXuCP3Us23Y4920pcIR
 eauiWpS9Ri5GFD9dT3RT2HSXSvWb8M1uZwRzysKunEQLguRArHl2wGsUq/u6j8uYfsdl
 o2IQ==
X-Gm-Message-State: AOAM532h4gOLgdjwE1JgPb+f/Ybf85+fOpEh3IS/pP9R7NJXhChGJLeO
 /2HybAoQ4N79lT34h7gEm2hakQ==
X-Google-Smtp-Source: ABdhPJy7RVt9fRqw1XY48kyWG2iJArPS9Cv81DF9HQ1xCb1mlZVeQ5/Ic48+BpzKbmrWsyCDcUCcpw==
X-Received: by 2002:a2e:7303:: with SMTP id o3mr9826431ljc.100.1591547469072; 
 Sun, 07 Jun 2020 09:31:09 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id l7sm1726511ljj.55.2020.06.07.09.31.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 09:31:08 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v4 10/10] media: i2c: imx290: set bus_type before calling
 v4l2_fwnode_endpoint_alloc_parse()
Date: Sun,  7 Jun 2020 19:30:25 +0300
Message-Id: <20200607163025.8409-11-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200607163025.8409-1-andrey.konovalov@linaro.org>
References: <20200607163025.8409-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_093110_917873_F1264231 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/media/i2c/imx290.c | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 02001c1b0dfc..9c97830164e9 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -70,7 +70,6 @@ struct imx290 {
 	u8 bpp;
 
 	struct v4l2_subdev sd;
-	struct v4l2_fwnode_endpoint ep;
 	struct media_pad pad;
 	struct v4l2_mbus_framefmt current_format;
 	const struct imx290_mode *current_mode;
@@ -914,17 +913,18 @@ static const struct media_entity_operations imx290_subdev_entity_ops = {
  * of MIPI data lanes are mentioned in the device tree, or the value of the
  * first missing frequency otherwise.
  */
-static s64 imx290_check_link_freqs(const struct imx290 *imx290)
+static s64 imx290_check_link_freqs(const struct imx290 *imx290,
+				   const struct v4l2_fwnode_endpoint *ep)
 {
 	int i, j;
 	const s64 *freqs = imx290_link_freqs_ptr(imx290);
 	int freqs_count = imx290_link_freqs_num(imx290);
 
 	for (i = 0; i < freqs_count; i++) {
-		for (j = 0; j < imx290->ep.nr_of_link_frequencies; j++)
-			if (freqs[i] == imx290->ep.link_frequencies[j])
+		for (j = 0; j < ep->nr_of_link_frequencies; j++)
+			if (freqs[i] == ep->link_frequencies[j])
 				break;
-		if (j == imx290->ep.nr_of_link_frequencies)
+		if (j == ep->nr_of_link_frequencies)
 			return freqs[i];
 	}
 	return 0;
@@ -934,6 +934,10 @@ static int imx290_probe(struct i2c_client *client)
 {
 	struct device *dev = &client->dev;
 	struct fwnode_handle *endpoint;
+	/* Only CSI2 is supported for now: */
+	struct v4l2_fwnode_endpoint ep = {
+		.bus_type = V4L2_MBUS_CSI2_DPHY
+	};
 	struct imx290 *imx290;
 	u32 xclk_freq;
 	s64 fq;
@@ -956,15 +960,18 @@ static int imx290_probe(struct i2c_client *client)
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
@@ -973,27 +980,20 @@ static int imx290_probe(struct i2c_client *client)
 
 	dev_dbg(dev, "Using %u data lanes\n", imx290->nlanes);
 
-	if (!imx290->ep.nr_of_link_frequencies) {
+	if (!ep.nr_of_link_frequencies) {
 		dev_err(dev, "link-frequency property not found in DT\n");
 		ret = -EINVAL;
 		goto free_err;
 	}
 
 	/* Check that link frequences for all the modes are in device tree */
-	fq = imx290_check_link_freqs(imx290);
+	fq = imx290_check_link_freqs(imx290, &ep);
 	if (fq) {
 		dev_err(dev, "Link frequency of %lld is not supported\n", fq);
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
@@ -1108,7 +1108,7 @@ static int imx290_probe(struct i2c_client *client)
 	pm_runtime_enable(dev);
 	pm_runtime_idle(dev);
 
-	v4l2_fwnode_endpoint_free(&imx290->ep);
+	v4l2_fwnode_endpoint_free(&ep);
 
 	return 0;
 
@@ -1118,7 +1118,7 @@ static int imx290_probe(struct i2c_client *client)
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
