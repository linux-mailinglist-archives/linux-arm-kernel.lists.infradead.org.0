Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC7A1D94DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 13:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=ymyt6BYGGliGDSXJE486If22orZprC/mEZvpu3B2iag=; b=K2
	zyC4AHbAfy6cTiC0M5ZDlBBcAWq3CG4vWR78klgcmxQY/+w3itb07MlInMgUBhYYHjd9+qy6A1Lak
	Bwl6y+yOZX6LIZ0G/F4Ljgl4hRlKfe10fBUsjk63Cb+mmOuo43VQd4oxwGsiZucQAHK67dCnXisom
	Zw/jzIEsoUTOOMzw/T6dYjv/tAPQch7iZ9x5+fU02V3RVKMZAe4Ok/UgFqvESzonbjH+fQ2Li6lA5
	LXyV0coIe7eRR+r97bCv5TMK9/cnvqKRrFG8Fkl1A9w2ZHCwvfSobDO46cyV3HZqQ/wZCIF3jDAn2
	vURsOIsvd3aixMpcJRZqqQO5TTJ/IeSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb02A-00081X-SH; Tue, 19 May 2020 11:03:42 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb01w-00080Y-Ih
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 11:03:30 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200519110324epoutp02c0e32ae63c6c7a4ce52d56a2cef490c5~QaRRpwrlZ3050830508epoutp02d
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:03:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200519110324epoutp02c0e32ae63c6c7a4ce52d56a2cef490c5~QaRRpwrlZ3050830508epoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589886204;
 bh=jtbuuFtZlbJS1Rib4iwMtJsZO8dvhf0tQbfEwjEMKcI=;
 h=From:To:Cc:Subject:Date:References:From;
 b=bRCzjA2TMcQwbnNHODvPIK3e7xJE5UnhLVa2FjwzoQlr4Sbp4uzzkXVqwtuXBVmrB
 d0dBxiVRQSHtOI1G2G/2A++m0tROM1m7lu5mD4r1SLk7YuRSIcZJzfSNfuemVAexQb
 D/HRrKTv6CN9I8QiIMpeGCHffjYeILuS4sr4IrD8=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200519110323epcas5p36ea804ed6aebd41f27c2537c5a760db2~QaRQyYdyY2376823768epcas5p3L;
 Tue, 19 May 2020 11:03:23 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 98.27.23569.BFCB3CE5; Tue, 19 May 2020 20:03:23 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200519110323epcas5p23b9472d505f5ba58d033fa468cb9969d~QaRQNMuVy2317723177epcas5p2k;
 Tue, 19 May 2020 11:03:23 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200519110323epsmtrp276c59ad1c0e6fd16f337e1281a352759~QaRQMRz0R1333213332epsmtrp2Y;
 Tue, 19 May 2020 11:03:23 +0000 (GMT)
X-AuditID: b6c32a4a-3c7ff70000005c11-91-5ec3bcfbe0ce
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 0F.33.25866.BFCB3CE5; Tue, 19 May 2020 20:03:23 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200519110320epsmtip25e01f7118dfeee6021f3ae7e652d5047~QaRODaRmj1826618266epsmtip2o;
 Tue, 19 May 2020 11:03:20 +0000 (GMT)
