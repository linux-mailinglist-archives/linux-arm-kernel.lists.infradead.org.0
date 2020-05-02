Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DF41C22BB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 06:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=R8OehNszASq7Ie6ORPeUiivo6VJY8blp5bOZKMS/TMk=; b=V/j
	gWDI3PrMzmLP1nS2ylXh36eIzbDRBZqK2SHvy7TsVrshe9CKhEBG1R7Yt/z04FDXcMQpVMi9nRY3h
	9L3fM+7SzpJZM5nNmpPsvuhbWGUR/lBwEkznhY4coIe6WMKy/r3Dtpp19qI8VOpelOFe4UXqhC34v
	RJKs54UrMthyZU02Fw8bKYq+vNGOdkEusgBv+oMHtAz2vjSF8OBkbJrGwTiLnMStKsKkvtPnh3fqm
	bCHiCXZxTOpwvjD0FbYMaozhb25Vya0ri2T3i6ltNGAzPjJ0tqGAJko9omTsNi+CB+d3VtXSLXOKw
	4bd9NJDaeOvhVi0zRtcoW/AFJN+dzcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUjgj-00009l-V0; Sat, 02 May 2020 04:23:41 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUjge-00009H-Nh
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 04:23:38 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ms17so821912pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 21:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=B5O6bNLv6v1kkgNv2oLyV6/5KsUPHviWj2aSnXUWZ5I=;
 b=ncLxx5wynfnL0b2iuPI0E3Fas7gvAovyZaKxcXmJJBZWRgiPxYsEPjcN2MrKKqajL0
 s/xUC+XYBjPT8rXp3FNRyhQp4JaxerPh1xDkD+ze5rMnK1AuLHQpksR2UjDgWgMxR011
 /+D6650ANWr0TR0fUwhYBTohT/IZJab7FjdN2JPiategBGZ6FPxSGfhG/6wJ9fcyhhnA
 5ro0Ol+a7FSDXBdUoQepQwfIclwaKm/3O1M8DAiaUshHENTk2w0OWtt0097QZ9bx9Jmc
 2PzTPkvR1wofetxRV+rDdZ1H6m+AjNPtppU5DQaWMj+BGeDGw35FE9EKmDoJTCKNgyuy
 mwKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=B5O6bNLv6v1kkgNv2oLyV6/5KsUPHviWj2aSnXUWZ5I=;
 b=Ldn4i8pHHQ+if3ukMWhz9Ggv8sc8SyF5u1gYLLqd+FLFzsOjyR5eBvD0sccWUi9ct1
 EQblT8rInicCthsmMIkiWp4xyjYDo+sjKGxthpN0GJYC7pkM0Enejz1U5GQbcA4/lYzk
 xrPC8VCeyYqDoGuX4lxu+NmHrrHTClL0BjdYqofCinQnRsg6xyF+y/bMQ+kGN+WJyGKX
 wTHg5o6V6PQDteVyoNwx5cEWtBa8d1Trn7CdKVFH8gmDen8rlJLF/dsK+Dc3dGYvcGNq
 zID7cHDZlvORKHDT6BwhDKCfDdEsbdSJWRaKzyMVCArSTWzDrrSSX5+xEOXmAq2B7PJu
 HizQ==
X-Gm-Message-State: AGi0PubJaZ4+ZjA42yGJwyTQK2BvBqw0F0/IdXqrd2M7BeJah3IyNnta
 +Y8pSjI5aEsFKqZyqGj8dqPp2byP
X-Google-Smtp-Source: APiQypI9DsptJLWsDzkEPvpT6vGtUmhwoo9EJPRNZEIfGKhoMD9Kr+U51KQ/2L0TGIpok4MdV8IdEQ==
X-Received: by 2002:a17:902:7d98:: with SMTP id
 a24mr7225182plm.97.1588393414612; 
 Fri, 01 May 2020 21:23:34 -0700 (PDT)
