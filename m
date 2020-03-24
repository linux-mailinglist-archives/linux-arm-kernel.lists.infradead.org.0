Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF60191572
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:59:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+C+3T05jzJ4jBV9DSEwPoeHy0CzXi2qa+gheVd765Y=; b=Jd/g3IUzH4DGEM
	JqjC/0tCYJu2mseNdE4I4W5wew2RXooZi2BEusy0t3EDt99K7p2ZckpGsBxM+CG1iSQryp5+hqFT3
	yiXe8Nueut+BnMB42okECds0aKPM24O5NkHnt3GF1alM7NUtFiJ4uWQbCd6wjT/IwmbJofyhkIubp
	OeuNiOiNG8/YF7QHVOEmxmFDKYCCvfOFOa9HGSIK8A8A+j/R6IyXQV1waG/opJubEYQfF0Hf72OUD
	5HwtxmpxDBDn1u+s7nbV5VDFu24D578aDJdydmlC8TLirMYQ5zgPW6UGkEpw2VhgvleZNriW4vPje
	q3hexgAAAzUvnho45w4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlxd-0002CU-05; Tue, 24 Mar 2020 15:59:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlx5-0001z7-VD
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:58:53 +0000
Received: by mail-wm1-x344.google.com with SMTP id l20so4101155wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 08:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YPXTp5qjoojtUwOKaMWOgJgogwlThEl+Qmy36Dg38C4=;
 b=rpETRG8x+xc/5PfrYyKYVF+Ev/1UU28xWSwJ/lIdcjZeII+np4CR48UpGRcAW564Nu
 g3pDbDoAxM2+wDvnkry0RFVNjw3i64fcDBHOCDJIbc4RG807J7jhcEY3e5gcIF6crN8A
 t7OTB1nM/7LsLuPvJo/9VyADD141EJCIWQbEyLxOLHQw1FISRUx9gXJ1hu/sPxDtMla4
 uhlORhEcvmPjdGcuaKIcn47ZYhs1pghTucxRC8QfH/IFJBhaUaly6Pr4YMCPZm5A4ZNM
 /wtpy1R0YfUhOWoZLsOpOeI3NPGkK/jsr5yaJoVbiZhOMhgO5r99si0CijMm/skADJW9
 EXjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YPXTp5qjoojtUwOKaMWOgJgogwlThEl+Qmy36Dg38C4=;
 b=ZdQW3NwtRH1YXU/iP1l3EZDCY/y3TJLzRHXNy6AMeyUJ33WwfGlo45zYt7YjERHW/l
 k3ytd9PfOCIAYbROv1REEGBS2VhYO+7ldiRjpwJ5GpEHE0xVcqqhqN7IEIOXLHV/3HZj
 dwDt0xQfyFZVQaDUBWusZ28wJyd3SItCpqePnETlABMQbvCw1HItQrmvSDpgmZ2HiKKZ
 ehqPm8SRPOU0OsFgOeEI2tDFx1mApRhVkgcI7GH88EPKfEX7tFGVLRhgc+wydjSYy4I4
 4oYeXgY5+QLuKhk8m6l+pnCNhoxTejGSF/fHj3T9Xy0yIzesfreXOneFUHd9nC74ocKv
 TxpQ==
X-Gm-Message-State: ANhLgQ3UnEYJR7UmfqxXEgc+NNb7GAeb3vRTf7DCrmvcbVqSl0CSkR8L
 XUOodcOfi8Wz6NNnBYf+JO+z/g==
X-Google-Smtp-Source: ADFU+vuRoADbG3q5yu8n7Ne4gC1B+yIMrcsW6YQOOMW3QmgdTv3+DZKX3n2h4/mdvGaZ4ajDaV5cpA==
X-Received: by 2002:a7b:ca4e:: with SMTP id m14mr6099145wml.164.1585065530480; 
 Tue, 24 Mar 2020 08:58:50 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:e15d:2127:89a:e5dc])
 by smtp.gmail.com with ESMTPSA id t124sm4993321wmg.13.2020.03.24.08.58.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 08:58:49 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [v3 1/6] arm64: dts: msm8916: Add i2c-qcom-cci node
Date: Tue, 24 Mar 2020 16:58:37 +0100
Message-Id: <20200324155843.10719-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324155843.10719-1-robert.foss@linaro.org>
References: <20200324155843.10719-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_085852_003090_179E4F26 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
index 9f31064f2374..1d5cb3fef906 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1584,6 +1584,33 @@ ports {
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
