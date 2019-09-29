Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D127C1969
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 22:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dyIYD3gVgMn9GUCTUGZohPLHvKQ5Um7Zu0zzHEQOnN8=; b=FZy
	IH735qr8YZAlcy47DiISplmnS/65pIkVTeYhJXlzdr9jMo0qzJAZ5wvCMhm3ljoUdnZGE/xvyNHVk
	EdT8SuhkT7NeFkS5uqX75WKyUeIcg12b4b1PfECANxNC5vSs/VjJkLfUSfel4NoERK6Z8ZYXFMz2H
	/UJRl/AA/lSDa4k88WLEqNSS4dqaKNcN8JVuk9l2X9DRB3GPC9LUoNDTFsxIEOoY9iOQao7hDevWf
	o2Yb3kFZK+kubQXXTM+OCTSs1rcrDhNF7oJMTmNBxKdkNBY294jAdI6ecTU4xszX386ETpfK9VSbv
	//0fw8DPWJxi2BaqVU7kQcIW6Y/N/3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEfVu-0005CA-3N; Sun, 29 Sep 2019 20:09:50 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEfVl-0005BL-PX
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 20:09:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D0506AC67;
 Sun, 29 Sep 2019 20:09:36 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: tegra: only map accessible sysram
Date: Sun, 29 Sep 2019 22:08:51 +0200
Message-Id: <20190929200851.14228-1-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_130941_973614_FF6648EB 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-tegra@vger.kernel.org, treding@nvidia.com,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 jonathanh@nvidia.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most of the SysRAM is secure and only accessible by TF-A.
Don't map this inaccessible memory in kernel. Only map pages
used by bpmp driver.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
Only tegra186 is tested. Tested on Jetson TX2.

 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 14 +++++++-------
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 14 +++++++-------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 47cd831fcf44..a861f46125fd 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -1174,23 +1174,23 @@
 		power-domains = <&bpmp TEGRA186_POWER_DOMAIN_GPU>;
 	};
 
-	sysram@30000000 {
+	sysram@3004e000 {
 		compatible = "nvidia,tegra186-sysram", "mmio-sram";
-		reg = <0x0 0x30000000 0x0 0x50000>;
+		reg = <0x0 0x3004e000 0x0 0x2000>;
 		#address-cells = <2>;
 		#size-cells = <2>;
-		ranges = <0 0x0 0x0 0x30000000 0x0 0x50000>;
+		ranges = <0 0x0 0x0 0x3004e000 0x0 0x2000>;
 
-		cpu_bpmp_tx: shmem@4e000 {
+		cpu_bpmp_tx: shmem@e000 {
 			compatible = "nvidia,tegra186-bpmp-shmem";
-			reg = <0x0 0x4e000 0x0 0x1000>;
+			reg = <0x0 0x0 0x0 0x1000>;
 			label = "cpu-bpmp-tx";
 			pool;
 		};
 
-		cpu_bpmp_rx: shmem@4f000 {
+		cpu_bpmp_rx: shmem@f000 {
 			compatible = "nvidia,tegra186-bpmp-shmem";
-			reg = <0x0 0x4f000 0x0 0x1000>;
+			reg = <0x0 0x1000 0x0 0x1000>;
 			label = "cpu-bpmp-rx";
 			pool;
 		};
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 3c0cf54f0aab..98b9399d6b7f 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1430,23 +1430,23 @@
 			  0x82000000 0x0  0x40000000 0x1f 0x40000000 0x0 0xc0000000>; /* non-prefetchable memory (3GB) */
 	};
 
-	sysram@40000000 {
+	sysram@4004e000 {
 		compatible = "nvidia,tegra194-sysram", "mmio-sram";
-		reg = <0x0 0x40000000 0x0 0x50000>;
+		reg = <0x0 0x4004e000 0x0 0x2000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-		ranges = <0x0 0x0 0x40000000 0x50000>;
+		ranges = <0x0 0x0 0x4004e000 0x2000>;
 
-		cpu_bpmp_tx: shmem@4e000 {
+		cpu_bpmp_tx: shmem@e000 {
 			compatible = "nvidia,tegra194-bpmp-shmem";
-			reg = <0x4e000 0x1000>;
+			reg = <0x0 0x1000>;
 			label = "cpu-bpmp-tx";
 			pool;
 		};
 
-		cpu_bpmp_rx: shmem@4f000 {
+		cpu_bpmp_rx: shmem@f000 {
 			compatible = "nvidia,tegra194-bpmp-shmem";
-			reg = <0x4f000 0x1000>;
+			reg = <0x1000 0x1000>;
 			label = "cpu-bpmp-rx";
 			pool;
 		};
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
