Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9210ED9F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:37:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eRCZQZqWk5aFKw8uam+npV3YIu9uMM+Yj9kZcz8qNjY=; b=H5D
	9l/pq06lGn8MxZ1h+0jbRljT3bQK/dCt7YsITwxL/I5ekuv10dMcPyETrx+G7Slhe6fGTNUVQWTnx
	4gLCBsfWM59D01XsgUT05EHvDJRDjfproohpn8FetHZ7cC/vIFp8zcTF8fH4YeR0yoTz2PF5n8NF4
	m4zhpXU8RZySusQVhjeAb0BEcV0jVtoh8p6BoabSQri2q1e2YYQf2o7ygymS/5GY0Srev72JUXbuZ
	MZHCZgR0ObBcZeATC1tbA7YfRS1G2n82Q5sfc0uccBlr5ZCT0oUHqxfVss2ILCS0caE23XmRBiiBV
	cwvc2N27d/tm2sGkdxcxR9XQTtcDt5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWvG-0003qG-1A; Mon, 04 Nov 2019 07:37:10 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWv8-0003p3-LE
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:37:04 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DB60F1A078B;
 Mon,  4 Nov 2019 08:36:56 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BE5B91A06DD;
 Mon,  4 Nov 2019 08:36:52 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5CD62402AD;
 Mon,  4 Nov 2019 15:36:47 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: imx: Add i.MX7ULP SoC serial number support
Date: Mon,  4 Nov 2019 15:35:31 +0800
Message-Id: <1572852931-24101-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_233702_838304_45DA63A5 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

i.MX7ULP's unique ID layout in OCOTP is different from other
i.MX6/7 SoCs as below:

OCOTP layout		unique ID

0x4b0 bit[15:0]		bit[15:0]
0x4c0 bit[15:0]		bit[31:16]
0x4d0 bit[15:0]		bit[47:32]
0x4e0 bit[15:0]		bit[63:48]

Add support for reading serial number from OCOTP on i.MX7ULP.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/mach-imx/cpu.c | 30 +++++++++++++++++++++++++-----
 1 file changed, 25 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index d811803..d70b6fc 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -15,6 +15,11 @@
 #define OCOTP_UID_H	0x420
 #define OCOTP_UID_L	0x410
 
+#define OCOTP_ULP_UID_1		0x4b0
+#define OCOTP_ULP_UID_2		0x4c0
+#define OCOTP_ULP_UID_3		0x4d0
+#define OCOTP_ULP_UID_4		0x4e0
+
 unsigned int __mxc_cpu_type;
 static unsigned int imx_soc_revision;
 
@@ -164,6 +169,7 @@ struct device * __init imx_soc_device_init(void)
 		soc_id = "i.MX7D";
 		break;
 	case MXC_CPU_IMX7ULP:
+		ocotp_compat = "fsl,imx7ulp-ocotp";
 		soc_id = "i.MX7ULP";
 		break;
 	default:
@@ -176,11 +182,25 @@ struct device * __init imx_soc_device_init(void)
 		if (IS_ERR(ocotp))
 			pr_err("%s: failed to find %s regmap!\n", __func__, ocotp_compat);
 
-		regmap_read(ocotp, OCOTP_UID_H, &val);
-		soc_uid = val;
-		regmap_read(ocotp, OCOTP_UID_L, &val);
-		soc_uid <<= 32;
-		soc_uid |= val;
+		if (__mxc_cpu_type == MXC_CPU_IMX7ULP) {
+			regmap_read(ocotp, OCOTP_ULP_UID_4, &val);
+			soc_uid = val & 0xffff;
+			regmap_read(ocotp, OCOTP_ULP_UID_3, &val);
+			soc_uid <<= 16;
+			soc_uid |= val & 0xffff;
+			regmap_read(ocotp, OCOTP_ULP_UID_2, &val);
+			soc_uid <<= 16;
+			soc_uid |= val & 0xffff;
+			regmap_read(ocotp, OCOTP_ULP_UID_1, &val);
+			soc_uid <<= 16;
+			soc_uid |= val & 0xffff;
+		} else {
+			regmap_read(ocotp, OCOTP_UID_H, &val);
+			soc_uid = val;
+			regmap_read(ocotp, OCOTP_UID_L, &val);
+			soc_uid <<= 32;
+			soc_uid |= val;
+		}
 	}
 
 	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%d.%d",
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
