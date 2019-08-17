Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A6A91255
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a8YD2T9AJBx7ZRSkSCHBSxP6Qmx0+x5wnisuLG+2OgU=; b=I0sjL9YuQ0/UuZMJArtfDlcmaP
	TK19CZQyA63m2b7IYwRmwUbs860dTh+SthYZzPaD65tzBO+3NWx8r2GSq+DCW7dMjs2kuyzeakhkJ
	BG2xLukNV+9sTIodU5JqMYQTxNHdUnvUEQ6Aj2fRp14L/DJpCdtUbeC7XdrV1lTBMTXMMvu0i7uYq
	zjpLiIW+8/o9p0UDFYOlECEpmMm+hjv/fMoa3M20CKRsxN/VAKRYpTwcxAS3/l5WuxiP2+BDa9rFp
	kRpUNF0cfWDW84ILefA7i+zwXhIhN6QKWzFRXRpk2InKNjX5dA2n0rBVZT25qnjbt6ZVZWXdiTjdW
	AQG5MEEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3Zy-00020i-0S; Sat, 17 Aug 2019 18:37:30 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3ZD-0001bG-Nn
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:36:45 +0000
Received: by mail-pg1-x544.google.com with SMTP id m3so3982585pgv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 17 Aug 2019 11:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=m4IDdt5hE3NS7csTFWIonyNM4/jZUwMLDrD/Mq4Th9B6YG83CrzyI4AAIpjEDqZPe8
 Fi0+cx8yUubrqjQvrRsbOVcuWdisRVU/SSNg68kdQA1BfikK8mud6fn/d0FRR+BBiSqd
 2ZBi8TxKm2ns7ni5cAjvaLHaIrl4EByyDRYQsEwIU4viACw7gPEyLCwuleW3DRLMoyW5
 sM2oiMT1TjQfOfTx0MJ94Wq4p1YeSbGXthSKH0wo1l/j3i66VrTgc52b3GrqhGneSsRW
 Fx+CXvCpZOS+Y/A2dVIBdXRdHPLucJX65qp2mMAzMP1vC9jEJd6dY80KtPuvnNXuvXi+
 xXnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=Qqi4Xr7QUZhwv5whn1rOpydhKXUL/9w4ymxcH6d/N0NMPtXyGqAtVIpBNC3iX4oX5D
 PfY8l99+On0VzRxjYtUdNxOteF1IMuEnov0zI5fUJDJIKE+70hm9vLj/4GRI0H1Sl0g1
 3CP/jQubpQ4VphMOr8eeg3anMTuD2SpPTNjBlxmh2dVOeSYmftLKeQIb8siJiuf+STnF
 0u8gZTAEDwZpHwC53Dm6f465bIjVrdFfJFi70HFmB1G93+7C92GsP3bZ2TowgxHxq1op
 a0AKQpBtmvIPpjRxi3j7DgYdxfnGwYNWMwGZ3bgPpytVEqYfInEYyacU+j3cnqkxLG7G
 ckuQ==
X-Gm-Message-State: APjAAAUSBPoVL659H9CnQjXFloAVznt4NLfQXwog7hv97qRWAp02hR8c
 fOHrM7YrbXxoQnDTjSESGnxT
X-Google-Smtp-Source: APXvYqzsV4wdUNvPH0b0Ophc5Xcyb7iDGJiJNKWcXu9BLHJ5O7iDOC7hDRDHo3GH489oZ0FMp34r/w==
X-Received: by 2002:a17:90a:a105:: with SMTP id
 s5mr12903768pjp.51.1566067002944; 
 Sat, 17 Aug 2019 11:36:42 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:909:4559:9185:a772:a21d:70ac])
 by smtp.gmail.com with ESMTPSA id 33sm8588640pgy.22.2019.08.17.11.36.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 11:36:42 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v2 2/7] arm64: dts: bitmain: Add clock controller support for
 BM1880 SoC
Date: Sun, 18 Aug 2019 00:06:09 +0530
Message-Id: <20190817183614.8429-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
References: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_113643_830398_F9606E00 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clock controller support for Bitmain BM1880 SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/bitmain/bm1880.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/bitmain/bm1880.dtsi b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
index d65453f99a99..8471662413da 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880.dtsi
+++ b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
@@ -4,6 +4,7 @@
  * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
  */
 
+#include <dt-bindings/clock/bm1880-clock.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/bitmain,bm1880-reset.h>
 
@@ -66,6 +67,12 @@
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
 	};
 
+	osc: osc {
+		compatible = "fixed-clock";
+		clock-frequency = <25000000>;
+		#clock-cells = <0>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -94,6 +101,15 @@
 				reg = <0x400 0x120>;
 			};
 
+			clk: clock-controller@e8 {
+				compatible = "bitmain,bm1880-clk";
+				reg = <0xe8 0x0c>, <0x800 0xb0>;
+				reg-names = "pll", "sys";
+				clocks = <&osc>;
+				clock-names = "osc";
+				#clock-cells = <1>;
+			};
+
 			rst: reset-controller@c00 {
 				compatible = "bitmain,bm1880-reset";
 				reg = <0xc00 0x8>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
