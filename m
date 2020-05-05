Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC9C1C5D9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d63sIW4U+eqNj+PG2Eucoyse1AHNV8XaWojRAewxj5s=; b=O3ZKbLfyxLBBSS
	gAfdzPYzepa55B/3h9+FdlKYTvi2KDnxY15lH0scC2DUPZKCy51/PSqKIeEcGXxhsfpZFNz+WqkNV
	Nlefl4byEg4WwtzM0WX/zJYrfv364PGgrbOkO+a4OcF7C2bXH8rOqfcKEkOP93zyHTm212aYeKsBy
	W0tZkJIzqvyz9n1rs/J/PaoFevUkYoX1XRSGhZvQN57BDoKpuG2gJHqWEahnbJESsQemiHYsGAxMG
	Kf8DyieEJCG1BAQ/G9+ZMYLK+QbP8+fvHg3H/67WIEYcd0m3TRJnJGxacMsRvw2uD5qF6us4mBoEe
	5U4HV3FSAy89Yv8LHkMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0Tr-0002HL-BR; Tue, 05 May 2020 16:31:39 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0Tk-0002GS-51
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:31:33 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 045GVTWB119652;
 Tue, 5 May 2020 11:31:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588696289;
 bh=taYNfOw1PERNYYRNSf6RpqbmydDX/ba8q0uroLuaJ+A=;
 h=From:To:CC:Subject:Date;
 b=ACdEEFfLuoAHZtJh1cM1BSIgKLA4wfntKTjCv8fjI981M1UVDFnq7Jd3xPxJaUJbO
 /1HomyBWx+8qMr/AWy6mX4CuhHmQcbf3+PFGG/xG8yP+3mRTHLP7+IiGIve870t3I1
 GPZZI1tdE/va7R9+D8/23qGvKKIT+S5JH5+T98Ig=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 045GVTDq045409
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 May 2020 11:31:29 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 May
 2020 11:31:29 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 May 2020 11:31:29 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045GVRfw048550;
 Tue, 5 May 2020 11:31:28 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH] net: ethernet: ti: am65-cpsw-nuss: fix irqs type
Date: Tue, 5 May 2020 19:31:26 +0300
Message-ID: <20200505163126.13942-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_093132_270228_30A10605 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The K3 INTA driver, which is source TX/RX IRQs for CPSW NUSS, defines IRQs
triggering type as EDGE by default, but triggering type for CPSW NUSS TX/RX
IRQs has to be LEVEL as the EDGE triggering type may cause unnecessary IRQs
triggering and NAPI scheduling for empty queues. It was discovered with
RT-kernel.

Fix it by explicitly specifying CPSW NUSS TX/RX IRQ type as
IRQF_TRIGGER_HIGH.

Fixes: 93a76530316a ("net: ethernet: ti: introduce am65x/j721e gigabit eth subsystem driver")
Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/net/ethernet/ti/am65-cpsw-nuss.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index 2bf56733ba94..2517ffba8178 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -1719,7 +1719,8 @@ static int am65_cpsw_nuss_ndev_add_napi_2g(struct am65_cpsw_common *common)
 
 		ret = devm_request_irq(dev, tx_chn->irq,
 				       am65_cpsw_nuss_tx_irq,
-				       0, tx_chn->tx_chn_name, tx_chn);
+				       IRQF_TRIGGER_HIGH,
+				       tx_chn->tx_chn_name, tx_chn);
 		if (ret) {
 			dev_err(dev, "failure requesting tx%u irq %u, %d\n",
 				tx_chn->id, tx_chn->irq, ret);
@@ -1744,7 +1745,7 @@ static int am65_cpsw_nuss_ndev_reg_2g(struct am65_cpsw_common *common)
 
 	ret = devm_request_irq(dev, common->rx_chns.irq,
 			       am65_cpsw_nuss_rx_irq,
-			       0, dev_name(dev), common);
+			       IRQF_TRIGGER_HIGH, dev_name(dev), common);
 	if (ret) {
 		dev_err(dev, "failure requesting rx irq %u, %d\n",
 			common->rx_chns.irq, ret);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
