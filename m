Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6347B1259B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 03:51:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MDRaOXksICZqbjKf4nke9ZpoKJ45cRVCADWOVOKUn5Q=; b=Y03nxodm2tmOpA
	PkoMoCmt7W9Plmyqyawrl57jY8SHPVGz7OAJFletqjFHd7+/aW/tgKa6hezosQuolLqfD4a9XZhUV
	Nzlb+wnl7h9jn945SwcdaB8Y5Nw1YA5UL4nhA/sUoUwXry7AoOTUj/vSRq6FoDGTbpwFOghDjL1m5
	2i97BKIMFmVha/1uAlIAVeMSUqneCifVQRbHtUP7TD6924DHsCn2mTOye83IVk/OMcXqGItSOxwbv
	v97aZyxD5mLzdIiwfB+wGcEaCmnCHHPzzzKpIYXraDB+XP3IDn85Nn2mgzTUJ3TQKj6MCfjgnjbII
	YdyyLuQMWK0m1xixvnSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihlu1-0006Jd-7I; Thu, 19 Dec 2019 02:51:01 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihltj-00066U-Sd
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 02:50:45 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 86CAE7DB640449C6FB7B;
 Thu, 19 Dec 2019 10:50:31 +0800 (CST)
Received: from linux-lmwb.huawei.com (10.175.103.112) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.439.0; Thu, 19 Dec 2019 10:50:20 +0800
From: Ma Feng <mafeng.ma@huawei.com>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 "Gregory Clement" <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] pinctrl: armada-37xx: Remove unneeded semicolon
Date: Thu, 19 Dec 2019 10:51:05 +0800
Message-ID: <1576723865-111331-1-git-send-email-mafeng.ma@huawei.com>
X-Mailer: git-send-email 2.6.2
MIME-Version: 1.0
X-Originating-IP: [10.175.103.112]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_185044_144845_52EC2BB7 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-gpio@vger.kernel.org, Ma Feng <mafeng.ma@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes coccicheck warning:

drivers/pinctrl/mvebu/pinctrl-armada-37xx.c:736:2-3: Unneeded semicolon
drivers/pinctrl/mvebu/pinctrl-armada-37xx.c:803:2-3: Unneeded semicolon

Fixes: commit 5715092a458c ("pinctrl: armada-37xx: Add gpio support")
       commit 2f227605394b ("pinctrl: armada-37xx: Add irqchip support")

Signed-off-by: Ma Feng <mafeng.ma@huawei.com>
---
 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
index aa9dcde..9f0b3d3 100644
--- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
+++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
@@ -733,7 +733,7 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
 			ret = 0;
 			break;
 		}
-	};
+	}
 	if (ret) {
 		dev_err(dev, "no gpio-controller child node\n");
 		return ret;
@@ -800,7 +800,7 @@ static int armada_37xx_gpiochip_register(struct platform_device *pdev,
 			ret = 0;
 			break;
 		}
-	};
+	}
 	if (ret)
 		return ret;

--
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
