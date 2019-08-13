Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6DD8BE62
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J1kBAxuVNvLwR3Ixv36weMHUzBNv/jSHQx/ode+cgvo=; b=HCyZdvg7wKmTRiKUlLJoAomc3m
	PCxu5irwgYs5Mln+J30dXflo9CSzkbmcw9SQ6x4L2kOeZHncMCHgB0UGQB+5wbos/zAAFSOjVr8RR
	TRVrxpYnrDQ5VkUo+CzWWcuLAa5Hj0jTGaibJbVeaOQ0E5xRW0lnlTUPhEU9PsGv1Zo0EBigNWX9o
	YobssYHwzrj7sLkwree+H+oLgcfyBFwLkQCLMAsNu2wEIX6U80wq72R3TfoxGTdUVFC27DYGwWMDb
	Og2BuhfEj+4+sYQPqKZ4HsWek5l8kEwzjb6D/E+CFXuBmqoGOtBdKYS0ywpr02IgZfwW0XebVtxwG
	UnkTpMNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZaR-0001xN-Us; Tue, 13 Aug 2019 16:23:52 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXn-0008Mz-LX; Tue, 13 Aug 2019 16:21:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713260;
 bh=Y5aGEI9G/hsaduQVg6mAPiwmIIHBg3hjSpNANdv++sg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=AEEPLeS20UcPjgOac3mgYrID9haAhFjV3cGIkOXHOX4NxWyTb9VWiNzHLU3/i7I5e
 G/RLON8Yi2iZ0x+jyWryAWYYWdOahJ0ryvlypMiySkmYaPSbQazF6Q2FarCZgI9Kgq
 ckXIrfsGQw+lILB247R7iUqI0RQVSgVKt/e65VIo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1N3bWr-1iNS51247n-010aN5; Tue, 13 Aug 2019 18:21:00 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 08/13] i2c: bcm2835: Avoid clk stretch quirk for BCM2711
Date: Tue, 13 Aug 2019 18:20:43 +0200
Message-Id: <1565713248-4906-9-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:Pnlk69KrwCk9LvgrYJTYiJBIKI8o4JVBFM4dQ0wgTfUJNXIHwvE
 sNswh1Zm0es1wlgCP4X/1hGtxTHDFRiyNKKKsNzjCe79bHc1596yEHIsObjFFgI63RWhgMi
 Ob+Xn89m0mUMcFifQTaP+brmvGmYUeHcThDn0CHmuJ7Tu+er+BM+WFDBMcNcGuggrkTPKa4
 jDtfu+lyZqFfNAfJcCI4A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MElBaoq2NOo=:NgQcO7MtpiaVPB+cYEBP4v
 +zQaSwTPLexJsZbZCFqVKXX4MFzR4yg1nqveO7UEo59M7zRIY4/Qn2Y4IEDrmNPRY9eTV5scB
 HtOvTa7bOkwai9Mt8g103rGzoRPv2GE1ZdDLSY9Q6ba7qRWFVHt2R5EzMlG+Q47YHCq0HN81Z
 oWL/VOgvAlM9Yqww4eT1TUxduRt8IKhJLc7uqxA3m7MMm6HqTKePBOHM6NoOnnXYLSqZi45Jd
 MyNTnH0NiIEf+LrOUK91Ec2Pqt7KzR534tbIXYOhZ84TTrruRNJuNDVDKp61JkCf1MH4Bi/tD
 8iqMyPVByOns1KBOauE5gKD8z/qSb/Y99+7JGcoFT2DiPks7vnE5ZofPyoPUUudLmL5kpYncj
 ghdwWZmPZuNk1eQ+wmTEULXvTj0T4pMXqxaEeCx/OCPq1n/1e75oirptZuChAXfqm7woIYD4+
 O200/efAFL79CtszzYo/pmVHrhCJQW41Ag9ukNXNb6soyQNCbzEWun9VnnJFWW8bj1MeD7MIt
 wilIC8R3ZjM6Vu/kVdhAYCaHszNAMhNTJnxvd7alY3llHvQ5mJtAyRuj78M/1SmMNB3VElFer
 oUamxL+vLUUswFtVT3fkpoOpTnzXfc8yVmnKPqgQTe8AMRYiw7tUJhZEImCj7NHrRmoL14NC1
 s6/58jPmjkMisoZ55C/yS5/SOrMTB8bIruWSpgGDYlfqseu+L//sy1PjdbdW/iO+HYj0QP/0x
 JMMr7SbbI+5nNP94Oq8P+k3DICT/h+ZhmYeH3ddmOZCdkLZvUJxE5GOLThg/Uc9edffEhRzqX
 ZfsmyeXZE4e1Ks/kMGqu0RVgcvt8k0C9JA4EJYnl+MufrnU28rRRaSuDyyeuGxZH+O5lX4uRN
 2HMhJv39uu00i3lY4R2EsdUXppMzvnH8fMjl9hbWJW/+p7F/Y7H1H0xMUQtbvznJ1oic98Mq0
 UiuigsDCL4fpgj6i3hpBgzKYS5Q0QRpPLp230mEujkscBoOLGuMR/F/Y5F51MI050KmHyyPbI
 YsAcLKB/WcRHq3t+Zrsaqd5Q7PIEg6yxC2xB7S/b2RlKpRdWE4MZMVc2YPIEAvVjZT27aIFwo
 jmZIAKyArntL7YVJUGy6prK24LZ14pW09xCvTVfTRWhDBidvCszKsCgTHXoJXoueb5wQyvjZy
 NXXyBl7CZL1tP/yDKz5xEu3T3EvlLmX0VqD3aUoldKdp3z6w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092108_009547_52616B30 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The I2C block on the BCM2711 isn't affected by the clock stretching bug.
