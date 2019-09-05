Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FAFAA043
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RCVNMDSMLvwB3NmdJ1JvU550R5VcF++YNdSzPvVw0A=; b=ALaFQ1w8Hq2Hy7
	v6LmkHx0KtyFBoIsjUdJG8YRn7oXRq3Sf1QHUHXug1VE0FIdN+/8PYSVCShy/KAJFwemZEhoCfqqj
	dOCPQ71bfuPyKy6L85iHiXFtl1OfkvXD/DTxeFsOwNMBYvysEDSUyvoEMiYiu8Ds1fu2EgR9LNvIj
	+4l7iFbAwEC8tK2lbyqyrja2bQnsLcpg/iTYSmFu4v1DcIp95OgzyLNWqVZN0sdZCvKOOfVZfUUqJ
	ihbBaFMqbuHOoD5wNWF+drzPy3NXi0tuDZ3agg2PmLY+iewbKOxHP1jtm4Ilj+VGfIMqZE4NoTjfu
	d9XyUNb+zPW6wgRDczew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pHt-0002kA-4d; Thu, 05 Sep 2019 10:46:49 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pHL-00029k-NP
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:46:17 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d70e7760000>; Thu, 05 Sep 2019 03:46:14 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 05 Sep 2019 03:46:13 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 05 Sep 2019 03:46:13 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 5 Sep
 2019 10:46:13 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Thu, 5 Sep 2019 10:46:13 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d70e7700000>; Thu, 05 Sep 2019 03:46:12 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V4 2/6] dt-bindings: PCI: tegra: Add PCIe slot supplies
 regulator entries
Date: Thu, 5 Sep 2019 16:15:49 +0530
Message-ID: <20190905104553.2884-3-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190905104553.2884-1-vidyas@nvidia.com>
References: <20190905104553.2884-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567680374; bh=N2xSbEeco7MflIcCuTCLEJmxwVL2xhrZpdQdZjq2giw=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=MVlyMIXWnm1etK8JylYBuWyMlA+ASGjvXN9FOnClKgv7CuHcjCDg9IwP3dgJVQitI
 mNWl6/Kjr5nreywsxhQMPeqKO0J2UYK9POYX5B+WbFh5+fLNBimgxK5iIpgYo10CfC
 AQl2aKIehI/9Mwo0WkSV4Tg98O17uPKkGts54Q4l1AIilaJqKGtvnK1qZmJQEijyQy
 LYDKZ3UWJrWezBALtxx5Njdyidt83PgD7ZH/+R+aztNF0VmK8GSiIdK67hfoqKG4dH
 ubGqIlrR4kTyxwmbbem3eQSr5wrxG8PtmhAXWQvYFC7nMS1yyxpVj1x+PTFNzE4E5y
 6ZAP9jfpwcavA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_034615_787424_F89EA382 
X-CRM114-Status: UNSURE (   6.48  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 gustavo.pimentel@synopsys.com, vidyas@nvidia.com, linux-kernel@vger.kernel.org,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
 digetx@gmail.com, kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add optional bindings "vpcie3v3-supply" and "vpcie12v-supply" to describe
regulators of a PCIe slot's supplies 3.3V and 12V provided the platform
is designed to have regulator controlled slot supplies.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Thierry Reding <treding@nvidia.com>
---
V4:
* None

V3:
* None

V2:
* None

 .../devicetree/bindings/pci/nvidia,tegra194-pcie.txt      | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
index 0ac1b867ac24..b739f92da58e 100644
--- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
+++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
@@ -104,6 +104,12 @@ Optional properties:
    specified in microseconds
 - nvidia,aspm-l0s-entrance-latency-us: ASPM L0s entrance latency to be
    specified in microseconds
+- vpcie3v3-supply: A phandle to the regulator node that supplies 3.3V to the slot
+  if the platform has one such slot. (Ex:- x16 slot owned by C5 controller
+  in p2972-0000 platform).
+- vpcie12v-supply: A phandle to the regulator node that supplies 12V to the slot
+  if the platform has one such slot. (Ex:- x16 slot owned by C5 controller
+  in p2972-0000 platform).
 
 Examples:
 =========
@@ -156,6 +162,8 @@ Tegra194:
 			  0xc2000000 0x18 0x00000000 0x18 0x00000000 0x4 0x00000000>;  /* prefetchable memory (16GB) */
 
 		vddio-pex-ctl-supply = <&vdd_1v8ao>;
+		vpcie3v3-supply = <&vdd_3v3_pcie>;
+		vpcie12v-supply = <&vdd_12v_pcie>;
 
 		phys = <&p2u_hsio_2>, <&p2u_hsio_3>, <&p2u_hsio_4>,
 		       <&p2u_hsio_5>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
