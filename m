Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C9E1F997E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LH91GI+NekCYZJyRqN0ff084h6Z00OO5rttIGJ32Lvo=; b=W4G3LXZXfN3ett
	umGLDeIogGuII0i7KnZekxq6JVIUE33A9BW0AocYP93JwgiwB7w3KhAnhF1bWY1WZS4sx3lGz5EHZ
	0RY/7BUCUTz31kCr6bEkZA9K11l6sobMX2KemNI3hVyse3NFz9MDcWURNKI/yD+Qi0Axz9gOoeV0h
	GlSjE0rFIy1na0wWwD3r7pav/m8tybimmOh7ZL+42gdNaeiEd1aymuVqxJYzN6DOiiIPfov4nbZzL
	0aVQBMeLd7FTOj9zZldDcpLYd/ZOUt0vKVZj0drUG/y4dKg9yxvqDM+3X2b5ODSNnvEdhQHCRyKpw
	v9dN9SYOzfI0lF5PxaWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpgH-0005R1-SB; Mon, 15 Jun 2020 14:01:45 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpg5-0005Pg-FZ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:01:35 +0000
Received: by mail-pl1-x641.google.com with SMTP id j4so3596222plk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 07:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=8ES2NVshIOgfEMCf72wvYUExToe999LpTEELFEYgbIc=;
 b=tMGDs1fBAbWOpekLNkbLGeRxaer/gDzJk4z0CLytkTCxnH5P9sYGrEzQe8zC3xJb7I
 f12rYbaNdXcEz0Lxpu06vzpOtKQFoI7YtEOiG0pyEoIzbcGa9e4mNicHkkMH0IojaqrZ
 Doohf/eYCV/vrunU+4iTVvd8YAI35NsWd8mSPzoQw0x08IfabLoijEVUYnd8wbeth3+r
 zFrS5Hl8YylmZDVE4KhdtobyJAhlPB32+hknqzvYxrQg5OirgwjX4rdt6huIFO1T8+Mi
 0Utq3wiKizi4n/MJwPtY1csN+yvR9G+9ealXuHkxo2w1TZK0bF11/NQlUMpFcW8aMY+M
 XQFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:subject:to:cc:from
 :message-id;
 bh=8ES2NVshIOgfEMCf72wvYUExToe999LpTEELFEYgbIc=;
 b=MFDjIxkHyOHtI7xYJeoE+rDwAyl1iFQ4vkas3nEdj10EZseFbOCcDHp/dPZPNlFvup
 fOlrvde96mCIGthevMn+KDRDoJUlVTyR/P0PxBuvZRFYi7GJftMqhI5tcg2aOpoYZDq9
 otHo27Lo2uf3dOZIfmOk+maJkku2uA5jMZPxVfaCMpXa2DOOHK6fPaRtQ4y5uktWRziu
 Yz9RsyKXTieU9Hmpr6kbtcsb+4CuqYqxB++cMfy1wGURXNBmPkI4C3KfG45EFBBUDJWz
 n3R3IWkTdDVyfToks5MBGSmiLe6Y7P0NEWpSEEcuvrVKcRvr4mxRqv/5oClxANyC3KtZ
 k2dg==
X-Gm-Message-State: AOAM5315gW4qn/H7Z9Xk84DezPvDY71GVWYylD5hXu4mAUXyc/WDLkR4
 E1CqK+iNjdpPSzh1ZyV667sM
X-Google-Smtp-Source: ABdhPJxvPO0BNiqVGlonkLfh0wYJeKkGOFIFSFn0SFRbCZK2iFCaXihPRZlZWxzbRuCq1qQpSAMZUg==
X-Received: by 2002:a17:90a:a616:: with SMTP id
 c22mr11644235pjq.14.1592229691691; 
 Mon, 15 Jun 2020 07:01:31 -0700 (PDT)
Received: from ?IPv6:2409:4072:6e9c:5ed9:4574:ef47:f924:dba6?
 ([2409:4072:6e9c:5ed9:4574:ef47:f924:dba6])
 by smtp.gmail.com with ESMTPSA id c9sm14246360pfp.100.2020.06.15.07.01.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jun 2020 07:01:30 -0700 (PDT)
Date: Mon, 15 Jun 2020 19:31:21 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <20200612135355.30286-11-andrey.konovalov@linaro.org>
References: <20200612135355.30286-1-andrey.konovalov@linaro.org>
 <20200612135355.30286-11-andrey.konovalov@linaro.org>
MIME-Version: 1.0
Subject: Re: [PATCH v5 10/10] media: i2c: imx290: set bus_type before calling
 v4l2_fwnode_endpoint_alloc_parse()
To: Andrey Konovalov <andrey.konovalov@linaro.org>, mchehab@kernel.org,
 sakari.ailus@iki.fi
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Message-ID: <69487D0C-D5CE-4B41-9593-A1AF7D205681@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_070133_550884_CA4CA06A 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12 June 2020 7:23:55 PM IST, Andrey Konovalov <andrey.konovalov@linaro.org> wrote:
>The bus_type field of v4l2_fwnode_endpoint structure passed as the
>argument
>to v4l2_fwnode_endpoint_alloc_parse() function must be initiaized.
>Set it to V4L2_MBUS_CSI2_DPHY, and check for -ENXIO which is returned
>when the requested media bus type doesn't match the fwnode.
>
>Also remove v4l2_fwnode_endpoint field from struct imx290 as it is only
>needed in the probe function: use the local variable for this purpose.
>
>Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Wondering if we need to tag fixes for this patch!

Thanks, 
Mani

