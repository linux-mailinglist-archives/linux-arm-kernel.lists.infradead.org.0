Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECF711E7BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:07:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftBq22sP+CKALykOh0ce60lZnqhWbbXadyv/+lUIa0U=; b=JmuI3GVTuR4b/+
	hvmp0q2Q+OefEpdlP/XaRKamPE7kM+ERUmJUOGDQ7E3dnK140LPoG41R/Ir1y6VHGkUnM6ymc8ysM
	450iFvY958ppvpAocd9m9DQa1yD0Ij23JrGjiqJZkiQ4vNPILFgFRyoMAtEK+BDLJ1wm2gbdNEhtE
	kohQRA25f65XUunyBxDcccJg8Y0sHQWV7k2qBNW5l6U9yky7ETQ6YHN7ODKDLMG+/jOlYwZoB4XSP
	jvKbWtVyyG9tGXNfLEoCDUs0laG9/v7qLiq4cUBLP2+tR0Vj6UtCw3uuAj+yhvitTXnqNopQ/SHqA
	jB96B2Ut25SidLwgCl6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnTc-00055x-GS; Fri, 13 Dec 2019 16:07:36 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnS2-0003lH-6B
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:06:01 +0000
Received: by mail-yb1-xb43.google.com with SMTP id v15so932577ybp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GJRp0zVXenPTDOj2+N1sqi3Za0T7/7Gs5s6eak/8py8=;
 b=Ec532aIIrIGX9CHDUvl5IcrdHxCiDLwypD1lwJOHQfnudfJNrVQhm0VRqk33uIvbUZ
 IfsDx4LaPg2I8o8xyio8/I+WFUFvWbRf2JqCRfTPCd5qrCsdIBwyM/fynfzhquFv4ztG
 AiOALw0zBX/LQKYOWPWbLYUCnMZN+IXEKBJxshnWsq3zbM7egHdRk8NdWX8zpLkDrWe6
 ThP28r9wNqZ+jTkM2YAH/lNrALzSIi9vJr4DT+1yNyOuITm2tMrVU0x3ClgM5/vF/22F
 ipgAkD4Dw9pijlv75bKIY8j6SGkn1LKHz497g7xNOLnRxKC4M+lY5FSSWP+Cn+seGAif
 fA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GJRp0zVXenPTDOj2+N1sqi3Za0T7/7Gs5s6eak/8py8=;
 b=OayFw6qDUOwKMC30Vwjo+fVnTTAuzYXOZYj3Pe+JPjvIWq586RsQ+lzgUIlaibPfnN
 fBqRwtnK2QKJrAEBxfrfP9Jdy2IqkApgQ/I8Hop22+IVSjhvGPjF+Yi38tbEaWALus1Y
 HVeuZanJwbYieGvPLHf7P6B4MixGItCT2iMhs+KbrC2ZvqVxUolhZ1rnmROk9zyw9nc9
 nkRO2ujc59JZgPl6vT/QElyxvZ6WWA6h8OpCZpzi1fofqSISmRbNYeEB11/viXLxAnZF
 Ahz4daIQX/AAKKYrG+MXlB/HhZbSupAhtBNlveWbFp0oeAIo20wXVrHRN5H2dARHa4i4
 Q7Bw==
X-Gm-Message-State: APjAAAUKJuK5PISMErZsVQPANDHo1cjS9WoSsKqzdGt+n+NWqthWNYqC
 l7C6X+wXBDDLeggFBeH0SsrKtyYp
X-Google-Smtp-Source: APXvYqxDaTa5aqCm+chgjHLGW2vqpptGzmRd3EK3DbPOIfwrrTG4NZ2TEJVaHKhObqr7tukwhXUn3Q==
X-Received: by 2002:a25:abcf:: with SMTP id v73mr9166953ybi.114.1576253156726; 
 Fri, 13 Dec 2019 08:05:56 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id v38sm3984694ywh.63.2019.12.13.08.05.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 08:05:56 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 3/7] soc: imx: gpcv2: add support for i.MX8M Mini SoC
Date: Fri, 13 Dec 2019 10:05:38 -0600
Message-Id: <20191213160542.15757-4-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213160542.15757-1-aford173@gmail.com>
References: <20191213160542.15757-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080558_376607_EB7A8E5B 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peng.fan@nxp.com, Fabio Estevam <festevam@gmail.com>, ping.bai@nxp.com,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GPCv2 on the Freescale i.MX8M Mini SoC works in the same way as the
GPCv2 on the i.MX8MQ, but with slightly different power domains and
mapping.