Received: from localhost.localdomain (unknown-224-80.windriver.com.
 [147.11.224.80])
 by smtp.gmail.com with ESMTPSA id r78sm3045531pgr.40.2020.05.01.21.23.33
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Fri, 01 May 2020 21:23:33 -0700 (PDT)
From: Bin Meng <bmeng.cn@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm: Drop CONFIG_MTD_M25P80 in various defconfig files
Date: Fri,  1 May 2020 21:23:28 -0700
Message-Id: <1588393408-31225-1-git-send-email-bmeng.cn@gmail.com>
X-Mailer: git-send-email 1.7.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_212336_772708_54B89022 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bmeng.cn[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bin Meng <bin.meng@windriver.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bin Meng <bin.meng@windriver.com>

Drop CONFIG_MTD_M25P80 that was removed in
commit b35b9a10362d ("mtd: spi-nor: Move m25p80 code in spi-nor.c")

Signed-off-by: Bin Meng <bin.meng@windriver.com>
---

 arch/arm/configs/axm55xx_defconfig     | 1 -
 arch/arm/configs/davinci_all_defconfig | 1 -
 arch/arm/configs/dove_defconfig        | 1 -
 arch/arm/configs/imx_v6_v7_defconfig   | 1 -
 arch/arm/configs/keystone_defconfig    | 1 -
 arch/arm/configs/mvebu_v5_defconfig    | 1 -
 arch/arm/configs/mvebu_v7_defconfig    | 1 -
 arch/arm/configs/mxs_defconfig         | 1 -
 arch/arm/configs/pxa_defconfig         | 1 -
 arch/arm/configs/qcom_defconfig        | 1 -
 arch/arm/configs/sama5_defconfig       | 1 -
 arch/arm/configs/socfpga_defconfig     | 1 -
 arch/arm/configs/tegra_defconfig       | 1 -
 13 files changed, 13 deletions(-)

diff --git a/arch/arm/configs/axm55xx_defconfig b/arch/arm/configs/axm55xx_defconfig
index 4607521..c731d4a 100644
--- a/arch/arm/configs/axm55xx_defconfig
+++ b/arch/arm/configs/axm55xx_defconfig
@@ -88,7 +88,6 @@ CONFIG_MTD_CFI_AMDSTD=y
 CONFIG_MTD_CFI_STAA=y
 CONFIG_MTD_PHYSMAP=y
 CONFIG_MTD_PHYSMAP_OF=y
-CONFIG_MTD_M25P80=y
 CONFIG_PROC_DEVICETREE=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_RAM=y
diff --git a/arch/arm/configs/davinci_all_defconfig b/arch/arm/configs/davinci_all_defconfig
index e849367..4d8f6f6 100644
--- a/arch/arm/configs/davinci_all_defconfig
+++ b/arch/arm/configs/davinci_all_defconfig
@@ -75,7 +75,6 @@ CONFIG_MTD_CFI=m
 CONFIG_MTD_CFI_INTELEXT=m
 CONFIG_MTD_CFI_AMDSTD=m
 CONFIG_MTD_PHYSMAP=m
-CONFIG_MTD_M25P80=m
 CONFIG_MTD_RAW_NAND=m
 CONFIG_MTD_NAND_DAVINCI=m
 CONFIG_MTD_SPI_NOR=m
diff --git a/arch/arm/configs/dove_defconfig b/arch/arm/configs/dove_defconfig
index e70c997..546afaf 100644
--- a/arch/arm/configs/dove_defconfig
+++ b/arch/arm/configs/dove_defconfig
@@ -44,7 +44,6 @@ CONFIG_MTD_CFI_GEOMETRY=y
 CONFIG_MTD_CFI_INTELEXT=y
 CONFIG_MTD_CFI_STAA=y
 CONFIG_MTD_PHYSMAP=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_SPI_NOR=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_RAM=y
diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 5a20d12..308de35 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -110,7 +110,6 @@ CONFIG_MTD_CFI_AMDSTD=y
 CONFIG_MTD_CFI_STAA=y
 CONFIG_MTD_PHYSMAP_OF=y
 CONFIG_MTD_DATAFLASH=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_SST25L=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_GPMI_NAND=y
diff --git a/arch/arm/configs/keystone_defconfig b/arch/arm/configs/keystone_defconfig
index 11e2211..eeaa140 100644
--- a/arch/arm/configs/keystone_defconfig
+++ b/arch/arm/configs/keystone_defconfig
@@ -121,7 +121,6 @@ CONFIG_MTD=y
 CONFIG_MTD_CMDLINE_PARTS=y
 CONFIG_MTD_BLOCK=y
 CONFIG_MTD_PLATRAM=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_DAVINCI=y
 CONFIG_MTD_SPI_NOR=y
diff --git a/arch/arm/configs/mvebu_v5_defconfig b/arch/arm/configs/mvebu_v5_defconfig
index 226f2e9..1859097 100644
--- a/arch/arm/configs/mvebu_v5_defconfig
+++ b/arch/arm/configs/mvebu_v5_defconfig
@@ -75,7 +75,6 @@ CONFIG_MTD_CFI_GEOMETRY=y
 CONFIG_MTD_CFI_INTELEXT=y
 CONFIG_MTD_CFI_STAA=y
 CONFIG_MTD_PHYSMAP=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_ORION=y
 CONFIG_MTD_SPI_NOR=y
diff --git a/arch/arm/configs/mvebu_v7_defconfig b/arch/arm/configs/mvebu_v7_defconfig
index cddce57..c8f4723 100644
--- a/arch/arm/configs/mvebu_v7_defconfig
+++ b/arch/arm/configs/mvebu_v7_defconfig
@@ -50,7 +50,6 @@ CONFIG_MTD_CFI_INTELEXT=y
 CONFIG_MTD_CFI_AMDSTD=y
 CONFIG_MTD_CFI_STAA=y
 CONFIG_MTD_PHYSMAP_OF=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_MARVELL=y
 CONFIG_MTD_SPI_NOR=y
diff --git a/arch/arm/configs/mxs_defconfig b/arch/arm/configs/mxs_defconfig
index a9c6f32..1322ebd 100644
--- a/arch/arm/configs/mxs_defconfig
+++ b/arch/arm/configs/mxs_defconfig
@@ -46,7 +46,6 @@ CONFIG_MTD=y
 CONFIG_MTD_CMDLINE_PARTS=y
 CONFIG_MTD_BLOCK=y
 CONFIG_MTD_DATAFLASH=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_SST25L=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_GPMI_NAND=y
diff --git a/arch/arm/configs/pxa_defconfig b/arch/arm/configs/pxa_defconfig
index b817c57..50bbfdd 100644
--- a/arch/arm/configs/pxa_defconfig
+++ b/arch/arm/configs/pxa_defconfig
@@ -181,7 +181,6 @@ CONFIG_MTD_RAM=m
 CONFIG_MTD_ROM=m
 CONFIG_MTD_COMPLEX_MAPPINGS=y
 CONFIG_MTD_PXA2XX=m
-CONFIG_MTD_M25P80=m
 CONFIG_MTD_BLOCK2MTD=y
 CONFIG_MTD_DOCG3=m
 CONFIG_MTD_RAW_NAND=m
diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
index c882167..0a90c8d 100644
--- a/arch/arm/configs/qcom_defconfig
+++ b/arch/arm/configs/qcom_defconfig
@@ -62,7 +62,6 @@ CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_MTD=y
 CONFIG_MTD_BLOCK=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_QCOM=y
 CONFIG_MTD_SPI_NOR=y
diff --git a/arch/arm/configs/sama5_defconfig b/arch/arm/configs/sama5_defconfig
index bab7861..7e9ec6f 100644
--- a/arch/arm/configs/sama5_defconfig
+++ b/arch/arm/configs/sama5_defconfig
@@ -63,7 +63,6 @@ CONFIG_MTD=y
 CONFIG_MTD_CMDLINE_PARTS=y
 CONFIG_MTD_BLOCK=y
 CONFIG_MTD_CFI=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_ATMEL=y
 CONFIG_MTD_SPI_NOR=y
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index e73c97b..04c8bd3 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -48,7 +48,6 @@ CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_MTD=y
 CONFIG_MTD_BLOCK=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_DENALI_DT=y
 CONFIG_MTD_SPI_NOR=y
diff --git a/arch/arm/configs/tegra_defconfig b/arch/arm/configs/tegra_defconfig
index aa94369..6a7988a 100644
--- a/arch/arm/configs/tegra_defconfig
+++ b/arch/arm/configs/tegra_defconfig
@@ -76,7 +76,6 @@ CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_TEGRA_GMI=y
 CONFIG_MTD=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_SPI_NOR=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_AD525X_DPOT=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
