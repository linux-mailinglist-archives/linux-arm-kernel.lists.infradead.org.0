Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E9E185A24
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 06:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ae036uWORhyQaCOyaSA9UmwP6gEg4llSvkzAAr3rcH0=; b=s+B3dhNT/rd5ZM
	27ycxwU58TkFqYhOaHZTI4R8pGYT67AbOvPyFvwbmMDEwObaktGn3HbvHudBfxmpRm3XVlot+KU5w
	ABuaPy1auway8rzT45L2b3Z/vge91YJyiZW+p/mhOm+Fj0SEVEgRRDIKgZhRAJbb+HbjyJmaFyt3x
	HurhWyUSDFVKQjteUyo/6LfW1TUY7MIQWk+lCxmBtDiQGqZsjfL9+w7o4ZQwsk1qBOQ+eOgf3xMF7
	NWWCe9hb9zQQByaYti6qNU+au8/9z28kIKG8ldn3HMnrsjaprMykOjZ0scUh8NqsQ7OH/WJsrVYjc
	3QlsyVFCpWV0CkqPRPOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDLXS-0004Ek-LP; Sun, 15 Mar 2020 05:10:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDLXJ-0003Ql-Qe
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 05:10:07 +0000
Received: by mail-pl1-x644.google.com with SMTP id j20so6274346pll.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Mar 2020 22:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s23IqWHm+4YdBVxKLV9+dw8Ig+I7LwtH5N9j7UZLiqw=;
 b=gywJFKfavAY6uDxQ1Kn0OAm3rMpvfeGnfRwPr6mM4K357+Tqw7gKU9/7B+vt238ul2
 Amfm9bNE72ozNWizh+w2aP/kWBeJqVSs1FJTS2Md8gY8+bay6u4VN4/icM1KOjsJLhd4
 eGbFUDxbkuc429CbwOOYi9Qg6bMvFuCHnsN0dEbHm9+bBoN42v5m/5GPEpIn7t+iI5Ih
 fF+ITWKQDKHSQbjIFK0UFAO7fjiXyVcROk5WquJpSX8ndKSDQlS8raW0Dn26fqHaVVWV
 axW7fBSstLcX2WZaUEx5D8FT4RRCAeY/SDk7gQ1knLr18ltOh6vr/84wf6N4M0kCEWBx
 LwZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s23IqWHm+4YdBVxKLV9+dw8Ig+I7LwtH5N9j7UZLiqw=;
 b=V7WdDOj14n5d/jtPEgmx62K+ShHlSNv3/4+tNjsYsk4nKxLgAm1PpYSAwZPgZr4KIT
 21sKAIm5QKgBRqr9ruHj0kAA+4gTKzIlhgT6ljov2FG0tTCCcTv9qKgmzKfGEpB8g9Zb
 fSZH8TFP9756W3VVUNSTTiA9ApjUKDH2aQhh7TvAcZTawmaRP0g/Yo9DgAN7xHdVQ7Tt
 ZCONIBXGtU176+jlpA60tnmKM2VzRPDxh+gH2PPJj/2zGWMIGb57Me0GWjsfzsLvdHAX
 NYGyYzreT568980HCwpXwwsarlf0Jc3t/9ZyIgC5l7MGVDLnxHCjsnyIeLd6BLeZIRzX
 HuvA==
X-Gm-Message-State: ANhLgQ1HUBMX1M9dg5ixjryyT9gEG9aVMRnTkfoWJSt71vbMSnRo/Eoa
 gYyS/f6npomFJu7strkDesGxog==
X-Google-Smtp-Source: ADFU+vsMXczaHvc9ZvzzvJSkN74Xjwxdnlfpp2mPgcBJRSn9WVH2LDUgXcaEIowRj5ftZRBu8+IkNQ==
X-Received: by 2002:a17:902:8f8e:: with SMTP id
 z14mr21109002plo.195.1584249003475; 
 Sat, 14 Mar 2020 22:10:03 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v67sm19168821pfc.120.2020.03.14.22.10.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2020 22:10:02 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: defconfig: Enable Qualcomm SDM845 audio configs
