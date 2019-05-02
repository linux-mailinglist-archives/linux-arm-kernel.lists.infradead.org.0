Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A87C120A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 18:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Jr84hYMI1MYBElFxr2FS7DPA18MWR8JmCMK/7S5o7VI=; b=uSuPnhemG944bCMGLusLycRe2y
	V1QAfBYub/BUOPrH+29hgNezlQqj3+1R1P2GdpP6/+0HOnnOk8l0v97LD9UV8++8ITGc85l/s8u/w
	Ao+r56W6aFaQhPg8LsRjHHI1P6jCYY+ziB69ohBnDOyfqqEY4bX+b0AewoM/8as1o2NHJrwD1VTZj
	T+B3QRam8L78zeOVFZKwP6BNMvGll0TSXzyoZANxnqJ3Vj/QVf/jqRU+ttHhoSX4cZ4Uvk0RtM/kT
	IewthH/snnuBkwYeRpszhTfqfZ/NM+DJhbVATWEG9HR6CS4q/QfgsHViD9GgI37dZj9zQErhas3B3
	7D/N+gHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEys-0003tF-Ok; Thu, 02 May 2019 16:54:46 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEyJ-0003Ir-UL
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 16:54:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id 13so1104295pfw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 09:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tTIyE5NXuHrlOq5gllPk+Q5yU0dC0cT6YPpzWkGZKrk=;
 b=DfJSJp1E5/kYZAponh3b9l8qSiRbPxtIfigHy3nbt5ALTcLcgaq3O7Mf70m0HnH6gv
 dwMR/dRP5XZEE8vludrAZSeMdmUESQGZof734kmI3kTI+ZAFc+GRoVBos6FcRPjbAXRa
 HGTkFPehBpHI2uZJcRITrTaLsrG6K5BUlWGlSaTTKXYFUjnIoaqw2CBHJ4H7k8oO27C6
 c7A+t/XB616J4l4XUFHcCJr5ufa6AHFXYto320cCRRTP8CpcdCsL4qQgymWg9Ksfi9Ap
 TavCrit12Yk8ETY8NTwpFfFkgI8zX+K6NGQlhTxDigh75NS1ZvxrPaZ9Nd16SQlkHjX+
 BA0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tTIyE5NXuHrlOq5gllPk+Q5yU0dC0cT6YPpzWkGZKrk=;
 b=Pwr0p4NWO1LLy9dTSJnFXozUXYXVmA6/IUOvrzBKNRvoXhtQjo4Z6hhCwQkAWiSOMu
 I1lI/iC+R+UZm77shMuHfLwEIL84JRD9fs6pru1kN9Z0G67sbHVORrSCizyTCI0EM428
 G4xIKqEC4fDqm4s+0yJzWEqhKpIaxc7fNJGzMWUq4YRgh5CvfC5QX/nqvCXxE68Apk1B
 i3nJ8GVS0Dz/kA57/AsLtoLOBEF0Sr2d6Id1SPyRiBn6xvWkSv3gNd2LgTAxR45+ZRt4
 6308yx9ShMQNNNV9uOvOs2HZjkbeNDJzkYp4eRIRQLKVI4ccKQoGkM187RdMSnOzRVgy
 4pIQ==
X-Gm-Message-State: APjAAAVq7kM3X3NjeDTgz54WLfPD3O83JHZ2lw3joSX2cdX1tW1H7vNv
 BLCTV5Fd7Srsbha4NDRU/JwhvA==
X-Google-Smtp-Source: APXvYqwWOAmvj3YvTHUYoK36fRkMS9w20Ys3abUSfLJL1Z2FxxvgL5txroZfV32U5+5B+afupPCPBA==
X-Received: by 2002:a63:20f:: with SMTP id 15mr4899953pgc.90.1556816051299;
 Thu, 02 May 2019 09:54:11 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j2sm69949pff.77.2019.05.02.09.54.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 09:54:10 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/4] dt-bindings: arm: coresight: Unify funnel DT binding
