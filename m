Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E540143AE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:24:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XnhgUwsofAGUmsrI0usS+hlDJ7JGRyXdjvdXNOrfm+8=; b=fWx1YNL9wRKZ18
	QF9XGfK4uZwtHKQ7maMOiqX8bs5m0r/72QnLDfWHnZr8XfGBf+j63PhoD+hTXcisFo3KVGIgkrx1V
	JsfZusxTmfqAD+WgrXa8GWwhle0GXWqq2CRU2Lf+IlztGUHEEh0KjT6iLwABiJUzGhNVgS0xMKVWd
	A4UXBNHk+RSe1G0CQXYgL3soZDZwM/jav+ifn3UceKNcj1F74ePvxvo9FJNFPVfJubiujeIbK8Of1
	8dDf6fz2PilNIxTvueWiTlw1ZIf8wGOLd2P3O9070ixLDanNOA+QIa4bZBN0soiQT1iDCRqHpVNy/
	qSm3RKno5HvqXQV7qirA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqhw-0003Wb-Jq; Tue, 21 Jan 2020 10:24:28 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqhg-0003S7-6t
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:24:13 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00LANZwU018454; Tue, 21 Jan 2020 11:24:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=pI7AA/Y71uPaqPIJ2pPaaj7cAY0VgViFKDQM2Xpcc1k=;
 b=CiUaDZU4k7zp94wz705BhuSlfRLEp2QM2zhKnKrTogvJGrh5BkF0g98tcECrCnUQoKXg
 n+a38j1ooP1+JMOXMq+DMH3BCRWBP/pqO8dYvr7Sf0t/FFhJHa8tShfgWTiiSrqs6K8e
 XfDJa33JAH+DlNRBwgxCCLuGvMiYllHevBVHWTDHJn7jxuy9oPwvkmEck84VsD77WFpZ
 wcB0ftzbWvbQ+QL8z826tsOlXDP0NOr2NvjSrIwyXBvsfquG1H8p2auONvgLYupu6S+0
 g4mmzqCdf9bx4n0cKpz0BjhIeMT415jkJDXYRauDNUee4SCXNJBdUsJZMsiAX9KrOlEZ Mg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkssnwsjp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Jan 2020 11:24:08 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C8F7D10003D;
 Tue, 21 Jan 2020 11:24:06 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BA1F52B1874;
 Tue, 21 Jan 2020 11:24:06 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 21 Jan 2020 11:24:06 +0100
From: Yannick Fertre <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm/stm: dsi: stm mipi dsi doesn't print error on probe
 deferral
Date: Tue, 21 Jan 2020 11:24:05 +0100
Message-ID: <1579602245-7577-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-21_02:2020-01-21,
 2020-01-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_022412_539095_BB1DABE0 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

From: Etienne Carriere <etienne.carriere@st.com>

Change DSI driver to not print an error trace when probe
is deferred for a clock resource.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
---
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
index 4b16563..2e1f266 100644
--- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
+++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
@@ -377,7 +377,9 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 	dsi->pllref_clk = devm_clk_get(dev, "ref");
 	if (IS_ERR(dsi->pllref_clk)) {
 		ret = PTR_ERR(dsi->pllref_clk);
-		DRM_ERROR("Unable to get pll reference clock: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			DRM_ERROR("Unable to get pll reference clock: %d\n",
+				  ret);
 		goto err_clk_get;
 	}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
