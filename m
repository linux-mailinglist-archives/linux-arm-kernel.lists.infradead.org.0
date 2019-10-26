Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32316E5A7A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 14:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZFnp6tpV/d6yz+sHYjZ+vWOPvnv7iKvYuYeTh4MukPk=; b=S+N
	mptkemmX0iIrJRaWW/iSkTNa4cCgdqD0vySohXbL+UbXokWi+CU3BP1GAmTksCyzzou2y6oZPnX7c
	qwk8A2gnLK+Dkk7zbwSbjobqjM4VbXJRfSBaC9zrPIjAIN8z5lxud7P9izhu9majvmPsEUr8YOmpa
	DKSbxGhMY4oG+J48KfqmKKrlb7XbfaIn6GW5g/kgxh5y5IxC4c8yhg6gN6WV9OPy9yKnbAMyxIBsr
	892A2qHPL1ONtb5MjUhao12Kqpao8uAQPIBC8S51bAv5fwUk4PnbPZhJgR3ZETGyihm1UR6k/oghK
	hth16YFILVUUOP3wWgurnWpRHc9s/SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOLIF-0002Ba-Mq; Sat, 26 Oct 2019 12:35:43 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOLI6-0002B4-HO
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 12:35:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572093321;
 bh=1yugpwhKUCxitXlaCY5TBfzLToSRP5Lt2gahS402j5E=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=NXRWMy9C8l2xBGav8dQCTGmlq4IMvaDNwVahHjRE4SfVpUHgS2gt572fNwIObB5YB
 MvfNBKdvlDCGnhwhpMTVHH0S87ugIMmiqGjUhDITQGGiv/oGXb0XYGIKJt5cUzmhv2
 CuteKqgHbtOx0z1hj1VnVq/bvs5SdMpoa2AZzW0s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MSt8W-1iYodS3KXu-00UHkD; Sat, 26 Oct 2019 14:35:20 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>
Subject: [PATCH RFC] i2c: bcm2835: Store pointer to bus clock
Date: Sat, 26 Oct 2019 14:34:48 +0200
Message-Id: <1572093288-6223-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:fuPkfYs+IgimCcjJxA2bu5hUW+PGe+bszuHRigTxQcYcHsnx4qu
 WY/W/9h8LyCnYtr+aV4OJBP2GqLEKaTYZpgD3E5JorEOiocZ3LkjJErLI7SUHrEe2kditsv
 26IaMtYV5+uCttWQJbyxaxFBIzHRBdrQ6ty/VH8xRvGGgVL9M21boyK+3Zs5GlksStCUiqS
 f6X/MkcHQ9TeDSgJ5agcA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SVrXd/hEQTM=:6uBuqbn9rZfl2NXWZnL0s9
 8MOiHyjL6MWotrGIV4cmFcBrtUesAc3UzzLivKhJ4UEKX3N0xVjpRLl29nZTDPKTdWxatueh5
 3Xi1raAl6R4iH9LAYM9RN/AWDz15i3Fbjvktx8HSlEhiqv+auc4+0/E+qmZcIIV5Q/lPMo5Tf
 n+DuByLxfk1QrBe7z7ewHzdUHJBj+3fKVo//pjZfVIrB8jlDza75qUKKtIFMTZoLeTf/RObqG
 Uj7swI3OE/dkN8Ezo7PUHnIxuHcummiTNkEn2hcJHqNkudcFDDqjd6JwPsLzpMi5XdkcaEn2Q
 RC1v86c2H943+K+ukn673LZBLlY4oCBX+SleajAvgcHX1p5pVgSKa7wIWkdm4bYcoyvhNy2D0
 L2SRO+CRGafpW+WvmWVmn2h/Xmyd4ci7LsBd4Sx63ATcExGTXKDly0rE0HJu3VfPp1EKQtnoI
 ytAxVU/AA2cYfQuqBuksXqupUUuIzOrszkwsN2OZs96rPeEWy0IBqmfLKrdVZJmF3C9YgLncw
 1bq5BBqTeWQJR5cY9ut0h0WhZvMg68v6CKxBthaiKaPdPVRZ7wvfgEekLvGokWUO5k+kNLppF
 QGAiEW87Uaz8cMJFMV2LtXdOTz/hFGeRdjKuZ8QlhA74RQNEMsslI15r5BbT8rf1UuC+p4qrA
 +mvzHqc5bISHyfP+0qJyvCEfI697EQkLmWmhxvcAHjPq0+QdHZugOzSctYxgYUAAGHpRX3CfH
 xOC5oEv+4/DNGv8AFgUogkNghQFWMVDPAdwMu/L544GmGjuiW4LHEU8M2F5KpYB0naMYb/fTp
 Ybklb72T1yDdl/j7hnm1xN9kad7W2qmQr5/TV3SiMIa8mqqPOBqOUtbr8eCQRS6n/X+CfJnY0
 H76VuwYwmbJsZs/++VbgZK/2kR0x3+7U21opJKqPlqoMF/c1n5NMieorjcYbSpIiKNxGTP9fk
 ZHSf9CIf73KgtjQzm2Y8PAUwFNzJb08mhusBuidI4MOkqO9w6e4avJT58pJkVV8VvbwS5jgCY
 N2IEz02dF4EE4oDeIQgyy/FcbG6moRdsGhgCaD6iXwhTEm1M4rbKABMFm/ZusDwqu0HnDzJY5
 66sAZ4DviXfPrJK6jxkPtcyIM0jK4M4kU3CkZMeRYXc9dsN/eomW1CUfzeU+5XB8fMZJcZdp4
 sUhOG71ev0nG9Cx+16Ts0VHP72cwAmC55ybaWoIwxRyBsjOZsYK0q1CxwkRaXsQoPkMdgRM7n
 JD1F4vWjc3B0qNcw+o6/nr+wlBtyhblb4wPIEaQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_053534_908364_F8A43661 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Annaliese McDermond <nh6z@nh6z.net>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit bebff81fb8b9 ("i2c: bcm2835: Model Divider in CCF") introduced