So there is no need to apply the corresponding quirk.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/i2c/busses/i2c-bcm2835.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm2835.c
index 67752f7..340da70 100644
--- a/drivers/i2c/busses/i2c-bcm2835.c
+++ b/drivers/i2c/busses/i2c-bcm2835.c
@@ -12,6 +12,7 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/module.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>

@@ -50,6 +51,9 @@
 #define BCM2835_I2C_CDIV_MIN	0x0002
 #define BCM2835_I2C_CDIV_MAX	0xFFFE

+#define NO_STRETCH_BUG	false
+#define STRETCH_BUG	true
+
 struct bcm2835_i2c_dev {
 	struct device *dev;
 	void __iomem *regs;
@@ -389,7 +393,7 @@ static const struct i2c_algorithm bcm2835_i2c_algo = {
 };

 /*
- * This HW was reported to have problems with clock stretching:
+ * The BCM2835 was reported to have problems with clock stretching:
  * http://www.advamation.com/knowhow/raspberrypi/rpi-i2c-bug.html
  * https://www.raspberrypi.org/forums/viewtopic.php?p=146272
  */
@@ -406,6 +410,9 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	struct clk *bus_clk;
 	struct clk *mclk;
 	u32 bus_clk_rate;
+	bool clk_stretch_bug;
+
+	clk_stretch_bug = (bool)of_device_get_match_data(&pdev->dev);

 	i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
 	if (!i2c_dev)
@@ -475,7 +482,9 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	adap->algo = &bcm2835_i2c_algo;
 	adap->dev.parent = &pdev->dev;
 	adap->dev.of_node = pdev->dev.of_node;
-	adap->quirks = &bcm2835_i2c_quirks;
+
+	if (clk_stretch_bug)
+		adap->quirks = &bcm2835_i2c_quirks;

 	bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_C, 0);

@@ -501,7 +510,8 @@ static int bcm2835_i2c_remove(struct platform_device *pdev)
 }

 static const struct of_device_id bcm2835_i2c_of_match[] = {
-	{ .compatible = "brcm,bcm2835-i2c" },
+	{ .compatible = "brcm,bcm2711-i2c", .data = (void *)NO_STRETCH_BUG },
+	{ .compatible = "brcm,bcm2835-i2c", .data = (void *)STRETCH_BUG },
 	{},
 };
 MODULE_DEVICE_TABLE(of, bcm2835_i2c_of_match);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
