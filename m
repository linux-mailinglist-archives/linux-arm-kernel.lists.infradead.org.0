Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B749CCB61
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 18:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kwdy+rBzsu0H+/bdGP3xqSYwTFaMLTlxogOWv7bvf5Y=; b=dk5hRy3yCjM5YX
	N0Yo7AjvyGZQwHfZMGxlasOPAnF5Lcu6r56lrH8FHR34rHwJRdmSb5i6UvUzYtD3bRjeM0kjZ/Ygq
	NN7HE5YADpfncvEUbKsCpf7UGZLmwnU5USJBs+SzRNFyJPboOO2Cw+bCA4kB6yScXDs6qrRk5TbYE
	SD80TNENj5bIGb5Kf7P3up49BLzbEWqFnlrkJpEIx5MlyB8juHi4yJQ5GAWGVIruY/j7j6z4AJ9Ph
	rwYii/a0shPkxrCXzLSkWiTXBofh2ibi9KVZaDaGcmWc9ETq26CIGO6iDjrRhqGKi+OcSTpMtRkmU
	Heckzy7dLXdka2TQgc0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGn8q-0000j5-Ud; Sat, 05 Oct 2019 16:42:48 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGn8T-0000ab-4g
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 16:42:27 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d98c7f90000>; Sat, 05 Oct 2019 09:42:33 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Sat, 05 Oct 2019 09:42:24 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Sat, 05 Oct 2019 09:42:24 -0700
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 5 Oct
 2019 16:42:24 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Sat, 5 Oct 2019 16:42:24 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d98c7ed0000>; Sat, 05 Oct 2019 09:42:24 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH 2/2] arm64: tegra: Assume no CLKREQ presence by default
Date: Sat, 5 Oct 2019 22:12:12 +0530
Message-ID: <20191005164212.3646-2-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191005164212.3646-1-vidyas@nvidia.com>
References: <20191005164212.3646-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1570293753; bh=MZYyKVmEQSs/fOW9jXMmxgmCMVq3eo89Qu0p+NPSTVs=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=j35q6JEW7K9nAmcdjpdn34hh+aHHtBRTtQKQR6I9CWmFoch/UAIotH6IvOwFMQC5Z
 29j07RDPa6pCovA8XMXNILtunib6GzSgzceovbUasU65YmgrUCVe5IWlWt/6kLIvVp
 JLx/CM30Wcft5Cq4ya56SRKkZa+Jh6daRz5FPeuaMQ0bfJi1AC00IdAffaF7w4gsM7
 Hb5JR96QyYdCFnBhFFfG5m/JXL1zm9uMpdeOz9JaY/bFs0Z2ydXNsR6HhHY39/TRyb
 usRnBUYolrfqpFcz9LVJgOuWwpJ+goDpl1c5TuiuXFRnFohFW3ldCi+zQFJtTw//sU
 b3607CK08OAXQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_094225_190109_252E20A5 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, vidyas@nvidia.com,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although Tegra194 has support for CLKREQ sideband signal and P2972
has routing of the same till the slot, it is the case most of the time
that the connected device doesn't have CLKREQ support. Hence, it makes
sense to assume that there is no CLKREQ support by default and it can
be enabled on need basis when a card with CLKREQ support is connected.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index a312c051448b..11220d97adb8 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1186,7 +1186,6 @@
 
 		nvidia,bpmp = <&bpmp 1>;
 
-		supports-clkreq;
 		nvidia,aspm-cmrt-us = <60>;
 		nvidia,aspm-pwr-on-t-us = <20>;
 		nvidia,aspm-l0s-entrance-latency-us = <3>;
@@ -1232,7 +1231,6 @@
 
 		nvidia,bpmp = <&bpmp 2>;
 
-		supports-clkreq;
 		nvidia,aspm-cmrt-us = <60>;
 		nvidia,aspm-pwr-on-t-us = <20>;
 		nvidia,aspm-l0s-entrance-latency-us = <3>;
@@ -1278,7 +1276,6 @@
 
 		nvidia,bpmp = <&bpmp 3>;
 
-		supports-clkreq;
 		nvidia,aspm-cmrt-us = <60>;
 		nvidia,aspm-pwr-on-t-us = <20>;
 		nvidia,aspm-l0s-entrance-latency-us = <3>;
@@ -1324,7 +1321,6 @@
 
 		nvidia,bpmp = <&bpmp 4>;
 
-		supports-clkreq;
 		nvidia,aspm-cmrt-us = <60>;
 		nvidia,aspm-pwr-on-t-us = <20>;
 		nvidia,aspm-l0s-entrance-latency-us = <3>;
@@ -1370,7 +1366,6 @@
 
 		nvidia,bpmp = <&bpmp 0>;
 
-		supports-clkreq;
 		nvidia,aspm-cmrt-us = <60>;
 		nvidia,aspm-pwr-on-t-us = <20>;
 		nvidia,aspm-l0s-entrance-latency-us = <3>;
@@ -1420,7 +1415,6 @@
 		interrupt-map-mask = <0 0 0 0>;
 		interrupt-map = <0 0 0 0 &gic GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
 
-		supports-clkreq;
 		nvidia,aspm-cmrt-us = <60>;
 		nvidia,aspm-pwr-on-t-us = <20>;
 		nvidia,aspm-l0s-entrance-latency-us = <3>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
