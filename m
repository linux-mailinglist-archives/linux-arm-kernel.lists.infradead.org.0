Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 642B133D3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 04:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wxzreoHV1LO+CpNMkFvihkNVS9ebFn3p/PdiuQC2Gtc=; b=eJMpUbw4+/U+d0
	7uNNtBqt4hCzuiVSFybopSOFx4zup8VvNhNxi00XNwr9CH3FVI9mLx/tpns5MyAebSwx/SU9h30Tf
	IuE2RG5fbVrPS1+UfazNgcmxquodoJoRbchzKgRk4Gol4ztt2z0ZgFChZBuwXczd1qLEyhWvPilm/
	nIXNZhBZb2YSiOia9AbCtdCK1LSX8+n2uDOSZtzY1cTsxdfA5iz+lsSzj21ilbxrp5b8VVyU/+R1C
	el95fRzo6yuOQKr0FIdTupGfyZKE5DHRuuTUNjR9JJtKJQw3F+02cLcfiY2aeM8xALym6Rp/nBEX+
	ZZu8KBC8gKq1WkIS1JgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXzIj-00041B-5k; Tue, 04 Jun 2019 02:35:49 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXzIc-00040f-Ca
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 02:35:43 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cf5d8fa0000>; Mon, 03 Jun 2019 19:35:38 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 03 Jun 2019 19:35:39 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 03 Jun 2019 19:35:39 -0700
Received: from HQMAIL112.nvidia.com (172.18.146.18) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 4 Jun
 2019 02:35:39 +0000
Received: from HQMAIL104.nvidia.com (172.18.146.11) by HQMAIL112.nvidia.com
 (172.18.146.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 4 Jun
 2019 02:35:38 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Tue, 4 Jun 2019 02:35:38 +0000
Received: from josephl-linux.nvidia.com (Not Verified[10.19.108.132]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cf5d8f90000>; Mon, 03 Jun 2019 19:35:38 -0700
From: Joseph Lo <josephl@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter
 <jonathanh@nvidia.com>
Subject: [PATCH] arm64: tegra: add CPU cache topology for Tegra186
Date: Tue, 4 Jun 2019 10:35:35 +0800
Message-ID: <20190604023535.7115-1-josephl@nvidia.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559615738; bh=AmoNdluQeX3k2IWG+5yEa3tuSV9eSMqeTaMre8hA2sc=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 MIME-Version:X-NVConfidentiality:Content-Transfer-Encoding:
 Content-Type;
 b=PfvFfsYvBjBPMBICFj850oIPuFNbI+4lWuy3JTXDpYALRFPTyW/PZ/WDU963aAheJ
 u2iCEl8UH+19bNRUw0MAtChrQxGT05vSGpCEu3ZgrrpcnUL8qhmQi0ULJwyfYaDG67
 IQiHUSkkiTdsras+StyU/9LCszNZDqYfrYBmBvYp3ejS9I9fihALc+lVOFq7k9eNxi
 rMIpAZcnX75/LpfmobhOoQzjJQhn/+oYzocXBuk3WEItxQvyDQUAVLLA3piwJ4ayIv
 Oniz63K1DF+i4p80F7ljwuOWa2wZQFF9121SrWOANPQEHcj3GrezYPmVaC+7hKGMPW
 CelZgORJksfWw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_193542_437850_0B96FD8F 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Joseph Lo <josephl@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tegra186 has two CPU clusters with its own cache hierarchy. This patch
adds them with the cache information of each of the CPUs.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 426ac0bdf6a6..26055c7f26e7 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -1128,38 +1128,52 @@
 		cpu@0 {
 			compatible = "nvidia,tegra186-denver";
 			device_type = "cpu";
+			next-level-cache = <&L2_DENVER>;
 			reg = <0x000>;
 		};
 
 		cpu@1 {
 			compatible = "nvidia,tegra186-denver";
 			device_type = "cpu";
+			next-level-cache = <&L2_DENVER>;
 			reg = <0x001>;
 		};
 
 		cpu@2 {
 			compatible = "arm,cortex-a57";
 			device_type = "cpu";
+			next-level-cache = <&L2_A57>;
 			reg = <0x100>;
 		};
 
 		cpu@3 {
 			compatible = "arm,cortex-a57";
 			device_type = "cpu";
+			next-level-cache = <&L2_A57>;
 			reg = <0x101>;
 		};
 
 		cpu@4 {
 			compatible = "arm,cortex-a57";
 			device_type = "cpu";
+			next-level-cache = <&L2_A57>;
 			reg = <0x102>;
 		};
 
 		cpu@5 {
 			compatible = "arm,cortex-a57";
 			device_type = "cpu";
+			next-level-cache = <&L2_A57>;
 			reg = <0x103>;
 		};
+
+		L2_DENVER: l2-cache0 {
+			compatible = "cache";
+		};
+
+		L2_A57: l2-cache1 {
+			compatible = "cache";
+		};
 	};
 
 	bpmp: bpmp {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