From: Tamseel Shams <m.shams@samsung.com>
To: inki.dae@samsung.com, jy0922.shim@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, airlied@linux.ie, daniel@ffwll.ch
Subject: [PATCH v2] drm/exynos: Remove dev_err() on platform_get_irq() failure
Date: Tue, 19 May 2020 16:19:04 +0530
Message-Id: <20200519104904.59246-1-m.shams@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOIsWRmVeSWpSXmKPExsWy7bCmlu7vPYfjDE4sNLXoPXeSyeLBvG1s
 Fv+3TWS2uPL1PZvFpPsTWCxe3LvIYnH+/AZ2i7NNb9gtNj2+xmpxedccNosZ5/cxWdxtXcxu
 ceThbnaLGZNfsjnweez9toDFY9OqTjaP7d8esHrc7z7O5LF5Sb1H35ZVjB6fN8kFsEdx2aSk
 5mSWpRbp2yVwZaz5+JqtYKFYxb1JR1kaGO8KdTFyckgImEis/TGXqYuRi0NIYDejxKFD71kg
 nE+MEue/bGSDcD4zSqy+foUZpuXZny1gtpDALkaJR918EEUtTBIXL+8EaufgYBPQlDh+nhsk
 LiLQySjRc/s3K4jDLPCDUeLNynVg3cICARIb92xnArFZBFQl+r+uYQWxeQUsJCbOuMUKsU1e
 YvWGA8wgzRICP9klNvz/CZVwkTh0ZBUThC0s8er4FnYIW0ri87u9bBB2vsT8eaugzq6QWHnh
 DZRtL3HgyhywS5mBLl2/Sx8kzCzAJ9H7+wkTSFhCgFeiow0aRooS/3f3Q00Xl3i3YgrUBR4S
 X28vYwMpFxKIlVgxJ2ECo8wshJkLGBlXMUqmFhTnpqcWmxYY5aWW6xUn5haX5qXrJefnbmIE
 pw0trx2MDx980DvEyMTBeIhRgoNZSYR3wotDcUK8KYmVValF+fFFpTmpxYcYpTlYlMR5kxq3
 xAkJpCeWpGanphakFsFkmTg4pRqY9t30uOe8+uwNO3ntWRlrTx13UZrMwuq8+veFF2xfzJkK
 2XxOzFqmO+Ph5tWFX02lCncZ5a9K7Bbb+Zqp4bahvJWZb8eUVc6z/nx5+k7gycmvSw9/UN48
 NerYw52Z/+bXHPQ6frH25FWHpyJpyybPYZ639KjH03P7tya4B4t4l9W0in1OkIre11F+TZ6x
 clKp+c1lasFpnxdmS2Uq7zSd9Yt/4hrRkx/SHs/M71eayrsu/HKlof3Jsn2vFI6tkpHjefJe
 N+rosaVWs921tynF1fc82Kf4LXX97NV7JS/GJDZNCbj+iaHH4c3ZW1+DpZ63mOZk+c7MnHP5
 iOiPebr8TAdd82Z9uJxYx+XUWrdM6aYSS3FGoqEWc1FxIgAbhtUCigMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNLMWRmVeSWpSXmKPExsWy7bCSvO7vPYfjDI5f4LHoPXeSyeLBvG1s
 Fv+3TWS2uPL1PZvFpPsTWCxe3LvIYnH+/AZ2i7NNb9gtNj2+xmpxedccNosZ5/cxWdxtXcxu
 ceThbnaLGZNfsjnweez9toDFY9OqTjaP7d8esHrc7z7O5LF5Sb1H35ZVjB6fN8kFsEdx2aSk
 5mSWpRbp2yVwZaz5+JqtYKFYxb1JR1kaGO8KdTFyckgImEg8+7OFuYuRi0NIYAejxNU1G5gh
 EuIS037tZ4SwhSVW/nvODlHUxCSx4OQmpi5GDg42AU2J4+e5QeIiAhMZJea0r2IBcZgFGpgk
 Vqz8zQhSJCzgJzHvYCHIIBYBVYn+r2tYQWxeAQuJiTNusUIskJdYveEA8wRGngWMDKsYJVML
 inPTc4sNC4zyUsv1ihNzi0vz0vWS83M3MYLDU0trB+OeVR/0DjEycTAeYpTgYFYS4Z3w4lCc
 EG9KYmVValF+fFFpTmrxIUZpDhYlcd6vsxbGCQmkJ5akZqemFqQWwWSZODilGpgW7ThQKa7w
 KO/Oq9NCSsbv7lfUsPhfn56m539wwp7DP6UWinn6vtvnvPqt5h0PhtxDSulfGza/85X7OYlN
 4MbJv9HHdjzYuHnC/6nHrvHF/pN69CRNhHGXY9nqtiMsyVqh513jbW8anaxJ/f7V6tHZ1wY/
 Oc9HpJ2e7n9u8Q7jeX+qljfvnPDQNLbZYMaBJeI3XqVz5WpMWLhbovSV4+lr593CFzfpcX/N
 OLrw7K9ffW6nbB1+xBbliei823RzWWlH7fVSu5W6jp8+XHUpLV9ottWXWeJk+6sHqtfuvv/Q
 aBtT/V7betNp8YaOpTP7vL02lAnNT/T+lcly8UFfil87j0ih6EnmsHjJ9tZZkjtjlViKMxIN
 tZiLihMBcX9v1b4CAAA=
