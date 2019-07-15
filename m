Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA1C68A2D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rMOToqMyMed7zwn3f0LciVctwQT/OTvbPh32UTmN6c8=; b=NzV1sKNZtCW3ErRH+K8X+5uAbl
	8FHqRC7mVtPxC0Qo8aUFLa8tk2Oa3wl1lGSPB2/1w9Dbm3WT1ynlXHwBGP58ps9455JNpYAIEetIg
	r8VwGHzC7t5V+OZi9THS0Kv7ufg6X/1irpifLO+XwbgAMpJpgRGLgJeSzPusPmwYAo2bw0W64LUmx
	MGROKiym9dTRnbfUwcGwUVBjrR/r2tv83M8b9cAwI52Ehpk0eMUkA+inXKa4jzF1UB0RRUP5eMDdm
	pw+zyXtzrG/Dee5HgIchmptKsbguGvEZuLSPZSjknF9UKjIuUbsoFa2gNlq1dbVMmubFpewiVzr8Q
	5Vn1qyWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0cq-0005l3-K2; Mon, 15 Jul 2019 13:02:40 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0M2-00056T-MG
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:24 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124516euoutp02ed6a61675a6637cfafae9598d88be78f~xlVATlPiY0722707227euoutp02y
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124516euoutp02ed6a61675a6637cfafae9598d88be78f~xlVATlPiY0722707227euoutp02y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194716;
 bh=LR6wVN9M871+aI+Zz2/xAtq0PjCbEVYLnCfnQUmJAAU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TH3vrDwFxFP2684e7h0NgXK4tvPJE56+FYE1ZpKDcApesyklc74kuoE4o89jUNXNZ
 WtaJeuKrwBLJvDKD/cSuWEe9geyVdVfUorBFm6Eod29YHMdvy0I5nzEgPyFhGOpnbT
 6g6UsYV5PaHO8IBCTmcof0/yt4CCxH3TxsyUh0B0=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124515eucas1p108b426eaa33d9fe510ae208b72392523~xlU-SaHDx3191231912eucas1p1F;
 Mon, 15 Jul 2019 12:45:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 53.D0.04325.B557C2D5; Mon, 15
 Jul 2019 13:45:15 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124514eucas1p1dcbbcbac0503980825d5e4ebae32003b~xlU_X-DGF0146601466eucas1p1v;
 Mon, 15 Jul 2019 12:45:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190715124514eusmtrp21c632d15dbbe3d9e5a7d65adb92ab2ef~xlU_J1NmX2735227352eusmtrp2N;
 Mon, 15 Jul 2019 12:45:14 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-24-5d2c755bde19
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id AD.60.04146.A557C2D5; Mon, 15
 Jul 2019 13:45:14 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124513eusmtip219fb635485904465e149061e04d5f99f~xlU9Yc20b1099510995eusmtip26;
 Mon, 15 Jul 2019 12:45:13 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 49/50] ARM: dts: exynos: add buses support for Exynos5800
 Peach Pi
