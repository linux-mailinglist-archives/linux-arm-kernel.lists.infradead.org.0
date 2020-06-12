Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908C81F78FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n6pOJ5Kb9RXW9Lr7rS3/5T0SDD8pneWFrg/AOREUGtY=; b=ApE/ptewugGwGFbEQ/4a9/ErKK
	VnEzxTBRC2dbvW3UhCwn34YpSLiy9YKHyWguVjYLLFNlr3Ec4l+5Q+yw3zz53Dv2yeoztkwOfpabV
	0F0kSkaibd9dt/i3j46xiSjRcjJagS2ezUNAQUDZ5PzoS7XdcZ+kqE9r8f0UrGJA+Hm2qJIp0+2cv
	C1vhpZ+7u1vLtkx8tb9Z9Qsr0ECewzAxc26c8E+BR8ECvawCMk3yblaGwDo8JWhnEmrk1VRDffcR7
	q2yF366ooGFDWyGLLFLO0Broz1mW3O4Yro3SJ4XjCktiCEdwlGWhTp9MzpnGQvMuziscGFKMffxuS
	nAfkqC/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjk8v-0002bz-Bc; Fri, 12 Jun 2020 13:54:49 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjk8Q-0002T8-Jh
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:54:20 +0000
Received: by mail-lj1-x244.google.com with SMTP id i3so6621289ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xeJmQRJvkh8fRKHXAH/W536lRiSffIGCx+R099ed5PQ=;
 b=hiiHVTh1koKECwgkQFOYluvaR28/5xxQvqOjadxCulwyJAffd2ZpYXFjRWW1GzXVU0
 nomzxfGeylZ5u440WHBdRkGLZgok5eypFL+YQPilPO3CGrehGubk6rraAt64TSwIsJSe
 yoXR8k2FXymqMEqV+1cz4eaNbor9pimWSgDqjiRhRi8sHXkx+0HQezDhVNe4TygLUJQ0
 ftjs0JrFoSH+fnIq/YijvScx0OXsSbgEIYGNKa97Ei5JeWJNg9gIh4QEs9y9H6sOQ9Rp
 irk26liCEIf59CE2Ly8HkxSzVUgwP7NRijj7rokcaQu/kuCGVOP9smOd7pMii0QvDRpo
 hBhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xeJmQRJvkh8fRKHXAH/W536lRiSffIGCx+R099ed5PQ=;
 b=mk/Zuq50xGmBM03l2S6WrDFlJwZXYRFc67W/0W5BlgD3fSB+UBWK56OTlBgzK4gGl1
 dhlc8SaqjV3krdxTSBoEDDoLFP6wpVEb1BiQbtufFleIX3C7c0AazP5lQS3yk1mYrw/g
 R8HEFmt2IKTd4EWzb/EFXsTFYzNYNPkwCrACNbZ+MbHTNwcgmpPuQdwU6H2m9STLoYrM
 NOlPbhQZ34EyCZQKRTybIe+3FkNZ5WKQ1tXJ8ld1okwW6SI84P3Rya88+kQZjGimwHqh
 XwUd7gmq89Gdk4ztJ9YcRmTH4QPrXw92FqUk6yRqgrbcDYW3CAN6C0bbXHTKlahFRgCX
 Ld2w==
X-Gm-Message-State: AOAM531Z47yaL2pPx3lLjIy5Xw/Xle6yRcwumBInxLtURs4cvDWV3z6L
 spFGF2VpWFOGI2+LIEKoMSbtxA==
X-Google-Smtp-Source: ABdhPJxAs/p3JqvNSzkzmTG4KRwjrgYR0Zzdjszn5nAVDBlQ8woXvA/n+G+5ZPWyQVX+lnXJxldUWw==
X-Received: by 2002:a05:651c:108:: with SMTP id
 a8mr7069531ljb.326.1591970056778; 
 Fri, 12 Jun 2020 06:54:16 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id a1sm2414415lfi.36.2020.06.12.06.54.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:54:16 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v5 01/10] media: i2c: imx290: set the format before
 VIDIOC_SUBDEV_G_FMT is called
Date: Fri, 12 Jun 2020 16:53:46 +0300
Message-Id: <20200612135355.30286-2-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612135355.30286-1-andrey.konovalov@linaro.org>
References: <20200612135355.30286-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_065418_664984_E10E2F0D 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

With the current driver 'media-ctl -p' issued right after the imx290 driver
is loaded prints:
pad0: Source
             [fmt:unknown/0x0]

The format value of zero is due to the current_format field of the imx290
struct not being initialized yet.

As imx290_entity_init_cfg() calls imx290_set_fmt(), the current_mode field
is also initialized, so the line which set current_mode to a default value
in driver's probe() function is no longer needed.

Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index f7678e5a5d87..2d8c38ffe2f0 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -722,9 +722,6 @@ static int imx290_probe(struct i2c_client *client)
 		goto free_err;
 	}
 
-	/* Set default mode to max resolution */
-	imx290->current_mode = &imx290_modes[0];
-
 	/* get system clock (xclk) */
 	imx290->xclk = devm_clk_get(dev, "xclk");
 	if (IS_ERR(imx290->xclk)) {
@@ -809,6 +806,9 @@ static int imx290_probe(struct i2c_client *client)
 		goto free_ctrl;
 	}
 
+	/* Initialize the frame format (this also sets imx290->current_mode) */
+	imx290_entity_init_cfg(&imx290->sd, NULL);
+
 	ret = v4l2_async_register_subdev(&imx290->sd);
 	if (ret < 0) {
 		dev_err(dev, "Could not register v4l2 device\n");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
