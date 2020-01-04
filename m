Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A07E81302ED
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 16:14:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZFnp6tpV/d6yz+sHYjZ+vWOPvnv7iKvYuYeTh4MukPk=; b=IAU
	HW+41wVFdhNndgj3PxY28nJNQNk2ZnfcZ79TXLQqi/4xYwbfBnCaasYmh0LpQXXWhUoCfNrqqPsSx
	yHZRCPjnP0iuvS/3J1CibxnAkxH5t2ogQEWHwnwUfimOIQXRN8KZlYcAZTNULvNXVTiN7NEkpcJb1
	fkEU5AfnesMPn811Mvx62JRqVqcxj5tDRso2ietbslBD6PzUQbdlkVd66ORixU0V7f5GtkkEXEDAO
	W0LWUBhZ/xLrzD9EJmZpGgLHppJgEdHi8RI/9q9H4IR0qNN2GjXzDjxgnvgVnH7mrmW3nKRvhr2S1
	ELlcZaIA93nu0hMqllSOb4V3Jw5B7SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inl7v-0006Lj-J2; Sat, 04 Jan 2020 15:14:07 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inl7p-0006LJ-5f
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 15:14:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578150827;
 bh=1yugpwhKUCxitXlaCY5TBfzLToSRP5Lt2gahS402j5E=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=MbnPZwmp6NPWyJ+nTYa4EQGMii3frRh2v/tYv40afiNz+99rEedEDdjxsKl27l4oD
 hWfzNCyvFs63mjvKx8zwxtQoMwXrbFQZJUxUJqWe3KpjvixGSRobAEy8mdZxGQbHqd
 nQXoMIWni2z++5qkHzH/F0xy9xYT116OnhuIz1bg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.154]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1M2f9b-1irsO41fh9-0049KA; Sat, 04 Jan 2020 16:13:47 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH] i2c: bcm2835: Store pointer to bus clock
Date: Sat,  4 Jan 2020 16:13:20 +0100
Message-Id: <1578150800-8284-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:+CxNNTTJTACKCcJ+cRBVN/0wjBwwrR6wt3tY7YEwflaFQx4D7PL
 dRD/pi7d86hR9Kqmt6/I4SZqwXKBDdCHvkGlz9LiZVro6vVrhS/EJb89e2LAskBLmuUzaWS
 CXMHy5h8/doVFj5ocE/mSeQ400jPVZ2ApWau5pt7rC6pufX3YBNbTvBreEUlFQMFXWwrW/H
 lngK3iebbDGwEDqTPTbPg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BgSYWcKN3Gg=:yR4de8uWwpMTwn/AA0akTL
 1FGmpaNrY6tOVTwlSw9ddveXq6xNxJ1LTREtQB4WiHc7UywHF3NfS6p84GFGWNiUjjM4I5q9H
 cUy4UGpvYA8nq+7P6tJAZwQt0sM7g3+DlwH2T7cOoXdMw6cL8bdKISwNm7qQwf9rpiCEA07Gv
 Rh2zy0h8msMBnwA6QtMfOdYwHa5IVqsAG7xSUKnS1Wa042HGoHiophnd8XY4SK7CFhh5pW6WD
 k9m2NAPfek8zjuXL6bKHqnYFJLhNnGotVFAxfNTit8TxNwg4CUkSJiBvVMmueOvr0FdoJuJ1E
 Kg0uoDLJRGTG8vWfERzY3l5cxSDNY2n69z41x62koRSiqEuUSWt62BHnBcOUBidG5CezUMC9j
 L34FOGAW8dmHsUR6XoTj0dVOjFh8WmRsVgRuWo1m4BTwc68EOMD031qXxTF6z6EGW0qeONcTZ
 UYrMf6gunsciFK9ERpqwzgoqe+OBdhkvgJQ3v5LKo6Up9cXuTFzhLen3NLzsLBgtRY1n+mL9V
 XzxCIcnskixpBtKg6/pl93MT08n8KDgWrqS/eyVTKmPspS+sgqzTGAVFCSyadrRxK146Tt61A
 GldvTg0Vk0nqxG/a3spHVXXi9l3D5mMpWC8jBCSRbB5x6c49bzF0GiiiANNRy/jy4jCXRbwke
 reM/J0QWa7ctWbNV/LHFuQqM6f/m8BStgtw9N+9U3bXfOvswF0g0q4JKWdTe4hxoeyNLJAFA9
 p1MuF0pZN23NKDIn+Azi9P2oNGEfd87sEegkbY2TB6gymkWUs2pRu7g0i63ZWCMu2auH7M4CO
 KFvTYOluqmaIUoij+KWAPljj+Jyc45mUQ0ec5L+52uPAVSXasVDsEKxjiuS845EISJ5D8Mw0B
 51jk0SlqzRs85GcQX24yUFmje40VBTzO4+3WlAt+JMHtM5OmExyOxHAq36rgMbKuBXHGCR0mj
 8Z4bfwnBA/bkLR1c6wFD8EsP1KS5SbVr8J0p/seTiR+k3an4EGm+Wr5FzJzaNTguy1RlFjWdJ
 9R26CYFMPYd/A620QYkeUOfiDfEPXatgNmDetHKLkdD7plY53JT22ReZrKr/9qj8kUil0npiE
 JK1QEti0tJFHKobJSGRWLgGIkZDesF5f/pGZf/iSWTjTE+OZHzj7Yif2LMsvCT81FkabpKVQ3
 A8Mzv4Lld9I3Q92samCXzUYJQWqRmOlmy5xDaOeTkHB7fHEcAE7s7oNLHdoBgZJbp8Z61eszU
 hfbOMoMxjivHCXP9UZW2vLYjucMLKQfk/jtLoJQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_071401_545055_2FC842EB 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
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
