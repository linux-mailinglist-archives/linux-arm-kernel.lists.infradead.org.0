Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7F81886A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 14:58:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7ZvRTUKwV1E9UUcSMaKcQjYIGqR+D0YcZASenmXvpQ=; b=j68GB03GxMJLLG
	AfSqIOcBeDnocJkn2N+6CtG91fobyhCzuR/f426LtIJ1jd8vXtNNwf4+CaX0MdvvunXXVqr/tEByr
	rDgjyp//YWLIcRTWleCzlYa0JcNJo2ZoPOMGDYmHDx9sb9Q+IQmsOosjMoAJpWip7BdyITA0O9zXR
	oYW1macpj4hiILTTrhHqemkHQMnoRuX6VJF897yR76Hbr+93M+m7XwJnM5hllQepzVzhe/lyjDVE5
	G0It6mOuTw0Txi918BIWVK3fS7h7wbGGhyxn1xRrtS6zAcOEwZAliDnj+GUKMDFsNHlfDU+dTgxHB
	4Fsf/sOxM5hdYy7rw7qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECjf-0000qA-LU; Tue, 17 Mar 2020 13:58:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECjB-0000cP-A7
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 13:57:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id m3so22104720wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 06:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gE0E48YTccXbLL7Wbu4iPyqHzH6s/0ICIW3f6yKP+/M=;
 b=x08FyS2T11lS2rzYbZquOz72b/VYEhQW0IYOEhRHdIaWKC7c6IH50zqHBkykkzCS2z
 tlqO3+fvtycThLWxdLJ8ORoW7YLVdBWSNPgFDPxjaDPVoWT1M0z9XLu8AExRZtroGelh
 wjDC4HZRwOkeqdUcoTqMlGdUoVwrCtD0HV6C0AZZ2sPcVmOBtjHrfMqQck/DfqJx/1Qv
 vrsxAn+O2zmYJzq0MB+pwNCheLxJ+6wb/tpV7v0vmU5Kh81Gttp0XBMHuougn+cNcRjT
 mOnkCuzfDhMXhDrBvNh+Clc2n+2RNsZLQgFtryQ5Q+aI6721wxo/NS2w3EqFEqD0+IFJ
 fiBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gE0E48YTccXbLL7Wbu4iPyqHzH6s/0ICIW3f6yKP+/M=;
 b=trpc/N2mdC0MTAB7mDp5aobFW/MHYTza5J/C/NeSFVW/Dk3uzAWDcTo1dpQ2uGG/Zi
 JTD9lpzWJNyZuLkoUD4IpM+b3H864f7+QGHaouJSOAsUFO6u8VLgcAMXmgi7hmTBwu4v
 HuOF/BFgn8uwfVB00pBYmZdf4IefOCo7WL9DgII5cyXqWeEsHeQP+1+2HxWLHaPV2JOt
 OpmRqd63kpEs0fYpTKrrzVJ4mb8RE1HZFWDWdiIESG6Zpye/XbYZIRIa25t+puQ9IYC/
 zgm5cgssgSrDOl6nc5Zgu+3dnPBfCqAAfgPcEm+lrcTgjdtMeWXf2vqMHcXo0Fujh6r9
 /qcg==
X-Gm-Message-State: ANhLgQ0/KHW8ycdgnNPqiQCE/Xgf+aNWu1C37BPyoyRfIE3zUzM9g0T0
 S/572s467CtsuJJtbHsyCtcIdg==
X-Google-Smtp-Source: ADFU+vu0XS8SjB4/Yw6xnU/f/BoTF8gd2wERlztERMFvMKS5J+6ajXkkC526BVd31HEWQoXRWNZptg==
X-Received: by 2002:a1c:6a07:: with SMTP id f7mr5331001wmc.38.1584453471765;
 Tue, 17 Mar 2020 06:57:51 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:84f7:5c25:a9d8:81a1])
 by smtp.gmail.com with ESMTPSA id r3sm2976558wrn.35.2020.03.17.06.57.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 06:57:51 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, maxime@cerno.tech,
 Anson.Huang@nxp.com, dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v2 1/6] arm64: dts: msm8916: Add i2c-qcom-cci node
Date: Tue, 17 Mar 2020 14:57:35 +0100
Message-Id: <20200317135740.19412-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317135740.19412-1-robert.foss@linaro.org>
References: <20200317135740.19412-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_065753_498627_76242910 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
@@ -1584,6 +1584,33 @@
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
