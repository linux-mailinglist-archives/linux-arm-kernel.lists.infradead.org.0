Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FED1E0291
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gJCvsBjJV4xc6tmMdjzm5P9gx+2j6D6w7sSyLf08Qkw=; b=EiYQYXR4qHnGLrqk8Lj58i0lER
	la9a6vU/qwsIabjfpAtzdQlecqPEPPQFhMY3mRNov3KBmtDaSYSUKawaO491IUdFD9yjpSbnm2JXn
	/1kUG5ub28BzjZj9OQnuax/YF5WkkIKIISk0wZr48cLX2PbCVimlqbs0IQKIZc6uERkw5xGS8PkJe
	wDVokyJ+TVQwf/5zrMSP0iV9CKm6b/oDCtjwjEwvol+PIKKDMmY2DSQYUUGvq1I1gPowVwjCNVXyY
	PYZB8FvitlXEnwM8lbaRAjg5Y6nMicyBCD+lLK2Ih7i6ITyB0rZli/PLSx4JsZXWBDBZsUfTnHso8
	5Qwson+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwLG-0004nB-Uo; Sun, 24 May 2020 19:31:26 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwFu-0006Rz-CI
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:25:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id c11so16390059ljn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 12:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ArHIpbhBZ4QboXR1B47LETKKz8hPypHrPsMnuHhW5Pc=;
 b=oBFl+FYPXCF2nyxMWUbG5bRYxOeXrnLcwNIOcNbWk5ote7fWi1iuH6oIHUNBiMytjf
 Lqb144emRs2uKuETQJHJ2h+qwGb7j3Gs0fzmlSKrXbKmxGi192Z4hTbMU+tvRx/lPlhm
 rI8UWpO2x/VZpLDOCAmwB7vORkosPtFSeqPZ2rlL8PF69L4lyvn5HN8oNKWKDtvNiqVU
 ZzhJphVkNtcB1hPa5X1uOcsystaTuCU3yCmwTvETURKyYsb0vkCWjVXhaUH7Hy1rb9GD
 zr4SsTBhTokVxMCiUD/3pdlEeaXfxxjUuJTamP1EG8nr00iS/PgVG6DaIaQD8gV3kGjo
 Qi5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ArHIpbhBZ4QboXR1B47LETKKz8hPypHrPsMnuHhW5Pc=;
 b=lPl6fZh9wqjL4e+3MJebtnocTuWJIVLiVkLuPomho7KjNtY4AnWpUBC1HZ5nImwiDE
 viJLDtbS/zq2eC1/Vj3dO9o+XTIhTJkUcPMohmTyGePhHiSP8H+CiZgT4KhFerpVjjpb
 p6x3NP3bEsFz2VQsNhEpvQnCeIcKoCavdbxAe5n5xUW/imcbcYQy6F4geMLQ/KfWgQAM
 RJVcFXKlsnFPDcU88bESNWDSvhzVDKjOY42QtYtxfmhb+/CPUX13TAQKOhGm0IT4dW8Q
 22Hmftwmho+HAPKvgY7Yvb3XFoAmlm5J1zyacWU1FYAI+AJAM9VTC/xnc8WF40BwlIGd
 leuQ==
X-Gm-Message-State: AOAM533nd/BHN8LiRlOOKVqTj6HRehp6fbfeE60tbBIpsDEKfLihHTvS
 V8p6uhRrQzns9YRstf0oEaiaqQ==
X-Google-Smtp-Source: ABdhPJxyBtmtLkqVgMFpLolLOPlu5o8eTu0WHSm7CDTFILzmDEAVdYLLTsHq30+ePOwEbD75fjQSVA==
X-Received: by 2002:a2e:8008:: with SMTP id j8mr12789036ljg.72.1590348352874; 
 Sun, 24 May 2020 12:25:52 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id v10sm3878137lja.23.2020.05.24.12.25.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 12:25:52 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v3 08/10] media: i2c: imx290: Add support to enumerate all
 frame sizes
Date: Sun, 24 May 2020 22:25:03 +0300
Message-Id: <20200524192505.20682-9-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200524192505.20682-1-andrey.konovalov@linaro.org>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122554_487299_0F1F1B85 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Add support to enumerate all frame sizes supported by IMX290. This is
required for using with userspace tools such as libcamera.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 drivers/media/i2c/imx290.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 6e70ff22bc5f..88850f3b1427 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -471,6 +471,25 @@ static int imx290_enum_mbus_code(struct v4l2_subdev *sd,
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
@@ -850,6 +869,7 @@ static const struct v4l2_subdev_video_ops imx290_video_ops = {
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
