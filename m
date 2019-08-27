Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7C29E513
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFBGrLbJMr2tLeD0myWHnWRoRexkKxvhZMz0jPOqnm8=; b=jWPvkVtQraX0/B
	M9DJ66Mq7iNDgfxtgbRhZ6UlPcMLyt/FsbEaArqaizdcxMw9ShH2xKUHRYi9jlSduw9qGpI/y7Uwb
	JFbO/1aZcGucjWr0ELuPW7rFEZ6sTpUk9asvq8f4ukMySY+vc9rHhirzRljLbfA2Q9kamQ0WiPmn8
	eHcboALMPai7tDoArMXr6WQyyUh2Rt1AEhdDWc0PLeRHj1YtMWAzc3lYZrtDYpDueo6tzle3Hs57q
	tSB9pyc6jVf/stJu2+g8rOHqqMSFn9oYzks0zhMW/T+EwJ7Tjcntv6boPS467w6S3aoJDCrqh+Pw7
	70cAVWhOQRxfKT1fYIrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YGD-0001XM-7i; Tue, 27 Aug 2019 09:59:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YFD-0000xj-VR
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:58:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id j16so18118929wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 02:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wbdxbxYZcKVLdPE0Y/8WQgSXBgDUmbVqM2Rjtf0OVOI=;
 b=mOB8HFsHRuuCRYt9Kp+g2Vrx/KvyTnWXGglzhl804o2JfqJ/QDMeTgZoO+Ued+xtAJ
 TsIhTzlWDYZdbIWQcdYRQomzPGGDcnNvhXxY5ncQKWOpnCKWoaRWuZ8Vg/I7othlgGnc
 8UMoMLp1R1rWbJ9ya7spTIgvhPMIs0kwWyOxJYppM3Hc2stPXW/gJiRVeOGl9ICcfVOr
 JnOpENKyJyp37NeDesmyZP6FSvgqpY+YBz/ld3SmFp0pMHPad2BWgChIlhkMP3+ugTgm
 VyxwniLooNR/upSBilO/t4y9/bdbW2v+nwtyLjrOKOBljWrmUnAuJRfc+sCrxF07LpAq
 VulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wbdxbxYZcKVLdPE0Y/8WQgSXBgDUmbVqM2Rjtf0OVOI=;
 b=j8xxSL46c3yTrc9fzs6J5whRnQnW9wZV1MCeEsePuUkpxZ7g64elczwVuQdT+t71FP
 nJUOHi362/xbj8nPnbCFcPbQjYAGb9R6mUFY3ZpEO+v8Kq/PpmZEz9FrX6ynh9kGm/mR
 IfCPHH/ym5M3teJeghxQxD56SlpWpFVdetjdOf3lPnzEanSfjQNd3CyBcat+HyOdT59x
 eVbG+iubLzxuDna4QeCRAm05IcPTK/SdS9JAPY8JEKlmJ3woxefuT/A5OvfpSbkJ9m13
 ENRa4hDQVaWVGjukLpGD/6I3Dt8qEhopALldKyyxOrw0HFE3YINC/R7arSt8Lv5E4R5U
 N9fA==
X-Gm-Message-State: APjAAAU9h4KxeYb4i24coWTqKbnWLAt3oqh2p4Q/zTGj/SW+GHU4LZvb
 vpOybC95CyudjEgt4VnD3CKntA==
X-Google-Smtp-Source: APXvYqzlJBCTaG+pE4o2jLBqQI6zVkgZsqDDyXOyYdI2n3XJFdcBqkqNW7xzsAxTdeooMlTarCQ78Q==
X-Received: by 2002:a5d:5112:: with SMTP id s18mr2484026wrt.34.1566899910193; 
 Tue, 27 Aug 2019 02:58:30 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m6sm10862084wrq.95.2019.08.27.02.58.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 02:58:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 2/2] drm/meson: add resume/suspend hooks
Date: Tue, 27 Aug 2019 11:58:25 +0200
Message-Id: <20190827095825.21015-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190827095825.21015-1-narmstrong@baylibre.com>
References: <20190827095825.21015-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_025832_009982_F3B32AD3 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: khilman@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the suspend and resume hooks to:
- save and disable the entire DRM driver on suspend
- re-init the entire VPU subsystem on resume, to recover CRTC and pixel
generator functionnal usage after DDR suspend, then recover DRM driver
state

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_drv.c | 32 +++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index 2310c96fff46..dc573ffd1f4c 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -361,6 +361,33 @@ static const struct component_master_ops meson_drv_master_ops = {
 	.unbind	= meson_drv_unbind,
 };
 
+static int __maybe_unused meson_drv_pm_suspend(struct device *dev)
+{
+	struct meson_drm *priv = dev_get_drvdata(dev);
+
+	if (!priv)
+		return 0;
+
+	return drm_mode_config_helper_suspend(priv->drm);
+}
+
+static int __maybe_unused meson_drv_pm_resume(struct device *dev)
+{
+	struct meson_drm *priv = dev_get_drvdata(dev);
+
+	if (!priv)
+		return 0;
+
+	meson_vpu_init(priv);
+	meson_venc_init(priv);
+	meson_vpp_init(priv);
+	meson_viu_init(priv);
+
+	drm_mode_config_helper_resume(priv->drm);
+
+	return 0;
+}
+
 static int compare_of(struct device *dev, void *data)
 {
 	DRM_DEBUG_DRIVER("Comparing of node %pOF with %pOF\n",
@@ -452,11 +479,16 @@ static const struct of_device_id dt_match[] = {
 };
 MODULE_DEVICE_TABLE(of, dt_match);
 
+static const struct dev_pm_ops meson_drv_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(meson_drv_pm_suspend, meson_drv_pm_resume)
+};
+
 static struct platform_driver meson_drm_platform_driver = {
 	.probe      = meson_drv_probe,
 	.driver     = {
 		.name	= "meson-drm",
 		.of_match_table = dt_match,
+		.pm = &meson_drv_pm_ops,
 	},
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
