Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BD31268FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:24:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zgOWEmV1GGHMnxJQ2a8LLCel7rqiZrW7LlydoCx9kv0=; b=kk9JaAn/P+bGeu/T1LHBABXdDE
	oMBoL925y7VPfLCfIIU/6R5lopzi245tbgjdcOPxUF39Gm0NxtaFKWCKz/io32g7m7N6arrMgOok8
	lu9ElhRSSnaoExOynjGsewBV/vOShTZXMsf9pLhmtUxm9EFgADZcen4TPow5sYXMfegKCkBOYvPmK
	h3Npp2BBbtzNPyVY3mT8q7NVlsffMi9veGrZng0zAbsENH60bWA6b4vAiXAxgKqfpf2HcmUDxMrtY
	5BJZulTjM+Ilnjzew71h/6OvBQRK8KCXNgctZmj2MaOqkwKe2gnafVc35OsrWrtFV6qEU53ugR80p
	hPyQ4IAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0TA-0001rp-Oy; Thu, 19 Dec 2019 18:24:16 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0S2-00015l-FA
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 18:23:07 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l35so2918711pje.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 10:23:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2o+AG3RvUH+GxTzi1IbYJSvnHQRcuO5FLTvuUuElWHc=;
 b=gQ8G1RAeBnSBMUz9vxx63vb4M+B8ZgAkiKSSzFgs7w5UGWiXl6ndClyr3rfdt0ukjV
 pBwFrlIdO6Lk3XgBiB6b3zA6FNde+Nwrkr2b3+Wxe3nyxUFGxFN7vb0qaA65jtXetc5A
 p7Dpr8fva+rX4v9D9hpA1+FNcW+sgJk2hFWLQI0Q5oblXjF3DkXyJLYTFOu4VTLS1TQi
 U0W327PywietOTD3gTTtx8SKJLPVpea8lYTjEBHvs1D7poJhOFEHjkUixb4pz/9MVOv0
 UVNTPvJNXkh/jXwXv7JuRsiIUh1cREVBP0c4C6GEjefuJqSC2pOQNG6GfhK6OEy4dAAu
 sjYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2o+AG3RvUH+GxTzi1IbYJSvnHQRcuO5FLTvuUuElWHc=;
 b=t5ItTLtYyBmUlGMUBztJ8YQ+dgjmNszKbGxeCsuCxNGzqjJ+gI6Wm3Vsnynerl77jg
 fXrgOw+IvUTcHAzLUAtI/y3ZC6iy8UcbGQTuzAtl0tMzJ9v9rYnyocTDTMeYxRGyLMOD
 1VqN24+8XLtocGT0xoFeURF7jrkGEI9E0FYiGd61/qB9RfwQiCARiH64kygtzNTUTsGg
 vkS6wQDm2G/mUk6qnRZFgbpF7ExK1o0HEe3quJx5p9FeEr20fGu1WQZPZHciNJVFvhgs
 jaden1ff7zgGgwXpyOAJlvrjo5jRzQghVjhAY/yGoKXAinsFHgittkAFm8mvATR3GoTh
 GvEw==
X-Gm-Message-State: APjAAAUYzTOw9vLX53ZN7+nK0Az6lwo3s8toEaqCXOW8Mm9CD3aWpQgE
 3Ivo5DC42JWln4JG76M5wN9G
X-Google-Smtp-Source: APXvYqyzVnZODv06yR3mjE0LzOn3l+hcZpCkDYMSSVHn9s9fFrnBf0tRvxzqCDRbMLZlsMAYZMYNuw==
X-Received: by 2002:a17:902:421:: with SMTP id
 30mr10707013ple.324.1576779785449; 
 Thu, 19 Dec 2019 10:23:05 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:6010:65a5:a416:e9bd:178a:9286])
 by smtp.gmail.com with ESMTPSA id i3sm9085735pfg.94.2019.12.19.10.23.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 10:23:04 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v2 4/6] media: i2c: imx290: Add support to enumerate all frame
 sizes
Date: Thu, 19 Dec 2019 23:52:20 +0530
Message-Id: <20191219182222.18961-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191219182222.18961-1-manivannan.sadhasivam@linaro.org>
References: <20191219182222.18961-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_102306_550834_EE90B21C 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to enumerate all frame sizes supported by IMX290. This is
required for using with userspace tools such as libcamera.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index b6eeca56d3c9..a1974340e6fa 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -468,6 +468,25 @@ static int imx290_enum_mbus_code(struct v4l2_subdev *sd,
 	return 0;
 }
 
+static int imx290_enum_frame_size(struct v4l2_subdev *subdev,
+				  struct v4l2_subdev_pad_config *cfg,
+				  struct v4l2_subdev_frame_size_enum *fse)
+{
+	if ((fse->code != imx290_formats[0].code) &&
+	    (fse->code != imx290_formats[1].code))
+		return -EINVAL;
+
+	if (fse->index >= ARRAY_SIZE(imx290_modes))
+		return -EINVAL;
+
+	fse->min_width = imx290_modes[fse->index].width;
+	fse->max_width = imx290_modes[fse->index].width;
+	fse->min_height = imx290_modes[fse->index].height;
+	fse->max_height = imx290_modes[fse->index].height;
+
+	return 0;
+}
+
 static int imx290_get_fmt(struct v4l2_subdev *sd,
 			  struct v4l2_subdev_pad_config *cfg,
 			  struct v4l2_subdev_format *fmt)
@@ -823,6 +842,7 @@ static const struct v4l2_subdev_video_ops imx290_video_ops = {
 static const struct v4l2_subdev_pad_ops imx290_pad_ops = {
 	.init_cfg = imx290_entity_init_cfg,
 	.enum_mbus_code = imx290_enum_mbus_code,
+	.enum_frame_size = imx290_enum_frame_size,
 	.get_fmt = imx290_get_fmt,
 	.set_fmt = imx290_set_fmt,
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
