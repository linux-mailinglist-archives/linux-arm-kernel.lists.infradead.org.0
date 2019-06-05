Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB373553C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 04:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=be3gVSIiD9/qVT1rJdIX9STjjw0wOzKcSCvFNqFKlrI=; b=ZEGZbL2mjrKezN
	AzVA2JuG+r3vsJJQ0sWWrc0OOFDGOOavDUqVxLiu7NIORBarGcOsUiKUk1xteYAi9CV5WBIALsrnc
	kcx2PXg+b9AOGLAaAbMbNCJFDV5RSMlY2zvH4jKG0Z/pjcGdDP+vLU2O6ZNfhpSGCCpFUkM1SRC/1
	SvpL0ZzTqRjnWExqxM8Wj+iFX+tMH+cVIzc/5i956PzlLEXk8w0PnY+P/DDFuuTGYpjN+00wyqaZH
	COEv7YFjkUe1sLvZFip2Ai3oz/0gyjE5gc2ReIMpZEWwJVpaSNVjFQa2r2HXGjWEKMLYyuJN1SIGW
	c4N3Lwug4ATBHFRyK3Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYLdi-0003Qk-Fm; Wed, 05 Jun 2019 02:26:58 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYLdb-0003PD-2f
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 02:26:52 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cf7285a0000>; Tue, 04 Jun 2019 19:26:34 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 04 Jun 2019 19:26:48 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 04 Jun 2019 19:26:48 -0700
Received: from HQMAIL106.nvidia.com (172.18.146.12) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 5 Jun
 2019 02:26:47 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL106.nvidia.com
 (172.18.146.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Wed, 5 Jun 2019 02:26:47 +0000
Received: from josephl-linux.nvidia.com (Not Verified[10.19.108.132]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cf728660001>; Tue, 04 Jun 2019 19:26:47 -0700
From: Joseph Lo <josephl@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter
 <jonathanh@nvidia.com>
Subject: [PATCH V2] arm64: tegra: add CPU cache topology for Tegra186
Date: Wed, 5 Jun 2019 10:26:40 +0800
Message-ID: <20190605022640.17837-1-josephl@nvidia.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559701595; bh=nGio2hQPbyPHgpqdlNlX34h2VN8FwpEwywSzKj95xdM=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 MIME-Version:X-NVConfidentiality:Content-Transfer-Encoding:
 Content-Type;
 b=giG6I0zU08LjgT8xnkca9bVZepXcoNPXquIAJBn3gNTjEbwifCj2ulmkfqMgaKLvO
 m6pvTwqzjk9B9qGFmufOO700FAppYpEG72Y/VMu45K3Q+n2U+f7IisLIrB3QMyXNRI
 hDamYNhb8sIe8yoeMaRoRHGgNRdP3p+d3AsuEujNa3wRKj+QlAc5040UfTHDQ9Sp+a
 pOj44C5AXwiw2QgndKmG41gHdUdOHVz8rjbT8s1CwV9AA7K+BgD/Iiz2hosG5NfJqZ
 vnjHOQwGczFkf02VAu4AK2G6kG3rLsv6JE1hpVUazkiTI390Tz+Mhg/l3ZO0+cTkPD
 2/mrMq7M7NeDw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_192651_140022_E0F04A98 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-tegra@vger.kernel.org, Joseph Lo <josephl@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tegra186 has two CPU clusters with its own cache hierarchy. This patch
adds them with the cache information of each of the CPUs.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
---
v2:
 - add detail cache information
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 60 ++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 426ac0bdf6a6..8759fcfaf4ed 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -1128,38 +1128,98 @@
 		cpu@0 {
 			compatible = "nvidia,tegra186-denver";
 			device_type = "cpu";
+			i-cache-size = <0x20000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <512>;
+			d-cache-size = <0x10000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&L2_DENVER>;
 			reg = <0x000>;
 		};
 
 		cpu@1 {
 			compatible = "nvidia,tegra186-denver";
 			device_type = "cpu";
+			i-cache-size = <0x20000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <512>;
+			d-cache-size = <0x10000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&L2_DENVER>;
 			reg = <0x001>;
 		};
 
 		cpu@2 {
 			compatible = "arm,cortex-a57";
 			device_type = "cpu";
+			i-cache-size = <0xC000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&L2_A57>;
 			reg = <0x100>;
 		};
 
 		cpu@3 {
 			compatible = "arm,cortex-a57";
 			device_type = "cpu";
+			i-cache-size = <0xC000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&L2_A57>;
 			reg = <0x101>;
 		};
 
 		cpu@4 {
 			compatible = "arm,cortex-a57";
 			device_type = "cpu";
+			i-cache-size = <0xC000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&L2_A57>;
 			reg = <0x102>;
 		};
 
 		cpu@5 {
 			compatible = "arm,cortex-a57";
 			device_type = "cpu";
+			i-cache-size = <0xC000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&L2_A57>;
 			reg = <0x103>;
 		};
+
+		L2_DENVER: l2-cache0 {
+			compatible = "cache";
+			cache-unified;
+			cache-level = <2>;
+			cache-size = <0x200000>;
+			cache-line-size = <64>;
+			cache-sets = <2048>;
+		};
+
+		L2_A57: l2-cache1 {
+			compatible = "cache";
+			cache-unified;
+			cache-level = <2>;
+			cache-size = <0x200000>;
+			cache-line-size = <64>;
+			cache-sets = <2048>;
+		};
 	};
 
 	bpmp: bpmp {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
