Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A80018BA8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:08:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CAONYzWBeQhyzJfa0GpdceYd1o6GdR+DeItK0WSuOaM=; b=JpgTm/NumuMKS7ZjdQWFAU28nb
	jqasQ7WS2LOwXYP7xuudjVbRdEa1zIy8J23+1/eFt08Vb6dzIT2kJhgyntfzB8rdPqTAbzcDI1qNu
	faJTM9gr+oalEGjq3t0LPnXMclGDpw0wtXBA/4s9+ehhW9RsWIid+NcIakuDLyCHVqk+ocYOwoQU6
	pRFJJSD3uZbyRDKo9KGaUPkudDj3shhx2miX2fzbhVisb9KS0TQQnmSkY5bJ3ncKU9OeQgOzma144
	qTsdHlpAprwtU0EmtZd8qGhBl6blYqBKOyLlxKbmG5SjV8TFGZ55nmOvD6+8vWQiCn++Q0iXm7BSG
	w/p6gfKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwme-0001qq-Gk; Thu, 19 Mar 2020 15:08:32 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwlP-0000tF-JI
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:07:18 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200319150713epoutp04573d8817b9a226d948694881e1ab6433~9vPu-vgtq2992229922epoutp04G
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 15:07:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200319150713epoutp04573d8817b9a226d948694881e1ab6433~9vPu-vgtq2992229922epoutp04G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584630433;
 bh=RwV5Vt68kQmcCoecxf1d7B1jkFqNuPCLo2zXINj7zdc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ebPNSCH9rsGJigl4nuLqs0H0TNNOGLfmSpIS3pk89ABhhP1Vso52/tWqQlnm+ocms
 AiVERvR6UIl02woBx3L87aQSbzVmnL0tKHXmYxGKi3trcZcJ4SV2MhXOF0Qlm01L0D
 MXMzMmaIvpPy0DuWbDf15oHrSOKa3r4S1BJa3rjM=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200319150712epcas5p3b259584313f5cdcbbc0b85af09ea20e4~9vPuFeoEL2928829288epcas5p3S;
 Thu, 19 Mar 2020 15:07:12 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 FC.26.04778.0AA837E5; Fri, 20 Mar 2020 00:07:12 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200319150712epcas5p24e99ea681e65e14cd2ca815b78ad0957~9vPt0l3JD1427414274epcas5p24;
 Thu, 19 Mar 2020 15:07:12 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200319150712epsmtrp140ea347eb4528ebe45ceaca0d63aa7c0~9vPty_fo_0357603576epsmtrp1j;
 Thu, 19 Mar 2020 15:07:12 +0000 (GMT)
X-AuditID: b6c32a4a-353ff700000012aa-d4-5e738aa0ed70
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 47.C7.04158.F9A837E5; Fri, 20 Mar 2020 00:07:11 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200319150710epsmtip2adc5f1a20c9c7e26761a97114114bbbb~9vPr9SItU0525805258epsmtip2N;
 Thu, 19 Mar 2020 15:07:09 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 5/5] arm64: dts: Add node for ufs exynos7
