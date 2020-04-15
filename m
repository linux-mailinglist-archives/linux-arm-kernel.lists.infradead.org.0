Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248781AA926
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sL3T51VU6xaTJUK/7IK59ONdP5a8chtyxfjAMLzadVM=; b=LtO9DA+xJnNBMC
	Xay36+9uBtbVACGud8JVgHT3+Bt2K2X9TqFtwlGVAcVtddqOxXQu+/PT4z9O6ld9ZrTdh12oyQV3I
	8CdnAqvdsXDl9IhErPSYW7ItetSCmDff7ywK9Y9AnAlHrArswm7PWX478bmGnXcInFhrB0XcsM6X1
	IB8axBaKW3K6WdyTs0PuczG8jKUmyXuHdTU+sYPwXRjLsMY8KG5rKNLhQT+roy3KM2xx3cOTRT334
	tRo8svlhu6F9opQP0KSyHk+Pd/Qk4NDGjhfIscNnNQYYDJfzfk8wBGv2PB3eih4feH9Ye3obVVq3f
	af3tFfnIeAefeujOa2zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOiXG-0001l6-Ub; Wed, 15 Apr 2020 13:57:02 +0000
Received: from cmccmta2.chinamobile.com ([221.176.66.80])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOiX9-0001jw-12
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:56:57 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.13]) by
 rmmx-syy-dmz-app07-12007 (RichMail) with SMTP id 2ee75e9712678bf-6db46;
 Wed, 15 Apr 2020 21:55:51 +0800 (CST)
X-RM-TRANSID: 2ee75e9712678bf-6db46
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.3.208.246])
 by rmsmtp-syy-appsvr07-12007 (RichMail) with SMTP id 2ee75e971263816-b78f1;
 Wed, 15 Apr 2020 21:55:51 +0800 (CST)
X-RM-TRANSID: 2ee75e971263816-b78f1
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: wsa@the-dreams.de, o.rempel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 ardb@kernel.org
Subject: [PATCH] i2c: drivers: Omit superfluous error message in
 efm32_i2c_probe()
Date: Wed, 15 Apr 2020 21:57:34 +0800
Message-Id: <20200415135734.14660-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_065655_739230_2E17443C 
X-CRM114-Status: UNSURE (   6.88  )
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
 Tang Bin <tangbin@cmss.chinamobile.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the function efm32_i2c_probe(),when get irq failed,the function
platform_get_irq() logs an error message,so remove redundant message
here.

Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
---
 drivers/i2c/busses/i2c-efm32.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-efm32.c b/drivers/i2c/busses/i2c-efm32.c
index a8c6323e7..4de31fae7 100644
--- a/drivers/i2c/busses/i2c-efm32.c
+++ b/drivers/i2c/busses/i2c-efm32.c
@@ -352,7 +352,6 @@ static int efm32_i2c_probe(struct platform_device *pdev)
 
 	ret = platform_get_irq(pdev, 0);
 	if (ret <= 0) {
-		dev_err(&pdev->dev, "failed to get irq (%d)\n", ret);
 		if (!ret)
 			ret = -EINVAL;
 		return ret;
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
