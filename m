Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9137C191592
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 17:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zik1Px+HT+laKKiV8nI0Mbpr8McBLQoeGsvVPJ47QtU=; b=YXBi2i2dg0zqLi
	7K6qnID8CEd106mAzHY4xzTA5Tp9oR+mvafv68bIS3v5jH+bqJLZiai6B3AE+dt6LyCIVCm3g1jxO
	mFSDXwpfNqK1z9kUCPfsgqt6QdsaSeNckoW6oYOEoKeK72q+OlvKgUs/A6bzIo9j1T7BBzEXCHLxz
	Iekh5w22bFBatPJRDAoSG535tDND9jH1EAJcfJD+B9t5aR5mfT4jeYA8SqwNahfhEMuzuIuXKPzfX
	BQulj8cISLqi8wVSsQZRUMMl/QZghRI1vGeR+5FmRciTT2bZAv8zpxZ5kR/b/Fg/zzl+rFLxir1vl
	S/U7KuCLoYJstU58QTVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlyu-0003k1-Kz; Tue, 24 Mar 2020 16:00:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlxD-00024b-7a
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:59:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id t7so17453005wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 08:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SMq/EEyYYz6HWydBGjI4fuaJGHB5g+sKYV8/ecTsfnw=;
 b=Cbo4qeBnndE69etkLuKizylOxVcCmcdaFqQ8/ct9sDJJikWNyXNk8ZZ6zLf4hRPrMW
 l56jslKnUGo83vKTVAvhBIxzyrrH/9UvzP8GGTkw269WE/tUp1c5vHiI3guPOPFx+2jU
 otpKMEXqs7w3tXsYyzTrwAL1f6ht3I7RTewqEhEXXRtrQzXmOIhfZ6BZtuNaDtX/QGhF
 d8uR2xGZ+x+amFl+Pc1YODdzgdpqURlYziqetHbkrNP+k9GzC8A+XSTszxlNST78rD5I
 N+YlxU5l68N9n294cQoT7qG53b102vbtwQluMbmo2KHjKF2Aq6dijxo1T53f39+1yEEf
 G90g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SMq/EEyYYz6HWydBGjI4fuaJGHB5g+sKYV8/ecTsfnw=;
 b=SMOZNwvc9I9fopMuivSy7b7VlwltTy9GQaii6vrjBKrJUfMmgwkcORlt17ygLt1No8
 r5oM6Vf/nhKKJMxW5q3j/AvWg/aLk8WMd8BoOv6JJ+hWo03j2kfA/7LP2RhN/ykIKb5w
 otHBwFHkpALWg6/hhWdCxLNvCMiobUj+/nsKmYG8t5yEQl4Bn1WsasPT7rsTEILStWKe
 KETq16AwZLzg5/mr9hHHFpKjiY+DrtfioyvhrqLb6biPXYSEz1o8tvCUjeGckCtEbvTG
 vbFqZINr9B1rBOTy+pDJb+I+KPNa9eJJe3eBPmjQvFOrQ8YzNDkvrvQVUJ622rzHxIdO
 gY+g==
X-Gm-Message-State: ANhLgQ0sYa8xCVXhtRESl6n2AsPapsSWEHLfBcUl43gTi7WFKXCUFPcl
 YQI7lakB9sOGKssF/BsYw4vPoA==
X-Google-Smtp-Source: ADFU+vubkYQyMAvXnpVSqfNhDN699hpGdG7F6l9ggO5EBX7SXW1DGYqomCS6qxOHeD7C5nHYtfLhYg==
X-Received: by 2002:adf:db02:: with SMTP id s2mr29329992wri.273.1585065537393; 
 Tue, 24 Mar 2020 08:58:57 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:e15d:2127:89a:e5dc])
 by smtp.gmail.com with ESMTPSA id t124sm4993321wmg.13.2020.03.24.08.58.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 08:58:56 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [v3 6/6] arm64: defconfig: Enable QCOM CAMCC, CAMSS and CCI drivers
Date: Tue, 24 Mar 2020 16:58:42 +0100
Message-Id: <20200324155843.10719-7-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324155843.10719-1-robert.foss@linaro.org>
References: <20200324155843.10719-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_085859_317230_1E7D9A01 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Build camera clock, isp and controller drivers as modules.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v2:
 - Removed duplicated CONFIG_SDM_CAMCC_845 defconfig

 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4db223dbc549..676bb53fb8cc 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -376,6 +376,7 @@ CONFIG_I2C_MESON=y
 CONFIG_I2C_MV64XXX=y
 CONFIG_I2C_OWL=y
 CONFIG_I2C_PXA=y
+CONFIG_I2C_QCOM_CCI=m
 CONFIG_I2C_QCOM_GENI=m
 CONFIG_I2C_QUP=y
 CONFIG_I2C_RK3X=y
@@ -530,6 +531,7 @@ CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
 CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
 CONFIG_VIDEO_RENESAS_FCP=m
 CONFIG_VIDEO_RENESAS_VSP1=m
+CONFIG_VIDEO_QCOM_CAMSS=m
 CONFIG_DRM=m
 CONFIG_DRM_I2C_NXP_TDA998X=m
 CONFIG_DRM_NOUVEAU=m
@@ -732,6 +734,7 @@ CONFIG_MSM_GCC_8994=y
 CONFIG_MSM_MMCC_8996=y
 CONFIG_MSM_GCC_8998=y
 CONFIG_QCS_GCC_404=y
+CONFIG_SDM_CAMCC_845=m
 CONFIG_SDM_GCC_845=y
 CONFIG_SM_GCC_8150=y
 CONFIG_QCOM_HFPLL=y
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
