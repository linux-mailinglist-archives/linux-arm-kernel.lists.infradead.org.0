Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB7F1A241B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 16:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sz8+SHuCwBelh0HORyRbTW0BglucofMHSJXZ1wSKJ7U=; b=lWXFqn36YIqkCf
	u0HtGTNX4gdbBEEY7qm48nDmPo3FK8HfqPOHFXH1kNTMmhp/799YvoWJKtiqG24zUa/5BsQPnWVvJ
	ij+FueLWc16/VCOwT6BcdxobIJNBOtO4kqFTwVc2TFkw4BXakqO6YmMoi1HEKjR0fhZWbXubNk9T8
	xyZ/o/ZegF9EJJdhniHKOIZsnRyNhYhX8kNrfDKz725OZ/sxstWOPuqfwQw7Ual3EQZgxUVRlsgbm
	tW1xBiXQTdJ8uxEZsZy/QMEw/d/1WyklFeLvKtSiG8cd4nKBYdx6s070xyp8FrqEFmVrRzATmvYSs
	6JiUCV6P5vV4iL4wx+XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMBkI-0002co-Pj; Wed, 08 Apr 2020 14:32:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMBjJ-0001sD-E6
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 14:31:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id h15so8049713wrx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 07:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vyDE/DAow1HKfw9siXqu+BUO4Iv4LhO2/XGLlEGwwpM=;
 b=enzE2lZoy6PK42q1fBJmgw+P8pJ5fQLJlPJ86GI4CsGsBlyLD6VvpsSHVINFHI1pHS
 6aIeDtCJHV6wGb7MnKhkVpy6oItqyZUBmNz2aEyVFoXRbKAq4zbpaefxR0DwHjjKXalE
 vtt99ey5Do8kGr1BIfz6ao4QaaYrPcH5w83xQOjR9X8VFVX6CXjrG3ndW4UGYLJdd4iW
 MVgl83hovMLiv0SnCuEHRI9GNk7qdd7t6zZLFwOHdm4fWfBn/p0O7iuTGVI62bYSfZBA
 qltMjWIqClDTNa08iPcz6AUao2PWrW68i/Xu4ijxaFCDlVTV4MYmr+hwGSmz0aSvjPeN
 512g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vyDE/DAow1HKfw9siXqu+BUO4Iv4LhO2/XGLlEGwwpM=;
 b=DnxWSflHTc51cT/gU95UpIIEBct40DzDeJGX6WrIt1NDMSkiJCZBWqdyhcykr1MKZZ
 NxYONl1DrQ9ll8661QaTrJ0hJeD3OGqf4j0/peS/+JhEpU4k5Sp2CxEo73c5NYzp/Dl5
 ngfAEtxXnbH/2CwQPXKymv+Iqc5IUDQ1mVT0dcZX6IV5LiBR04VnIKrW6bUsT24tM3fg
 gzOW2I19JVEfV7rtt+nfDbZQfS6FuaL0JqewEYKIMsiMJUI2NvWv7zxO9lT/xlflAj6M
 F6q4IlpZBFyPKbU//w4n8g0dpfoqRxOO9NexKyIS687t7vsk/nojSxT9BqMrE0N3f6CI
 zqng==
X-Gm-Message-State: AGi0PuatsJyygi4Rsmk7t1m5d/7AVl/IWMyPCWKRmny5+cQ2wMLgs0d8
 ZKV63AvdfzOVRGzTwczfiTU=
X-Google-Smtp-Source: APiQypKltU+gZXosQgFXeWbDm5Ug2G9QbX9w0EJMILudxJET+MWXZkyb2dGVrPc548WClfwBq64jkA==
X-Received: by 2002:a5d:6183:: with SMTP id j3mr8798851wru.83.1586356260277;
 Wed, 08 Apr 2020 07:31:00 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id a10sm36268828wrm.87.2020.04.08.07.30.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 07:30:59 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [PATCH v2 5/5] arm64: defconfig: refresh
Date: Wed,  8 Apr 2020 16:30:40 +0200
Message-Id: <20200408143040.57458-6-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408143040.57458-1-max.krummenacher@toradex.com>
References: <20200408143040.57458-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_073101_490693_D2F81829 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Refresh with make defconfig savedefconfig

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

---

Changes in v2:
- add reviewed-by tags

 arch/arm64/configs/defconfig | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4a361734cfc71..a4baafe01c346 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -165,9 +165,9 @@ CONFIG_QRTR_SMD=m
 CONFIG_QRTR_TUN=m
 CONFIG_BPF_JIT=y
 CONFIG_CAN=m
+CONFIG_CAN_FLEXCAN=m
 CONFIG_CAN_RCAR=m
 CONFIG_CAN_RCAR_CANFD=m
