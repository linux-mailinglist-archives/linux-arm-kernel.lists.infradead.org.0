Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E0F160F2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:48:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BGVuEMrVsDnmr3FT2PmEXS+tdctY/T7lQor17d0Bu8Q=; b=BZu
	k9rFwta+S3tQkEOx2inZNDSVZZZsA7pt2I5lzmOO6xKQINuaOkmb6MSRtYq0W98WrJg0H8LoHeN9L
	wT+n/nVj3YG8Ur/8U32Xf1CQfPhiHvWjLUzN70YLjLBiXluvZq622xhZWShigL0uMwmWMGXmL2E7+
	IZ5AMirmmFwWuHP7xPkWckW6dtnul9LfBT/cGsNP5riJHVydaUd+7rGnvFSx4urPJ9enrp4XLsH7x
	8+81FMLvNno2kDi/n3azg8UgNc/h+tv9bd68ePkl9JI6IDwL3bBRkaod7xNG9+zrHFyMqKUPiVpxh
	JX2z2wzoqcsVDk2xNr6kGgHBP/ApSwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3d1H-0004Nt-Bo; Mon, 17 Feb 2020 09:48:51 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3d19-0004NP-PB
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:48:45 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1DD311A03D5;
 Mon, 17 Feb 2020 10:48:42 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D20DD1A03B2;
 Mon, 17 Feb 2020 10:48:36 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 46132402A7;
 Mon, 17 Feb 2020 17:48:30 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rjw@rjwysocki.net, viresh.kumar@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] cpufreq: imx-cpufreq-dt: Add "cpu-supply" property check
Date: Mon, 17 Feb 2020 17:42:55 +0800
Message-Id: <1581932575-13177-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_014843_955489_F9191ED0 
X-CRM114-Status: UNSURE (   7.32  )
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

The cpufreq-dt driver allows cpufreq driver enabled without valid
regulator assigned, however, all i.MX platforms using cpufreq-dt
driver now require valid regulator, add "cpu-supply" property check
to avoid i.MX platforms' cpufreq enabled without valid regulator
and lead to system unstable.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/cpufreq/imx-cpufreq-dt.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index 6cb8193..0e29d88 100644
--- a/drivers/cpufreq/imx-cpufreq-dt.c
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -31,6 +31,9 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 	int speed_grade, mkt_segment;
 	int ret;
 
+	if (!of_find_property(cpu_dev->of_node, "cpu-supply", NULL))
+		return -ENODEV;
+
 	ret = nvmem_cell_read_u32(cpu_dev, "speed_grade", &cell_value);
 	if (ret)
 		return ret;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
