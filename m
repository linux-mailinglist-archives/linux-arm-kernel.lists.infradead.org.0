Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DF79D1E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 16:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nhRYejodHAZ2X68oovHp2/dl8lZ5oSX5PJDWt9Keq8g=; b=n7b6F4Zt+DK+yV
	8kZSK9WgAKkzlHQTp3rYjygFmf45ttXXxc5R4xlHkO3uyhr+QjiHke4qwEkKc0K4TgyhUsenm5lXy
	hE6egwPrs6jUjuMmxr1w5VmVU7lfYiRGlwBo4OgSF1kCRfWel2NMP1FrSqnMcEoz3nNHfDa6hKtsI
	cYlGL5IZLIpea0KmnsizvTwKc8nTSHCUbwH1B5DNZh9reo2Yt16UdQw5yhvXCKmt1lTDadR13aHXg
	7jet/tBzzsRoXtmhPUmk6L3ZJZMAEc2aVBywl5KDhStrlDzpWwEgQ34i8hY1WZw3IfuPgIb0FtQTr
	UsMj0r2RHT5+PnpT1J3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2GH2-0006EJ-QY; Mon, 26 Aug 2019 14:47:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2GGk-0006CI-Np
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 14:46:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id k2so15615161wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 07:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lKqFlQ5uAweiWoy5Q0NBtlqDIxAoWdFqAZ3hE0aWMrA=;
 b=oOsWkVyy0OVNO3GEWtL9KUlBPcNQ8EXb5NCLaRrryxI86WLE7itY1IhCRJ//gMudtE
 MI6ag1jiTbVVcDqAqXe22G5Ebaq5BNPFjs6B3Wib8wz4iLstk/g8GUietWVUDOVMtFLD
 B72moJ69pMr5bro4U1czlxVb8JfS6SU1/pnwUeOux5P8jlS5AmQgmodOo1MfubsAtRFd
 6thkrxpAUURZh4j5Bx+8fONziNmU3yKSV12jDFNhld88vr6ZzSyAwVmUIXXrkmddsp89
 B3dw+IJyZkAPVaiO4vKQIwopRI6ZxW7dUD8oDdsLLhWbf2C5s+AV7/4TTATXNxBIP2Vf
 RzRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lKqFlQ5uAweiWoy5Q0NBtlqDIxAoWdFqAZ3hE0aWMrA=;
 b=oRuhabikOYWxYW9BgA424hrLv7z5jFzvL7eSthriHrYwULR14BOUxLrwFbCEmkbR7q
 qucl5uCYQ2tAUGWictbzSw5stIgRwoDhgvi3YR3lL3up3spMTns31n7J4Ub9MRPusgE4
 m9gou1knmBSVnFPNUm5hQSzR6bHRGXaxYT/9fg5PErLAK/chVStZhMZav/h4Ph0LUOlT
 nrhLAk2BBS/ZJ3CtENSiHQfzulhdxjQeVoxTBnhESmg1gAQzxrEdV1QALjLhoT/7s3Es
 kMr2GjNuS2mF1z3f6hgyTHqNuSj6JnPPGBiirLf029CFq/mFAKX28ThRNSz09dLjjLyf
 nc0g==
X-Gm-Message-State: APjAAAUpbp/8qcsfawXAAPq+0UodlOYQvJWflYUhOEqpI7rPH65e/OSI
 PXF9O1vfU+c0fdQTWBO0hsEnag==
X-Google-Smtp-Source: APXvYqzj8GflBpfqyAQoqHVpAUfVZVDf2xgGir3LWPo8zTibAZW8llY0SCOEuBpqNLk+uWaJWp10ZQ==
X-Received: by 2002:a5d:408c:: with SMTP id o12mr21617046wrp.176.1566830811145; 
 Mon, 26 Aug 2019 07:46:51 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id e9sm12984595wrm.43.2019.08.26.07.46.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 07:46:50 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/meson: vclk: use the correct G12A frac max value
Date: Mon, 26 Aug 2019 16:46:47 +0200
Message-Id: <20190826144647.17302-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_074654_814004_2B2C4066 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

With this fix, we can finally setup the 1024x76-60 mode.

Fixes: 202b9808f8ed ("drm/meson: Add G12A Video Clock setup")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
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
