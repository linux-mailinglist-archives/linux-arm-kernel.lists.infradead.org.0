Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EEA2BF6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcpw79v8qyeIbbRGkadZFJuQbXZEe2HJyVvYzgHQ8qg=; b=Ap+mv/FJn95OI0
	xH926eeRB/YiQNJGiV7v1InqodcQM5wPbz0YJCia8etBWWfK2EEbRySge16iZwdYykSNqXFkjKgSH
	dBChZXgTRozJD4fXcNBxRBmyIEcJhxap7Q+8K4Y9avwAo03QZ+edgIUeZ1heZbRqVJiHHyR1LbHBc
	3c+U5shpRwBIzd/TzUbGcdJdFmSber1I3jiuSF1M+LhK7uRK2pDetHD0MYyYgjdzO6tcJfrtlwLYv
	GQ/yxKtXgf9AGiXJVgcT1ES2BIOQLz8KwNxi8B2EFzg4QoR+GDkZMdOYEJGALbvZ9nX5vDfG7Cqbq
	a/BBjHFSEG8/T96dSxiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVaN-0001xR-I6; Tue, 28 May 2019 06:27:47 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVXV-00066g-CP
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:24:54 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 0FEA98125;
 Tue, 28 May 2019 06:25:07 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 13/13] ARM: dts: Drop legacy custom hwmods property for omap4
 mmc
Date: Mon, 27 May 2019 23:24:14 -0700
Message-Id: <20190528062414.27192-14-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190528062414.27192-1-tony@atomide.com>
References: <20190528062414.27192-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_232449_933728_1D623DDA 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, devicetree@vger.kernel.org,
 Faiz Abbas <faiz_abbas@ti.com>, Keerthy <j-keerthy@ti.com>,
 Suman Anna <s-anna@ti.com>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With recent ti-sysc driver changes, we can now finally probe most
modules without needing the custom ti,hwmods property.

Let's drop it for omap4 MMC as we can test that for runtime PM
for core retention idle mode for wlcore WLAN.

Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap4-l4.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/omap4-l4.dtsi b/arch/arm/boot/dts/omap4-l4.dtsi
--- a/arch/arm/boot/dts/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/omap4-l4.dtsi
@@ -2103,7 +2103,6 @@
 
 		target-module@9c000 {			/* 0x4809c000, ap 53 36.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "mmc1";
 			reg = <0x9c000 0x4>,
 			      <0x9c010 0x4>;
 			reg-names = "rev", "sysc";
@@ -2171,7 +2170,6 @@
 
 		target-module@ad000 {			/* 0x480ad000, ap 63 50.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "mmc3";
 			reg = <0xad000 0x4>,
 			      <0xad010 0x4>;
 			reg-names = "rev", "sysc";
@@ -2237,7 +2235,6 @@
 
 		target-module@b4000 {			/* 0x480b4000, ap 67 46.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "mmc2";
 			reg = <0xb4000 0x4>,
 			      <0xb4010 0x4>;
 			reg-names = "rev", "sysc";
@@ -2332,7 +2329,6 @@
 
 		target-module@d1000 {			/* 0x480d1000, ap 73 44.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "mmc4";
 			reg = <0xd1000 0x4>,
 			      <0xd1010 0x4>;
 			reg-names = "rev", "sysc";
@@ -2365,7 +2361,6 @@
 
 		target-module@d5000 {			/* 0x480d5000, ap 75 4e.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "mmc5";
 			reg = <0xd5000 0x4>,
 			      <0xd5010 0x4>;
 			reg-names = "rev", "sysc";
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
