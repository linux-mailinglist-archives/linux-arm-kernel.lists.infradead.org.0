Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8149D4A5B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hGjADRr5ocIBBQXNhox0C6w+udm0PM9W32T6bCRZmU=; b=p7ReNZ7aOy7/UM
	XtEcWgNDJzDevQsw/DESwAwj0/QRblHGxfHlotHhLug0yTG5lisr8rJBKLpuVEQ0aJwD5MePkty4f
	7gRYgCeypy0cXiaO16dSLW52kQqKbfHJP7pVZub0nJ/78LirK+JTohQGewNARPmcYZzK/VFf5Xlhr
	22UxzGt+cRsxlJuk5XB31rnCPGC603BiviqS7IbYUelylgT3qOZ3mgevnLYms74wRTF3724cbZIyG
	Hy7I3/kF7HDtb3W2o6PJecFI5UV5XwtVy41hS7aV2wDQpFyCM4bNNBTC3OiBzrrmfTamWWcCLZoPB
	cnOT20XLZxrSu4faHjRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdGHT-0007IH-AO; Tue, 18 Jun 2019 15:44:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdGH3-0007Cs-Of
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:43:56 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so3771406wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 08:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0vbPMnSPTFmTNhTvb78jQv/BzhDnMGLR+xrvA6q/kx0=;
 b=VDRhhU5RFfax5iw/D6bgy+EWGO4v9G3xyws4yLORV4eWIzJ+FQZTTX2x7NttwaSvVf
 bK8l7V8vhqYmhSUgyQ/sRTOMPTvLpBxKYC5k/KQ7fdi9Duu6O5z4Oaf9xXBDQyZssKp+
 qIhECCaw9iKwmiov+X2tMABtA8kzifXjkEp+r3IdyfTCaMmBiy1j00VBTVDo3Bb1ZH1n
 w2Lr9zATdrTXx5jVOf8iA+f0U9OGOTjLO/N6yqwu33aI/OPmXjx6TGd53gIhVWJNtU7f
 5PnxVhRqlP376h4FR8KVPGDFnjsAgEeNRzF8rL2ZloB1/47IxNoAMC5H5MZ7CtXcVHL/
 OSkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0vbPMnSPTFmTNhTvb78jQv/BzhDnMGLR+xrvA6q/kx0=;
 b=CgnHgErKWerYfyvj9dun+wfa51mPk/mVnqL5Rp9hdEUOY6NjmUkc24lh6xz+meoOSH
 3z/tNn0u73Ll4KtvhQvbxp71ksoEArx9R+iE+n5ZksI9TNe39lEqFP+kSuy+b2N1zbS2
 j/wQVGr+cI7694YBHrtLL+IXFZf0UeM7kwbvW+e5r6234OieSWRZgEhu2bHXpOQFSu3G
 Vv1MJbInkKoTuiwWjSdpe3SNhuHo6k0I63H1/cFQu/KCrx9jq/CgmSzWngpKZoRtItTU
 B33pEw82y2E6wqO9SD2BZDd3BG5LXDHetjkmMb1ib0GhHefL97RaVhRo9mvQ0lusP3qE
 hciA==
X-Gm-Message-State: APjAAAW1O+yuKUu58e1aqgxw12VHG8vk7aonKiPkN0oF0Vjph6G6Sl/a
 FiCyzoaRP2aNPFUN5/DJnTWqYw==
X-Google-Smtp-Source: APXvYqwtw4L/aIDQ4+qEJmUYMfZ7EYwaOEj6yOOtOOc3CwsfJo7ZPI8soRXlk3VuzO+bkNaQhH2WCg==
X-Received: by 2002:a1c:2c41:: with SMTP id s62mr4270696wms.8.1560872631849;
 Tue, 18 Jun 2019 08:43:51 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id z5sm2633287wma.36.2019.06.18.08.43.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 08:43:51 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lee.jones@linaro.org,
	matthias.bgg@gmail.com
Subject: [PATCH 2/2] mfd: mt6397: use DEFINE_RES_* helpers to define RTC
 resources
Date: Tue, 18 Jun 2019 17:43:47 +0200
Message-Id: <20190618154347.16991-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618154347.16991-1-fparent@baylibre.com>
References: <20190618154347.16991-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_084353_819337_7876F23A 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the DEFINE_RES_{MEM,IRQ} to define the RTC reosurce for the MT6397
PMIC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/mfd/mt6397-core.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 190ed86ad93e..1e315712870b 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -23,16 +23,8 @@
 #define MT6397_CID_CODE		0x97
 
 static const struct resource mt6397_rtc_resources[] = {
-	{
-		.start = MT6397_RTC_BASE,
-		.end   = MT6397_RTC_BASE + MT6397_RTC_SIZE,
-		.flags = IORESOURCE_MEM,
-	},
-	{
-		.start = MT6397_IRQ_RTC,
-		.end   = MT6397_IRQ_RTC,
-		.flags = IORESOURCE_IRQ,
-	},
+	DEFINE_RES_MEM(MT6397_RTC_BASE, MT6397_RTC_SIZE),
+	DEFINE_RES_IRQ(MT6397_IRQ_RTC),
 };
 
 static const struct resource mt6323_keys_resources[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