a NULL pointer dereference on driver unload. It seems that we can't fetch
the bus clock via devm_clk_get in bcm2835_i2c_remove. As an alternative
approach store a pointer to the bus clock in the private driver structure.

Fixes: bebff81fb8b9 ("i2c: bcm2835: Model Divider in CCF")
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/i2c/busses/i2c-bcm2835.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm2835.c
index e01b2b5..5ab901a 100644
--- a/drivers/i2c/busses/i2c-bcm2835.c
+++ b/drivers/i2c/busses/i2c-bcm2835.c
@@ -58,6 +58,7 @@ struct bcm2835_i2c_dev {
 	struct i2c_adapter adapter;
 	struct completion completion;
 	struct i2c_msg *curr_msg;
+	struct clk *bus_clk;
 	int num_msgs;
 	u32 msg_err;
 	u8 *msg_buf;
@@ -404,7 +405,6 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	struct resource *mem, *irq;
 	int ret;
 	struct i2c_adapter *adap;
-	struct clk *bus_clk;
 	struct clk *mclk;
 	u32 bus_clk_rate;

@@ -427,11 +427,11 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 		return PTR_ERR(mclk);
 	}

-	bus_clk = bcm2835_i2c_register_div(&pdev->dev, mclk, i2c_dev);
+	i2c_dev->bus_clk = bcm2835_i2c_register_div(&pdev->dev, mclk, i2c_dev);

-	if (IS_ERR(bus_clk)) {
+	if (IS_ERR(i2c_dev->bus_clk)) {
 		dev_err(&pdev->dev, "Could not register clock\n");
-		return PTR_ERR(bus_clk);
+		return PTR_ERR(i2c_dev->bus_clk);
 	}

 	ret = of_property_read_u32(pdev->dev.of_node, "clock-frequency",
@@ -442,13 +442,13 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 		bus_clk_rate = 100000;
 	}

-	ret = clk_set_rate_exclusive(bus_clk, bus_clk_rate);
+	ret = clk_set_rate_exclusive(i2c_dev->bus_clk, bus_clk_rate);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "Could not set clock frequency\n");
 		return ret;
 	}

-	ret = clk_prepare_enable(bus_clk);
+	ret = clk_prepare_enable(i2c_dev->bus_clk);
 	if (ret) {
 		dev_err(&pdev->dev, "Couldn't prepare clock");
 		return ret;
@@ -491,10 +491,9 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 static int bcm2835_i2c_remove(struct platform_device *pdev)
 {
 	struct bcm2835_i2c_dev *i2c_dev = platform_get_drvdata(pdev);
-	struct clk *bus_clk = devm_clk_get(i2c_dev->dev, "div");

-	clk_rate_exclusive_put(bus_clk);
-	clk_disable_unprepare(bus_clk);
+	clk_rate_exclusive_put(i2c_dev->bus_clk);
+	clk_disable_unprepare(i2c_dev->bus_clk);

 	free_irq(i2c_dev->irq, i2c_dev);
 	i2c_del_adapter(&i2c_dev->adapter);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
