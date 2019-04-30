Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A23BEFA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 06:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nj3+7Q2Wzi2zqpCS7ThxvcWypd+302709UHntur77Jc=; b=n1/
	dQj51/u8oqCnSOSDyT4N4yLTenTcRK5PPXHDUs7mTovN9Xo9wCP4lUb6OH6N27Cw9J9vafp4XzL9o
	rkC8N0KBS411NjtVNpi4l1oWNKnGrV+qL/Rx5VU6upnIwcdnQe+8ofPAnxPYbMiKEt6G+c7nk9KVc
	hwk+y7zYSrBswc2948zzBm/FfCdd+QnYwhEWaD+qo7UOnp1p4JnFHXX/I2cr6rWAzOe72Ol7h1kQK
	IRRCIviP9vCtRRwqc7rU5I431mq0Z0qdOdZM89aPD1JBbIupZsX3uDijxXJrR3q4vcKrmog/K+Ji8
	7dYu39cErB70BLoeBNhk00c9DtPWxCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLKQm-0001zr-7g; Tue, 30 Apr 2019 04:31:48 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLKQV-0001sW-5q
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 04:31:32 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A713E1A0014;
 Tue, 30 Apr 2019 06:31:26 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id ACEDA1A0013;
 Tue, 30 Apr 2019 06:31:17 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C57A5402D9;
 Tue, 30 Apr 2019 12:31:06 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, leoyang.li@nxp.com
Subject: [PATCH 1/3] dt-bindings: i2c: add optional mul-value property to
 binding
Date: Tue, 30 Apr 2019 12:32:40 +0800
Message-Id: <20190430043242.29687-1-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_213131_360142_EA046535 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, sumit.batra@nxp.com, eha@deif.com,
 Chuanhua Han <chuanhua.han@nxp.com>, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, wsa+renesas@sang-engineering.com, linux-imx@nxp.com,
 kernel@pengutronix.de, u.kleine-koenig@pengutronix.de, l.stach@pengutronix.de,
 festevam@gmail.com, peda@axentia.se, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NXP Layerscape SoC have up to three MUL options available for all
divider values, we choice of MUL determines the internal monitor rate
of the I2C bus (SCL and SDA signals):
A lower MUL value results in a higher sampling rate of the I2C signals.
A higher MUL value results in a lower sampling rate of the I2C signals.

So in Optional properties we added our custom mul-value property in the
binding to select which mul option for the device tree i2c controller
node.

Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
 Documentation/devicetree/bindings/i2c/i2c-imx.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx.txt b/Documentation/devicetree/bindings/i2c/i2c-imx.txt
index b967544590e8..ba8e7b7b3fa8 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-imx.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-imx.txt
@@ -18,6 +18,9 @@ Optional properties:
 - sda-gpios: specify the gpio related to SDA pin
 - pinctrl: add extra pinctrl to configure i2c pins to gpio function for i2c
   bus recovery, call it "gpio" state
+- mul-value: NXP Layerscape SoC have up to three MUL options available for
+all I2C divider values, it describes which MUL we choose to use for the driver,
+the values should be 1,2,4.
 
 Examples:
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
