Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5264312F4BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 07:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/yZlPdaoyfpCNMafjDL/veuPav8Kkp/Am3M50N/jnc=; b=Hhzu9M0X1NSYDg
	A4XbkVtcIKcVm5Ws2/VeE+xBP+XBDXZNk00SP0ncz5p70rsd3yHRVzfpqn0tXTii4QiMqPbHIyTC6
	dZj9P5MlGW0BXYUcItI19n2MJsDl0VbbcnOdGUNsLprk1aPuwoqHto6diSNyhPb480/9uGAJCGdAn
	Sef1TEn9MEK/rSoCBROt9Vv4LftZdZVv+W4lOgTFnwZ+lsAzU1XNoT3Pj7lDm6UP6FC9pHe2z4ij8
	/4YOE14IpoOsKhZLE1JF51iGSURlYEHmZB3h6hWo7fYB2Kp+rP84xGO1gJ5omdU8wiqYhLRKeg+4Q
	K9XClyY5BsoQ0Wdnqv1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inGpW-0000kH-7G; Fri, 03 Jan 2020 06:53:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inGp2-0000TV-Gs; Fri, 03 Jan 2020 06:52:37 +0000
X-UUID: 874c4227f42343d9a52cbfcbdf4bf073-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=FE462U/yopJ3BNO0jebkD0APHnH82gaCpc77ElLllkg=; 
 b=UoyMXnk1El36xUJwm3UZ02jxJ9gYKJjIebfu2D7m6eyJWvpu6A00QLJipkwB9XBxMHAssXocKxG3g3zvDBjgSbUS5x/U6XRqt9EU5aqwG8c2V+I1NloWpCx9i18ovLbeWaVsKXRWs2+klPPqTy95OJuW/EbK/VZ6+oMozrb74Bs=;
X-UUID: 874c4227f42343d9a52cbfcbdf4bf073-20200102
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1911769807; Thu, 02 Jan 2020 22:52:32 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 22:44:15 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Jan 2020 14:43:40 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 3 Jan 2020 14:44:09 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>
Subject: [PATCH v3,6/8] thermal: mediatek: mt8183: fix bank number settings
Date: Fri, 3 Jan 2020 14:44:05 +0800
Message-ID: <20200103064407.19861-7-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200103064407.19861-1-michael.kao@mediatek.com>
References: <20200103064407.19861-1-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_225236_562457_6DFD2D14 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Michael Kao <michael.kao@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MT8183_NUM_ZONES should be set to 1
because MT8183 doesn't have multiple banks.

Fixes: a4ffe6b52d27 ("thermal: mediatek: add support for MT8183")
Signed-off-by: Michael Kao <michael.kao@mediatek.com>
---
 drivers/thermal/mtk_thermal.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index acf4854cbb8b..d6fabd0a7da6 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -211,6 +211,9 @@ enum {
 /* The total number of temperature sensors in the MT8183 */
 #define MT8183_NUM_SENSORS	6
 
+/* The number of banks in the MT8183 */
+#define MT8183_NUM_ZONES               1
+
 /* The number of sensing points per bank */
 #define MT8183_NUM_SENSORS_PER_ZONE	 6
 
@@ -498,7 +501,7 @@ static const struct mtk_thermal_data mt7622_thermal_data = {
 
 static const struct mtk_thermal_data mt8183_thermal_data = {
 	.auxadc_channel = MT8183_TEMP_AUXADC_CHANNEL,
-	.num_banks = MT8183_NUM_SENSORS_PER_ZONE,
+	.num_banks = MT8183_NUM_ZONES,
 	.num_sensors = MT8183_NUM_SENSORS,
 	.vts_index = mt8183_vts_index,
 	.cali_val = MT8183_CALIBRATION,
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
