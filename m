Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F70A122451
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 06:53:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=avGBxNtB/DT4K3KxbhhT8mxq0rUA72llFJatbd6vLSY=; b=sMH0+gdv/wPpjfnRMI2za/ryjf
	etFde+V7kfRsz3Zz3DEjmcj0jSx5RfuLg2fYt7LP/NnH3vLBCfL74Oj9Uhx4HAHP2IR+VEW9wxAYM
	ylKhNkxRcMwfv8adEDHVqstkQffKF6pS17NQ8PueiFDFYNZeb+ZH3FYw6YpxynQAQ827Q4ZOmDeEk
	sg5rk8g5Di4RdkrZ/DXBSViD/pYMxppjjADqGKi4dMNvgr1uutEZjYUi7ro3rBJlR0H1D2eVXZVKU
	fA1FWa9VnimWcxtjtJf7kHZf18lGK1fXhmK+hf809FHqYVzNcjiS1NueRPKgF2ZhO30GIERl+bOco
	yjduK7cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih5nd-0002Fo-Ku; Tue, 17 Dec 2019 05:53:37 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih5lO-0000NR-FR
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 05:51:26 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191217055110epoutp04ab3372ef46da1d573d93d5141c408506~hEqsQIobs0763007630epoutp04l
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 05:51:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191217055110epoutp04ab3372ef46da1d573d93d5141c408506~hEqsQIobs0763007630epoutp04l
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576561870;
 bh=X+3c4eWtnhc/wznu8yi8b2cClbqwmxlDm2znKapn0f8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HK0PttloJPSZGkm2HOam4m6COdIFX3az4tH/84FvBuGkNxvnn1MOv7vtj9VCP7/e8
 yFLcGhWxFGc5NqNkKVpCZ75rGORaTTtVRE0LJlqUMpay5zVqYCBGb1wbONBf5MVjuK
 ZN643ehFHJe+JzIlzhh2ICc1dG2pW4M+3P6iMkGY=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191217055109epcas1p2fe070e79dde850225f8097f2757ef8b6~hEqrjfr242687526875epcas1p2g;
 Tue, 17 Dec 2019 05:51:09 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.158]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47cS1R3lVjzMqYkq; Tue, 17 Dec
 2019 05:51:07 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 BC.0D.51241.BCC68FD5; Tue, 17 Dec 2019 14:51:07 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191217055107epcas1p44d46bdea7b326b86689f326742f5444a~hEqpBiy6C1997419974epcas1p4a;
 Tue, 17 Dec 2019 05:51:07 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191217055106epsmtrp2474ac40aa2f41c24ce1585a5371746bf~hEqpAprtW1905819058epsmtrp2A;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
X-AuditID: b6c32a39-163ff7000001c829-4d-5df86ccb17e9
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 7F.5D.10238.ACC68FD5; Tue, 17 Dec 2019 14:51:06 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191217055106epsmtip15cd0260d03155575fcab99c904638b56~hEqolNbTZ3193831938epsmtip1Y;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH 9/9] arm64: dts: exynos: Replace deprecated property for
 Exynos bus