Date: Thu, 19 Mar 2020 20:30:31 +0530
Message-Id: <20200319150031.11024-6-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319150031.11024-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIKsWRmVeSWpSXmKPExsWy7bCmuu6CruI4g3vzhCwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLFr3HmG3
 WLr1JqMDr8flvl4mj02rOtk8Ni+p92g5uZ/F4+PTWywefVtWMXp83iTn0X6gmymAI4rLJiU1
 J7MstUjfLoEr493m98wFx6Qq+tY0MDUwHhTtYuTkkBAwkVj3ZyVzFyMXh5DAbkaJCzMmQjmf
 GCVOLrrABuF8Y5Ton3CNBabl+t1fUIm9jBJLfrSAJYQEWpgk/m1SA7HZBLQl7k7fwgRiiwgE
 SFx6fxCsgVlgHpPEokc9YAlhARuJu5tvsYHYLAKqEssWrmMGsXmB4le6+tkhtslLrN5wACzO
 KWArMefCdRaQQRICt9kknizdBnWSi8T0KxugGoQlXh3fAmVLSbzsbwOyOYDsbImeXcYQ4RqJ
 pfOOQbXaSxy4MocFpIRZQFNi/S59kDCzAJ9E7+8nTBCdvBIdbUIQ1aoSze+uQnVKS0zs7maF
 sD0k+k4cgIbJBEaJWw9msU9glJ2FMHUBI+MqRsnUguLc9NRi0wKjvNRyveLE3OLSvHS95Pzc
 TYzghKLltYNx2TmfQ4wCHIxKPLwz2orjhFgTy4orcw8xSnAwK4nw6qYDhXhTEiurUovy44tK
 c1KLDzFKc7AoifNOYr0aIySQnliSmp2aWpBaBJNl4uCUamDkmxLHoup44I+O9/M/NvecBPQn
 Hz12eXeFz/wix/nZ51q6v66yPP69269UxC3uat7jRywMLl63V04/e+x0sV773k8pu1jW2rje
 vWSn5rXv9OqCjNwZ5VYXd/JGlB5y0H4cXMpw53/gFW1xMfZrjzNmPxPj4TnQ2bF9Pqf7M6b2
 8GtNW5QbHsoqsRRnJBpqMRcVJwIAsXinLiQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrILMWRmVeSWpSXmKPExsWy7bCSvO78ruI4gwdfbSwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLFr3HmG3
 WLr1JqMDr8flvl4mj02rOtk8Ni+p92g5uZ/F4+PTWywefVtWMXp83iTn0X6gmymAI4rLJiU1
 J7MstUjfLoEr493m98wFx6Qq+tY0MDUwHhTtYuTkkBAwkbh+9xdbFyMXh5DAbkaJPzO/MUMk
 pCWub5zADmELS6z895wdoqiJSWLixnZGkASbgLbE3elbmEBsEYEgiXtr1rKCFDELrGKS6Ow9
 C1YkLGAjcXfzLTYQm0VAVWLZwnVgG3iB4le6+qE2yEus3nAALM4pYCsx58J1FhBbCKim89U1
 tgmMfAsYGVYxSqYWFOem5xYbFhjlpZbrFSfmFpfmpesl5+duYgQHtJbWDsYTJ+IPMQpwMCrx
 8Dq0FMcJsSaWFVfmHmKU4GBWEuHVTQcK8aYkVlalFuXHF5XmpBYfYpTmYFES55XPPxYpJJCe
 WJKanZpakFoEk2Xi4JRqYFxzQzxD5tDrO/ftlyhfk4/S+sY1UW759HVN6Xl9pzY0MjPNCEl2
 vm99n/dGYvK39yZm6TzlUlH31mt0B4fIzMy+aKSnGCbrWnnYyylqydqj4nKxs8Iud/yTDFu5
 bFfc02WcYU7b/7T/WpnhVZMeWld+Z+cSlxMWXNqZHXz3PZfMmHHiTrfLNyWW4oxEQy3mouJE
 ACQ6OEpkAgAA
X-CMS-MailID: 20200319150712epcas5p24e99ea681e65e14cd2ca815b78ad0957
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200319150712epcas5p24e99ea681e65e14cd2ca815b78ad0957
References: <20200319150031.11024-1-alim.akhtar@samsung.com>
 <CGME20200319150712epcas5p24e99ea681e65e14cd2ca815b78ad0957@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_080716_474105_3DFB527E 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adding dt node foe UFS and UFS-PHY for exynos7 SoC.

Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 .../boot/dts/exynos/exynos7-espresso.dts      | 16 +++++++
 arch/arm64/boot/dts/exynos/exynos7.dtsi       | 43 ++++++++++++++++++-
 2 files changed, 57 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos7-espresso.dts b/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