X-CMS-MailID: 20200519110323epcas5p23b9472d505f5ba58d033fa468cb9969d
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200519110323epcas5p23b9472d505f5ba58d033fa468cb9969d
References: <CGME20200519110323epcas5p23b9472d505f5ba58d033fa468cb9969d@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_040329_149948_3D4BD75A 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, shaik.ameer@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, dri-devel@lists.freedesktop.org,
 alim.akhtar@samsung.com, Tamseel Shams <m.shams@samsung.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

platform_get_irq() will call dev_err() itself on failure,
so there is no need for the driver to also do this.
This is detected by coccinelle.

Also removing unnecessary curly braces around if () statement.

Signed-off-by: Tamseel Shams <m.shams@samsung.com>
---
Fixed review comment by joe@perches.com

 drivers/gpu/drm/exynos/exynos_drm_dsi.c     | 4 +---
 drivers/gpu/drm/exynos/exynos_drm_g2d.c     | 1 -
 drivers/gpu/drm/exynos/exynos_drm_rotator.c | 4 +---
 drivers/gpu/drm/exynos/exynos_drm_scaler.c  | 4 +---
 4 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
index 902938d2568f..958e2c6a6702 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
@@ -1809,10 +1809,8 @@ static int exynos_dsi_probe(struct platform_device *pdev)
 	}
 
 	dsi->irq = platform_get_irq(pdev, 0);
-	if (dsi->irq < 0) {
-		dev_err(dev, "failed to request dsi irq resource\n");
+	if (dsi->irq < 0)
 		return dsi->irq;
-	}
 
 	irq_set_status_flags(dsi->irq, IRQ_NOAUTOEN);
 	ret = devm_request_threaded_irq(dev, dsi->irq, NULL,
diff --git a/drivers/gpu/drm/exynos/exynos_drm_g2d.c b/drivers/gpu/drm/exynos/exynos_drm_g2d.c
index fcee33a43aca..03be31427181 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_g2d.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_g2d.c
@@ -1498,7 +1498,6 @@ static int g2d_probe(struct platform_device *pdev)
 
 	g2d->irq = platform_get_irq(pdev, 0);
 	if (g2d->irq < 0) {
-		dev_err(dev, "failed to get irq\n");
 		ret = g2d->irq;
 		goto err_put_clk;
 	}
diff --git a/drivers/gpu/drm/exynos/exynos_drm_rotator.c b/drivers/gpu/drm/exynos/exynos_drm_rotator.c
index dafa87b82052..2d94afba031e 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_rotator.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_rotator.c
@@ -293,10 +293,8 @@ static int rotator_probe(struct platform_device *pdev)
 		return PTR_ERR(rot->regs);
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(dev, "failed to get irq\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	ret = devm_request_irq(dev, irq, rotator_irq_handler, 0, dev_name(dev),
 			       rot);
diff --git a/drivers/gpu/drm/exynos/exynos_drm_scaler.c b/drivers/gpu/drm/exynos/exynos_drm_scaler.c
index 93c43c8d914e..ce1857138f89 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_scaler.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_scaler.c
@@ -502,10 +502,8 @@ static int scaler_probe(struct platform_device *pdev)
 		return PTR_ERR(scaler->regs);
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(dev, "failed to get irq\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	ret = devm_request_threaded_irq(dev, irq, NULL,	scaler_irq_handler,
 					IRQF_ONESHOT, "drm_scaler", scaler);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
