Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B60918182F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:37:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auuR5L+2D9dLZqnkgLNJgA1/5fTtyUJ5cXd3loaejX0=; b=TPEg9CopF5Yq0k
	nvWuP/G6qeMCXoLfAValEGMW65a6BchVLvC+hpIJPWHN5uSp9Zh72OuSMnw69t0ylfGCDyqcEvO+h
	2eh6OHBLZ9+qu4XCeB/0u31OGEivfSPxiUWLZvlE6yQgimGrzNhbdG0HMNvLtpY/w95AUi650g3gj
	qJQyg7GH5MCVJrRyiJ5cLqnze/mjdMXNJD0ZfHYtAV3gNTqJ/yQGmBqsnozRuyL0ltSx2n5BCSuGo
	pDpdfIchPu7pCwyjZ1tgaSAkfWxViLTRUKJJQopsWFEpYEF3ht1WO9bGi+3xNc0iqF7sqQwNO0Pww
	sJKee6dgczOdxkdK2fJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0bY-0004KU-0D; Wed, 11 Mar 2020 12:36:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0Zv-0002x4-SJ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:35:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id s5so2410971wrg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EvyKd0t3+qfQkjBAhdo61NmuHCYlR+DRre07BlO1Nos=;
 b=G815P8fyDtM6GYZ9Ybl+860JL0ZVbhz07A7HXj9b1iZHsxT3+wZZN/8lnC578RRMZm
 WyWhGPHK6lDHSsmYQwhUyXl+UQRus6z7S7xaCTWgd0V4UrZmNtegW9TS+XAGWh1YQw+h
 h01zfsxB5twA0QGcn2TJLckSZAd0Zbd2nRo4uOou5XSgBx98MjDA0Z5Kh58l0VGueHLT
 zZqGlnbnzNp4BFLktgbQeUJ1hBgsvS7/xg3sYWryzWtUeioKSGI2wErIzNQpy4dxPJCx
 VFGXRdyjGwr6TyO7Q3yga+pnw+bzGj5Z6vt7wsAZnWhQzva5KaXfp3dG0dvVg9x0KXlZ
 cpVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EvyKd0t3+qfQkjBAhdo61NmuHCYlR+DRre07BlO1Nos=;
 b=ZhAa2DB1KF8CGpEAeLKOulyvy2PEGf6gWs8TJnHeXJTZRTAntfWsyf8k/A08NgRe5L
 7ZSC/cY3yjiXv9GbQr5Cgoi1wV8/xRu/1C5SRHaz8O4BNkUj/wyi7oD69Y5ki+LsCW/c
 yo/mMkujwD2K7cKQex2JCnJQOW46Hd3ZDFRlDDkCw03P/JxDh3O7/OZHtAihODYINw9V
 XwUYiLljKooU1Ox3Bx1Enwcm3zHlpE65J09GauX3qqbAT5E6XU1qh5HC8AwZZh5WEYRp
 tqwkBl8DFNYweSuCri8QEBdQ/PDYXVfKIi015HDgi5et9KyFQLQyexnqjRU90YoBjnS6
 jNZA==
X-Gm-Message-State: ANhLgQ0iCvMThh5M8zCUS9hzBuo4O0vku5SZ1qtDIFhKObT4mIFOJ62p
 E5V5OrM7TORJKYv54YpLIynthQ==
X-Google-Smtp-Source: ADFU+vsIKG8BRFaCapFFZcz3md1ZzUxxu8pQAo4ykDwAmnwztoT4NEp3wcwJQhMl3K4PkLdJRE+gzw==
X-Received: by 2002:adf:afd4:: with SMTP id y20mr4556101wrd.57.1583930114288; 
 Wed, 11 Mar 2020 05:35:14 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:9087:3e80:4ebc:ae7b])
 by smtp.gmail.com with ESMTPSA id m25sm7822732wml.35.2020.03.11.05.35.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:35:13 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 maxime@cerno.tech, leonard.crestez@nxp.com, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v1 6/6] arm64: defconfig: Enable QCOM CAMCC, CAMSS and CCI drivers
Date: Wed, 11 Mar 2020 13:35:01 +0100
Message-Id: <20200311123501.18202-7-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311123501.18202-1-robert.foss@linaro.org>
References: <20200311123501.18202-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_053515_944534_FA4B3C63 
X-CRM114-Status: UNSURE (   7.90  )
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Build camera clock, isp and controller drivers as modules.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
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
