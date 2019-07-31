Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D23A7CE9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sRtV1dxvg9fMfcmZA8b8Wrjy4Zln3iMcAQHWLr4wSjo=; b=cZjeRZY+5P7nAI
	F6B6A9l2xsbmAqbEYlbzCk5pcc6uK09hmYxNKIl0VibGeGOlWLtsW0gGHDZZkZXcfK40GqjKkqcNd
	njroGJZpbzEZQTjhDIKDRRs6r4HO5f2loP0oAiwuOD5sZHg0oJGw/H/UVqay0hwGgAQx/F639AWfq
	YwHAQ9NgoRuuaff6h86BjESul84+xcLqvb9KpQI86UVrWFDtHXdCtM8VVImMi/ZyqZ/zsfOjZJIjQ
	I0PlnMQI1wMuv70tO+MfRioTZ4FAvIg4H3k5gPQSm6CfFZI8fLEUiX+6+8kHVBfPpeoVgyr0VZ/4c
	G7XVMYv6d64DXUT8isTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvGQ-0006hT-Sj; Wed, 31 Jul 2019 20:31:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvES-0003AB-EM
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:29:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id p17so71057786wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8QWLof1O3nhMlU7i5ZCEmG2qQ6v7dulP8/K2lF3I37g=;
 b=HTbhzaNqyovbAnQuDvhDg8INCa+ZqREMmYKvP/IP7VZmoIHoXZy9+yTfOKfonIc8K1
 lvYdcgIs6Y4hxtwJ3+zfFeWuoEgmdV8OJva7TSClx+z9y+u7rAMAX1P+PA62gJTihcbn
 DDWniV2DuXQBfhuZHEDcys3J4Kw4MFc0nWUoESe3dK8/S6gqVZo115EJUyjCYcow+/Iq
 Yp1v7weDG0Mfyec3xJW8ZHlOhDf1eE3vX98vvHoouFPb0R47RAY26b7S1sPUFDmM5NZ0
 Ywi+FjkWEv9MTPfQyPAjCqeFX0ZA+ZTDNTKHNRK6EW4tilAx70huWyjwV2CO36weuwCw
 tLfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8QWLof1O3nhMlU7i5ZCEmG2qQ6v7dulP8/K2lF3I37g=;
 b=fzwyXO2sgJD5VSYG84LiO7jw3k3z1EexvSIgVy+oqxcMrEPBevHOwYaS5X0Sj6IgjB
 34/u6ALCtzGg7ckhAjCbL98EiVDlG1cI1Auqdo/xlQmGwrRndzE3WLVBVetNiYEDOKuW
 s/bm3HbGpBwFd89gMGELlhkrDqi+CLc1Hl8APfRHh4qKtCQNGQkuXGdjjgW3rdN0WgH4
 U0Uq/i4Ev/80jr8bc0BHCkw++Ifgsqb3ulNqfp9MOrAodLcvwOPDiGtW5bFJH0k4RkOv
 kAYslvVt1tkPMPPsDGUPrVhAMNahwsu1XNOeTvahBnB1ytguATpyWV4fwx7VGGvwv0yK
 yR0w==
X-Gm-Message-State: APjAAAWTaL3RKy/FP4hFmUELpAK20FLOv7juIQUUhYdU7TT1UHRONGN/
 fpe+kQpMfgWKtxYMOZ3ljyI/pg==
X-Google-Smtp-Source: APXvYqx3tHzOXqkGAVmST3DAPob5FWvERg2GNMlAJyDGVUw68lh98g0y9MMruSZQqYSjX2eMZe3jmQ==
X-Received: by 2002:adf:e442:: with SMTP id t2mr1361399wrm.286.1564604994823; 
 Wed, 31 Jul 2019 13:29:54 -0700 (PDT)
Received: from localhost.localdomain
 (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:29:54 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
 sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
 will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
 heiko@sntech.de, sibis@codeaurora.org, enric.balletbo@collabora.com,
 jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v4 11/13] arm64: dts: qcom: qcs404: Add the clocks for APCS
 mux/divider
Date: Wed, 31 Jul 2019 22:29:27 +0200
Message-Id: <20190731202929.16443-12-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132956_493463_9D89FB5F 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Specify the clocks that feed the APCS mux/divider instead of using
default hardcoded values in the source code.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 3714099306b7..5b7d6258e9bf 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -857,6 +857,9 @@
 			compatible = "qcom,qcs404-apcs-apps-global", "syscon";
 			reg = <0x0b011000 0x1000>;
 			#mbox-cells = <1>;
+			clocks = <&gcc GCC_GPLL0_AO_OUT_MAIN>, <&apcs_hfpll>;
+			clock-names = "aux", "pll";
+			#clock-cells = <0>;
 		};
 
 		apcs_hfpll: clock-controller@b016000 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
