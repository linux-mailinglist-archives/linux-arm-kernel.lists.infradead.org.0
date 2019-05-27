Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5A02B3C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ShDDqtzMc79HXO0UL0FzeyY/LsEfN8EZgmKe4ANbAd8=; b=dG0kUtogbFWHuI
	glHvK2IY2ibeGE3R3NhQ6T8g078mkVRr9/yiS8DlNhkEuJoqqlJfeuXf3jMISKZXiNXx/NMZTahRk
	fWI5ZqYYermsUDGBW+O36oQS2Jpc7+SSStOE0ICcHpo0B3Ow4kV+TmCPT51ISmsfkpwBmtYRby2Vw
	qUNg+SteKbNF5eWmEILulUOyT0LOc/4kUCU6xnfkdCXHY6CV5LobuNR2hpVD1sjm0KXRzUbUl946W
	8SqNav9BTL7WQ6HGgvwdZFmzZQkePumcDBr7TVndgVn3NNi7sZC4xlpD94b0ABvamxmkq+toxWo6H
	YHOvieOiLJ8gS6X3x7wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEHG-0001Yu-MS; Mon, 27 May 2019 11:58:54 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEH8-0001Y0-6C
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:58:47 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4RBqHta004118; Mon, 27 May 2019 13:58:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=CHNiLECO7COJeJykJENYiJJ3vrh3cyTCAguGAsVnNK8=;
 b=tg2zDJoONVSJEtDceghChtbL1O2vw81Tyd4NdODekOXiJzVpk2S/HtQ51BLR+lPFK8W8
 1yEOdH+MMu7kjaFpNVrBCOonUMEH6uS1ZeLgYr2keJZlGnKfR530U17kWDkTRAgkfw7t
 i0YsN4zStVhAbPiDFefzLknaw3G1DbBwxiS/OetzihCaIraCIpmMwlvrZ07HkrdhKn/N
 uU26gPuiccaXbcCRq/+xxq152uiZYl63BJtp7ShiUtErfPXC7SIQ2gtegYyxmUL4bg5R
 HmYYjXp06iCTa5NzTp0+1bnjZ9aJWEJLgkf+PodDjij2fyY0S5NnhR9Y8CVLmbsFaN+j 6A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sptu9k0sp-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 27 May 2019 13:58:37 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4E78138;
 Mon, 27 May 2019 11:58:35 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2CF622A01;
 Mon, 27 May 2019 11:58:35 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 27 May
 2019 13:58:34 +0200
Received: from localhost (10.201.20.122) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 27 May 2019 13:58:34
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <yannick.fertre@st.com>, <philippe.cornu@st.com>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <alexandre.torgue@st.com>
Subject: [PATCH] drm/stm: ltdc: restore calls to clk_{enable/disable}
Date: Mon, 27 May 2019 13:58:30 +0200
Message-ID: <20190527115830.15836-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-27_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_045846_556340_753D7AA8 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Benjamin Gaignard <benjamin.gaignard@linaro.org>

Restore calls to clk_{enable/disable} deleted after applying the wrong
version of the patch

Fixes: fd6905fca4f0 ("drm/stm: ltdc: remove clk_round_rate comment")

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
---
 drivers/gpu/drm/stm/ltdc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/stm/ltdc.c b/drivers/gpu/drm/stm/ltdc.c
index ae2aaf2a62ee..ac29890edeb6 100644
--- a/drivers/gpu/drm/stm/ltdc.c
+++ b/drivers/gpu/drm/stm/ltdc.c
@@ -507,10 +507,12 @@ static bool ltdc_crtc_mode_fixup(struct drm_crtc *crtc,
 	struct ltdc_device *ldev = crtc_to_ltdc(crtc);
 	int rate = mode->clock * 1000;
 
+	clk_disable(ldev->pixel_clk);
 	if (clk_set_rate(ldev->pixel_clk, rate) < 0) {
 		DRM_ERROR("Cannot set rate (%dHz) for pixel clk\n", rate);
 		return false;
 	}
+	clk_enable(ldev->pixel_clk);
 
 	adjusted_mode->clock = clk_get_rate(ldev->pixel_clk) / 1000;
 
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