This patch adds the necessary tables so the GPC can operate on the
i.MX8M Mini.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  No Change

 drivers/soc/imx/gpcv2.c | 244 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 244 insertions(+)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 250f740d2314..52668e985e8e 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -41,6 +41,20 @@
 #define IMX8M_PCIE1_A53_DOMAIN			BIT(3)
 #define IMX8M_MIPI_A53_DOMAIN			BIT(2)
 
+#define IMX8MM_VPU_H1_A53_DOMAIN		BIT(15)
+#define IMX8MM_VPU_G2_A53_DOMAIN		BIT(14)
+#define IMX8MM_VPU_G1_A53_DOMAIN		BIT(13)
+#define IMX8MM_DISP_MIX_A53_DOMAIN		BIT(12)
+#define IMX8MM_GPU_3D_A53_DOMAIN		BIT(11)
+#define IMX8MM_VPUMIX_A53_DOMAIN		BIT(10)
+#define IMX8MM_GPUMIX_A53_DOMAIN		BIT(9)
+#define IMX8MM_GPU_2D_A53_DOMAIN		BIT(8)
+#define IMX8MM_DDR1_A53_DOMAIN			BIT(7)
+#define IMX8MM_OTG2_A53_DOMAIN			BIT(5)
+#define IMX8MM_OTG1_A53_DOMAIN			BIT(4)
+#define IMX8MM_PCIE_A53_DOMAIN			BIT(3)
+#define IMX8MM_MIPI_A53_DOMAIN			BIT(2)
+
 #define GPC_PU_PGC_SW_PUP_REQ		0x0f8
 #define GPC_PU_PGC_SW_PDN_REQ		0x104
 
@@ -64,6 +78,20 @@
 #define IMX8M_PCIE1_SW_Pxx_REQ			BIT(1)
 #define IMX8M_MIPI_SW_Pxx_REQ			BIT(0)
 
+#define IMX8MM_VPU_H1_SW_Pxx_REQ		BIT(13)
+#define IMX8MM_VPU_G2_SW_Pxx_REQ		BIT(12)
+#define IMX8MM_VPU_G1_SW_Pxx_REQ		BIT(11)
+#define IMX8MM_DISP_SW_Pxx_REQ			BIT(10)
+#define IMX8MM_GPU_3D_SW_Pxx_REQ		BIT(9)
+#define IMX8MM_VPU_SW_Pxx_REQ			BIT(8)
+#define IMX8MM_GPU_SW_Pxx_REQ			BIT(7)
+#define IMX8MM_GPU_2D_SW_PXX_REQ		BIT(6)
+#define IMX8MM_DDR1_SW_Pxx_REQ			BIT(5)
+#define IMX8MM_OTG2_SW_Pxx_REQ			BIT(3)
+#define IMX8MM_OTG1_SW_Pxx_REQ			BIT(2)
+#define IMX8MM_PCIE_SW_Pxx_REQ			BIT(1)
+#define IMX8MM_MIPI_SW_Pxx_REQ			BIT(0)
+
 #define GPC_M4_PU_PDN_FLG		0x1bc
 
 #define GPC_PU_PWRHSK			0x1fc
@@ -72,6 +100,10 @@
 #define IMX8M_VPU_HSK_PWRDNREQN			BIT(5)
 #define IMX8M_DISP_HSK_PWRDNREQN		BIT(4)
 
+#define IMX8MM_GPU_HSK_PWRDNREQN		BIT(9)
+#define IMX8MM_VPU_HSK_PWRDNREQN		BIT(8)
+#define IMX8MM_DISP_HSK_PWRDNREQN		BIT(7)
+
 /*
  * The PGC offset values in Reference Manual
  * (Rev. 1, 01/2018 and the older ones) GPC chapter's
@@ -94,6 +126,24 @@
 #define IMX8M_PGC_MIPI_CSI2		28
 #define IMX8M_PGC_PCIE2			29
 
+/*
+ * Taken from i.MX8M Mini values from Reference
+ * Manual, Rev. 2, 08/2019
+ */
+#define IMX8MM_PGC_MIPI			16
+#define IMX8MM_PGC_PCIE			17
+#define IMX8MM_PGC_OTG1			18
+#define IMX8MM_PGC_OTG2			19
+#define IMX8MM_PGC_DDR1			21
+#define IMX8MM_PGC_GPU2D		22
+#define IMX8MM_PGC_GPU			23
+#define IMX8MM_PGC_VPU			24
+#define IMX8MM_PGC_GPU3D		25
+#define IMX8MM_PGC_DISP			26
+#define IMX8MM_PGC_VPU_G1		27
+#define IMX8MM_PGC_VPU_G2		28
+#define IMX8MM_PGC_VPU_H1		29
+
 #define GPC_PGC_CTRL(n)			(0x800 + (n) * 0x40)
 #define GPC_PGC_SR(n)			(GPC_PGC_CTRL(n) + 0xc)
 
