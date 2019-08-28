Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF8EA0318
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z2g2zeQWKKTqiN58HE7TWW1hf1N1ZrNQ2FO6nZ1yhZg=; b=c2IqTZTn4HU3e2
	SaS4w01PaYvu3OkOSYf+PZ++4reKCvOTMj6zTyEV3GFN+giZymy/g5/hdP7fFE/EjDBeA+3GGqKDl
	evKIkwgRdzsHnRkg/blnFA1xUO9lF3GBy84tLExVZEKUxftyeFe49slTd2qEEuHh0P2U1pDJ2eazL
	gjRbYS5smbpp3ykDUWxT11o39HfU9ShwsIqWZBImCwb3OrEQlJS50h994RP/dSBxoXEOaiEf0c8QH
	UT3RLaLe7J5DarWPQGb1O1N5w/JIKx4eyBix5YLnQGYPJoClPDs8qQgsZo0Te3Pd6R1bTFD1PfSUk
	PRjL3f2Pd+erC8YATKQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xv5-0005je-Bm; Wed, 28 Aug 2019 13:23:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xuv-0005ii-96
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:23:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id b16so2487737wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 06:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SMEwDnA8PK409z+Aw0DoKAxN3PbjiYfTei3jRL70xXE=;
 b=Uqh5RTPxsxlgO6fW+/GUp4PHz90/PXrd2mH3+ERhbCtOXr5thlsbr2p/LwY2qGqpwp
 VuHQen7EZmGCxAiXC1cfifEbYOaAC+p3+x/DJIs3P+8EgDXQ89qvHHqwqrG8nhBdxW+c
 tJwQqCHExOTpgBG9ImlyJxpAel/U4SnSMOwbYsPe88WLxu7Pmq5UYVC9duZEaD1GaLZo
 81vaNBLxSAlavlQjnWQ2ndvY1rZyH4+flemGFSIF98DM/qchwIzCXEG3n9t79jy2Y7TM
 jXnrU60lr0P44mWM3EoDT07kZ+I4m5LUEMwJfftMdDRo8EuKrXUMraB10G9aCyud/5+t
 tuPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SMEwDnA8PK409z+Aw0DoKAxN3PbjiYfTei3jRL70xXE=;
 b=kIQizMRkRJr0uhxv/WwVFksSacEKVNu+aXjtnUzuKEjIB71W5OPeHHP1IJ+Yr8nnuR
 Nlzyp79jqaLKk48cLvKwHiuAvmmJeAqnAxHszSHGTmtNFnHVvIs9AAXJX/Wg1xJV6vg1
 swXejykMdaEdrhsvQrlQz1BMkV/PBzl/gGJovFPkqjqYPzqij9RuTdDTD30UGmDUb/vG
 1eJ021oddtIdCyIiQY9JiunOJWPr1X8zF9HtWQJb3iGJtvEbkWx8u18HiNSm3gY6+FW1
 4apVbjW8lqqL5jYL2v57ez87Lm9/3McKySIx9yWqGXHew+W6vYpQx/dKYqftuP3ylrCy
 J9tA==
X-Gm-Message-State: APjAAAX9cMwXWesuIRg0WpZYIPP9QytEHkypL3K1BsCRBDC2vHev5WrX
 9gQVLovJN2z7Mc5YVOyyh05SoQ==
X-Google-Smtp-Source: APXvYqwSRs75Y6JmL0J+jZ9ePz6PFEOEGjCGu9Py7xJQeuRqpBpdE3NXmyi2gk1js3KzTuh8qnnuxw==
X-Received: by 2002:adf:ba4a:: with SMTP id t10mr4522910wrg.325.1566998595621; 
 Wed, 28 Aug 2019 06:23:15 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id z7sm2785505wrh.67.2019.08.28.06.23.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 06:23:15 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH RESEND] drm/meson: vclk: use the correct G12A frac max value
Date: Wed, 28 Aug 2019 15:23:11 +0200
Message-Id: <20190828132311.23881-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_062317_452109_E6A18607 
X-CRM114-Status: GOOD (  10.39  )
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When calculating the HDMI PLL settings for a DMT mode PHY frequency,
use the correct max fractional PLL value for G12A VPU.

With this fix, we can finally setup the 1024x768-60 mode.

Fixes: 202b9808f8ed ("drm/meson: Add G12A Video Clock setup")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
Fixed typo in commit log, 1024x76 => 1024x768

 drivers/gpu/drm/meson/meson_vclk.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_vclk.c b/drivers/gpu/drm/meson/meson_vclk.c
index ac491a781952..f690793ae2d5 100644
--- a/drivers/gpu/drm/meson/meson_vclk.c
+++ b/drivers/gpu/drm/meson/meson_vclk.c
@@ -638,13 +638,18 @@ static bool meson_hdmi_pll_validate_params(struct meson_drm *priv,
 		if (frac >= HDMI_FRAC_MAX_GXBB)
 			return false;
 	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
-		   meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL) ||
-		   meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
+		   meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL)) {
 		/* Empiric supported min/max dividers */
 		if (m < 106 || m > 247)
 			return false;
 		if (frac >= HDMI_FRAC_MAX_GXL)
 			return false;
+	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
+		/* Empiric supported min/max dividers */
+		if (m < 106 || m > 247)
+			return false;
+		if (frac >= HDMI_FRAC_MAX_G12A)
+			return false;
 	}
 
 	return true;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
