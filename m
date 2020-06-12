Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401201F7924
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:56:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D6OXQr4guWqEKweedeEQvsk5iKOKw7LQZCY9+6sMT/I=; b=kYsxfuLhjvBpPV4UcGYWtR7sFi
	F8OsPyCeYkwDnmES8BMvAh6E6fbOTAQlHAWnjlFq31vL6lpuO6h+Gdft1h1UdzDo+27ISTgVKU8zL
	1ObYGMwlMUuaKBufdjFSkHar868VvuU59VHbgc4Ao9A1z81s1YpKyplK4skv9xuy8GctdRi26itRE
	GcShSiNzpt+kVxbmDz36NGGaALRXgOVLIDhCNOal8d60D3FJHxAMC6zksr/BF271hXh25NNGEDJs7
	Sy3ExoX5hKjjVLt8tpumTliC3LFbHJ0rr8Sw26rZXmvfecSGnXUIim2vA+mkfTOEZ9cIBADPqokUa
	ZtgRxG+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkAr-0006ex-7l; Fri, 12 Jun 2020 13:56:49 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjk8p-0002pu-JR
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:54:45 +0000
Received: by mail-lj1-x243.google.com with SMTP id a9so11182028ljn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZN8pb1DxbDLuAa3GwJ440N0/6Zk96TU9nPo+rlxSNXs=;
 b=tTPvo9D/MvRXBYX/MuHpkfqpCLq6atXifgP7LV4e3/6UtF3iJJK1XIhlokPt2be/6X
 rw06kE/rT6je/Hm8AxKVhHSpwcD+crQqHu6WtC9W7UQF6Ct8K8ketGlK08BDO8RJN6Hj
 IvQgKQDZG+OK05stM197t5SLomRYn6ffu/eNGlE19PdVcXVDW1LXmeX7EmruPAx49R7l
 Nyz88Fqrv44x2YQC55PAOcnj54GBa9z/VouaaLk4m6Ek0tPFwMoeqebHz1NxqFI4JA5m
 oI+x8tjGs4Afg7PiQMsAj4KTf/VfwO7cMmc2fojYCf0abdsoKvQ4+N+QlrcJ4khYofCr
 Opyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZN8pb1DxbDLuAa3GwJ440N0/6Zk96TU9nPo+rlxSNXs=;
 b=SXuGukdjxUKJyC989sp+kezRRJKvfpq8rU1mHYTmjnF53pQp1XztIHvTQd+/8mgAFk
 ORHGGI9Kcd0LetwRaDEWPeTohp77REkhX9vxygq197IRJIzpqRcEIzuzXyX+nGDw2Av0
 zctYkdVFeAtbgoKZMTQDpwAudGL8LkfSIDuHD9G561nBgKIOwQEgNwTeNbpcHm91GYr4
 yfLVfo2ZGbHhCd3VteQ6MX9r0/eWOJ7z5kjexGIFWsDWfvb3XlOwVNsiYS56jH51lt8t
 gPOyXyXNJMwfOqCGyDKXnTwl2JAFGndhNsp2U9P85b615KJ1APnGvYQzY9xQlrlVuElu
 2iAA==
X-Gm-Message-State: AOAM530rhyuAluwoYMHUTi+NFuPKnDQ+dybMOFwMcwGfBOuOPS1VK41a
 W6v/t584y0wliwE7BSrWaE5N4g==
X-Google-Smtp-Source: ABdhPJyd0K77IMACgsooS/25EwC76SwVSTRSStSbsi4StlxM/eYk+QNKB3QOHNFROB4+6VQH2CxZbw==
X-Received: by 2002:a05:651c:50d:: with SMTP id
 o13mr7303244ljp.181.1591970081900; 
 Fri, 12 Jun 2020 06:54:41 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id a1sm2414415lfi.36.2020.06.12.06.54.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:54:41 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v5 08/10] media: i2c: imx290: Add support to enumerate all
 frame sizes
Date: Fri, 12 Jun 2020 16:53:53 +0300
Message-Id: <20200612135355.30286-9-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612135355.30286-1-andrey.konovalov@linaro.org>
References: <20200612135355.30286-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_065443_638248_A646BDEB 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/media/i2c/imx290.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index c654a9a8fb08..fd147fac5ef2 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -528,6 +528,28 @@ static int imx290_enum_mbus_code(struct v4l2_subdev *sd,
 	return 0;
 }
 
+static int imx290_enum_frame_size(struct v4l2_subdev *sd,
+				  struct v4l2_subdev_pad_config *cfg,
+				  struct v4l2_subdev_frame_size_enum *fse)
+{
+	const struct imx290 *imx290 = to_imx290(sd);
+	const struct imx290_mode *imx290_modes = imx290_modes_ptr(imx290);
+
+	if ((fse->code != imx290_formats[0].code) &&
+	    (fse->code != imx290_formats[1].code))
+		return -EINVAL;
+
+	if (fse->index >= imx290_modes_num(imx290))
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
@@ -873,6 +895,7 @@ static const struct v4l2_subdev_video_ops imx290_video_ops = {
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