@@ -278,6 +328,7 @@ static const struct imx_pgc_domain_data imx7_pgc_domain_data = {
 	.reg_access_table = &imx7_access_table,
 };
 
+/* i.MX8M dual/QuadLite/Quad */
 static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 	[IMX8M_POWER_DOMAIN_MIPI] = {
 		.genpd = {
@@ -442,6 +493,198 @@ static const struct imx_pgc_domain_data imx8m_pgc_domain_data = {
 	.reg_access_table = &imx8m_access_table,
 };
 
+/* i.MX8M Mini */
+static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
+	[IMX8MM_POWER_DOMAIN_MIPI] = {
+		.genpd = {
+			.name      = "mipi",
+		},
+		.bits  = {
+			.pxx = IMX8MM_MIPI_SW_Pxx_REQ,
+			.map = IMX8MM_MIPI_A53_DOMAIN,
+		},
+		.pgc	   = IMX8M_PGC_MIPI,
+	},
+
+	[IMX8MM_POWER_DOMAIN_PCIE] = {
+		.genpd = {
+			.name = "pcie1",
+		},
+		.bits  = {
+			.pxx = IMX8MM_PCIE_SW_Pxx_REQ,
+			.map = IMX8MM_PCIE_A53_DOMAIN,
+		},
+		.pgc   = IMX8MM_PGC_PCIE,
+	},
+
+	[IMX8MM_POWER_DOMAIN_USB_OTG1] = {
+		.genpd = {
+			.name = "usb-otg1",
+		},
+		.bits  = {
+			.pxx = IMX8MM_OTG1_SW_Pxx_REQ,
+			.map = IMX8MM_OTG1_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_OTG1,
+	},
+
+	[IMX8MM_POWER_DOMAIN_USB_OTG2] = {
+		.genpd = {
+			.name = "usb-otg2",
+		},
+		.bits  = {
+			.pxx = IMX8MM_OTG2_SW_Pxx_REQ,
+			.map = IMX8MM_OTG2_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_OTG2,
+	},
+
+	[IMX8MM_POWER_DOMAIN_DDR1] = {
+		.genpd = {
+			.name = "ddr1",
+		},
+		.bits  = {
+			.pxx = IMX8MM_DDR1_SW_Pxx_REQ,
+			.map = IMX8MM_DDR1_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_DDR1,
+	},
+
+	[IMX8MM_POWER_DOMAIN_GPU2D] = {
+		.genpd = {
+			.name = "gpu2d",
+		},
+		.bits  = {
+			.pxx = IMX8MM_GPU_2D_SW_PXX_REQ,
+			.map = IMX8MM_GPU_2D_A53_DOMAIN,
+			.hsk = IMX8MM_GPU_HSK_PWRDNREQN,
+		},
+		.pgc   = IMX8MM_PGC_GPU2D,
+	},
+
+
+	[IMX8MM_POWER_DOMAIN_GPU] = {
+		.genpd = {
+			.name = "gpu",
+		},
+		.bits  = {
+			.pxx = IMX8MM_GPU_SW_Pxx_REQ,
+			.map = IMX8MM_GPUMIX_A53_DOMAIN,
+			.hsk = IMX8MM_GPU_HSK_PWRDNREQN,
+		},
+		.pgc   = IMX8M_PGC_GPU,
+	},
+
+	[IMX8MM_POWER_DOMAIN_VPU] = {
+		.genpd = {
+			.name = "vpu",
+		},
+		.bits  = {
+			.pxx = IMX8MM_VPU_SW_Pxx_REQ,
+			.map = IMX8MM_VPUMIX_A53_DOMAIN,
+			.hsk = IMX8MM_VPU_HSK_PWRDNREQN,
+		},
+		.pgc   = IMX8M_PGC_VPU,
+	},
+
+	[IMX8MM_POWER_DOMAIN_GPU3D] = {
+		.genpd = {
+			.name = "gpu3d",
+		},
+		.bits  = {
+			.pxx = IMX8MM_GPU_3D_SW_Pxx_REQ,
+			.map = IMX8MM_GPU_3D_A53_DOMAIN,
+			.hsk = IMX8MM_GPU_HSK_PWRDNREQN,
+		},
+		.pgc   = IMX8MM_PGC_GPU2D,
+	},
+
+	[IMX8MM_POWER_DOMAIN_DISP] = {
+		.genpd = {
+			.name = "disp",
+		},
+		.bits  = {
+			.pxx = IMX8MM_DISP_SW_Pxx_REQ,
+			.map = IMX8MM_DISP_MIX_A53_DOMAIN,
+			.hsk = IMX8MM_DISP_HSK_PWRDNREQN,
+		},
+		.pgc   = IMX8M_PGC_DISP,
+	},
+
+	[IMX8MM_POWER_VPU_G1] = {
+		.genpd = {
+			.name = "vpu_g1",
+		},
+		.bits  = {
+			.pxx = IMX8MM_VPU_G1_SW_Pxx_REQ,
+			.map = IMX8MM_VPU_G1_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_MIPI_CSI1,
+	},
+
+	[IMX8MM_POWER_VPU_G2] = {
+		.genpd = {
+			.name = "vpu_g2",
+		},
+		.bits  = {
+			.pxx = IMX8MM_VPU_G2_SW_Pxx_REQ,
+			.map = IMX8MM_VPU_G2_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_MIPI_CSI2,
+	},
+
+	[IMX8MM_POWER_VPU_H1] = {
+		.genpd = {
+			.name = "vpu_h1",
+		},
+		.bits  = {
+			.pxx = IMX8MM_VPU_H1_SW_Pxx_REQ,
+			.map = IMX8MM_VPU_H1_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_PCIE2,
+	},
+};
+
+static const struct regmap_range imx8mm_yes_ranges[] = {
+		regmap_reg_range(GPC_LPCR_A_CORE_BSC,
+				 GPC_PU_PWRHSK),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_MIPI),
+				 GPC_PGC_SR(IMX8MM_PGC_MIPI)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_PCIE),
+				 GPC_PGC_SR(IMX8MM_PGC_PCIE)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_OTG1),
+				 GPC_PGC_SR(IMX8MM_PGC_OTG1)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_OTG2),
+				 GPC_PGC_SR(IMX8MM_PGC_OTG2)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_DDR1),
+				 GPC_PGC_SR(IMX8MM_PGC_DDR1)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_GPU2D),
+				 GPC_PGC_SR(IMX8MM_PGC_GPU2D)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_GPU),
+				 GPC_PGC_SR(IMX8MM_PGC_GPU)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU),
+				 GPC_PGC_SR(IMX8MM_PGC_VPU)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_DISP),
+				 GPC_PGC_SR(IMX8MM_PGC_DISP)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_G1),
+				 GPC_PGC_SR(IMX8MM_PGC_VPU_G1)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_G2),
+				 GPC_PGC_SR(IMX8MM_PGC_VPU_G2)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_H1),
+				 GPC_PGC_SR(IMX8MM_PGC_VPU_H1)),
+};
+
+static const struct regmap_access_table imx8mm_access_table = {
+	.yes_ranges	= imx8mm_yes_ranges,
+	.n_yes_ranges	= ARRAY_SIZE(imx8mm_yes_ranges),
+};
+
+static const struct imx_pgc_domain_data imx8mm_pgc_domain_data = {
+	.domains = imx8mm_pgc_domains,
+	.domains_num = ARRAY_SIZE(imx8mm_pgc_domains),
+	.reg_access_table = &imx8mm_access_table,
+};
+
 static int imx_pgc_get_clocks(struct imx_pgc_domain *domain)
 {
 	int i, ret;
@@ -641,6 +884,7 @@ static int imx_gpcv2_probe(struct platform_device *pdev)
 static const struct of_device_id imx_gpcv2_dt_ids[] = {
 	{ .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data, },
 	{ .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
+	{ .compatible = "fsl,imx8mm-gpc", .data = &imx8mm_pgc_domain_data, },
 	{ }
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
