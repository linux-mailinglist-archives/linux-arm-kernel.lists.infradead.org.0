Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCD31A22BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 15:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhhRJRoeK+W9OQoN989ID4s6gIKEAi2CQ9QtH57AarU=; b=i99DmAVa3SlG3O
	UDvAcZRusIMUlPwjmfSk39M1DSk0yKaI7++u1Hk1nncjZjNFNjF8B6LiFe/UoBSEcGabVXkZdb4z5
	AGPTyz16BMeGllp27kThWR8UzEc+yHrL02C1xYJWL/kg4tB/ZwTYGaMrMbC44SLz+jCZK6u0xR5QJ
	UkwufJ4G5LcJ8kfb6AM/easwu6FiWPeWLSLx6ltjLEndtR3QUxevYRpZ7+mph/LUUMVV35sPNrjNi
	ucqJYRSEnlRcRflyENDrQi+shd/FLbcbEE6e4CJYjoV4MrK0BqRIV97E8Uzvdd62M0WO8zLYhJ7Ey
	/7UDvLf6lKaUKUS56RdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAVJ-0000lw-6w; Wed, 08 Apr 2020 13:12:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMATn-0007sl-TD
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 13:10:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id z7so5081661wmk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 06:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HSMVnMgP4upKQElf5JgAZWIAcGCpvndMYRb9Vat/nes=;
 b=jTY7ueTTsIQBFnXQvHWdLsvwO1hONi41sVbUlwZ/VUcwNdlqIdWBAQsD9nxJ0K+TVf
 8NMjHWmXWYNwSu8kCRyJpvnUsLhXUO2DIlmKGobnOokpOtR0uFywBeNceQIgOaPGAXeH
 9cVDwKsyAXOkmsnXkdztrirkb9eBgQU22nZSZ8EppmCaWbkz/qDrqZiAziZ2x3ocvfMM
 AfJDvQRSDknm+9YHWF9eqB21A/INWL61t2kxFlMoGrTZXHSvEqopW6jdo5eSPKD88Ie5
 lrqoNff86K8IgVHW+5cG5+GQGHD+pf9LJZ/iT+v6WsAsZ/iqS0gWDmJppXPleskAyveD
 w8Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HSMVnMgP4upKQElf5JgAZWIAcGCpvndMYRb9Vat/nes=;
 b=d5Wc8fHox0HqHc6YTWJ0tRUrWU4NdTlPoEfN9/Yy8CROA/0v7Td+4udQ0QmfvLetWE
 FkPBCTe3PfEZIOFBKONiSvdt6mTMSCeIt2mJYpGqNGFjTb09NKrwheyyIbTc9DGJ/YkM
 7XKz+ntaY8ibaQd5NTw1lpOaPRAzKLwh9JO9/X0NGry7zQJRqG/lRwtrIduCief6awH5
 aFhC8lRGqI68hR3WlbmFdGEcdQEeOfA+PO14fKyT67HOJn7K0kwjJCaQntpxwqzwkw/V
 HkZ4IZodTOYf8V2of2jkMkqKbSXozncBHPhxtn3MDH1gsS0QJpupGkRD57HhWp9eO1aK
 BXjQ==
X-Gm-Message-State: AGi0PuZnv2Ugl+sWZwpQiTk103x5NAnajkVXqjWxBL7drU7mFoj6oMp6
 xYYMvQkBpQUt3QibtACnx+gIQw==
X-Google-Smtp-Source: APiQypLR7c3obm73L6raxreYTOjlint94xmBRATqvnqD/s3kybG5fJuCWGpEqrfbhkYkl15QKdl+NA==
X-Received: by 2002:a7b:c445:: with SMTP id l5mr4760057wmi.61.1586351454571;
 Wed, 08 Apr 2020 06:10:54 -0700 (PDT)
Received: from localhost.localdomain ([37.120.50.78])
 by smtp.gmail.com with ESMTPSA id f4sm18428044wrp.80.2020.04.08.06.10.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 06:10:54 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
 leoyang.li@nxp.com, Anson.Huang@nxp.com, olof@lixom.net,
 leonard.crestez@nxp.com, geert+renesas@glider.be,
 marcin.juszkiewicz@linaro.org, valentin.schneider@arm.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH v4 6/6] arm64: defconfig: Enable QCOM CAMCC,
 CAMSS and CCI drivers
Date: Wed,  8 Apr 2020 15:09:59 +0200
Message-Id: <20200408130959.2717409-7-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408130959.2717409-1-robert.foss@linaro.org>
References: <20200408130959.2717409-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_061056_010166_E14DB6CB 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
index 24e534d85045..46ee13b6df27 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -410,6 +410,7 @@ CONFIG_I2C_MESON=y
 CONFIG_I2C_MV64XXX=y
 CONFIG_I2C_OWL=y
 CONFIG_I2C_PXA=y
+CONFIG_I2C_QCOM_CCI=m
 CONFIG_I2C_QCOM_GENI=m
 CONFIG_I2C_QUP=y
 CONFIG_I2C_RK3X=y
@@ -582,6 +583,7 @@ CONFIG_VIDEO_RENESAS_FDP1=m
 CONFIG_VIDEO_RENESAS_FCP=m
 CONFIG_VIDEO_RENESAS_VSP1=m
 CONFIG_SDR_PLATFORM_DRIVERS=y
+CONFIG_VIDEO_QCOM_CAMSS=m
 CONFIG_VIDEO_RCAR_DRIF=m
 CONFIG_DRM=m
 CONFIG_DRM_I2C_NXP_TDA998X=m
@@ -802,6 +804,7 @@ CONFIG_MSM_GCC_8994=y
 CONFIG_MSM_MMCC_8996=y
 CONFIG_MSM_GCC_8998=y
 CONFIG_QCS_GCC_404=y
+CONFIG_SDM_CAMCC_845=m
 CONFIG_SDM_GCC_845=y
 CONFIG_SDM_GPUCC_845=y
 CONFIG_SDM_DISPCC_845=y
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
