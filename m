Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9280E16F741
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 06:28:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Qql4iArBguFU6LwqGYXJXfV+xDxaayZS6857whoVVTo=; b=QjU
	8l4MzN9BBYDonugXqXxXGk0k8KQWJgVdwKdaDS4ydQL9dh1LR9q63O8rzHI5js5cpfTZvPahXIX+H
	oe78YHFySgLdxxa102C9MHGLTvWSf52dhc7Z6CmBEwwCuS86g2UzqMNyWlS40htmmyxlgkd5FVRQQ
	7C2g8VlM4jPTzVpsIx0mV9D/eH+ocWnU8YagGxiFSKkBsY6BJO/Mm46tcAgHy7yvNstFO0oJI8xo5
	J3z0z6B9qMRweN9Zdzz/5p8f7pLwgd5kVpnBrixFhjRlSxSJBUvOGham0Ftbyrkh/BgLePl2FQyWF
	6E023tevewzWwVLnDzvU4Z/KNOX1hxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6pF3-0000Vz-Kk; Wed, 26 Feb 2020 05:28:17 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6pEr-0000VG-Ip
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 05:28:08 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9E1831A695C;
 Wed, 26 Feb 2020 06:28:03 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 40B271A693C;
 Wed, 26 Feb 2020 06:27:59 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A32CB402AD;
 Wed, 26 Feb 2020 13:27:53 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: srinivas.kandagatla@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] nvmem: imx-ocotp: Drop unnecessary initializations
Date: Wed, 26 Feb 2020 13:22:13 +0800
Message-Id: <1582694533-18870-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_212805_763489_FEDE33A5 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop unnecessary initialization of variable 'clk_rate' and 'timing'.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/nvmem/imx-ocotp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 4ba9cc8..5b6a0c9 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -193,9 +193,9 @@ static int imx_ocotp_read(void *context, unsigned int offset,
 
 static void imx_ocotp_set_imx6_timing(struct ocotp_priv *priv)
 {
-	unsigned long clk_rate = 0;
+	unsigned long clk_rate;
 	unsigned long strobe_read, relax, strobe_prog;
-	u32 timing = 0;
+	u32 timing;
 
 	/* 47.3.1.3.1
 	 * Program HW_OCOTP_TIMING[STROBE_PROG] and HW_OCOTP_TIMING[RELAX]
@@ -245,9 +245,9 @@ static void imx_ocotp_set_imx6_timing(struct ocotp_priv *priv)
 
 static void imx_ocotp_set_imx7_timing(struct ocotp_priv *priv)
 {
-	unsigned long clk_rate = 0;
+	unsigned long clk_rate;
 	u64 fsource, strobe_prog;
-	u32 timing = 0;
+	u32 timing;
 
 	/* i.MX 7Solo Applications Processor Reference Manual, Rev. 0.1
 	 * 6.4.3.3
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
