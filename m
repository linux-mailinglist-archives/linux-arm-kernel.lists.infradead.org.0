Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C36C39F123
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 19:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BzUwU8V9EqLJ85DTVkqoQplFuKhu8QCbLCCXKBNybIc=; b=FXUTXgPD5qCz9GNXmbaH5HBiXs
	d87hZT4EDBBbpUWOcVIV78Lz/NpVnqc11M2JsZjJKle2+bPW01VNnTAM05IFfORVlW6xmBh+2O6EN
	sf/GE8Fz9OTg3BZwu8w8ZoXvcEE0EBw8qhDRkoT5LgTT3/L/Der+3fQsX+bUExkH9mWphRMedEeZv
	DEnNkKV8PUdCnD6JpFxb8t545lu4EdMBWFdgAvW/scltMw8QHT1rJK2cauwBMxyOVcyWzzjRWgW4B
	OJzJ+NGvHJ77uxuwDi2FWpAg29Xn59iq7YMQpmJroL1lzUib4b4SBa33En+pZaQMz0KfYfTmp1CKd
	P2wx1Y4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ev0-0000FJ-0o; Tue, 27 Aug 2019 17:06:06 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eu4-0006SR-F5
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 17:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566925496;
 bh=Uo1b3HfhaDmYWZdy1HlA+2i2PHDkmmpjfklpjPXzKxw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=jjZbzo+XYlVxeu0N/XlLeLTxHHg108xm2GU+uCwoe0MtEhlzCF3U8fRe7b09Wb7fz
 F1Ol9pWw4rD4TpFRbTuoYwQ1C7tB1Es1tg1/5cPN3UrFNIso5VrCM62mcUsWEtUYDK
 /tBoTkBn0c/5PoSIX7Oqtc7mEvkF8lXEiyOALMag=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx003 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MV5hN-1hhPfx0Gwn-00YUII; Tue, 27 Aug 2019 19:04:56 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Wolfram Sang <wsa@the-dreams.de>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 2/3] i2c: bcm2835: Avoid clk stretch quirk for BCM2711
