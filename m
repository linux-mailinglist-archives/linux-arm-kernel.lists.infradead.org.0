Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60011896A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 07:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CUIMBLTZHNp5F899vZXMNWYUh3gA2UjVtBwNBacWbSY=; b=eeKUMHeLnkwCHQ
	05yzGWA0uXMSsczRErSFooecK5XzAbneo2f57Os+COzG5T9n8hiCKAkppymHuVLCOlaIUCJlYlLXC
	Hz09PYi+IEqDTDiDfyJAg3nAZGaIpcH/qf1CQP4z6TFTF7MOSf27Yh3UJ08mXUuRzno1Fr1+DfyGv
	6shypabxR6sUeeC0R6KYdLQZRXqdXfWpHsJGPindHjLvRduy6FVp0HJ5GAODfpxfxUHJDtXrJlUkE
	z2Zl2nrDpN+AUm3xFwtokzvNvTGa85R3Eh4x46lXnuupdsQ0dNAAYwXiwIvzoDOfGDB5K1aJHQxZy
	E18oihLu9lnOKU+2Lm1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx2ZZ-0002AE-Uc; Mon, 12 Aug 2019 05:08:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx2ZN-00029w-Ba
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 05:08:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1hx2ZF-0006uG-3X; Mon, 12 Aug 2019 07:08:25 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1hx2Z9-00064G-9x; Mon, 12 Aug 2019 07:08:19 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Wolfram Sang <wsa@the-dreams.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v1] MAINTAINERS: i2c-imx: take over maintainership
Date: Mon, 12 Aug 2019 07:08:17 +0200
Message-Id: <20190812050817.23279-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_220833_392822_C775FAB2 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Oleksij Rempel <o.rempel@pengutronix.de>, linux-i2c@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I would like to maintain the i2c-imx driver. Since I work with
different i.MX variants and have access to the hardware, I can spend
some time on the reviewing of this driver.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e81e60bd7c26..ddc1cf5cb0b9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6441,6 +6441,14 @@ S:	Maintained
 F:	drivers/perf/fsl_imx8_ddr_perf.c
 F:	Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
 
+FREESCALE IMX I2C DRIVER
+M:	Oleksij Rempel <o.rempel@pengutronix.de>
+R:	Pengutronix Kernel Team <kernel@pengutronix.de>
+L:	linux-i2c@vger.kernel.org
+S:	Maintained
+F:	drivers/i2c/busses/i2c-imx.c
+F:	Documentation/devicetree/bindings/i2c/i2c-imx.txt
+
 FREESCALE IMX LPI2C DRIVER
 M:	Dong Aisheng <aisheng.dong@nxp.com>
 L:	linux-i2c@vger.kernel.org
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
