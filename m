Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C892C801
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XN5edbx6mW87Mq3Coo/f5Grbh79ZN/4h9TmZCm+mBiU=; b=lPKs6ffRMtLWH+
	OhJZlxABe6wuvKROP70n+saTvxyxZRjv+m78iAO6qp6ZHmyYe7H+dnFwaNg6OZfWl2DHrojswwKMN
	LzbfcBtUY/eUJUpizEhNpZMrDYb4XXv9AkewHlFyvMjEI23jLBNBgxleRKXzpG41lMQYLBEZ2WUWf
	8PPP/w09oNbXtY5oxOOG8TvMH1mLSmU/eECnq5nbRmCYhLOlSOxJ6AGbKMONRljUAJOR9Lj9BRPSF
	1AcmQQYoA9PL7PZJMlfqFAj2076KiSrjzGCM4sgjBrM1+cOmrXQaaqQKiXN6JcbxH3wBcNcrKfac5
	gy753xjnvcw+Z4PxvVfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcOG-0002xs-Sf; Tue, 28 May 2019 13:43:44 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcOA-0002xP-HV
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:43:39 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 0A76DA471E72B15A4CE6;
 Tue, 28 May 2019 21:43:33 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Tue, 28 May 2019
 21:43:25 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <stern@rowland.harvard.edu>, <kgene@kernel.org>, <krzk@kernel.org>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH -next] usb: ohci-s3c2410: Remove set but not used variable
 'hcd'
Date: Tue, 28 May 2019 21:43:05 +0800
Message-ID: <20190528134305.10184-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_064338_810467_33D2B831 
X-CRM114-Status: UNSURE (   7.77  )
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
Cc: linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/usb/host/ohci-s3c2410.c: In function s3c2410_hcd_oc:
drivers/usb/host/ohci-s3c2410.c:296:18: warning: variable hcd set but not used [-Wunused-but-set-variable]

It is never used, so can be removed.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/usb/host/ohci-s3c2410.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/host/ohci-s3c2410.c b/drivers/usb/host/ohci-s3c2410.c
index 4511e27e9da8..d961097c90f0 100644
--- a/drivers/usb/host/ohci-s3c2410.c
+++ b/drivers/usb/host/ohci-s3c2410.c
@@ -293,7 +293,6 @@ static int ohci_s3c2410_hub_control(
 static void s3c2410_hcd_oc(struct s3c2410_hcd_info *info, int port_oc)
 {
 	struct s3c2410_hcd_port *port;
-	struct usb_hcd *hcd;
 	unsigned long flags;
 	int portno;
 
@@ -301,7 +300,6 @@ static void s3c2410_hcd_oc(struct s3c2410_hcd_info *info, int port_oc)
 		return;
 
 	port = &info->port[0];
-	hcd = info->hcd;
 
 	local_irq_save(flags);
 
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