Date: Thu,  2 May 2019 10:54:04 -0600
Message-Id: <20190502165405.31573-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190502165405.31573-1-mathieu.poirier@linaro.org>
References: <20190502165405.31573-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_095411_984255_6A05D365 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

Following the same fashion with replicator DT binding, this patch is to
unify the DT binding for funnel to support static and dynamic modes;
finally we get the funnel DT binding as below:

Before patch:

  Static funnel, aka. non-configurable funnel:
    Not supported;

  Dynamic funnel, aka. configurable funnel:
    "arm,coresight-funnel", "arm,primecell";

After patch:

  Static funnel:
    "arm,coresight-static-funnel";

  Dynamic funnel:
    "arm,coresight-dynamic-funnel", "arm,primecell";
    "arm,coresight-funnel", "arm,primecell"; (obsolete)

At the end of this patch, it gives an example for static funnel DT
binding, and updates the dynamic funnel example.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Wanglai Shi <shiwanglai@hisilicon.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../devicetree/bindings/arm/coresight.txt     | 53 +++++++++++++++++--
 1 file changed, 48 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index d02d160fa8ac..8a88ddebc1a2 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -8,7 +8,8 @@ through the intermediate links connecting the source to the currently selected
 sink. Each CoreSight component device should use these properties to describe
 its hardware characteristcs.
 
-* Required properties for all components *except* non-configurable replicators:
+* Required properties for all components *except* non-configurable replicators
+  and non-configurable funnels:
 
 	* compatible: These have to be supplemented with "arm,primecell" as
 	  drivers are using the AMBA bus interface.  Possible values include:
@@ -24,8 +25,10 @@ its hardware characteristcs.
 		  discovered at boot time when the device is probed.
 			"arm,coresight-tmc", "arm,primecell";
 
-		- Trace Funnel:
-			"arm,coresight-funnel", "arm,primecell";
+		- Trace Programmable Funnel:
+			"arm,coresight-dynamic-funnel", "arm,primecell";
+			"arm,coresight-funnel", "arm,primecell"; (OBSOLETE. For
+				backward compatibility and will be removed)
 
 		- Embedded Trace Macrocell (version 3.x) and
 					Program Flow Trace Macrocell:
@@ -65,7 +68,7 @@ its hardware characteristcs.
 	  "stm-stimulus-base", each corresponding to the areas defined in "reg".
 
 * Required properties for devices that don't show up on the AMBA bus, such as
-  non-configurable replicators:
+  non-configurable replicators and non-configurable funnels:
 
 	* compatible: Currently supported value is (note the absence of the
 	  AMBA markee):
@@ -74,6 +77,9 @@ its hardware characteristcs.
 			"arm,coresight-replicator"; (OBSOLETE. For backward
 				compatibility and will be removed)
 
+		- Coresight Non-configurable Funnel:
+			"arm,coresight-static-funnel";
+
 	* port or ports: see "Graph bindings for Coresight" below.
 
 * Optional properties for ETM/PTMs:
@@ -203,8 +209,45 @@ Example:
 		};
 	};
 
+	funnel {
+		/*
+		 * non-configurable funnel don't show up on the AMBA
+		 * bus.  As such no need to add "arm,primecell".
+		 */
+		compatible = "arm,coresight-static-funnel";
+		clocks = <&crg_ctrl HI3660_PCLK>;
+		clock-names = "apb_pclk";
+
+		out-ports {
+			port {
+				combo_funnel_out: endpoint {
+					remote-endpoint = <&top_funnel_in>;
+				};
+			};
+		};
+
+		in-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				combo_funnel_in0: endpoint {
+					remote-endpoint = <&cluster0_etf_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				combo_funnel_in1: endpoint {
+					remote-endpoint = <&cluster1_etf_out>;
+				};
+			};
+		};
+	};
+
 	funnel@20040000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x20040000 0 0x1000>;
 
 		clocks = <&oscclk6a>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
