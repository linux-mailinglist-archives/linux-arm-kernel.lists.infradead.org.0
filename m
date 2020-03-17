Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867B51886AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 14:59:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPRm/ohM1TXfAufqo2jk6iPmWTWxqnzVwlqI4TUYFrs=; b=FTxKUjfMziRFwE
	TZ7vfycW+bTBm/fpt4K4we1/rHPimdUz9YAq4mKuCKlsXvm08BxyUX2fpQRIthl348lu+jXcMAsNL
	aQvu5cW4KN1k9dUJsO64UoDpZoOpwey21jvZJs2OsSPs5GUlY2WE/tu9x6/SpajuJzagWJfx43LxL
	TLbb08UHIxp/aEJxu3WOflYlQgSQS8WgOJJkmMMHukBlKb+swW/YqCd1afb0uEvcjU3Lju4spM0GN
	sQeAFBLEownKXXRWsnR80WBnfk7bxx3ojo2w+PlOjbHxzBo6ZnqWBl82IrlTMRR7MSbTwl0c7G2e1
	W/B90BqNWAZGsux3PKrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECkj-000243-QV; Tue, 17 Mar 2020 13:59:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECjJ-0000jI-8K
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 13:58:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id y2so10321177wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 06:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UppQrsnlpe86U1iJ2vxLuqmcwC6nQrjDuqLHzwr9eq8=;
 b=n6l/WllNY7yB9vdu0o78Kevuih0X0jlKF33Qac5TIulVecbJJhn04M3bXa5FVZ2Ayj
 nMdI2M0fpHFdBWRa0BhPJzsNtf74iIzJYsfnN/E1j7ud159TZCGIsrMb4PANiVBt/4LX
 JDIvbOBhvc0l5ps5YEzy+FSZY670na89VlTNkUBEPnAT4m+/pqKZCSCBGpNcv48E88W0
 sG19qv8z6WQT4MsCry1difL47JM6xzqgNIUayos0WV1rsSJ3xwsFJb9ciVilyB624Sp5
 OzHf51degqnW+xr8gcVWrV//eDELr22o9g1plb1Y699FSbPxS61/1fq8hycr0Gr9+fK0
 cazQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UppQrsnlpe86U1iJ2vxLuqmcwC6nQrjDuqLHzwr9eq8=;
 b=IjrEO7OP9k2wT4sZYEqRfv25H7VVGcoc5ZHEsWIbJb3jKKJ/FQed47EKFS6bkPw0WN
 au7aPg9qQ4/4vQoc3xvv3J4uUbqFbj8BLTCPJGENt4WTOGLYh+MrniUdSOLzODqakgaI
 0hg+waZpgg0bZ8SIY8xNBf8QWzYW1J8ri2JIwzGuEiPfvSB2LhiMHWTRRI3M8DG9mdeT
 YiBuZcCkyBrYYtNrIXAE987vQvfaf5D/qhe0Ld+fvIp+2UttN7+6/2EmlRHntHv0/BHR
 XSDkK2x0Y2IlKeNe1Zr7u1pxLgvr8U6AGECKO/Ae9EemDmRH8S5wH5GplQTXgQIJb53L
 uCoA==
X-Gm-Message-State: ANhLgQ1TJDxxqghyve9HiE4mhPpSRmLL9j8XxFTHRNC8LuObxJ2TKXr3
 z/q7v2EjiF3x/mJlWJ12WA2GBw==
X-Google-Smtp-Source: ADFU+vuB83bdRe3honSZVhDGSTt2YdioMyqclnLEVfdMeETbDf0ejd9vEKSvzBHwoB0XWvgcu6GtAg==
X-Received: by 2002:adf:a348:: with SMTP id d8mr6276482wrb.83.1584453479320;
 Tue, 17 Mar 2020 06:57:59 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:84f7:5c25:a9d8:81a1])
 by smtp.gmail.com with ESMTPSA id r3sm2976558wrn.35.2020.03.17.06.57.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 06:57:58 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, maxime@cerno.tech,
 Anson.Huang@nxp.com, dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v2 6/6] arm64: defconfig: Enable QCOM CAMCC, CAMSS and CCI drivers
Date: Tue, 17 Mar 2020 14:57:40 +0100
Message-Id: <20200317135740.19412-7-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317135740.19412-1-robert.foss@linaro.org>
References: <20200317135740.19412-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_065801_350474_B9F80F41 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Build camera clock, isp and controller drivers as modules.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4db223dbc549..7cb6989249ab 100644
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
@@ -762,6 +765,7 @@ CONFIG_QCOM_COMMAND_DB=y
 CONFIG_QCOM_GENI_SE=y
 CONFIG_QCOM_GLINK_SSR=m
 CONFIG_QCOM_RMTFS_MEM=m
+CONFIG_SDM_CAMCC_845=m
 CONFIG_QCOM_RPMH=y
 CONFIG_QCOM_RPMHPD=y
 CONFIG_QCOM_SMEM=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
