Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612112680A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 18:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Bk9L4vuiItOoLyEj4Nz1pQio273VReJ1QMT5MM7QuI=; b=NMM7cwv7udDl0S
	BQFHJHpoM3Ny0uds05MqBqCEcHgXWxM30uMEobJYgj9y9Y6Xp7q77SDHKm55oLMcrQw/GlfHuqoc9
	Skkgiq+LbO/mER70B8ajT7Dy3+UiOkMajbsWdgJPzVieNYHacnaBySdkHa3Thu3XmKP5KSHNifvz7
	qzWtyK0y/mFwEj8XKRAPY8oPIvecwEEs1buigti0gU5ad7HNA3Ja3ziFtHlzkLXf57slSkCcy1N1K
	/zjFupGorPopg3Psfqrj0xqXqp78PKNFxYbbne5BLixReJ57rJ2MGiAsz968hqaiSopR8fpC/Lfd0
	pSnE8Qmm5nbd7QwiHgjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTzk-0001bv-Gb; Wed, 22 May 2019 16:21:36 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTzF-00013u-2Y
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 16:21:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4MGKdev102267;
 Wed, 22 May 2019 11:20:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558542039;
 bh=VCnEYJi1HcEwa5Iq6WKWhniPEkwL4k0FanrWfiqf6K0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Mf/P/3FrkUIXW+4ewz5KuRrQNOyEVulTEvST+4lJY0UrfaqaTtyGv1adilwWDWgK3
 e9FmQgBOxYd0v5uH1mX1lfQNxaTHTczQ3NuqPLMlYEK2cFefsYDiSH2V+i6cAbbGxQ
 nkswLRTNCwaPTYS0Jejs7+ZqqCWn+gmjC/0IYIZE=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4MGKdxC099357
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 May 2019 11:20:39 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 22
 May 2019 11:20:38 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 22 May 2019 11:20:38 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4MGKcsX122870;
 Wed, 22 May 2019 11:20:38 -0500
From: Nishanth Menon <nm@ti.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Santosh
 Shilimkar <ssantosh@kernel.org>, Will Deacon <will.deacon@arm.com>, Catalin
 Marinas <catalin.marinas@arm.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Mark Rutland <mark.rutland@arm.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: [PATCH 1/6] dt-bindings: arm: ti: Add bindings for J721E SoC
Date: Wed, 22 May 2019 11:19:16 -0500
Message-ID: <20190522161921.20750-2-nm@ti.com>
X-Mailer: git-send-email 2.21.0.777.g83232e38648b
In-Reply-To: <20190522161921.20750-1-nm@ti.com>
References: <20190522161921.20750-1-nm@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_092105_190738_8C1B8FB7 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Tero Kristo <t-kristo@ti.com>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The J721E SoC belongs to the K3 Multicore SoC architecture platform,
providing advanced system integration to enable lower system costs
of automotive applications such as infotainment, cluster, premium
Audio, Gateway, industrial and a range of broad market applications.
This SoC is designed around reducing the system cost by eliminating
the need of an external system MCU and is targeted towards ASIL-B/C
certification/requirements in addition to allowing complex software
and system use-cases.

Some highlights of this SoC are:
* Dual Cortex-A72s in a single cluster, three clusters of lockstep
  capable dual Cortex-R5F MCUs, Deep-learning Matrix Multiply Accelerator(MMA),
  C7x floating point Vector DSP, Two C66x floating point DSPs.
* 3D GPU PowerVR Rogue 8XE GE8430
* Vision Processing Accelerator (VPAC) with image signal processor and Depth
  and Motion Processing Accelerator (DMPAC)
* Two Gigabit Industrial Communication Subsystems (ICSSG), each with dual
  PRUs and dual RTUs
* Two CSI2.0 4L RX plus one CSI2.0 4L TX, one eDP/DP, One DSI Tx, and
  up to two DPI interfaces.
* Integrated Ethernet switch supporting up to a total of 8 external ports in
  addition to legacy Ethernet switch of up to 2 ports.
* System MMU (SMMU) Version 3.0 and advanced virtualisation
  capabilities.
* Upto 4 PCIe-GEN3 controllers, 2 USB3.0 Dual-role device subsystems,
  16 MCANs, 12 McASP, eMMC and SD, UFS, OSPI/HyperBus memory controller, QSPI,
  I3C and I2C, eCAP/eQEP, eHRPWM, MLB among other peripherals.
* Two hardware accelerator block containing AES/DES/SHA/MD5 called SA2UL
  management.
* Configurable L3 Cache and IO-coherent architecture with high data throughput
  capable distributed DMA architecture under NAVSS
* Centralized System Controller for Security, Power, and Resource
  Management (DMSC)

See J721E Technical Reference Manual (SPRUIL1, May 2019)
for further details: http://www.ti.com/lit/pdf/spruil1

Signed-off-by: Nishanth Menon <nm@ti.com>
---
 Documentation/devicetree/bindings/arm/ti/k3.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.txt b/Documentation/devicetree/bindings/arm/ti/k3.txt
index 6a059cabb2da..333e7256126a 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.txt
+++ b/Documentation/devicetree/bindings/arm/ti/k3.txt
@@ -13,6 +13,9 @@ architecture it uses, using one of the following compatible values:
 - AM654
   compatible = "ti,am654";
 
+- J721E
+  compatible = "ti,j721e";
+
 Boards
 ------
 
-- 
2.21.0.777.g83232e38648b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
