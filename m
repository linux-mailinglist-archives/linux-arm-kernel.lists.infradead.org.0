Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7592510D9FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 20:07:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YcULtx5pttp5oiRS0PWpGWLhThJmVvGnTTAICe4E07M=; b=fNXilA/rMpyE5wvxZ8R0gskaZM
	Aqw08GBluYXOSxSGTxZg1I0Ts7Vgmua0kHe41ohaE9/kzCNGJMVO3E4yRCnijKvYNBHxE4dkKTGHU
	EVGIZpsL2ocBBJu+hcYFykEKDX5B83PO7IwYPtsWAaHU2b/xFnvP55RPhoCTfJ07x3HvYicjJIjuC
	ZArm/ZjTcQtyAtn0Jzpliw/E8WvSLuJYUO/tiHWoHzOqsgxco941F5zHyjIxOoMkA1ke7pN+59CWP
	ISu89tTh3J+7yrH+oDiReefp/QTvAQY7sbUCl/yw4Ldx8xS6j/MpOyiRTQBC54zPaZ5LtfSOT7J1T
	tduEEDLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ialbz-0007Cd-Qg; Fri, 29 Nov 2019 19:07:27 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ialaq-0006S9-7j
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 19:06:18 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t21so823570pjq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 11:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/FM9xo7QIIBKERzlsc9RY2lQmdtL0uWG+xaaghB/dV4=;
 b=tNqp5p7dcPlaZftpP3TycmCHaYycdBuJHeVbtDykKAoJibe93S5N8XsAUYK9ayfAcl
 Iaw1JF/4vRMyErNfvVyZm2qWAKkrV0SakuAY7meg13MWatjW1Ob2Byu2+QJoeCPV+r0d
 VgnBSHlvUbgxIiU8k1S3UAy0/pnc0urZFPkQL/ChnqlyO1A3mv0znx6AU+mS5A+hUDBc
 3NLPVkZE+F+tWYSGU2PlGSm3CSmuEPS/uVSKr+uIqkM8qaC8ilzsCLoI6utdaggXBFps
 Y+FUI2/lkIlOWLfNxaduQYR0K5UI4frt90Mc4OszFfpizS+NqPqTAbwEarlLoOmOkr3E
 2KqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/FM9xo7QIIBKERzlsc9RY2lQmdtL0uWG+xaaghB/dV4=;
 b=mxVGpfdw6SBISPp8s40I7ghLzBIeDESlgKcNebUgGRR7mcjzZkTrFyDGrcyl+8gX7/
 0r2l3GdYFU9t3B5ZFVC4R32kqrObzOVqjWnJtO2EfrlM9rspbVvo5RCnqCPRkg4wMiV9
 dPG5gc191TB8ZLUh++DDoAWvvBXxtut9kiYo49fbAgBrjRakdN56Fu3jKdIfLMRSxhad
 283XG+5fTehNEgNmx1dsES7HyraiC0lRACMjYbplBH4LVZ4exkAL4Dq0SVcSPbAZJXtf
 x3rnpmblCKGGO+TOBhzknDrkEJkJV8j2Az5XE2SswpbMhuQu8qOB75vW6+S0AWopssN1
 TH4Q==
X-Gm-Message-State: APjAAAXrv3gkAF9E8YByFvQwfyDZNb6lxsmH+GbHNTDwD7iDlE8vTzYr
 szMVoF2J7vZhBpJ9gQNJEmhP
X-Google-Smtp-Source: APXvYqw99CLh8HXavEoyULyhtO2nxTDFigWCoqEaIX82JYh7hHk+VlWTCUefWQFUD7lg1xwR+i2dYw==
X-Received: by 2002:a17:902:820f:: with SMTP id
 x15mr16072824pln.125.1575054375293; 
 Fri, 29 Nov 2019 11:06:15 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:638d:cc55:d006:f721:cde2:1059])
 by smtp.gmail.com with ESMTPSA id h9sm25159974pgk.84.2019.11.29.11.06.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 11:06:14 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH 4/5] media: i2c: imx290: Add support to enumerate all frame
 sizes
Date: Sat, 30 Nov 2019 00:35:40 +0530
Message-Id: <20191129190541.30315-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_110616_304076_D39063A2 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index d5bb3a59ac46..f26c4a0ee0a0 100644
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
@@ -820,6 +839,7 @@ static const struct v4l2_subdev_video_ops imx290_video_ops = {
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
