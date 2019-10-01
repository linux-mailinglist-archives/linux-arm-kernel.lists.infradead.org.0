Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBF8C3FF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EPK883M97ych4hmvuw/gzL7wvGTCPlJMz91uSZPHyUY=; b=mL0
	eFIsGJDohSQZTRgFfiwXeUXReTNAWi4UIPwgy+KGsubXdmDyOEb1dIh2JLguIhXEBcJ7tH1sh2Rh1
	+5ksFQ7VQiE1qg/teb24DyCj5lrKiABHNUe5zWjd7MYQXQwa+UUckPz2dY2RR1Ql08lnxuRXPl/jc
	LHNkfUjC/9rLC9K0I5TqpHMJxq1yjImIzBGCGu+sCASWtF7qVmQrAfeEZv1ezJMWNTHk2T6Uf4hHh
	KN22S5LECi2qVUk4Ajr6ie423kjU6AyHAOQ3n5Ip3ycMBb4x6o1z4VuWattv8k3m99pyOMvJkhozm
	fNeS4i7KfbifhB/ZRPkmRXSF2saMRMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFMzz-00041Z-BR; Tue, 01 Oct 2019 18:35:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFMzt-000413-1Y
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:35:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id q21so8651405pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=6OmoG9nmfnxp1hTQSnSmg1pG2i9ciIUjtqDNmRYZw6w=;
 b=PMFyjHJwQLR9BN/b+vKadsnTfwLbbJmf2zBAgtox4/WCysbzBXr8UFaVyYm7ToqSKi
 r6Ats7g3lDQbweDGfkQYRnWxPKkcAFEaLonbBCGxWk/H/hDrDIpoO7n/ZQAT+ZUKDIcl
 NCmCrRgDiNaxWHyAAkV4ByoKEOW8XuYmdTpyW95FhtBf0t4cnbtPLDHeX4q9lCutRRR4
 JgGIhWuy/PonjWTOqUK9YdqMDaWfllC7lt1SvYnMVr9vWxEtuMC1uqAjscmjmaMgVMTE
 25nwLkmrQwphR2/y53BHm6iCbd0QsDV1f5fjQi+HUaLbog1hbM5wBs4+lBDwWysejKqS
 m5gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6OmoG9nmfnxp1hTQSnSmg1pG2i9ciIUjtqDNmRYZw6w=;
 b=iwWSb+Y8xSpTrO99bdjN/QZFOPUkhONUpGAAdPISY/k1LhFaWVn3DacCX6ByMQe8B1
 jr9wgLh1yvvIOq8KEv9cOk4O2fGaAc/kUMBAMzcwm5jDZUIe1AZ7nGB1ZvjK59SIdEiL
 hcxOSEfDH0oI0521+/izf0QkWfRXq3QIuz6dXu/3DGbzzGVR1vdV2jpA6A0t55r3a6rK
 3RCDfnzUZ6BWExXRuzNv/poTsIsvll/9V9UlPTva7OETbQlsHkpHwnBraOTj85v9WurJ
 V7nZwXwree71pu7+CAw5hWye/CmEBLb2p0APAL0354nn98j7zhLTBrIngQNARV+9x4+4
 tYGw==
X-Gm-Message-State: APjAAAXkIazYl4Qe4zTgbbwmtFHfgjRGs4eOpiT+DpZFykDHfsMn5Mz7
 0RIUC9puaxqK/fH6tl6b5pX9aw==
X-Google-Smtp-Source: APXvYqwufTWDovtqMSDCdgIffp1MdomqxuofdL0vq4XG3lfejHVLVq3PhYVe2oAkWLjpOOUbVa2DRw==
X-Received: by 2002:a17:90a:178d:: with SMTP id
 q13mr7189954pja.134.1569954939726; 
 Tue, 01 Oct 2019 11:35:39 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
 by smtp.gmail.com with ESMTPSA id
 j10sm16803222pfn.128.2019.10.01.11.35.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 11:35:38 -0700 (PDT)
From: John Stultz <john.stultz@linaro.org>
To: lkml <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: hisilicon: Add Mali-450 MP4 GPU DT entry
Date: Tue,  1 Oct 2019 18:35:35 +0000
Message-Id: <20191001183535.70835-1-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_113541_088078_63BC8883 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Wei Xu <xuwei5@hisilicon.com>, Peter Griffin <peter.griffin@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peter Griffin <peter.griffin@linaro.org>

hi6220 has a Mali450 MP4 so lets add it into the DT.

Cc: Wei Xu <xuwei5@hisilicon.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 38 +++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
index 108e2a4227f6..2072b637b5af 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
@@ -260,6 +260,7 @@
 			compatible = "hisilicon,hi6220-aoctrl", "syscon";
 			reg = <0x0 0xf7800000 0x0 0x2000>;
 			#clock-cells = <1>;
+			#reset-cells = <1>;
 		};
 
 		sys_ctrl: sys_ctrl@f7030000 {
@@ -1021,6 +1022,43 @@
 			clock-names = "apb_pclk";
 			cpu = <&cpu7>;
 		};
+
+		mali: gpu@f4080000 {
+			compatible = "hisilicon,hi6220-mali", "arm,mali-450";
+			reg = <0x0 0xf4080000 0x0 0x00040000>;
+			interrupt-parent = <&gic>;
+			interrupts =	<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>;
+
+			interrupt-names = "gp",
+					  "gpmmu",
+					  "pp",
+					  "pp0",
+					  "ppmmu0",
+					  "pp1",
+					  "ppmmu1",
+					  "pp2",
+					  "ppmmu2",
+					  "pp3",
+					  "ppmmu3";
+			clocks = <&media_ctrl HI6220_G3D_CLK>,
+				 <&media_ctrl HI6220_G3D_PCLK>;
+			clock-names = "core", "bus";
+			assigned-clocks = <&media_ctrl HI6220_G3D_CLK>,
+					  <&media_ctrl HI6220_G3D_PCLK>;
+			assigned-clock-rates = <500000000>, <144000000>;
+			reset-names = "ao_g3d", "media_g3d";
+			resets = <&ao_ctrl AO_G3D>, <&media_ctrl MEDIA_G3D>;
+		};
 	};
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
