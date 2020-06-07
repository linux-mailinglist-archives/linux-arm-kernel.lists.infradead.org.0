Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F18A1F0D0A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 18:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n6pOJ5Kb9RXW9Lr7rS3/5T0SDD8pneWFrg/AOREUGtY=; b=eN8/K9Wvs456rOEilw4T3t/2bW
	RTnAsn0mylL+evyHZwU7qEQTk132KuS2XnNwaGgnzyNA/gnBGx3DHfFrPQNiX5wf4Fb2E6aNXeHlF
	+7tnxeAr4/ogkjvdhZ1gRc9/GCVOSUd1EV/zbQLb8AzGhpgXCubkQAo6WtkUvsopkU2J7VXX1wQSJ
	EMQFEW/srColK0b6IqOVB4/31RXuTyR4rDwE1wLyj0Q3QDJwNCrgYWopgfzKiZ3DZGR2aI/0H/bWD
	ZPawd5xxKteQLF1ej4rrShqr2xi2b17FP3zmmvr4AdAOYh2aFhdauESP+nyamuryvhYqyV6KFFVGs
	mFVJFBRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhyCb-0006y6-QO; Sun, 07 Jun 2020 16:31:17 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhyC7-0006oU-Ol
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 16:30:49 +0000
Received: by mail-lf1-x141.google.com with SMTP id z206so8739175lfc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 09:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xeJmQRJvkh8fRKHXAH/W536lRiSffIGCx+R099ed5PQ=;
 b=cWHbKehKHIDF062O/92MuKOTWDReA/eMg+2MWo7iENt0FzGGlbcQHmhxWZorGSbmAM
 uc7zGnxHEe1MUmNlY+bGjoJMYJ6MtMyIKDi42imxeId/vOh3PE1qgbEJVCUdbk/ZQlTq
 BPB2NjB2AWvTlQ0eFu9CzcpTKCowVtbXC/UNqY8R/PzETERaT9zsc+VUAXXaF6zoHUqB
 G21musHG+MCTXQW9HLMc5rOj4gujqvo0V1Xnga40s8Rjx/sLUD8Jf0a+9VblX/NHDMbP
 +CfTEdGPe0aKpfM3Zbl3qOk3Tk5BdJLCEW8d4W5NdkVAN/hkC2MLSstUvfCCMFBYtKs9
 ehMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xeJmQRJvkh8fRKHXAH/W536lRiSffIGCx+R099ed5PQ=;
 b=iNjp51t3gYkAwbR6D4G3Sevg2mN+jK0wd5uX8ZNb2XSXrhiWDHE0q/UwAnheBoUPOU
 J+yaB71VvPR2yHUDq1h2j8GUfLdFDW7/hGGtdy+y69oF/O75fnqMVXDKrauU3N0/paTP
 1Pf3Cm4uZernIhLtTE+6p5D3iIPtAxuht4KxYxPrUpwMf++KJ06uASczT0SYo+sj7k48
 sITWP5RNrQ17VaNSwn2IF01b6SMWOdmYWaZgADWCcTvJLH/+IrJFnNaN21pZGvjOB4JY
 QKGb9Db8TXiQ+QnT3P2ZJs7MJDFS/H6NIRI68qminq2TEGHFPFSUa64Kftf9Z8xLhlqM
 t9XQ==
X-Gm-Message-State: AOAM533ndbMW1y+/NTUgwmAVr6G3Mzx1awZ0yE5r+EDEl6dB8rxivBVp
 ZXgCes2vyLIYHl4bgd27vY7WNLPMsFlViQ==
X-Google-Smtp-Source: ABdhPJxth+i63WhQaXwjfVhDSLOI1ZX4ELYq67YtASPe86NC6Fn9Cnu2AFDuq7cDjzyYCb5ga9xmZw==
X-Received: by 2002:ac2:4d25:: with SMTP id h5mr10414421lfk.87.1591547446112; 
 Sun, 07 Jun 2020 09:30:46 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id l7sm1726511ljj.55.2020.06.07.09.30.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 09:30:45 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v4 01/10] media: i2c: imx290: set the format before
 VIDIOC_SUBDEV_G_FMT is called
Date: Sun,  7 Jun 2020 19:30:16 +0300
Message-Id: <20200607163025.8409-2-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200607163025.8409-1-andrey.konovalov@linaro.org>
References: <20200607163025.8409-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_093047_869135_8CC3A235 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
