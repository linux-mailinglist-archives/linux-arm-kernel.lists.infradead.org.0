Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BAEB0ABC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 10:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OzgGOKRUD6dPHNYVtRHatP6YXdkaukeINAUX9GrMSWc=; b=Drb3t/EOP9//rX
	J5tvwCHytyUc39prNg6bTVHS5DoMiUEbgfSvm543CN3Fnyv4b2CPRvTwEUdVLtlCAOHmYhT6w5Dde
	RTOUU2iGa1huw4iHjHKHP0EkarOKGlTAOzNGN5DNC8v9m3IcZBAjeQbvcOVcJNRCPoA6uZ2Z20pb5
	PmDrNEX0EeRtd7ZvLlnG9+vntzFZ/q/c7bP/a4ldQcWJjj8F0zM3F7uZrLTuU6HQWuT4bypjofyJz
	VFFQv6acii5fib8ZuOpU2Z3Yu2VuZU395vJEINfSTQjPc7puczBZydSlpIK/pBUy09HQmAQdNaVSs
	/U+DdiQmvMiic8xckCcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Kum-0001GI-Oh; Thu, 12 Sep 2019 08:57:20 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Kua-0001Fs-O0
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 08:57:12 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8C8u6xt002413; Thu, 12 Sep 2019 10:56:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=hC/Ep7sILGc8IpTJGW+E2kTEYIt84RL/dPIXG9oXwF0=;
 b=DxjeenHlDwZIXSKz4Z4Cj9H1cpx4vn5MQKPwyPNsHrltd/aGq+o1yO8tGnckqJRC1rQT
 TTPOBEn7Xm3/pY0nTQv62iCWyOKOPdXagbxmaGYUTGLFXVJRr9J745Yf0T8YzhMgvxIj
 Egqir2G8pxnZajnCAKontJPhtgQ3bODtPj0En19MSxqkZnR62OROnca6RjLlA+wST1Kv
 0+UXJgXGPswnPexcPT76AarTnogHSI0AsJoVVCIZICvYkoaPww4Pbdl2oNvga7B66J5P
 5HaDRbiCk1h77MaWfvXvtIl9nPZnpZLMtIg/C1rvoSeOq5j8JYibDjDUguNOPx5DkzdF YA== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uv2awg4hb-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 12 Sep 2019 10:56:57 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id C5C2A53;
 Thu, 12 Sep 2019 08:56:46 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D1BA12B841B;
 Thu, 12 Sep 2019 10:56:45 +0200 (CEST)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 12 Sep
 2019 10:56:45 +0200
Received: from localhost (10.201.23.97) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 12 Sep 2019 10:56:45
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm/stm: dsi: higher pll out only in video burst mode
Date: Thu, 12 Sep 2019 10:56:29 +0200
Message-ID: <1568278589-20400-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-12_04:2019-09-11,2019-09-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_015709_154647_CE168A36 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to better support video non-burst modes,
the +20% on pll out is added only in burst mode.

Signed-off-by: Philippe Cornu <philippe.cornu@st.com>
Reviewed-by: Yannick FERTRE <yannick.fertre@st.com>
---
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
index a03a642..514efef 100644
--- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
+++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
@@ -260,8 +260,11 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
 	/* Compute requested pll out */
 	bpp = mipi_dsi_pixel_format_to_bpp(format);
 	pll_out_khz = mode->clock * bpp / lanes;
+
 	/* Add 20% to pll out to be higher than pixel bw (burst mode only) */
-	pll_out_khz = (pll_out_khz * 12) / 10;
+	if (mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
+		pll_out_khz = (pll_out_khz * 12) / 10;
+
 	if (pll_out_khz > dsi->lane_max_kbps) {
 		pll_out_khz = dsi->lane_max_kbps;
 		DRM_WARN("Warning max phy mbps is used\n");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
