Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D019FED33A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 12:54:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5bEfJ1q3bZI3jLmXE2Kjajr13VP/yBHtdAASmXeJl+E=; b=DV6N4VqIVD2P5X
	ZOPNhdT25SGfnsFbp+bB0+2vZZ9GFCqJXLiygTa8vtcbFNwVh7yj/Kj8CYwLvyHXiV0fDDOlWqtzU
	fyu2xvfIkHbo6jd8TFVNomNtz0zkNOX2NkZDr7+zQkr1vg23PLFRf4pO09yG8l0TAa5TBYE+3yoWe
	vr1jcDYL+hkYZYnfbICp9bWgKPDIuk2uJZvGs0u1889fz8q4WXgv4QEDlbksD3YBxslaC8Qp+AJMR
	l6vvJDgmMUNFFCC6IUDQWa/SOugJH4vPBhqrCet1CzxgC7U4OzOJgKuBFxYi5XMphOAidCtDR1kQG
	abECQGMwXsHV2onqzc8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRESh-0002sf-VB; Sun, 03 Nov 2019 11:54:27 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRESa-0002s3-Ua
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 11:54:22 +0000
Received: by mail-wr1-x435.google.com with SMTP id f2so5043121wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 03:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WDfC/vDHvSuKvbVsHEI3wh5xMkfZfhaT91vGl0BNB7I=;
 b=l7XCMU7/nEoBrkPkmAshueVY1kgWBBr7ScCMSkRMyHqadH3fDXVFcQQNZHUU1a82y6
 s3twOTBkT7rxBdNwrLlvJS6Jq9qJZhJtYiF5U540oN0UX8gCPKhTfmVJDpbP+4u7C2yq
 YZNipefSERaKyaI5VPLTskkdgWnQauIKEFbGq/tPf4BotTbSBaWiOJCr7nRibPVdL1h8
 LR//uE3AT5phf1x1uaAnvAabErF1DFyM9bb03kBmVdNcnSJ//LlKaakM/GYjvlUrKaiB
 aQFzk6SUkKXV3tdbXkjSVvCGgYLNaWhqmgao9CiD8Mp5joUZXRkXnqu/StKh+5OLmdiX
 LO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WDfC/vDHvSuKvbVsHEI3wh5xMkfZfhaT91vGl0BNB7I=;
 b=f9ylD4CR/0utO0b3rEYIWaFQh8az9fOadzFJYK16k4PKed23PKWXuwvjZ1GITrRGCI
 TFJIE4tmalSf1vnzA4ZbXf6pYSukUa5x6QPQLMBSb/5HuBTsOps6G3AyTTUGYeXM45Km
 8n2vS1DwbWtJQhQ3574kIqu3knhKfTd9Jo6S/e+iE/MAuCgc2LUBGMSR3K2nA0sHfGq6
 tvwf3tKKsg/9gEEl7T177c1rwSCl+FW61+Zz8OlZ/fqrXXg5yS27FGyZZW5aVos6nU/+
 xgsOOu6IfMLSO5pHiO+fDFe3kKPC01JaWTZsooyHBHHkuvXMxXAaMJv0ChoExOgzjB6T
 zppQ==
X-Gm-Message-State: APjAAAVxrOhj6khdrL7izAO71dy05t28hi0HOD95hAj/gHXbrPmvdfyB
 /TgNAL0OqWMcxKTkaYxZhZw=
X-Google-Smtp-Source: APXvYqzxamlU5K1hJ74n4rwlw8ExJEtpNzJVTB2v9fOuBccqGKeuc+2iwSAwN2QYJUnRpvWlb6spSQ==
X-Received: by 2002:a5d:414a:: with SMTP id c10mr1614164wrq.100.1572782058182; 
 Sun, 03 Nov 2019 03:54:18 -0800 (PST)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id t13sm7121987wrr.88.2019.11.03.03.54.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 03:54:16 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: memory: Add Tegra194 memory client IDs
Date: Sun,  3 Nov 2019 12:54:14 +0100
Message-Id: <20191103115415.6532-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_035421_012944_2D581010 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Mikko Perttunen <cyndis@kapsi.fi>,
 Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <mripard@kernel.org>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Define the IDs for the memory clients found on Tegra194. These IDs will