Date: Sat, 14 Mar 2020 22:08:27 -0700
Message-Id: <20200315050827.1575421-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_221005_934525_D952FCB9 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable soundwire, slimbus frameworks, the machine driver and the codec
drivers for WCD934x and WSA881x used on varios SDM845 based designs.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0a8a2ad94bef..f186d0424619 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -436,6 +436,7 @@ CONFIG_GPIO_MB86S7X=y
 CONFIG_GPIO_PL061=y
 CONFIG_GPIO_RCAR=y
 CONFIG_GPIO_UNIPHIER=y
+CONFIG_GPIO_WCD934X=m
 CONFIG_GPIO_XGENE=y
 CONFIG_GPIO_XGENE_SB=y
 CONFIG_GPIO_MAX732X=y
@@ -501,6 +502,7 @@ CONFIG_MFD_SPMI_PMIC=y
 CONFIG_MFD_RK808=y
 CONFIG_MFD_SEC_CORE=y
 CONFIG_MFD_ROHM_BD718XX=y
+CONFIG_MFD_WCD934X=m
 CONFIG_REGULATOR_FIXED_VOLTAGE=y
 CONFIG_REGULATOR_AXP20X=y
 CONFIG_REGULATOR_BD718XX=y
@@ -604,6 +606,7 @@ CONFIG_SND_HDA_CODEC_HDMI=m
 CONFIG_SND_SOC=y
 CONFIG_SND_BCM2835_SOC_I2S=m
 CONFIG_SND_MESON_AXG_SOUND_CARD=m
+CONFIG_SND_SOC_SDM845=m
 CONFIG_SND_SOC_ROCKCHIP=m
 CONFIG_SND_SOC_ROCKCHIP_SPDIF=m
 CONFIG_SND_SOC_ROCKCHIP_RT5645=m
@@ -616,6 +619,8 @@ CONFIG_SND_SOC_ES7134=m
 CONFIG_SND_SOC_ES7241=m
 CONFIG_SND_SOC_PCM3168A_I2C=m
 CONFIG_SND_SOC_TAS571X=m
+CONFIG_SND_SOC_WCD934X=m
+CONFIG_SND_SOC_WSA881X=m
 CONFIG_SND_SIMPLE_CARD=m
 CONFIG_SND_AUDIO_GRAPH_CARD=m
 CONFIG_I2C_HID=m
@@ -782,6 +787,8 @@ CONFIG_QCOM_SYSMON=m
 CONFIG_RPMSG_QCOM_GLINK_RPM=y
 CONFIG_RPMSG_QCOM_GLINK_SMEM=m
 CONFIG_RPMSG_QCOM_SMD=y
+CONFIG_SOUNDWIRE=m
+CONFIG_SOUNDWIRE_QCOM=m
 CONFIG_OWL_PM_DOMAINS=y
 CONFIG_RASPBERRYPI_POWER=y
 CONFIG_IMX_SCU_SOC=y
@@ -797,6 +804,7 @@ CONFIG_QCOM_SMD_RPM=y
 CONFIG_QCOM_SMP2P=y
 CONFIG_QCOM_SMSM=y
 CONFIG_QCOM_SOCINFO=m
+CONFIG_QCOM_APR=m
 CONFIG_ARCH_R8A774A1=y
 CONFIG_ARCH_R8A774B1=y
 CONFIG_ARCH_R8A774C0=y
@@ -883,6 +891,9 @@ CONFIG_FPGA_REGION=m
 CONFIG_OF_FPGA_REGION=m
 CONFIG_TEE=y
 CONFIG_OPTEE=y
+CONFIG_SLIMBUS=m
+CONFIG_SLIM_QCOM_CTRL=m
+CONFIG_SLIM_QCOM_NGD_CTRL=m
 CONFIG_EXT2_FS=y
 CONFIG_EXT3_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
