Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DA611DD11
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 05:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sOGxHBzSIMC4h0yaOXZu13HAO9ada/Z43nnfM1cYVY=; b=hzW4vPQk3SpD61
	NcFrjAvVmI+Nx1nHX+70hZc6vvtb7n6LobyOM0BaRvd/567344Rzq6KszTLb/tf9Gw5oerG31MGj4
	nKeOZWkMmzE/gmlMvCNVtlRT2wtqsT5QJfpcwwPwTW1rqDmFWnOIOcmwYgQ0xJ1T1FWhrNQuT97hT
	Kl1Hy0UOtaVNc8LidFWk5833d4M2FBqSS5uF5dXqdb4RjErDGM0IA8v75YMU/h7/yAKHaPg/10jKo
	DcFywhcylnavv84pdKxPDpH7buG6sy4fy6RT4Ln3Y08Ds/Xzxj2gmC1WA/3Zp0BYc+jT1KZeg6f9A
	LM9gBQ2WwVFSCMp0f+MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifcNg-0005Y2-N0; Fri, 13 Dec 2019 04:16:44 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifcNH-0005Nw-Kp
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 04:16:20 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBD4GFTW025897;
 Thu, 12 Dec 2019 22:16:15 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576210575;
 bh=is0XV6R8x9+p7EAoh9G88BnL+6qXK2KkvRi1VbaNltM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=GZ7F9olWazDCBxDma303KRmULxD2RNcpjUG3qUIpth52F9MWzzQfkMhFGjzAQ+vVg
 L7W/w1yebCL+nAEzG59Ue5BGu/JD3dUhT6vlOjGGd7uTuxAxeM2BD9v57/80SKXOPC
 j9UQ69Srw4l7VgEZFYXepOFou4EiH2nnavH0mPDw=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBD4GFA0064867
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 22:16:15 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 22:16:14 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 22:16:14 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBD4GEqD126706;
 Thu, 12 Dec 2019 22:16:14 -0600
From: Dave Gerlach <d-gerlach@ti.com>
To: Tony Lindgren <tony@atomide.com>, Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH 1/2] ARM: dts: am33xx: Add idle_states for cpuidle
Date: Thu, 12 Dec 2019 22:17:24 -0600
Message-ID: <20191213041725.16831-2-d-gerlach@ti.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213041725.16831-1-d-gerlach@ti.com>
References: <20191213041725.16831-1-d-gerlach@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_201619_718638_2AC887D6 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dave Gerlach <d-gerlach@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add idle_states table for CPU on am335x. Currently just add C1 state
which gates the MPU clock domain.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
---
 arch/arm/boot/dts/am33xx.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/am33xx.dtsi b/arch/arm/boot/dts/am33xx.dtsi
index 646f11430dad..66d102efa93f 100644
--- a/arch/arm/boot/dts/am33xx.dtsi
+++ b/arch/arm/boot/dts/am33xx.dtsi
@@ -47,6 +47,7 @@
 		#size-cells = <0>;
 		cpu@0 {
 			compatible = "arm,cortex-a8";
+			enable-method = "ti,am3352";
 			device_type = "cpu";
 			reg = <0>;
 
@@ -56,6 +57,17 @@
 			clock-names = "cpu";
 
 			clock-latency = <300000>; /* From omap-cpufreq driver */
+			cpu-idle-states = <&mpu_gate>;
+		};
+
+		idle-states {
+			mpu_gate: mpu_gate {
+				compatible = "arm,idle-state";
+				entry-latency-us = <40>;
+				exit-latency-us = <90>;
+				min-residency-us = <300>;
+				ti,idle-wkup-m3;
+			};
 		};
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