be used in device tree to describe the connections of each device to the
memory controller.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 include/dt-bindings/memory/tegra194-mc.h | 269 +++++++++++++++++++++++
 1 file changed, 269 insertions(+)

diff --git a/include/dt-bindings/memory/tegra194-mc.h b/include/dt-bindings/memory/tegra194-mc.h
index 5370f0df07d5..eed48b746bc9 100644
--- a/include/dt-bindings/memory/tegra194-mc.h
+++ b/include/dt-bindings/memory/tegra194-mc.h
@@ -138,4 +138,273 @@
 #define TEGRA194_SID_VI_VM3		0x63
 #define TEGRA194_SID_RCE_SERVER		0x64
 
+/*
+ * memory client IDs
+ */
+
+/* Misses from System Memory Management Unit (SMMU) Page Table Cache (PTC) */
+#define TEGRA194_MEMORY_CLIENT_PTCR 0x00
+/* MSS internal memqual MIU7 read clients */
+#define TEGRA194_MEMORY_CLIENT_MIU7R 0x01
+/* MSS internal memqual MIU7 write clients */
+#define TEGRA194_MEMORY_CLIENT_MIU7W 0x02
+/* High-definition audio (HDA) read clients */
+#define TEGRA194_MEMORY_CLIENT_HDAR 0x15
+/* Host channel data read clients */
+#define TEGRA194_MEMORY_CLIENT_HOST1XDMAR 0x16
+#define TEGRA194_MEMORY_CLIENT_NVENCSRD 0x1c
+/* SATA read clients */
+#define TEGRA194_MEMORY_CLIENT_SATAR 0x1f
+/* Reads from Cortex-A9 4 CPU cores via the L2 cache */
+#define TEGRA194_MEMORY_CLIENT_MPCORER 0x27
+#define TEGRA194_MEMORY_CLIENT_NVENCSWR 0x2b
+/* High-definition audio (HDA) write clients */
+#define TEGRA194_MEMORY_CLIENT_HDAW 0x35
+/* Writes from Cortex-A9 4 CPU cores via the L2 cache */
+#define TEGRA194_MEMORY_CLIENT_MPCOREW 0x39
+/* SATA write clients */
+#define TEGRA194_MEMORY_CLIENT_SATAW 0x3d
+/* ISP read client for Crossbar A */
+#define TEGRA194_MEMORY_CLIENT_ISPRA 0x44
+/* ISP read client 1 for Crossbar A */
+#define TEGRA194_MEMORY_CLIENT_ISPFALR 0x45
+/* ISP Write client for Crossbar A */
+#define TEGRA194_MEMORY_CLIENT_ISPWA 0x46
+/* ISP Write client Crossbar B */
+#define TEGRA194_MEMORY_CLIENT_ISPWB 0x47
+/* XUSB_HOST read clients */
+#define TEGRA194_MEMORY_CLIENT_XUSB_HOSTR 0x4a
+/* XUSB_HOST write clients */
+#define TEGRA194_MEMORY_CLIENT_XUSB_HOSTW 0x4b
+/* XUSB read clients */
+#define TEGRA194_MEMORY_CLIENT_XUSB_DEVR 0x4c
+/* XUSB_DEV write clients */
+#define TEGRA194_MEMORY_CLIENT_XUSB_DEVW 0x4d
+/* sdmmca memory read client */
+#define TEGRA194_MEMORY_CLIENT_SDMMCRA 0x60
+/* sdmmc memory read client */
+#define TEGRA194_MEMORY_CLIENT_SDMMCR 0x62
+/* sdmmcd memory read client */
+#define TEGRA194_MEMORY_CLIENT_SDMMCRAB 0x63
+/* sdmmca memory write client */
+#define TEGRA194_MEMORY_CLIENT_SDMMCWA 0x64
+/* sdmmc memory write client */
+#define TEGRA194_MEMORY_CLIENT_SDMMCW 0x66
+/* sdmmcd memory write client */
+#define TEGRA194_MEMORY_CLIENT_SDMMCWAB 0x67
+#define TEGRA194_MEMORY_CLIENT_VICSRD 0x6c
+#define TEGRA194_MEMORY_CLIENT_VICSWR 0x6d
+/* VI Write client */
+#define TEGRA194_MEMORY_CLIENT_VIW 0x72
+#define TEGRA194_MEMORY_CLIENT_NVDECSRD 0x78
+#define TEGRA194_MEMORY_CLIENT_NVDECSWR 0x79
+/* Audio Processing (APE) engine read clients */
+#define TEGRA194_MEMORY_CLIENT_APER 0x7a
+/* Audio Processing (APE) engine write clients */
+#define TEGRA194_MEMORY_CLIENT_APEW 0x7b
+#define TEGRA194_MEMORY_CLIENT_NVJPGSRD 0x7e
+#define TEGRA194_MEMORY_CLIENT_NVJPGSWR 0x7f
+/* AXI AP and DFD-AUX0/1 read clients Both share the same interface on the on MSS */
+#define TEGRA194_MEMORY_CLIENT_AXIAPR 0x82
+/* AXI AP and DFD-AUX0/1 write clients Both sahre the same interface on MSS */
+#define TEGRA194_MEMORY_CLIENT_AXIAPW 0x83
+/* ETR read clients */
+#define TEGRA194_MEMORY_CLIENT_ETRR 0x84
+/* ETR write clients */
+#define TEGRA194_MEMORY_CLIENT_ETRW 0x85
+/* AXI Switch read client */
+#define TEGRA194_MEMORY_CLIENT_AXISR 0x8c
+/* AXI Switch write client */
+#define TEGRA194_MEMORY_CLIENT_AXISW 0x8d
+/* EQOS read client */
+#define TEGRA194_MEMORY_CLIENT_EQOSR 0x8e
+/* EQOS write client */
+#define TEGRA194_MEMORY_CLIENT_EQOSW 0x8f
+/* UFSHC read client */
+#define TEGRA194_MEMORY_CLIENT_UFSHCR 0x90
+/* UFSHC write client */
+#define TEGRA194_MEMORY_CLIENT_UFSHCW 0x91
+/* NVDISPLAY read client */
+#define TEGRA194_MEMORY_CLIENT_NVDISPLAYR 0x92
+/* BPMP read client */
+#define TEGRA194_MEMORY_CLIENT_BPMPR 0x93
+/* BPMP write client */
+#define TEGRA194_MEMORY_CLIENT_BPMPW 0x94
+/* BPMPDMA read client */
+#define TEGRA194_MEMORY_CLIENT_BPMPDMAR 0x95
+/* BPMPDMA write client */
+#define TEGRA194_MEMORY_CLIENT_BPMPDMAW 0x96
+/* AON read client */
+#define TEGRA194_MEMORY_CLIENT_AONR 0x97
+/* AON write client */
+#define TEGRA194_MEMORY_CLIENT_AONW 0x98
+/* AONDMA read client */
+#define TEGRA194_MEMORY_CLIENT_AONDMAR 0x99
+/* AONDMA write client */
+#define TEGRA194_MEMORY_CLIENT_AONDMAW 0x9a
+/* SCE read client */
+#define TEGRA194_MEMORY_CLIENT_SCER 0x9b
+/* SCE write client */
+#define TEGRA194_MEMORY_CLIENT_SCEW 0x9c
+/* SCEDMA read client */
+#define TEGRA194_MEMORY_CLIENT_SCEDMAR 0x9d
+/* SCEDMA write client */
+#define TEGRA194_MEMORY_CLIENT_SCEDMAW 0x9e
+/* APEDMA read client */
+#define TEGRA194_MEMORY_CLIENT_APEDMAR 0x9f
+/* APEDMA write client */
+#define TEGRA194_MEMORY_CLIENT_APEDMAW 0xa0
+/* NVDISPLAY read client instance 2 */
+#define TEGRA194_MEMORY_CLIENT_NVDISPLAYR1 0xa1
+#define TEGRA194_MEMORY_CLIENT_VICSRD1 0xa2
+#define TEGRA194_MEMORY_CLIENT_NVDECSRD1 0xa3
+/* MSS internal memqual MIU0 read clients */
+#define TEGRA194_MEMORY_CLIENT_MIU0R 0xa6
+/* MSS internal memqual MIU0 write clients */
+#define TEGRA194_MEMORY_CLIENT_MIU0W 0xa7
+/* MSS internal memqual MIU1 read clients */
+#define TEGRA194_MEMORY_CLIENT_MIU1R 0xa8
+/* MSS internal memqual MIU1 write clients */
+#define TEGRA194_MEMORY_CLIENT_MIU1W 0xa9
+/* MSS internal memqual MIU2 read clients */
+#define TEGRA194_MEMORY_CLIENT_MIU2R 0xae
+/* MSS internal memqual MIU2 write clients */
+#define TEGRA194_MEMORY_CLIENT_MIU2W 0xaf
+/* MSS internal memqual MIU3 read clients */
+#define TEGRA194_MEMORY_CLIENT_MIU3R 0xb0
+/* MSS internal memqual MIU3 write clients */
+#define TEGRA194_MEMORY_CLIENT_MIU3W 0xb1
+/* MSS internal memqual MIU4 read clients */
+#define TEGRA194_MEMORY_CLIENT_MIU4R 0xb2
+/* MSS internal memqual MIU4 write clients */
+#define TEGRA194_MEMORY_CLIENT_MIU4W 0xb3
+#define TEGRA194_MEMORY_CLIENT_DPMUR 0xb4
+#define TEGRA194_MEMORY_CLIENT_DPMUW 0xb5
+#define TEGRA194_MEMORY_CLIENT_NVL0R 0xb6
+#define TEGRA194_MEMORY_CLIENT_NVL0W 0xb7
+#define TEGRA194_MEMORY_CLIENT_NVL1R 0xb8
+#define TEGRA194_MEMORY_CLIENT_NVL1W 0xb9
+#define TEGRA194_MEMORY_CLIENT_NVL2R 0xba
+#define TEGRA194_MEMORY_CLIENT_NVL2W 0xbb
+/* VI FLACON read clients */
+#define TEGRA194_MEMORY_CLIENT_VIFALR 0xbc
+/* VIFAL write clients */
+#define TEGRA194_MEMORY_CLIENT_VIFALW 0xbd
+/* DLA0ARDA read clients */
+#define TEGRA194_MEMORY_CLIENT_DLA0RDA 0xbe
+/* DLA0 Falcon read clients */
+#define TEGRA194_MEMORY_CLIENT_DLA0FALRDB 0xbf
+/* DLA0 write clients */
+#define TEGRA194_MEMORY_CLIENT_DLA0WRA 0xc0
+/* DLA0 write clients */
+#define TEGRA194_MEMORY_CLIENT_DLA0FALWRB 0xc1
+/* DLA1ARDA read clients */
+#define TEGRA194_MEMORY_CLIENT_DLA1RDA 0xc2
+/* DLA1 Falcon read clients */
+#define TEGRA194_MEMORY_CLIENT_DLA1FALRDB 0xc3
+/* DLA1 write clients */
+#define TEGRA194_MEMORY_CLIENT_DLA1WRA 0xc4
+/* DLA1 write clients */
+#define TEGRA194_MEMORY_CLIENT_DLA1FALWRB 0xc5
+/* PVA0RDA read clients */
+#define TEGRA194_MEMORY_CLIENT_PVA0RDA 0xc6
+/* PVA0RDB read clients */
+#define TEGRA194_MEMORY_CLIENT_PVA0RDB 0xc7
+/* PVA0RDC read clients */
+#define TEGRA194_MEMORY_CLIENT_PVA0RDC 0xc8
+/* PVA0WRA write clients */
+#define TEGRA194_MEMORY_CLIENT_PVA0WRA 0xc9
+/* PVA0WRB write clients */
+#define TEGRA194_MEMORY_CLIENT_PVA0WRB 0xca
+/* PVA0WRC write clients */
+#define TEGRA194_MEMORY_CLIENT_PVA0WRC 0xcb
+/* PVA1RDA read clients */
+#define TEGRA194_MEMORY_CLIENT_PVA1RDA 0xcc
+/* PVA1RDB read clients */
+#define TEGRA194_MEMORY_CLIENT_PVA1RDB 0xcd
+/* PVA1RDC read clients */
+#define TEGRA194_MEMORY_CLIENT_PVA1RDC 0xce
+/* PVA1WRA write clients */
+#define TEGRA194_MEMORY_CLIENT_PVA1WRA 0xcf
+/* PVA1WRB write clients */
+#define TEGRA194_MEMORY_CLIENT_PVA1WRB 0xd0
+/* PVA1WRC write clients */
+#define TEGRA194_MEMORY_CLIENT_PVA1WRC 0xd1
+/* RCE read client */
+#define TEGRA194_MEMORY_CLIENT_RCER 0xd2
+/* RCE write client */
+#define TEGRA194_MEMORY_CLIENT_RCEW 0xd3
+/* RCEDMA read client */
+#define TEGRA194_MEMORY_CLIENT_RCEDMAR 0xd4
+/* RCEDMA write client */
+#define TEGRA194_MEMORY_CLIENT_RCEDMAW 0xd5
+#define TEGRA194_MEMORY_CLIENT_NVENC1SRD 0xd6
+#define TEGRA194_MEMORY_CLIENT_NVENC1SWR 0xd7
+/* PCIE0 read clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE0R 0xd8
+/* PCIE0 write clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE0W 0xd9
+/* PCIE1 read clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE1R 0xda
+/* PCIE1 write clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE1W 0xdb
+/* PCIE2 read clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE2AR 0xdc
+/* PCIE2 write clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE2AW 0xdd
+/* PCIE3 read clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE3R 0xde
+/* PCIE3 write clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE3W 0xdf
+/* PCIE4 read clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE4R 0xe0
+/* PCIE4 write clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE4W 0xe1
+/* PCIE5 read clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE5R 0xe2
+/* PCIE5 write clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE5W 0xe3
+/* ISP read client 1 for Crossbar A */
+#define TEGRA194_MEMORY_CLIENT_ISPFALW 0xe4
+#define TEGRA194_MEMORY_CLIENT_NVL3R 0xe5
+#define TEGRA194_MEMORY_CLIENT_NVL3W 0xe6
+#define TEGRA194_MEMORY_CLIENT_NVL4R 0xe7
+#define TEGRA194_MEMORY_CLIENT_NVL4W 0xe8
+/* DLA0ARDA1 read clients */
+#define TEGRA194_MEMORY_CLIENT_DLA0RDA1 0xe9
+/* DLA1ARDA1 read clients */
+#define TEGRA194_MEMORY_CLIENT_DLA1RDA1 0xea
+/* PVA0RDA1 read clients */
+#define TEGRA194_MEMORY_CLIENT_PVA0RDA1 0xeb
+/* PVA0RDB1 read clients */
+#define TEGRA194_MEMORY_CLIENT_PVA0RDB1 0xec
+/* PVA1RDA1 read clients */
+#define TEGRA194_MEMORY_CLIENT_PVA1RDA1 0xed
+/* PVA1RDB1 read clients */
+#define TEGRA194_MEMORY_CLIENT_PVA1RDB1 0xee
+/* PCIE5r1 read clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE5R1 0xef
+#define TEGRA194_MEMORY_CLIENT_NVENCSRD1 0xf0
+#define TEGRA194_MEMORY_CLIENT_NVENC1SRD1 0xf1
+/* ISP read client for Crossbar A */
+#define TEGRA194_MEMORY_CLIENT_ISPRA1 0xf2
+/* PCIE0 read clients */
+#define TEGRA194_MEMORY_CLIENT_PCIE0R1 0xf3
+#define TEGRA194_MEMORY_CLIENT_NVL0RHP 0xf4
+#define TEGRA194_MEMORY_CLIENT_NVL1RHP 0xf5
+#define TEGRA194_MEMORY_CLIENT_NVL2RHP 0xf6
+#define TEGRA194_MEMORY_CLIENT_NVL3RHP 0xf7
+#define TEGRA194_MEMORY_CLIENT_NVL4RHP 0xf8
+#define TEGRA194_MEMORY_CLIENT_NVDEC1SRD 0xf9
+#define TEGRA194_MEMORY_CLIENT_NVDEC1SRD1 0xfa
+#define TEGRA194_MEMORY_CLIENT_NVDEC1SWR 0xfb
+/* MSS internal memqual MIU5 read clients */
+#define TEGRA194_MEMORY_CLIENT_MIU5R 0xfc
+/* MSS internal memqual MIU5 write clients */
+#define TEGRA194_MEMORY_CLIENT_MIU5W 0xfd
+/* MSS internal memqual MIU6 read clients */
+#define TEGRA194_MEMORY_CLIENT_MIU6R 0xfe
+/* MSS internal memqual MIU6 write clients */
+#define TEGRA194_MEMORY_CLIENT_MIU6W 0xff
+
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
