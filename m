Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6D58EA15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aZEbDfcKHi7GDo31hrjRxi+a65jXc4pTbgkWxbBM8BE=; b=ht6jH5wyzUG3TbBIO/c3fiVx47
	4zQhghnYXupclxlnz7Qk5dVVWZMlBeTpW0QyfOt3jRL9gn6vxi2aYsSxOngDdIZOFMW3g7s+9iIFa
	i98s3xzGiOrJ08NYczIoWmyJ9mv+k3xudMP3bO0moZk4Xctwg9KqMUu2hL5q1nd0f1uhNaoB5x9qW
	X8HT4rN8QNfN4H+h7LlgE1bhanVPpubXrScrpFy8TeaQhezEC/4W347lCifQ63JwqHvBwAs2ewxmC
	pLa/B99vu0L90b5vo8SBb8d8uCdxsf6AfkLrZu1brDoBM9e1lK5EugXCBmvAJKvMYMqX0iw/Qcpn+
	5rdjAaVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDmv-0001k5-1c; Thu, 15 Aug 2019 11:19:25 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDlr-00012I-6d
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:18:20 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 004A81A0268;
 Thu, 15 Aug 2019 13:18:18 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1CA8D1A00FE;
 Thu, 15 Aug 2019 13:18:10 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 534E44030E;
 Thu, 15 Aug 2019 19:18:00 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, rjw@rjwysocki.net,
 viresh.kumar@linaro.org, leonard.crestez@nxp.com, abel.vesa@nxp.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: [PATCH 4/6] cpufreq: imx-cpufreq-dt: Add i.MX8MN support
Date: Thu, 15 Aug 2019 06:59:41 -0400
Message-Id: <1565866783-19672-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565866783-19672-1-git-send-email-Anson.Huang@nxp.com>
References: <1565866783-19672-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_041819_434859_E9173DA8 
X-CRM114-Status: UNSURE (   8.99  )
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

i.MX8MN has different speed grading definition as below, it has 4 bits
to define speed grading, add support for it.

 SPEED_GRADE[3:0]    MHz
    0000            2300
    0001            2200
    0010            2100
    0011            2000
    0100            1900
    0101            1800
    0110            1700
    0111            1600
    1000            1500
    1001            1400
    1010            1300
    1011            1200
    1100            1100
    1101            1000
    1110             900
    1111             800

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/cpufreq/imx-cpufreq-dt.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index 4f85f31..35db14c 100644
--- a/drivers/cpufreq/imx-cpufreq-dt.c
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -16,6 +16,7 @@
 
 #define OCOTP_CFG3_SPEED_GRADE_SHIFT	8
 #define OCOTP_CFG3_SPEED_GRADE_MASK	(0x3 << 8)
+#define IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK	(0xf << 8)
 #define OCOTP_CFG3_MKT_SEGMENT_SHIFT    6
 #define OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 6)
 
@@ -34,7 +35,12 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	speed_grade = (cell_value & OCOTP_CFG3_SPEED_GRADE_MASK) >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
+	if (of_machine_is_compatible("fsl,imx8mn"))
+		speed_grade = (cell_value & IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK)
+			      >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
+	else
+		speed_grade = (cell_value & OCOTP_CFG3_SPEED_GRADE_MASK)
+			      >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
 	mkt_segment = (cell_value & OCOTP_CFG3_MKT_SEGMENT_MASK) >> OCOTP_CFG3_MKT_SEGMENT_SHIFT;
 
 	/*
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
