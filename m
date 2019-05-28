Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D662C810
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nOm6Qs6iO/izMFBvf4+7oxy/0RAJdLy4a63Gli5sc3U=; b=c+vAE5ozqu6sHv
	o6BwNZHyJVg+EMsv+f0rcc8mHBp2N0/yW9c0WgcDD55U9kLIhaPrxZojdzp0z+zCDKZl0QhMjLj/B
	AVjtqtShKjCEcjljWksORDgsWvbAhFjGpetD+NLYN3jcHWM3dfj3gfFkzloWQOo12Wyk31GHxXnNK
	DVWiGuevh4dElv4zib1P9/7S+PdtUauWsASGw968m57/bEHi1iU0kdWWYPMO6o25yGpbBg28oYrPt
	gc9BogjJ3v8W1EyUH2luSnd0/vmBEAVP0NRaXNROt0nwOnHJZVy2y6hVvshcx+XmHQ0R7MyvxM5pH
	NTKsu8H5GJCJH8OThPhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcQo-0004ne-SL; Tue, 28 May 2019 13:46:22 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcQg-0004n8-VC
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:46:17 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id AFBA132D07E88EBBD51B;
 Tue, 28 May 2019 21:46:09 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Tue, 28 May 2019
 21:46:01 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <patrice.chotard@st.com>, <stern@rowland.harvard.edu>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH -next] usb: host: ehci-st: Remove set but not used variable
 'ehci'
Date: Tue, 28 May 2019 21:45:29 +0800
Message-ID: <20190528134529.17612-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_064615_905624_6AB91E91 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
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

drivers/usb/host/ehci-st.c: In function st_ehci_platform_probe:
drivers/usb/host/ehci-st.c:155:19: warning: variable ehci set but not used [-Wunused-but-set-variable]

It is never used, so can be removed.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/usb/host/ehci-st.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/host/ehci-st.c b/drivers/usb/host/ehci-st.c
index dc42981047c9..ccb4e611001d 100644
--- a/drivers/usb/host/ehci-st.c
+++ b/drivers/usb/host/ehci-st.c
@@ -152,7 +152,6 @@ static int st_ehci_platform_probe(struct platform_device *dev)
 	struct resource *res_mem;
 	struct usb_ehci_pdata *pdata = &ehci_platform_defaults;
 	struct st_ehci_platform_priv *priv;
-	struct ehci_hcd *ehci;
 	int err, irq, clk = 0;
 
 	if (usb_disabled())
@@ -177,7 +176,6 @@ static int st_ehci_platform_probe(struct platform_device *dev)
 	platform_set_drvdata(dev, hcd);
 	dev->dev.platform_data = pdata;
 	priv = hcd_to_ehci_priv(hcd);
-	ehci = hcd_to_ehci(hcd);
 
 	priv->phy = devm_phy_get(&dev->dev, "usb");
 	if (IS_ERR(priv->phy)) {
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
