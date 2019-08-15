Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08AC8E227
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrUvFDALWXiWYXvQxXzDyKHnq+rC2TlpQnCEJDlgGPg=; b=YWRYwAj88mcDRS
	TPwU3PSS8DRVgIJOzRL3MgG8TSHb1xDTT/XjsGdhAh7J6nyXV9TI8DOe2eDKQ6809k69fRHTGpGeO
	WWG6EK0JDIaN6pILDFrZMJ7HSQzfNpG1I7Ux2exbIXs26XaBpuYfinjhhppx8H+DS2GSC5gyyN0I3
	iroC11dCtvVocn1XYhP+wMZkKoLcBc9t1yEe2yHVES0U3j3L/PZMvTfGdbrigYNgY2KSIaVDBHnJC
	/YgmS4GwmFDSRcH+wsIVgj+TYn9QPew24wFSTJc/KqFLan1ixuyiidBNNYQLmpTYXlGJkiaG9JC9t
	1IUALbvW8ztYZFrCDGbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy3z0-0006lM-3d; Thu, 15 Aug 2019 00:51:14 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x4-0004a1-IQ
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:17 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id C38293E9FE;
 Thu, 15 Aug 2019 00:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830153;
 bh=/u093//GuW+I8IlmY+WRCvVNrqq+VDjUh+Bgmnmobek=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Bqv5pd5wHBDbuxEIqdIG5yqTDwYaEs7MCLTc2m+N7XbdRn96M67iNmvPN4XnTAqe+
 wtnRTd35inHX16HBeJ21FVF60fw4jVzFBWifiu6UmZR9syaAJ+MQuJb61osn1HP+oE
 Sb65LGh/6wLVPdheFrqbS83MUA8QakXd3ebzpk9Q=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH 03/11] drm/bridge: analogix-anx78xx: silence -EPROBE_DEFER
 warnings
Date: Wed, 14 Aug 2019 20:48:46 -0400
Message-Id: <20190815004854.19860-4-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174914_669579_70B3D687 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Silence two warning messages that occur due to -EPROBE_DEFER errors to
help cleanup the system boot log.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
 drivers/gpu/drm/bridge/analogix-anx78xx.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix-anx78xx.c
index 9acdbedf1245..62dfced91384 100644
--- a/drivers/gpu/drm/bridge/analogix-anx78xx.c
+++ b/drivers/gpu/drm/bridge/analogix-anx78xx.c
@@ -715,7 +715,9 @@ static int anx78xx_init_pdata(struct anx78xx *anx78xx)
 	/* 1.0V digital core power regulator  */
 	pdata->dvdd10 = devm_regulator_get(dev, "dvdd10");
 	if (IS_ERR(pdata->dvdd10)) {
-		DRM_ERROR("DVDD10 regulator not found\n");
+		if (PTR_ERR(pdata->dvdd10) != -EPROBE_DEFER)
+			DRM_ERROR("DVDD10 regulator not found\n");
+
 		return PTR_ERR(pdata->dvdd10);
 	}
 
@@ -1333,7 +1335,9 @@ static int anx78xx_i2c_probe(struct i2c_client *client,
 
 	err = anx78xx_init_pdata(anx78xx);
 	if (err) {
-		DRM_ERROR("Failed to initialize pdata: %d\n", err);
+		if (err != -EPROBE_DEFER)
+			DRM_ERROR("Failed to initialize pdata: %d\n", err);
+
 		return err;
 	}
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
