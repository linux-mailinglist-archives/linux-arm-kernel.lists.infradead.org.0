Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 719191B89A1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 23:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=61/3E8tj8Cw8MNjqWyvLUXESPwhit6bVf65Ar0Ns6Sc=; b=TCb
	OEMS6WRffGfnqurBLIg96X6vez/jGZso/BrkpWV38dv52z7spP+6hApuqtNUxNk3FL1qqKT8PtCzA
	52+eo9TLpFfTzMYcdzTvk81kTWVPieu9CwfC0vDO4sLw+9ATZyfeNElSrB+YDzmIh6d/kV/zfURyl
	e07PFyL3sOaj/XFD3q+YsxwmfwkAehvnIeH/nv3KvDskfs3E6yViySMkl+7x5t3HY0xVlvdEQjJ6/
	ertEeCALdgB12EncM+PP6BiwLO5e++P4GS7KGIfrfjoaCu0ncYMMlqHJgWAhQF4zURbGgyE3KozD5
	rUilEiNZYDJffFhGJvkDAnq39ma6tpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSSVs-0005pm-Ut; Sat, 25 Apr 2020 21:39:04 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSSVi-0005oO-OG
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 21:38:56 +0000
Received: from localhost.localdomain ([37.4.249.134]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MV6G0-1jajx10av8-00S8Wh; Sat, 25 Apr 2020 23:38:49 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Wolfram Sang <wsa@the-dreams.de>
Subject: [PATCH] i2c: brcmstb: Fix handling of optional interrupt
Date: Sat, 25 Apr 2020 23:38:07 +0200
Message-Id: <1587850687-23675-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:tn0CEj9ZIDplun3FbAeVIJcYPxrDm4mFY4qyezpfYAlSmzz6ppy
 QRILXn3atgNyThnwpLICQW1sGny7tmMFMSHDCS7cTs3lkcUMqqW7M5wr53vHS35c33a8BXL
 4z34oywRAFPzRjdijGkKAwNpGEcfi7ZaVLv16w/2SI5pvQ0oyKJXq7spt02DsbULFcOaWv0
 Zt6rl4wjqKaibsCReH6Bw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TWnPE33LefM=:NNaqyIxuVGA9y2WHf31alT
 r500pBYTd8bO0gHSr2IPU8PnI9jd1aHoBqBD7hSW121gPHIr4h7J0Wrv2fNVhCcLSbWpUPLXY
 vXu6jMv1+x6r3/c9RxZQdbYZZWHkzt6WJ+joqjANI7bQGLDFuq8HnIXBpZz/LXFT/vqexHRGs
 G5cT9/0SIp99p2RxI6v/C+4//pyjbtQ8bsj5P4Fdfd6Npf3vjrlxCeAr6RNjy7VC9aIjfczsO
 xwK2NhKOIA7O29tx95hZUZBgalsGDeGKSW8c0/KFRP+G1b4pj+VMbSu8qlNb3xdYPVBaOlNQM
 mV7E7zpjc8CYNJT3pUyR3JbS3Dmfeu9/iSCbOVDqxwmyUGNdz6EfDiCjVNo62v+tp137nEqS4
 Vuu5WaTM/VF5Hga42yS+bpOYI+8e4C2Z2cI1OTPk3g/OH4hxhtWz/Z7Q+34GxRNFakX4u1iZY
 udeGWA5XQakRtKbgL6m3JdYky8CFj3S9ly5CFtqB7UKOu4cLJb5xAEjGPJULy13pmdo50pB0Q
 YsH+rkZ9FtBD/86kO3UGoawl9jb0Gz2L05/BEUlsVfhBesP3c/Mob8UhVGj6RtaVpGvH/AN27
 PhpQOP9LfV1ZTZ05IUB4RjYf/Y4d9YQ1FX/+JokWkMg9DR/Y97BG0twV2QJLjckYYxFu/yxX6
 mK5mD52JODP5RXfRLD1v4erV274xeXW4mxD7JTZpOjXWEviwZy7FSdnU8uCZDhMH/e7W778j7
 GRBdK8/K0kF5CnxZFN7cu5q2qOmRmxzH3lXr0bb8UDfLITyW3Iz9r7MNkj31pRVnKsuLTDMeA
 PbH6w6hPERMU8zqqg+eSuloMZ+ito/yqOOiOLOX29B7Fq3H2nFdQJaLphxlGWr7O5auFlhn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_143855_083518_E98EB5D7 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

If there is no interrupt defined then an error is logged due
to the use of platform_get_irq. The driver handles not having
the interrupt by falling back to polling, therefore make
the appropriate call when claiming it.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/i2c/busses/i2c-brcmstb.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/busses/i2c-brcmstb.c b/drivers/i2c/busses/i2c-brcmstb.c
index 169a283..d4e0a0f 100644
--- a/drivers/i2c/busses/i2c-brcmstb.c
+++ b/drivers/i2c/busses/i2c-brcmstb.c
@@ -647,20 +647,22 @@ static int brcmstb_i2c_probe(struct platform_device *pdev)
 		int_name = NULL;
 
 	/* Get the interrupt number */
-	dev->irq = platform_get_irq(pdev, 0);
+	dev->irq = platform_get_irq_optional(pdev, 0);
 
 	/* disable the bsc interrupt line */
 	brcmstb_i2c_enable_disable_irq(dev, INT_DISABLE);
 
 	/* register the ISR handler */
-	rc = devm_request_irq(&pdev->dev, dev->irq, brcmstb_i2c_isr,
-			      IRQF_SHARED,
-			      int_name ? int_name : pdev->name,
-			      dev);
-
-	if (rc) {
-		dev_dbg(dev->device, "falling back to polling mode");
-		dev->irq = -1;
+	if (dev->irq >= 0) {
+		rc = devm_request_irq(&pdev->dev, dev->irq, brcmstb_i2c_isr,
+				      IRQF_SHARED,
+				      int_name ? int_name : pdev->name,
+				      dev);
+
+		if (rc) {
+			dev_dbg(dev->device, "falling back to polling mode");
+			dev->irq = -1;
+		}
 	}
 
 	if (of_property_read_u32(dev->device->of_node,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