Date: Mon, 15 Jul 2019 14:44:16 +0200
Message-Id: <20190715124417.4787-50-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHKsWRmVeSWpSXmKPExsWy7djP87rRpTqxBp2TJS1urTvHarFxxnpW
 i+tfnrNazD8C5PY/fs1scf78BnaLs01v2C1uNchYbHp8jdXiY889VovLu+awWcw4v4/JYu2R
 u+wWS69fZLK4eMrV4nbjCjaL1r1H2C0Ov2lntfh3bSOLg7DHmnlrGD3e32hl99i0qpPNY/OS
 eo+D7/YwefRtWcXo8XmTXAB7FJdNSmpOZllqkb5dAlfGzfnXmQp+aVXMmf2MsYFxt3IXIyeH
 hICJxKPJi9i6GLk4hARWMEpMu/iACcL5wijRO30eK4TzmVHi+o1n7DAt/663QCWWM0p8bn/A
 CtfSMvcoUBUHB5uAnsSOVYUgDSICSxgljvxMAqlhFrjJJLHnyU5WkISwQLjEjXlvmUFsFgFV
 iYe/lzOC2LwC9hL3Nn9hhdgmL7F6wwGwGk6g+M9pF8COlRC4xC5xuXsmE0SRi8S2N61sELaw
 xKvjW6BOlZH4v3M+VE2xREPvQkYIu0bicf9cqBpricPHL7KCHM0soCmxfpc+RNhRYtLFVhaQ
 sIQAn8SNt4IgYWYgc9K26cwQYV6JjjYhiGoNiS09F6AWiUksXzMNariHxOkPa5ghwTOJUWLr
 7PdMExjlZyEsW8DIuIpRPLW0ODc9tdg4L7Vcrzgxt7g0L10vOT93EyMwVZ3+d/zrDsZ9f5IO
 MQpwMCrx8DqkaMcKsSaWFVfmHmKU4GBWEuG1/QoU4k1JrKxKLcqPLyrNSS0+xCjNwaIkzlvN
 8CBaSCA9sSQ1OzW1ILUIJsvEwSnVwKj5nVme0+r4t3lB/buWrpM5ZbqtyczP1/+DXGmRaU0q
 vyrj3ZYvzMvbxc2YdTkvXHpzyE960ZsK6Yfbw0PZm/as+u386hnX9TQ/U85fG1gXPRbt093V
 XVmavbY+8jtf+sHbR/epC85arJ4pPaVfYy3bmpy7wWs/7zt5isX7fejhrItHZjiraCixFGck
 GmoxFxUnAgCUutmGUQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7pRpTqxBg1HZC1urTvHarFxxnpW
 i+tfnrNazD8C5PY/fs1scf78BnaLs01v2C1uNchYbHp8jdXiY889VovLu+awWcw4v4/JYu2R
 u+wWS69fZLK4eMrV4nbjCjaL1r1H2C0Ov2lntfh3bSOLg7DHmnlrGD3e32hl99i0qpPNY/OS
 eo+D7/YwefRtWcXo8XmTXAB7lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamS
 vp1NSmpOZllqkb5dgl7GzfnXmQp+aVXMmf2MsYFxt3IXIyeHhICJxL/rLaxdjFwcQgJLGSU6
 z/axQSTEJCbt284OYQtL/LnWxQZR9IlR4uhFkAQHB5uAnsSOVYUgNSICKxglJp/wBqlhFnjN
 JHHk6DtWkBphgVCJH32JIDUsAqoSD38vZwSxeQXsJe5t/sIKMV9eYvWGA8wgNidQ/Oe0C2A3
 CAnYSSw++pNpAiPfAkaGVYwiqaXFuem5xYZ6xYm5xaV56XrJ+bmbGIGRs+3Yz807GC9tDD7E
 KMDBqMTD65CiHSvEmlhWXJl7iFGCg1lJhNf2K1CINyWxsiq1KD++qDQntfgQoynQUROZpUST
 84FRnVcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgVF7ezaP050e
 9i12vrttukNcjjZN1V7294isxMWPd5zuTzxge32J7OwbXRZLpn84WbxBz8bS2vc2a176xjqF
 Zy3bfNtLmXkvnVeWn5pZE3k+O/fK+Yees6rzj0al2P858F3UcM1Bn0WOkpu3nnWqZZa6erDg
 8Yz1J0uDMx6adJ//U1XHsnBqzzklluKMREMt5qLiRACmXNvfsgIAAA==
X-CMS-MailID: 20190715124514eucas1p1dcbbcbac0503980825d5e4ebae32003b
X-Msg-Generator: CA
X-RootMTR: 20190715124514eucas1p1dcbbcbac0503980825d5e4ebae32003b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124514eucas1p1dcbbcbac0503980825d5e4ebae32003b
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124514eucas1p1dcbbcbac0503980825d5e4ebae32003b@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054519_140779_3F35820F 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, cw00.choi@samsung.com, b.zolnierkie@samsung.com,
 sboyd@kernel.org, mturquette@baylibre.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch adds SoC buses support. It also changes connections of the clocks
pinning to the rigth parent. There is also frequency set of the needed
clock to make it working at the right rate.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5800-peach-pi.dts | 172 ++++++++++++++++++++++
 1 file changed, 172 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5800-peach-pi.dts b/arch/arm/boot/dts/exynos5800-peach-pi.dts
index e0f470fe54c8..38edb00c7f1b 100644
--- a/arch/arm/boot/dts/exynos5800-peach-pi.dts
+++ b/arch/arm/boot/dts/exynos5800-peach-pi.dts
@@ -151,6 +151,163 @@
 	vdd-supply = <&ldo9_reg>;
 };
 