Date: Tue, 17 Dec 2019 14:57:38 +0900
Message-Id: <20191217055738.28445-10-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217055738.28445-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDJsWRmVeSWpSXmKPExsWy7bCmru7pnB+xBnNuy1jcn9fKaHH9y3NW
 i/lHzrFa/H/0mtWi//FrZovz5zewW5xtesNuseLuR1aLTY+vsVpc3jWHzeJz7xFGi08P/jNb
 zDi/j8liYVMLu8XaI3fZLZZev8hkcbtxBZtF694j7A5CHmvmrWH02LSqk81j85J6j43vdjB5
 9G1Zxeix/do8Zo/Pm+QC2KOybTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPIS
 c1NtlVx8AnTdMnOA3lBSKEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFFgW6BUn5haX
 5qXrJefnWhkaGBiZAhUmZGe8WLeQueC0QMWUDyvZGxiP8HYxcnJICJhI/Lx2ha2LkYtDSGAH
 o8T1BVdYIZxPjBLzzs5mhnC+MUq83P+WBaald+stdojEXkaJ7zePQVV9YZQ4tOcsM0gVm4CW
 xP4XN9hAbBGBOon5h3cwgRQxC9xkkthz6RYrSEJYIFTix5l7YEUsAqoS/9u/gDXzClhL/Jq1
 hglinbzE6g0HwOKcQPHn216DDZIQ+M0m8WvydUaIIheJrpdLoWxhiVfHt7BD2FISn9/tZYOw
 qyVWnjzCBtHcwSixZf8FVoiEscT+pZOBpnIAnacpsX6XPkRYUWLn77lgM5kF+CTefe1hBSmR
 EOCV6GgTgihRlrj84C7UnZISi9s7oVZ5SNzfPQEakH2MErPWPmKcwCg3C2HDAkbGVYxiqQXF
 uempxYYFpsiRtokRnFK1LHcwHjvnc4hRgINRiYdXouR7rBBrYllxZe4hRgkOZiUR3h0KQCHe
 lMTKqtSi/Pii0pzU4kOMpsCgnMgsJZqcD0z3eSXxhqZGxsbGFiaGZqaGhkrivBw/LsYKCaQn
 lqRmp6YWpBbB9DFxcEo1MNpymfLu4D6ZuErzxNLtrz94W/opvctPqTphlXPUXaF934RKsfev
 ZzRKL5F6KSIpxqIv/M41vPXmYvNGH5tVrVeP+zz0Pb2ZJbJc5fyU129v7TWdfrpqdu0r+4W3
 XONDLXivRql6mZ3qre7ZcSvlS/mZ7y9FXVbGKUpKSHTmbPkw7WGE/AvlvUosxRmJhlrMRcWJ
 ALLxzCa/AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrELMWRmVeSWpSXmKPExsWy7bCSnO6pnB+xBg/eWFjcn9fKaHH9y3NW
 i/lHzrFa/H/0mtWi//FrZovz5zewW5xtesNuseLuR1aLTY+vsVpc3jWHzeJz7xFGi08P/jNb
 zDi/j8liYVMLu8XaI3fZLZZev8hkcbtxBZtF694j7A5CHmvmrWH02LSqk81j85J6j43vdjB5
 9G1Zxeix/do8Zo/Pm+QC2KO4bFJSczLLUov07RK4Ml6sW8hccFqgYsqHlewNjEd4uxg5OSQE
 TCR6t95iB7GFBHYzSjzpMoWIS0pMu3iUuYuRA8gWljh8uLiLkQuo5BOjxKMr78Hq2QS0JPa/
 uMEGYosItDFKLPkuB2IzCzxnktjXZQZiCwsES3RcOMYKYrMIqEr8b//CDGLzClhL/Jq1hgli
 l7zE6g0HwOKcQPHn214zQdxjJfFz6jPWCYx8CxgZVjFKphYU56bnFhsWGOallusVJ+YWl+al
 6yXn525iBIe8luYOxstL4g8xCnAwKvHwSpR8jxViTSwrrsw9xCjBwawkwrtDASjEm5JYWZVa
 lB9fVJqTWnyIUZqDRUmc92nesUghgfTEktTs1NSC1CKYLBMHp1QDY9/qFp1Dv7qNp5/du/f0
 DN3NjEYf10ldVg6bt+b9rsemyTz6mjfls4/8KHONW/Iuy95aWy8n06htfZR80PR/f09P2BGj
 sMGI2fbW5dBPLku7K6SV9YpmX1ZU7J3Nvmhlt2CCU52RANNFs97KgP5bfUvCQ+cbxEo9D+7K
 PXyDT833ymzmr1G9SizFGYmGWsxFxYkArvwDlnUCAAA=
X-CMS-MailID: 20191217055107epcas1p44d46bdea7b326b86689f326742f5444a
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191217055107epcas1p44d46bdea7b326b86689f326742f5444a
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055107epcas1p44d46bdea7b326b86689f326742f5444a@epcas1p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_215118_888329_6ACC3A5E 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 kgene@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the property related to devfreq and devfreq-event device
to remove the deprecated property name.
- Replace 'devfreq' with 'exynos,parent-bus' property
  for getting the parent devfreq device of exynos-bus.
- Replace 'devfreq-events' with 'exynos,ppmu-device' property
  for getting the devfreq-event device to monitor bus utilization.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 .../dts/exynos/exynos5433-tm2-common.dtsi     | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
index 6f90b0e62cba..6bdd5b0940a5 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
@@ -166,54 +166,54 @@
 };
 
 &bus_g2d_400 {
-	devfreq-events = <&ppmu_event0_d0_general>, <&ppmu_event0_d1_general>;
+	exynos,ppmu-device = <&ppmu_event0_d0_general>, <&ppmu_event0_d1_general>;
 	vdd-supply = <&buck4_reg>;
 	exynos,saturation-ratio = <10>;
 	status = "okay";
 };
 
 &bus_g2d_266 {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_gscl {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_hevc {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_jpeg {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_mscl {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_noc0 {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_noc1 {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
 &bus_noc2 {
-	devfreq = <&bus_g2d_400>;
+	exynos,parent-bus = <&bus_g2d_400>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