-CONFIG_CAN_FLEXCAN=m
 CONFIG_BT=m
 CONFIG_BT_HIDP=m
 # CONFIG_BT_HS is not set
@@ -202,20 +202,19 @@ CONFIG_PCI_HOST_THUNDER_ECAM=y
 CONFIG_PCIE_ROCKCHIP_HOST=m
 CONFIG_PCIE_BRCMSTB=m
 CONFIG_PCI_LAYERSCAPE=y
-CONFIG_PCIE_LAYERSCAPE_GEN4=y
 CONFIG_PCI_HISI=y
 CONFIG_PCIE_QCOM=y
 CONFIG_PCIE_ARMADA_8K=y
 CONFIG_PCIE_KIRIN=y
 CONFIG_PCIE_HISI_STB=y
 CONFIG_PCIE_TEGRA194_HOST=m
+CONFIG_PCIE_LAYERSCAPE_GEN4=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_FW_LOADER_USER_HELPER=y
 CONFIG_FW_LOADER_USER_HELPER_FALLBACK=y
 CONFIG_HISILICON_LPC=y
 CONFIG_SIMPLE_PM_BUS=y
-CONFIG_FSL_MC_BUS=y
 CONFIG_MTD=y
 CONFIG_MTD_BLOCK=y
 CONFIG_MTD_CFI=y
@@ -494,10 +493,10 @@ CONFIG_SENSORS_INA3221=m
 CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
 CONFIG_CPU_THERMAL=y
 CONFIG_THERMAL_EMULATION=y
-CONFIG_QORIQ_THERMAL=m
-CONFIG_SUN8I_THERMAL=y
 CONFIG_IMX_SC_THERMAL=m
 CONFIG_IMX8MM_THERMAL=m
+CONFIG_QORIQ_THERMAL=m
+CONFIG_SUN8I_THERMAL=y
 CONFIG_ROCKCHIP_THERMAL=m
 CONFIG_RCAR_THERMAL=y
 CONFIG_RCAR_GEN3_THERMAL=y
@@ -610,10 +609,10 @@ CONFIG_DRM_MSM=m
 CONFIG_DRM_TEGRA=m
 CONFIG_DRM_PANEL_LVDS=m
 CONFIG_DRM_PANEL_SIMPLE=m
-CONFIG_DRM_SIMPLE_BRIDGE=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
 CONFIG_DRM_DISPLAY_CONNECTOR=m
 CONFIG_DRM_SII902X=m
+CONFIG_DRM_SIMPLE_BRIDGE=m
 CONFIG_DRM_THINE_THC63LVD1024=m
 CONFIG_DRM_TI_SN65DSI86=m
 CONFIG_DRM_I2C_ADV7511=m
@@ -661,7 +660,6 @@ CONFIG_SND_SOC_WSA881X=m
 CONFIG_SND_SIMPLE_CARD=m
 CONFIG_SND_AUDIO_GRAPH_CARD=m
 CONFIG_I2C_HID=m
-CONFIG_USB_CONN_GPIO=m
 CONFIG_USB=y
 CONFIG_USB_OTG=y
 CONFIG_USB_XHCI_HCD=y
@@ -796,14 +794,13 @@ CONFIG_QCOM_A53PLL=y
 CONFIG_QCOM_CLK_APCS_MSM8916=y
 CONFIG_QCOM_CLK_SMD_RPM=y
 CONFIG_QCOM_CLK_RPMH=y
-CONFIG_IPQ_GCC_8074=y
 CONFIG_IPQ_GCC_6018=y
+CONFIG_IPQ_GCC_8074=y
 CONFIG_MSM_GCC_8916=y
 CONFIG_MSM_GCC_8994=y
 CONFIG_MSM_MMCC_8996=y
 CONFIG_MSM_GCC_8998=y
 CONFIG_QCS_GCC_404=y
-CONFIG_SDM_GCC_845=y
 CONFIG_SDM_GPUCC_845=y
 CONFIG_SDM_DISPCC_845=y
 CONFIG_SM_GCC_8150=y
@@ -932,10 +929,10 @@ CONFIG_FPGA_REGION=m
 CONFIG_OF_FPGA_REGION=m
 CONFIG_TEE=y
 CONFIG_OPTEE=y
+CONFIG_MUX_MMIO=y
 CONFIG_SLIMBUS=m
 CONFIG_SLIM_QCOM_CTRL=m
 CONFIG_SLIM_QCOM_NGD_CTRL=m
-CONFIG_MUX_MMIO=y
 CONFIG_EXT2_FS=y
 CONFIG_EXT3_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