Date: Tue, 27 Aug 2019 19:04:15 +0200
Message-Id: <1566925456-5928-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566925456-5928-1-git-send-email-wahrenst@gmx.net>
References: <1566925456-5928-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:Khj7mXUW5z0WC/ZBBqLcGNldA+ElzWSWMIlsnsdZzREPTsd8HDD
 J+gPVzpIk9piKLiieHnfv5qxCFOVhQ3hfNctz70sxa4cm6/sV7NaZCNL1Ceqrify33wKkgn
 Gh96Vz3/dCD+L1MF6KCEMkIA/3GpcRij0fKqaoWTeO1ThunIEOgqMH5WffrL0J3diX3cCUv
 8t2guKrtd7dEQorwAd8IA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5pSzR/iKChg=:DVqxCdjc3UJXq8/A9WN25l
 f8lFLCErb4Rfa5ou0tV+AzzQ0Yh3Ze8ZPO0vgpX6FqmM8JNlspYjsiU6bEy/Cd19hWc9xG+6S
 sb4aysewj4iDvDrwfaNW2YOjzqHEV4IJkOigsAcwozkb8natDSbrGLxWUUkUiJ72tNULdHOVi
 LXVj+sW3kBzGJMIDYCO2zoKKlg4Wa3s5NAYXgwGjILCQx2sWCCROdfJesUyfSnISr0RnzJGXa
 ndFpwKZdotZPqVQEKUawsJJ+1xzPwIUgKrqv0GFQvgmVYcYOCjErv4HMCa52oByn8LBOrq5FU
 s2OHMEHLHCagVcoCvx54hdsK/0LMzECgP1CJSqMmHvrp1Kj8NAuzO7iHXSA2f35rLeDc4p6Oc
 4Xl4Ilkr2bT8LUnS0sMuTwr+t/qG6VUckZPSBr7eMVAt2CgxMUFKOyeUQCJZJBPjIXyD0s4wt
 h70hNHruPX/ItfT7kg0fu+JWMtFlYIlvtSLTlnsCgXoC3jeJ4UIUBWy8ygpWGbTZXwX5N1IlT
 N42kmySAZQEg1jAgItAnpArNSZ/CVVcCXWu7fXeqj56n8bDqKTOYcGn7P8zpQQ/yH3KY+JFNN
 jrDKs6+aJCK9b9oAk2jGvy659Gluq3qWkXvtYI2JlDs9IoaDph6JCtYpBvfyVJwyDrr3xzUaS
 IuAjtCWzLX8PHHgF/CXgjG8zLbo+0YrzC1tdi1Y5K7pIguueOXoUBM930jC5b8eMdbUGP6ByW
 8/IbMqwcuPpz1cb8DKOB+xh+wiIVaRQiHPEnubYAEqbvsrpBbu2BXkRouCDw8GoIdxV0sd3KI
 kfdI6w1EY8NgVpCtjw5hVlmOg3TV8PYlH5slBQXCGkvHfZrFL34fGpfR9np2bW2AziqOghyhu
 wpqpTnnkjlxgH87ShTCDtGZwmwkvEHKcFXC6JOkEiQtJ2hieXDzK9W712qVNdGNEk3WSN/oWb
 KxiXqIIBXYl/i740hGBfGRd2sTlSxHO0VOp7xwMRKuLy8OUkejFym2bJhW9kqvIsDS+rCjNII
 5g8ZL1qM7VhtE6OVEjvz7HolgHnuWDgrQC0m1Rsg1XCLVi5gP9KXiFF18t1STlC+dyGZdhA3X
 SUHrQggJpnNhDB2kKO4gcDmqocffp456FprdqWaXRYmLddn3qFSWuL1pFMNofQHP5RYl8CTDq
 IaeLK+0SDv/rM1ZHMh5Z8KR7v0xdKteNfKkkXC5GZQ9yr7VQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_100508_929975_C5C94690 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The I2C block on the BCM2711 isn't affected by the clk stretching bug.
So there is no need to apply the corresponding quirk.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Eric Anholt <eric@anholt.net>
---
 drivers/i2c/busses/i2c-bcm2835.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm2835.c
index 67752f7..ab5502f 100644
--- a/drivers/i2c/busses/i2c-bcm2835.c
+++ b/drivers/i2c/busses/i2c-bcm2835.c
@@ -12,6 +12,7 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/module.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>

@@ -389,7 +390,7 @@ static const struct i2c_algorithm bcm2835_i2c_algo = {
 };

 /*
- * This HW was reported to have problems with clock stretching:
+ * The BCM2835 was reported to have problems with clock stretching:
  * http://www.advamation.com/knowhow/raspberrypi/rpi-i2c-bug.html
  * https://www.raspberrypi.org/forums/viewtopic.php?p=146272
  */
@@ -475,7 +476,7 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	adap->algo = &bcm2835_i2c_algo;
 	adap->dev.parent = &pdev->dev;
 	adap->dev.of_node = pdev->dev.of_node;
-	adap->quirks = &bcm2835_i2c_quirks;
+	adap->quirks = of_device_get_match_data(&pdev->dev);

 	bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_C, 0);

@@ -501,7 +502,8 @@ static int bcm2835_i2c_remove(struct platform_device *pdev)
 }

 static const struct of_device_id bcm2835_i2c_of_match[] = {
-	{ .compatible = "brcm,bcm2835-i2c" },
+	{ .compatible = "brcm,bcm2711-i2c" },
+	{ .compatible = "brcm,bcm2835-i2c", .data = &bcm2835_i2c_quirks },
 	{},
 };
 MODULE_DEVICE_TABLE(of, bcm2835_i2c_of_match);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
