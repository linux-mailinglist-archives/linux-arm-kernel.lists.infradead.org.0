Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4488AE4FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 09:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lly2PjNwgn43WDIfJvLB02u5JSeP76EBXtic9uyIx8A=; b=b1X1aCJZn82pxE
	BYUyXMkytrYXnJ+HAOq628SPUlTHDh/6QdDX2fGEfgU1W9mwiR9teMulSMFCSQySJKDwgks0wnGH7
	gJ7Oz7Mi5I/KnvPFSCuS50sIQuS/vQKhKGY0UgVsnwRBWgvNpqHscXpfRxR5dbCUoKh8fid2EXgGT
	i/nR8mSVikdj4Bb5daQOyA+3mEO+W+9EAdKI5EOURKIRnkd9sGWqYV5chKK07xbIJiTFp1KbORBqU
	xW9EaZoZ8AjQhmKTxV+EigSg2n43FQSwKgv2C8f+AfHbwxVIcDgg753hnICpAUk3vCgdP66ZE6GAv
	iwVj2S7s8Px52fle6rTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7b3f-0004Hd-8d; Tue, 10 Sep 2019 07:59:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7b3S-0004HB-Dl
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 07:59:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id x15so9365504pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 00:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+ICqDZT0+Rww/hGCZQ9/7SaJeWoOs3iDbAih166xoms=;
 b=F/4DbNZMB0nf7DgnHlLG8hechqYzxn49BWwlDiqD6w5zAWKLdtCcwUMdYD1CsqN+Ng
 jzKPub20pUMRPuzTI4YvJD3AiyE28CCh4t/qGp+gjJYenrY9lh/BXg7sRph0NR66KjSF
 k6CBYACYO5XANiHDoc9soi/2ks1/EbDYV2mfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+ICqDZT0+Rww/hGCZQ9/7SaJeWoOs3iDbAih166xoms=;
 b=T4tFIN/W6RslieSE5KCsLjoA6RzqyGb+iB+qS20/zLzN6fEyPBbo6ZYCMSeuF6YypY
 EueHwKkDvBYw3gSp0U12BlbOBsns3k9waACF/a2CnWD1URpXNllvXQWx+LB168rsp304
 eWAGZjrJRtROQvOtG6ttMCPnv1kOJsgYHZTz1oxKVoyMlzY7pAei9HfbYKs4dUzhf9ii
 RV0ljC9bTAeKx5pItNU6tkxR6/PKkmJDpqulYeJ+qeJU5iTp1PRUJGjZf6vl0rq2Xkln
 xgVNbjs6Z8s6m5xqdIrlpbzfEj319hrp7OBmd3MVs3WyTQPvtWCI6Pk1xXkK2gZvgfMF
 YWfg==
X-Gm-Message-State: APjAAAXEtKR+mf20a5B1jkMLTnmljKzr31dk0aJoYbMZaHT53Hw3qGPC
 YXo2HxpQzxlMOA5hyQpYWuLAfg==
X-Google-Smtp-Source: APXvYqyDn9hO++8SUhAPekxT/ojMiADYLdC41QbV41Z++f9OMrsB5LXCadAWjtEN/hNbyMZ7r2vYLg==
X-Received: by 2002:aa7:870c:: with SMTP id b12mr34260902pfo.122.1568102352293; 
 Tue, 10 Sep 2019 00:59:12 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id c23sm16189538pgj.62.2019.09.10.00.59.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 00:59:11 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Eduardo Valentin <edubezval@gmail.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] thermal-generic-adc: Silent error message for EPROBE_DEFER
Date: Tue, 10 Sep 2019 15:59:07 +0800
Message-Id: <20190910075907.132200-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.23.0.162.g0b9fbb3734-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_005914_490686_702F4A6E 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Zhang Rui <rui.zhang@intel.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If devm_iio_channel_get() or devm_thermal_zone_of_sensor_register()
fail with EPROBE_DEFER, we shouldn't print an error message, as the
device will be probed again later.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/thermal/thermal-generic-adc.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/thermal/thermal-generic-adc.c b/drivers/thermal/thermal-generic-adc.c
index dcecf2e8dc8e..ae5743c9a894 100644
--- a/drivers/thermal/thermal-generic-adc.c
+++ b/drivers/thermal/thermal-generic-adc.c
@@ -134,7 +134,8 @@ static int gadc_thermal_probe(struct platform_device *pdev)
 	gti->channel = devm_iio_channel_get(&pdev->dev, "sensor-channel");
 	if (IS_ERR(gti->channel)) {
 		ret = PTR_ERR(gti->channel);
-		dev_err(&pdev->dev, "IIO channel not found: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "IIO channel not found: %d\n", ret);
 		return ret;
 	}
 
@@ -142,8 +143,10 @@ static int gadc_thermal_probe(struct platform_device *pdev)
 							   &gadc_thermal_ops);
 	if (IS_ERR(gti->tz_dev)) {
 		ret = PTR_ERR(gti->tz_dev);
-		dev_err(&pdev->dev, "Thermal zone sensor register failed: %d\n",
-			ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev,
+				"Thermal zone sensor register failed: %d\n",
+				ret);
 		return ret;
 	}
 
-- 
2.23.0.162.g0b9fbb3734-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