>---
> drivers/media/i2c/imx290.c | 38 +++++++++++++++++++-------------------
> 1 file changed, 19 insertions(+), 19 deletions(-)
>
>diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
>index 02001c1b0dfc..9c97830164e9 100644
>--- a/drivers/media/i2c/imx290.c
>+++ b/drivers/media/i2c/imx290.c
>@@ -70,7 +70,6 @@ struct imx290 {
> 	u8 bpp;
> 
> 	struct v4l2_subdev sd;
>-	struct v4l2_fwnode_endpoint ep;
> 	struct media_pad pad;
> 	struct v4l2_mbus_framefmt current_format;
> 	const struct imx290_mode *current_mode;
>@@ -914,17 +913,18 @@ static const struct media_entity_operations
>imx290_subdev_entity_ops = {
>* of MIPI data lanes are mentioned in the device tree, or the value of
>the
>  * first missing frequency otherwise.
>  */
>-static s64 imx290_check_link_freqs(const struct imx290 *imx290)
>+static s64 imx290_check_link_freqs(const struct imx290 *imx290,
>+				   const struct v4l2_fwnode_endpoint *ep)
> {
> 	int i, j;
> 	const s64 *freqs = imx290_link_freqs_ptr(imx290);
> 	int freqs_count = imx290_link_freqs_num(imx290);
> 
> 	for (i = 0; i < freqs_count; i++) {
>-		for (j = 0; j < imx290->ep.nr_of_link_frequencies; j++)
>-			if (freqs[i] == imx290->ep.link_frequencies[j])
>+		for (j = 0; j < ep->nr_of_link_frequencies; j++)
>+			if (freqs[i] == ep->link_frequencies[j])
> 				break;
>-		if (j == imx290->ep.nr_of_link_frequencies)
>+		if (j == ep->nr_of_link_frequencies)
> 			return freqs[i];
> 	}
> 	return 0;
>@@ -934,6 +934,10 @@ static int imx290_probe(struct i2c_client *client)
> {
> 	struct device *dev = &client->dev;
> 	struct fwnode_handle *endpoint;
>+	/* Only CSI2 is supported for now: */
>+	struct v4l2_fwnode_endpoint ep = {
>+		.bus_type = V4L2_MBUS_CSI2_DPHY
>+	};
> 	struct imx290 *imx290;
> 	u32 xclk_freq;
> 	s64 fq;
>@@ -956,15 +960,18 @@ static int imx290_probe(struct i2c_client
>*client)
> 		return -EINVAL;
> 	}
> 
>-	ret = v4l2_fwnode_endpoint_alloc_parse(endpoint, &imx290->ep);
>+	ret = v4l2_fwnode_endpoint_alloc_parse(endpoint, &ep);
> 	fwnode_handle_put(endpoint);
>-	if (ret) {
>+	if (ret == -ENXIO) {
>+		dev_err(dev, "Unsupported bus type, should be CSI2\n");
>+		goto free_err;
>+	} else if (ret) {
> 		dev_err(dev, "Parsing endpoint node failed\n");
> 		goto free_err;
> 	}
> 
> 	/* Get number of data lanes */
>-	imx290->nlanes = imx290->ep.bus.mipi_csi2.num_data_lanes;
>+	imx290->nlanes = ep.bus.mipi_csi2.num_data_lanes;
> 	if (imx290->nlanes != 2 && imx290->nlanes != 4) {
> 		dev_err(dev, "Invalid data lanes: %d\n", imx290->nlanes);
> 		ret = -EINVAL;
>@@ -973,27 +980,20 @@ static int imx290_probe(struct i2c_client
>*client)
> 
> 	dev_dbg(dev, "Using %u data lanes\n", imx290->nlanes);
> 
>-	if (!imx290->ep.nr_of_link_frequencies) {
>+	if (!ep.nr_of_link_frequencies) {
> 		dev_err(dev, "link-frequency property not found in DT\n");
> 		ret = -EINVAL;
> 		goto free_err;
> 	}
> 
> 	/* Check that link frequences for all the modes are in device tree */
>-	fq = imx290_check_link_freqs(imx290);
>+	fq = imx290_check_link_freqs(imx290, &ep);
> 	if (fq) {
> 		dev_err(dev, "Link frequency of %lld is not supported\n", fq);
> 		ret = -EINVAL;
> 		goto free_err;
> 	}
> 
>-	/* Only CSI2 is supported for now */
>-	if (imx290->ep.bus_type != V4L2_MBUS_CSI2_DPHY) {
>-		dev_err(dev, "Unsupported bus type, should be CSI2\n");
>-		ret = -EINVAL;
>-		goto free_err;
>-	}
>-
> 	/* get system clock (xclk) */
> 	imx290->xclk = devm_clk_get(dev, "xclk");
> 	if (IS_ERR(imx290->xclk)) {
>@@ -1108,7 +1108,7 @@ static int imx290_probe(struct i2c_client
>*client)
> 	pm_runtime_enable(dev);
> 	pm_runtime_idle(dev);
> 
>-	v4l2_fwnode_endpoint_free(&imx290->ep);
>+	v4l2_fwnode_endpoint_free(&ep);
> 
> 	return 0;
> 
>@@ -1118,7 +1118,7 @@ static int imx290_probe(struct i2c_client
>*client)
> 	v4l2_ctrl_handler_free(&imx290->ctrls);
> 	mutex_destroy(&imx290->lock);
> free_err:
>-	v4l2_fwnode_endpoint_free(&imx290->ep);
>+	v4l2_fwnode_endpoint_free(&ep);
> 
> 	return ret;
> }

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
