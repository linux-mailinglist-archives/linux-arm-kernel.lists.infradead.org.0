Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FC11662FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:32:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yYKYkhjd6e5Oz/bJ1JxWjGD0QoyZVX6yI0WI50zm2AM=; b=gl+PPvo4bG0jIgAtQV0eVlqAUk
	Xx+oXXHXrL8hFy+pRW2LFBIoYtge4pYhme2Bw29ua0Npy7NtmEAxJY2CL34czYEHQ/R3V8TMYNdLN
	RD+qRpG9Qe4pzKSWkisbdQSHgv8oUVOObC1o0cMO5yHNVvXnC5fFSWNxm+PbfwyESf2qyiasn8GBP
	y+R28PNWiwND7r9KNpuuzne8KlfxF3dz8tVJuDD1ARc/cIPiuPZgTUIE27ngwz0jE0SnjdTh+S3fJ
	G1hq2PpC0fT2wv55z9uV97dx+Zv+StXNReF2zaXk273SoVFKA2iHd5uqOBbk4FmnAZtfNfjIopzUe
	qBXnrqUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4oke-00019I-GW; Thu, 20 Feb 2020 16:32:36 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4oi1-0005yR-Bm
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:29:55 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 05B50201078;
 Thu, 20 Feb 2020 17:29:52 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EAFE1200BC7;
 Thu, 20 Feb 2020 17:29:51 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id CBACC20328;
 Thu, 20 Feb 2020 17:29:50 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH v2 7/8] rtc: imx-sc: Align imx sc msg structs to 4
Date: Thu, 20 Feb 2020 18:29:38 +0200
Message-Id: <13404bac8360852d86c61fad5ae5f0c91ffc4cb6.1582216144.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1582216144.git.leonard.crestez@nxp.com>
References: <cover.1582216144.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1582216144.git.leonard.crestez@nxp.com>
References: <cover.1582216144.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_082953_568869_5B2F59EB 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stefan Agner <stefan@agner.ch>, linux-clk@vger.kernel.org,
 Franck LENORMAND <franck.lenormand@nxp.com>, linux-gpio@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx SC api strongly assumes that messages are composed out of
4-bytes words but some of our message structs have odd sizeofs.

This produces many oopses with CONFIG_KASAN=y.

Fix by marking with __aligned(4).

Fixes: a3094fc1a15e ("rtc: imx-sc: add rtc alarm support")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-imx-sc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-imx-sc.c b/drivers/rtc/rtc-imx-sc.c
index cf2c12107f2b..a5f59e6f862e 100644
--- a/drivers/rtc/rtc-imx-sc.c
+++ b/drivers/rtc/rtc-imx-sc.c
@@ -35,11 +35,11 @@ struct imx_sc_msg_timer_rtc_set_alarm {
 	u8 mon;
 	u8 day;
 	u8 hour;
 	u8 min;
 	u8 sec;
-} __packed;
+} __packed __aligned(4);
 
 static int imx_sc_rtc_read_time(struct device *dev, struct rtc_time *tm)
 {
 	struct imx_sc_msg_timer_get_rtc_time msg;
 	struct imx_sc_rpc_msg *hdr = &msg.hdr;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
