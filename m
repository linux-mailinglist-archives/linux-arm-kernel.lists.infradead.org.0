Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9E21A22A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 15:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47O64tVXJC2ZdA7kqGRTB3bc1pHSo8UdYikjZ+xwkQk=; b=G35wVN7ujWa1Xo
	AjpAkuhJAfPtrTU4wAuPMWgG3KJkeFGTUGlZpYem4QqbBdlenHRFAMrCeQSNpBladXShw5HaFPOwG
	C+iFU5mcnZutX+SEf5CATG7xQ4wWyuOjzTfBhKfPZXBVOX6ZyY695ePcOyLE98WDT3JNI+IJ0l+tB
	PW9NLYUkzLXuZplJhms9GCtp/0LkZmpXmq0PuH3Yu4iBwT0IO++vISHOc0CAYK5oA2YzfS42znZj0
	WX+nVvBTVGmtAGUBOKuMXx5AliSL8uIM2hG/HAYlRngr/pXx3yS95/JR5DkU4zvXffkLeofrXO0Ho
	WA12e5l6FEyENhP56odQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMATq-0007pO-Lf; Wed, 08 Apr 2020 13:10:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMATg-0007nb-DT
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 13:10:50 +0000
Received: by mail-wm1-x343.google.com with SMTP id r26so5399395wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 06:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NlDlRv555GH3IWzPThM2PIkVo5dnbd1J1aXXNjhdRgU=;
 b=aFWPOjD+POZxqE+i+gRicc1Ttn6UlDSIUKWVEXYrw6mfX2v20gZgt82l4KRhjiIe9A
 b7eh6/OF5TAIN8zLoLVxFZu6TXaYtFE7/efNaS8sZKDyPnHEaYTT/n35OdxMY05APuOt
 rlWYwUne8HTx4HnFmTSaPsuQsXqpfgebNO4ZoJARRorQ9DkoYG3cYPagjmaYqCRxy/5p
 rnFMxw1K+6Rzmgrq1DW3Fnq4at0dmmS01p0cbFLJdKNnxjXp8BkfZrycWl7oUXu+s+cK
 d/adjUK3FZcpZfWktEdbNJoad3EocqLejBbg1sRQ265bF0LqSaopWWshBlwmpvodh1TX
 BEag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NlDlRv555GH3IWzPThM2PIkVo5dnbd1J1aXXNjhdRgU=;
 b=TNK+r6b+LtH98FTmX6OGqX5dG2uztmc292QiMPBu6bjbM6GVD5Ih1x3Y3iOuLEOd56
 kXSibTghyoV6SaW0fR+E0JBoLTq2DYvYu+1dU8UazdZT+/rmToFhNgKXf6yHD9FZC/RL
 SijTXWVegmXFf6l52wjShRMXpbvmbkH0Ip3uvP+NzzESHa6ZYYLTXfzcy8VEh5lCLrC+
 Mjrirzkn5D1RxpIP6l3ttJuD71FFa4meWmW/7yW+U+bX574WaCNL6Z4UM99+lvPC0/fe
 XQeBWWmWQ+xplaKg02xW9rWMYT8fNhfKOi3EZbystzDjOUkCFoT4iUvNoeZPebCplV4P
 DdHg==
X-Gm-Message-State: AGi0PubjZdHRCdKNC8ow/vKNGfhowBnMGsCqg57cOqQErIBOTmT2jfwX
 qn979lN9Me/eTKwU9p7MdWU4OQ==
X-Google-Smtp-Source: APiQypKFGiJ+gX60BLbUE1LDlC51Duk6XfC5j/frP0y9C+JdDx5KsdFSZwr18YptOjMFQlBlrJHuCg==
X-Received: by 2002:a7b:c1da:: with SMTP id a26mr3107514wmj.125.1586351446839; 
 Wed, 08 Apr 2020 06:10:46 -0700 (PDT)
Received: from localhost.localdomain ([37.120.50.78])
 by smtp.gmail.com with ESMTPSA id f4sm18428044wrp.80.2020.04.08.06.10.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 06:10:46 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
 leoyang.li@nxp.com, Anson.Huang@nxp.com, olof@lixom.net,
 leonard.crestez@nxp.com, geert+renesas@glider.be,
 marcin.juszkiewicz@linaro.org, valentin.schneider@arm.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH v4 1/6] arm64: dts: msm8916: Add i2c-qcom-cci node
Date: Wed,  8 Apr 2020 15:09:54 +0200
Message-Id: <20200408130959.2717409-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408130959.2717409-1-robert.foss@linaro.org>
References: <20200408130959.2717409-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_061048_746945_DC469320 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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

From: Loic Poulain <loic.poulain@linaro.org>

The msm8916 CCI controller provides one CCI/I2C bus.

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
 - Add label to cci node
 - Sort cci node by address
 - Relabel cci0 i2c bus to cci-i2c0

 arch/arm64/boot/dts/qcom/msm8916.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index a88a15f2352b..cad0ac482367 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1603,6 +1603,33 @@ ports {
 		};
 	};
 
+	cci: cci@1b0c000 {
+		compatible = "qcom,msm8916-cci";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x1b0c000 0x1000>;
+		interrupts = <GIC_SPI 50 IRQ_TYPE_EDGE_RISING>;
+		clocks = <&gcc GCC_CAMSS_TOP_AHB_CLK>,
+			<&gcc GCC_CAMSS_CCI_AHB_CLK>,
+			<&gcc GCC_CAMSS_CCI_CLK>,
+			<&gcc GCC_CAMSS_AHB_CLK>;
+		clock-names = "camss_top_ahb", "cci_ahb",
+				  "cci", "camss_ahb";
+		assigned-clocks = <&gcc GCC_CAMSS_CCI_AHB_CLK>,
+				  <&gcc GCC_CAMSS_CCI_CLK>;
+		assigned-clock-rates = <80000000>, <19200000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cci0_default>;
+		status = "disabled";
+
+		cci_i2c0: i2c-bus@0 {
+			reg = <0>;
+			clock-frequency = <400000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+
 	smd {
 		compatible = "qcom,smd";
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
