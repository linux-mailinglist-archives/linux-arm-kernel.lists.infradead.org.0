Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC7B1AF824
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 09:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KOFsxsFyirYnVSV8AngLFzg95NGJlIPx7GvXLpk3Uag=; b=tqZUIvIDWDemxb
	933sugKaC2D5CWuFd37K9iOGtyMxvv38VE9GHwcviRH3j2vLxB45MBC0RDEFje4frEmN38IFridg4
	lT3ajulLty87U6AFAJkqNe54aMxuJ/LB4LHrDhlm5HLqAXB1tyoLyHiRP3mebYS1VX+QeKwLiPz5f
	7Xf9ZVlk2IHH7QfY5GrrPP8kgUxapAZ1KvzXomjXbQbmD10fz7QxhRRS9Y1aKLafL/CT6BEFzA6D3
	yW1+Fj+TJGOXcnA0nOCrN/xGB27UDy7GAKOWdH0VRfZ5v/5qDhD5gG9w3qwxMNvhb6uhJbG4ERHx/
	AT4V92DtIHoirxENFc6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ40d-0002wh-9V; Sun, 19 Apr 2020 07:04:55 +0000
Received: from cmccmta2.chinamobile.com ([221.176.66.80])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ40V-0002vG-OF
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 07:04:50 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.7]) by
 rmmx-syy-dmz-app06-12006 (RichMail) with SMTP id 2ee65e9bf7d9d85-b7e2b;
 Sun, 19 Apr 2020 15:03:55 +0800 (CST)
X-RM-TRANSID: 2ee65e9bf7d9d85-b7e2b
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.1.172.61])
 by rmsmtp-syy-appsvr04-12004 (RichMail) with SMTP id 2ee45e9bf7d8382-b3824;
 Sun, 19 Apr 2020 15:03:55 +0800 (CST)
X-RM-TRANSID: 2ee45e9bf7d8382-b3824
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: kgene@kernel.org,
	krzk@kernel.org,
	linux@armlinux.org.uk
Subject: [PATCH] ARM: samsung: Omit superfluous error message in
 s3c_adc_probe()
Date: Sun, 19 Apr 2020 15:05:41 +0800
Message-Id: <20200419070541.14820-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_000448_281912_3A838D99 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Shengju Zhang <zhangshengju@cmss.chinamobile.com>,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the function s3c_adc_probe(), when get irq failed,
the function platform_get_irq() logs an error message,
so remove redundant message here.

Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
---
 arch/arm/plat-samsung/adc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/plat-samsung/adc.c b/arch/arm/plat-samsung/adc.c
index 4f7b27239..839bf7d5f 100644
--- a/arch/arm/plat-samsung/adc.c
+++ b/arch/arm/plat-samsung/adc.c
@@ -354,10 +354,8 @@ static int s3c_adc_probe(struct platform_device *pdev)
 	}
 
 	adc->irq = platform_get_irq(pdev, 1);
-	if (adc->irq <= 0) {
-		dev_err(dev, "failed to get adc irq\n");
+	if (adc->irq <= 0)
 		return -ENOENT;
-	}
 
 	ret = devm_request_irq(dev, adc->irq, s3c_adc_irq, 0, dev_name(dev),
 				adc);
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
