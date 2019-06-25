Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA52C523EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=haJ8T7zvgDGksQfVS17atml/GmfzRRu+J+RYvOrSf/w=; b=FQ5
	/PPZd6IQRRrR9hwloU6j4HgTD4mQdh/MGCmz8OMbHwRlNTOh8jk3Ha+9xWgXG1TRwmJ/LbcYZEDEb
	6heQw6s+geY1OfPEzFBvv9vVKVqLyRZTjnDABa2j7GxLoU57KyWkL4k2bKnyQ0yjFwQpS34b6g7VU
	a8V1RfsU8jMF2W1AX2GwhBz7Tab3+U7guViHYGSrOJ2zMkvkA8NuypuoJSMKCNxABEhU2s8Yf/Lov
	Yws3yeYCvn2m4vao2BcaD/1yc/J1Rja9NloUt92f28wL9ONdiRrUtWbvO7eIUNjMbDVvdZ1zT9Kn0
	RmqQNJrjhYcM8xkvNQ4+hTSerVOKx/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffVU-0000b3-JB; Tue, 25 Jun 2019 07:04:44 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffV1-0000ZB-Ls
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:04:17 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1B0BA1A074A;
 Tue, 25 Jun 2019 09:04:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7131D1A073F;
 Tue, 25 Jun 2019 09:04:05 +0200 (CEST)
Received: from mega.ap.freescale.net (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 219FF4028F;
 Tue, 25 Jun 2019 15:03:57 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, ping.bai@nxp.com, peng.fan@nxp.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] clk: imx8mm: Fix typo of pwm3 clock's mux option #4
Date: Tue, 25 Jun 2019 15:06:01 +0800
Message-Id: <20190625070602.37670-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_000415_851372_C75021B2 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

i.MX8MM has no sys3_pll2_out clock, PWM3 clock's mux option #4
should be sys_pll3_out, sys3_pll2_out is a typo, fix it.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 56d53dd..516e68d 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -287,7 +287,7 @@ static const char *imx8mm_pwm2_sels[] = {"osc_24m", "sys_pll2_100m", "sys_pll1_1
 					 "sys_pll3_out", "clk_ext1", "sys_pll1_80m", "video_pll1_out", };
 
 static const char *imx8mm_pwm3_sels[] = {"osc_24m", "sys_pll2_100m", "sys_pll1_160m", "sys_pll1_40m",
-					 "sys3_pll2_out", "clk_ext2", "sys_pll1_80m", "video_pll1_out", };
+					 "sys_pll3_out", "clk_ext2", "sys_pll1_80m", "video_pll1_out", };
 
 static const char *imx8mm_pwm4_sels[] = {"osc_24m", "sys_pll2_100m", "sys_pll1_160m", "sys_pll1_40m",
 					 "sys_pll3_out", "clk_ext2", "sys_pll1_80m", "video_pll1_out", };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
