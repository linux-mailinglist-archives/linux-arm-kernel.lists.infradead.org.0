Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 442652C7F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G1kL/7mULhB971pZE5i4hba6WjiaajylemgPHOVf6+I=; b=b68xMfwU8rck4Y
	IYhDP7Pccjq5/AlMq/xyiYWRdpCviRpw9zimvI2fB2pUsnSBkqAAjHyh2USjz7yXya4YfyPez7TxU
	CkA8bG0vpVm76k0B1lJL3aVbZit+4NEl81s3QP8U1ejPaUtiGtFwXnJE1GMJLQgK3uSKVg/b9Q2Vc
	IGxSOTJ0UdTveXJvbjYzjtxzes06+MAnO7iZEu9i/VsiRwzKBt0/seKX++IC9u8oERVsEW4mMiH3p
	TfeWPvIZSUdJnRtuPQ5KiMvAluyGulflE2xRfLYF/3gpcYTg2uW8CB0ckYvRVuFxkcKefoxQeY07I
	e9ZI9CEyTSc+rehYPlew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcLQ-0002ci-HW; Tue, 28 May 2019 13:40:48 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcLK-0002cL-2a
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:40:43 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E02D0BC582C82B9B2D32;
 Tue, 28 May 2019 21:40:36 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Tue, 28 May 2019
 21:40:30 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <patrice.chotard@st.com>, <stern@rowland.harvard.edu>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH -next] usb: host: ohci-st: Remove set but not used variable
 'ohci'
Date: Tue, 28 May 2019 21:38:49 +0800
Message-ID: <20190528133849.22156-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_064042_353942_FC4887ED 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-usb@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/usb/host/ohci-st.c: In function st_ohci_platform_probe:
drivers/usb/host/ohci-st.c:135:19: warning: variable ohci set but not used [-Wunused-but-set-variable]

It's never used, so can be removed.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/usb/host/ohci-st.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/host/ohci-st.c b/drivers/usb/host/ohci-st.c
index 992807c9850a..638a92bd2cdc 100644
--- a/drivers/usb/host/ohci-st.c
+++ b/drivers/usb/host/ohci-st.c
@@ -132,7 +132,6 @@ static int st_ohci_platform_probe(struct platform_device *dev)
 	struct resource *res_mem;
 	struct usb_ohci_pdata *pdata = &ohci_platform_defaults;
 	struct st_ohci_platform_priv *priv;
-	struct ohci_hcd *ohci;
 	int err, irq, clk = 0;
 
 	if (usb_disabled())
@@ -158,7 +157,6 @@ static int st_ohci_platform_probe(struct platform_device *dev)
 	platform_set_drvdata(dev, hcd);
 	dev->dev.platform_data = pdata;
 	priv = hcd_to_ohci_priv(hcd);
-	ohci = hcd_to_ohci(hcd);
 
 	priv->phy = devm_phy_get(&dev->dev, "usb");
 	if (IS_ERR(priv->phy)) {
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