index 7af288fa9475..b59a0a32620a 100644
--- a/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
+++ b/arch/arm64/boot/dts/exynos/exynos7-espresso.dts
@@ -406,6 +406,22 @@
 	};
 };
 
+&ufs {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
+	ufs,pwr-attr-mode = "FAST";
+	ufs,pwr-attr-lane = <2>;
+	ufs,pwr-attr-gear = <2>;
+	ufs,pwr-attr-hs-series = "HS_rate_b";
+	ufs-rx-adv-fine-gran-sup_en = <1>;
+	ufs-rx-adv-fine-gran-step = <3>;
+	ufs-rx-adv-min-activate-time-cap = <9>;
+	ufs-pa-granularity = <6>;
+	ufs-pa-tacctivate = <3>;
+	ufs-pa-hibern8time = <20>;
+};
+
 &usbdrd_phy {
 	vbus-supply = <&usb30_vbus_reg>;
 	vbus-boost-supply = <&usb3drd_boost_5v>;
diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
index 5558045637ac..9d16c90edd07 100644
--- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
@@ -220,9 +220,14 @@
 			#clock-cells = <1>;
 			clocks = <&fin_pll>, <&clock_top1 DOUT_ACLK_FSYS1_200>,
 				 <&clock_top1 DOUT_SCLK_MMC0>,
-				 <&clock_top1 DOUT_SCLK_MMC1>;
+				 <&clock_top1 DOUT_SCLK_MMC1>,
+				 <&clock_top1 DOUT_SCLK_UFSUNIPRO20>,
+				 <&clock_top1 DOUT_SCLK_PHY_FSYS1>,
+				 <&clock_top1 DOUT_SCLK_PHY_FSYS1_26M>;
 			clock-names = "fin_pll", "dout_aclk_fsys1_200",
-				      "dout_sclk_mmc0", "dout_sclk_mmc1";
+				      "dout_sclk_mmc0", "dout_sclk_mmc1",
+				      "dout_sclk_ufsunipro20", "dout_sclk_phy_fsys1",
+				      "dout_sclk_phy_fsys1_26m";
 		};
 
 		serial_0: serial@13630000 {
@@ -601,6 +606,40 @@
 			};
 		};
 
+		ufs: ufs@15570000 {
+			compatible = "samsung,exynos7-ufs";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+			reg = <0x15570000 0x100>,  /* 0: HCI standard */
+				<0x15570100 0x100>,  /* 1: Vendor specificed */
+				<0x15571000 0x200>,  /* 2: UNIPRO */
+				<0x15572000 0x300>;  /* 3: UFS protector */
+			reg-names = "hci", "vs_hci", "unipro", "ufsp";
+			interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clock_fsys1 ACLK_UFS20_LINK>,
+				<&clock_fsys1 SCLK_UFSUNIPRO20_USER>;
+			clock-names = "core_clk", "sclk_unipro_main";
+			freq-table-hz = <0 0>, <0 0>;
+			pclk-freq-avail-range = <70000000 133000000>;
+			ufs,pwr-local-l2-timer = <8000 28000 20000>;
+			ufs,pwr-remote-l2-timer = <12000 32000 16000>;
+			phys = <&ufs_phy>;
+			phy-names = "ufs-phy";
+			status = "disabled";
+		};
+
+		ufs_phy: ufs-phy@0x15571800 {
+			compatible = "samsung,exynos7-ufs-phy";
+			reg = <0x15571800 0x240>;
+			reg-names = "phy-pma";
+			samsung,pmu-syscon = <&pmu_system_controller>;
+			#phy-cells = <0>;
+			clocks = <&clock_fsys1 MOUT_FSYS1_PHYCLK_SEL1>,
+				<&clock_top1 CLK_SCLK_PHY_FSYS1_26M>;
+			clock-names = "ref_clk_parent", "ref_clk";
+		};
+
 		usbdrd_phy: phy@15500000 {
 			compatible = "samsung,exynos7-usbdrd-phy";
 			reg = <0x15500000 0x100>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
