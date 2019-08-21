Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52CD96FEE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fFv2mg+0W8vyMHERlSg/aTum7c73HP2zCnF9v3e4mhk=; b=f0xdjkfzwRLt+lt8HxfZzDP98z
	dttcrqk4C6p9xKTp9xk9/TjgQ1y/3tswzxkyvkQhrAcbrgegZ6ElCHcTKKfveroH1YJu98c0OTZNT
	XenFdoumc8BrW1LJADk0wiPKqmS1ZSwxb4v4nlbdyYSD9zmH/oj+sxQ0EBpcqr0t/n5If9zftTmbA
	qvzu1i6XElLhaly7f3egXX565FqEsmWvT+1amkM8SGZtiAj/zhfuDxrIdVHFzyxS/KylciJilcVLy
	2e52KIo7Hw5vj73xxU2RJzJaDJRkj4Y40rIzD1h653OcBgnC8zqCyseRvlyJgZQbJkeZ0U/DirxeK
	7oykfZwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Gor-0005Qp-5a; Wed, 21 Aug 2019 02:57:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GoC-0004k4-2V
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:57:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id d85so422085pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nH4eH2+AdUUr/ixPubTt3rBpS2s2N2X/tbfYHc3R6f8=;
 b=NzIE7mdVgSIAHWMqUqg85Bd+qBzRmk+eoh7D8r8/UzsJf6/QsENDneugo79OHjjPdR
 tjqVPCPR745uewAAywtYkic8SFdG8LxHzikI7v/WfbYEMF5HxpPP6HWHbJGoKFawBK6Q
 9GdBLOtze6PIjxOBcmSYDNGavDbiM2nr90nauo+B0bXTPMhvfv2m/SECTPhpA1VaGL0d
 PLxSyGXfacd2C5jtZPQPUodeub6K5KSeJo2fOPin1PKKvYhsCjscZF3bM9Kni3tiY2LZ
 Oj1t2U/yC15pQE+MJ6u9UbqBRqKfjpehJEM6roL2O1OFDSjZ7KorZFTYvXIPSDe7Rw1+
 2HLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nH4eH2+AdUUr/ixPubTt3rBpS2s2N2X/tbfYHc3R6f8=;
 b=B0FkXxzOM82PXjRhbChsqOHzo5dDjzPIkrFcFD5JacUacwUd9pUydnm7iqfzNOqudF
 jh45zL1uwWLaYq0M+i86qXfNiOMH1hACl6hDjsrohp/dNxBLuRGn4Xt4Ft314fEPVWVF
 0AonFlNu2dmzVzvGfZrONwpeL8Sq+UBEeOPOyWwdobDJpFc3alorT1tnV183HJ19De9G
 2u8MNG3qMPibugJtWOXBK0uaJCclakjF6X5xHuLRO0XMtN2RijL7ZGlgey3ce4YxH2sa
 roXHia2hQBAx1i2eu5VR+P7vg88T68cHDay1U9HR2nLFxQlWuUqSV+g2+0aQeoyv8JVt
 MlhA==
X-Gm-Message-State: APjAAAWW885m/0dHWbwVrdocpepkHeq/8Tb8+M8yxAapvIgyb2Xuth9e
 ze/QEOgu9uSmcfw9sAMkw5Ij
X-Google-Smtp-Source: APXvYqwSVVucV3Ju8A6hU2FYsz3QIbT3ac07Qf8VXg6Vwfyd+8xdo85p39D+jrzsgq9fZuPbF3tbeA==
X-Received: by 2002:aa7:946d:: with SMTP id t13mr34202729pfq.121.1566356231203; 
 Tue, 20 Aug 2019 19:57:11 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 d16sm13251682pfd.81.2019.08.20.19.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:57:10 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v3 4/7] arm64: dts: actions: Add uSD and eMMC support for
 Bubblegum96
Date: Wed, 21 Aug 2019 08:26:26 +0530
Message-Id: <20190821025629.15470-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
References: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_195712_129187_672C654C 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add uSD and eMMC support for Bubblegum96 board based on Actions Semi
S900 SoC. SD0 is connected to uSD slot and SD2 is connected to eMMC.
Since there is no PMIC support added yet, fixed regulator has been
used as a regulator node.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../boot/dts/actions/s900-bubblegum-96.dts    | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
index 732daaa6e9d3..59291e0ea1ee 100644
--- a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
+++ b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
@@ -12,6 +12,9 @@
 	model = "Bubblegum-96";
 
 	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		mmc2 = &mmc2;
 		serial5 = &uart5;
 	};
 
@@ -23,6 +26,24 @@
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
+
+	/* Fixed regulator used in the absence of PMIC */
+	vcc_3v1: vcc-3v1 {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.1V";
+		regulator-min-microvolt = <3100000>;
+		regulator-max-microvolt = <3100000>;
+		regulator-always-on;
+	};
+
+	/* Fixed regulator used in the absence of PMIC */
+	sd_vcc: sd-vcc {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.1V";
+		regulator-min-microvolt = <3100000>;
+		regulator-max-microvolt = <3100000>;
+		regulator-always-on;
+	};
 };
 
 &i2c0 {
@@ -241,6 +262,47 @@
 			bias-pull-up;
 		};
 	};
+
+	mmc0_default: mmc0_default {
+		pinmux {
+			groups = "sd0_d0_mfp", "sd0_d1_mfp", "sd0_d2_d3_mfp",
+				 "sd0_cmd_mfp", "sd0_clk_mfp";
+			function = "sd0";
+		};
+	};
+
+	mmc2_default: mmc2_default {
+		pinmux {
+			groups = "nand0_d0_ceb3_mfp";
+			function = "sd2";
+		};
+	};
+};
+
+/* uSD */
+&mmc0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_default>;
+	no-sdio;
+	no-mmc;
+	no-1-8-v;
+	cd-gpios = <&pinctrl 120 GPIO_ACTIVE_LOW>;
+	bus-width = <4>;
+	vmmc-supply = <&sd_vcc>;
+	vqmmc-supply = <&sd_vcc>;
+};
+
+/* eMMC */
+&mmc2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_default>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	bus-width = <8>;
+	vmmc-supply = <&vcc_3v1>;
 };
 
 &timer {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