+&bus_wcore {
+	devfreq-events = <&nocp_mem0_0>, <&nocp_mem0_1>,
+			<&nocp_mem1_0>, <&nocp_mem1_1>;
+	vdd-supply = <&buck3_reg>;
+	exynos,saturation-ratio = <100>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK400_WCORE>,
+			  <&clock CLK_MOUT_SW_ACLK400_WCORE>,
+			  <&clock CLK_DOUT_ACLK400_WCORE>,
+			  <&clock CLK_FOUT_DPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>,
+				 <&clock CLK_DOUT_ACLK400_WCORE>;
+	assigned-clock-rates = <0>, <0>, <400000000>, <1200000000>;
+	status = "okay";
+};
+
+&bus_noc {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK100_NOC>,
+			  <&clock CLK_DOUT_ACLK100_NOC>;
+	assigned-clock-parents = <&clock CLK_FF_DOUT_SPLL2>;
+	assigned-clock-rates = <0>, <100000000>;
+	status = "okay";
+};
+
+&bus_fsys_apb {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_PCLK200_FSYS>,
+			  <&clock CLK_DOUT_PCLK200_FSYS>,
+			  <&clock CLK_FOUT_MPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_MPLL>;
+	assigned-clock-rates = <0>, <200000000>,<600000000>;
+	status = "okay";
+};
+
+&bus_fsys {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK200_FSYS>,
+			  <&clock CLK_DOUT_ACLK200_FSYS>,
+			  <&clock CLK_FOUT_DPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>;
+	assigned-clock-rates = <0>, <240000000>,<1200000000>;
+	status = "okay";
+};
+
+&bus_fsys2 {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK200_FSYS2>,
+			  <&clock CLK_DOUT_ACLK200_FSYS2>,
+			  <&clock CLK_FOUT_DPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>;
+	assigned-clock-rates = <0>, <240000000>,<1200000000>;
+	status = "okay";
+};
+
+&bus_mfc {
+	devfreq = <&bus_wcore>;
+	status = "okay";
+};
+
+&bus_gen {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK266>,
+			  <&clock CLK_DOUT_ACLK266>, <&clock CLK_FOUT_MPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_MPLL>;
+	assigned-clock-rates = <0>, <300000000>,<600000000>;
+	status = "okay";
+};
+
+&bus_peri {
+	devfreq = <&bus_wcore>;
+	status = "okay";
+};
+
+&bus_g2d {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK266_G2D>,
+			  <&clock CLK_DOUT_ACLK266_G2D>,
+			  <&clock CLK_FOUT_MPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_MPLL>;
+	assigned-clock-rates = <0>, <300000000>,<600000000>;
+	status = "okay";
+};
+
+&bus_g2d_acp {
+	devfreq = <&bus_wcore>;
+	status = "okay";
+};
+
+&bus_jpeg {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_DOUT_ACLK300_JPEG>;
+	assigned-clock-rates = <300000000>;
+	status = "okay";
+};
+
+&bus_jpeg_apb {
+	devfreq = <&bus_wcore>;
+	status = "okay";
+};
+
+&bus_disp1_fimd {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_DOUT_ACLK300_DISP1>;
+	assigned-clock-rates = <300000000>;
+	status = "okay";
+};
+
+&bus_disp1 {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_DOUT_ACLK200>,
+			  <&clock CLK_DOUT_ACLK400_DISP1>;
+	assigned-clock-rates = <200000000>, <400000000>;
+	status = "okay";
+};
+
+&bus_gscl_scaler {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_DOUT_ACLK300_GSCL>;
+	assigned-clock-rates = <300000000>;
+	status = "okay";
+};
+
+&bus_mscl {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK400_MSCL>,
+			  <&clock CLK_MOUT_SW_ACLK400_MSCL>,
+			  <&clock CLK_DOUT_ACLK400_MSCL>,
+			  <&clock CLK_FOUT_DPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>,
+				 <&clock CLK_DOUT_ACLK400_MSCL>;
+	assigned-clock-rates = <0>, <0>, <400000000>, <1200000000>;
+	status = "okay";
+};
+
+&bus_isp {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK400_ISP>,
+			  <&clock CLK_MOUT_SW_ACLK400_ISP>,
+			  <&clock CLK_DOUT_ACLK400_ISP>,
+			  <&clock CLK_FOUT_DPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>,
+				 <&clock CLK_DOUT_ACLK400_ISP>;
+	assigned-clock-rates = <0>, <0>, <400000000>, <1200000000>;
+	status = "okay";
+};
+
+&bus_isp266 {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK266_ISP>,
+			  <&clock CLK_MOUT_USER_ACLK266_ISP>,
+			  <&clock CLK_DOUT_ACLK266_ISP>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_MPLL>,
+				 <&clock CLK_MOUT_SW_ACLK266_ISP>;
+	assigned-clock-rates = <0>, <0>,<300000000>;
+	status = "okay";
+};
+
 &clock_audss {
 	assigned-clocks = <&clock_audss EXYNOS_MOUT_AUDSS>;
 	assigned-clock-parents = <&clock CLK_MAU_EPLL>;
@@ -736,6 +893,21 @@
 	bus-width = <4>;
 };
 
+&nocp_mem0_0 {
+	status = "okay";
+};
+
+&nocp_mem0_1 {
+	status = "okay";
+};
+
+&nocp_mem1_0 {
+	status = "okay";
+};
+
+&nocp_mem1_1 {
+	status = "okay";
+};
 
 &pinctrl_0 {
 	pinctrl-names = "default";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
