Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4AE2DA9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:27:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bB64tbuRkTMERxM+UbO9I4zHLjD14RRHhS3+70EmKJg=; b=TjuBmvRzoUz/R+
	qxrtUCspcB1P7g7e9wmdtuyRX0nFZ1UsWFBmNhwqdp8cnm2GjTVzbkbbQLPQDCSZQKJ4yt5eR7rRC
	E7c4L6r/ToPiJTX3+7k3TibJbp6b9IXJny5ItZb/P/ucz+iP3yB+pRSUnBwdGCsSkjPPGR1o7z33x
	4BA+WEgUYW6wMXRIGp2knF/phpr6hbMECCyXtt/Lyz5FjtsFzXEufw3rfFL2m6Q2Zs8YxUbHV3iyE
	G4RwF3E4/WzpieTFRGNSbwNAlVlxaT4ehV34k1fN3FTZQp13/g4pkaSDuY+4WOYR98xPb8wDHvowF
	lK6w8x5hXSQNYaeRASCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvo8-000177-K0; Wed, 29 May 2019 10:27:44 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvnC-00009O-F4
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:26:50 +0000
Received: by mail-pg1-x543.google.com with SMTP id h17so1129522pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qfu+lCX+mg4CHoSzn6sx71PO1L0xmj8Ng2bghmWxVtM=;
 b=nTovKIIjyeNQQu+BPV60MWd+6ikmDz5CTYIk7CO5q1I9JxYa/Y2hi1UEa7N1uc53tJ
 0Ml03crB3KYobulpw2zmaJAB4YPE4Y1W1VCWvM74IWI/JBAFlblmjKqTrMCg0ajk1wD7
 xGj5Gl5TJoDwlMuNXDh+oCwzMlUvgpwT9stYs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qfu+lCX+mg4CHoSzn6sx71PO1L0xmj8Ng2bghmWxVtM=;
 b=rupsG7kTOiFe83DAN4cK7IUWvv/r55f2m5T/DNygA3Cqp9dr2PN04D7c3yFKYqNC2S
 WRKtgHBVXlYI4sRiJX/x4edD/ph7J68+E0YPG340O4v3r7GjNwU49rbnOO3zZW/ERBNo
 rNZDKUTH5TxFlPT2Z1WGuMWr8eBHy0w03jrwOsgf4UPNnIs0ueqo8CmpV1ALaGS+gQmj
 H/rgfFySVW63AWUdgvvo0uLQiMO4LfZMXdwBwhMnVguISFKw//7iOn++b4gedpeJEUjt
 b5DfMKpVl2lJe9jD1ZkJxiJswXd3fVY1qecweph0AtXTjFiQEgfZUtW0IFaeejKh2k3t
 T2rw==
X-Gm-Message-State: APjAAAXj6k2vaFmXrVAF/gCWbRBNHvIkfOeeb0B7M/hOwXVy7qKPHkbP
 Xxal5kW5gh0+IaUxlQzfr/eap2VzLF31fw==
X-Google-Smtp-Source: APXvYqwsCTf8MIeFhkI7oHCKHu8V4WhT0bsggX6aKGiM/Kq0hphXwbIVOk7WcOZTuamgoCEOW8/5cQ==
X-Received: by 2002:aa7:83d4:: with SMTP id j20mr129161356pfn.90.1559125605031; 
 Wed, 29 May 2019 03:26:45 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id e12sm18992183pfl.122.2019.05.29.03.26.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 29 May 2019 03:26:44 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/4] drm: mediatek: unbind components in mtk_drm_unbind()
Date: Wed, 29 May 2019 18:25:53 +0800
Message-Id: <20190529102555.251579-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190529102555.251579-1-hsinyi@chromium.org>
References: <20190529102555.251579-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032647_184207_59BBACA7 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unbinding components (i.e. mtk_dsi and mtk_disp_ovl/rdma/color) will
trigger master(mtk_drm)'s .unbind(), and currently mtk_drm's unbind
won't actually unbind components. During the next bind,
mtk_drm_kms_init() is called, and the components are added back.

.unbind() should call mtk_drm_kms_deinit() to unbind components.

And since component_master_del() in .remove() will trigger .unbind(),
which will also unregister device, it's fine to remove original functions
called here.

Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
change log v1->v2:
* separate another 2 fixes to other patches.
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 57ce4708ef1b..e7362bdafa82 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -397,6 +397,7 @@ static void mtk_drm_unbind(struct device *dev)
 	struct mtk_drm_private *private = dev_get_drvdata(dev);
 
 	drm_dev_unregister(private->drm);
+	mtk_drm_kms_deinit(private->drm);
 	drm_dev_put(private->drm);
 	private->drm = NULL;
 }
@@ -568,13 +569,8 @@ static int mtk_drm_probe(struct platform_device *pdev)
 static int mtk_drm_remove(struct platform_device *pdev)
 {
 	struct mtk_drm_private *private = platform_get_drvdata(pdev);
-	struct drm_device *drm = private->drm;
 	int i;
 
-	drm_dev_unregister(drm);
-	mtk_drm_kms_deinit(drm);
-	drm_dev_put(drm);
-
 	component_master_del(&pdev->dev, &mtk_drm_ops);
 	pm_runtime_disable(&pdev->dev);
 	of_node_put(private->mutex_node);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
