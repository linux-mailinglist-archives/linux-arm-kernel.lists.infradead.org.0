Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 507FEC9021
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 19:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R/8+2wT38DOew54x1K8C38YA+7geQ1QZKnSqj78pJmo=; b=kema9FG53QXxO5
	9rfuVfYrNXsX6y/ybtvJyep1g28FMgmKqM3edqSYhI5DxiYAo1AXDko1GDe2sLs/pJv3khB3hxNzU
	ZzZU1lcMwgUv8sUkZOu88jrEJ34+BJCDS9fEx5qJefWdPp0FW/92tikbt0hn2XtwCNk9CbeyarsoX
	2bmNe0qTD4CMjRUU7jL7qQgSEwDX+0NIFBcUEiLL9HtkOWoig8cb+u+ayVW5ll5mE/aNI9ef2QgZn
	jS+l7sssmZ0/8Ixpvjhy/MQFNW5H5UrA5GxGqCcbIVwa7gKTDcAGkMeP9BclyngimRRMXQXkIhLj4
	RTMO0SIrdmdSDUFKi3xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFifk-0002uO-Rv; Wed, 02 Oct 2019 17:44:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFife-0002tr-Jv
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 17:44:15 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA15221D81;
 Wed,  2 Oct 2019 17:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570038253;
 bh=MZYQ5QLRxsH5Lm/zp4Xs3ZdRx+OF3lS8A4Qr/ENHFmY=;
 h=From:To:Subject:Date:From;
 b=B6EQLsiyV2WDt8tyVi5J3ORL9Qfx9JZa0Vniop0dnsfyqz4zo0SEzy7rAOTqu3E+h
 vEGELl6rkQy2Vb5oNtHGMWmp213uVAdOmqAed0SL/6IUulw+ufw8irmG3PKg5dq/rw
 9ltiv4qOVeqc9733aEdZuhclwmwyTNJNUQwOf3sY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: memory-controllers: exynos5422-dmc: Correct
 example syntax and memory region
Date: Wed,  2 Oct 2019 19:44:01 +0200
Message-Id: <20191002174401.17590-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_104414_675164_1F95DC4F 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After adding the interrupt properties to Exynos5422 DMC bindings
example, the mapped memory region must be big enough to access
performance counters registers.

Fix also syntax errors (semicolons) and adjust indentation.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Rebased on top of my for-next branch as exynos5422-dmc.txt bindings were
applied by me.
---
 .../bindings/memory-controllers/exynos5422-dmc.txt        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
index e2434cac4858..02e4a1f862f1 100644
--- a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
@@ -55,7 +55,7 @@ Example:
 
 	dmc: memory-controller@10c20000 {
 		compatible = "samsung,exynos5422-dmc";
-		reg = <0x10c20000 0x100>, <0x10c30000 0x100>,
+		reg = <0x10c20000 0x10000>, <0x10c30000 0x10000>;
 		clocks = <&clock CLK_FOUT_SPLL>,
 			 <&clock CLK_MOUT_SCLK_SPLL>,
 			 <&clock CLK_FF_DOUT_SPLL2>,
@@ -63,7 +63,7 @@ Example:
 			 <&clock CLK_MOUT_BPLL>,
 			 <&clock CLK_SCLK_BPLL>,
 			 <&clock CLK_MOUT_MX_MSPLL_CCORE>,
-			 <&clock CLK_MOUT_MCLK_CDREX>,
+			 <&clock CLK_MOUT_MCLK_CDREX>;
 		clock-names = "fout_spll",
 			      "mout_sclk_spll",
 			      "ff_dout_spll2",
@@ -71,10 +71,10 @@ Example:
 			      "mout_bpll",
 			      "sclk_bpll",
 			      "mout_mx_mspll_ccore",
-			      "mout_mclk_cdrex",
+			      "mout_mclk_cdrex";
 		operating-points-v2 = <&dmc_opp_table>;
 		devfreq-events = <&ppmu_event3_dmc0_0>,	<&ppmu_event3_dmc0_1>,
-				<&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
+				 <&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
 		device-handle = <&samsung_K3QF2F20DB>;
 		vdd-supply = <&buck1_reg>;
 		samsung,syscon-clk = <&clock>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
