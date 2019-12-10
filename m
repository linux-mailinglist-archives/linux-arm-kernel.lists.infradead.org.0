Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80051199AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:50:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mwvUE5AWIuBw3ZNMlBQeTUwBIjklPE2oDDiFQqrF0C4=; b=PnVUEiKFPgV3hEqRiPO4jfnO7+
	iocO6v8MCRYyZ5IXugl0rr2g+EbYsGEUBdEc70kLzM+yKOo4qfcZcp/Xa7LXLd9nPKdBDmx0L4RWr
	VNk79bF5rEu2vXRmwHi3gI37n7Fc4Ah4k/eVrJzzFDMzHUE2nAdyfzogaUd52648hLl+1gzU9sARC
	/6Z99YZUQeRB44ZH+PR1WwfC/LxG2NBQcZ2nXQm8oQ9JkKEB57A9IpYCyaRidSGyMsgcmRrwyul9p
	sJlFeB1yviPeZokTDWXLnihx0olsE8x0rjVWnWOJtlDXuiLAnV8sE/xop1jZAmuPYsoig1e3PX3m3
	V6g/1z0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ienOZ-0002x9-NG; Tue, 10 Dec 2019 21:50:15 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienNv-0002Wi-5x
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:49:37 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BAE8B200537;
 Tue, 10 Dec 2019 22:49:32 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AD375200252;
 Tue, 10 Dec 2019 22:49:32 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 5630320567;
 Tue, 10 Dec 2019 22:49:32 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Anson Huang <Anson.Huang@nxp.com>
Subject: [PATCH 2/2] ARM: imx: Fix ocotp_compat for 6ull/6ulz
Date: Tue, 10 Dec 2019 23:49:29 +0200
Message-Id: <e142d7f53cdc9a536939aeb9dc4e1d42af67929b.1576014367.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1576014367.git.leonard.crestez@nxp.com>
References: <cover.1576014367.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1576014367.git.leonard.crestez@nxp.com>
References: <cover.1576014367.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_134935_358312_31352ECC 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ocotp compatible string on imx6ull and imx6ulz is currently
"fsl,imx6ull-ocotp" but the imx_soc_device_init function attempts to
lookup for "fsl,imx6ul-ocotp" (single L).

Fix the constant and make cat /sys/devices/soc0/serial_number print
useful information instead of all-zeros.

Fixes: 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm/mach-imx/cpu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index 484bf6cdb363..06f8d64b65af 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -151,15 +151,15 @@ struct device * __init imx_soc_device_init(void)
 	case MXC_CPU_IMX6UL:
 		ocotp_compat = "fsl,imx6ul-ocotp";
 		soc_id = "i.MX6UL";
 		break;
 	case MXC_CPU_IMX6ULL:
-		ocotp_compat = "fsl,imx6ul-ocotp";
+		ocotp_compat = "fsl,imx6ull-ocotp";
 		soc_id = "i.MX6ULL";
 		break;
 	case MXC_CPU_IMX6ULZ:
-		ocotp_compat = "fsl,imx6ul-ocotp";
+		ocotp_compat = "fsl,imx6ull-ocotp";
 		soc_id = "i.MX6ULZ";
 		break;
 	case MXC_CPU_IMX6SLL:
 		ocotp_compat = "fsl,imx6sll-ocotp";
 		soc_id = "i.MX6SLL";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
