Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A10194F7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 04:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tryFLuMRnc7eiyltEwxBwBrzx1ns6RvZNVfNCUy/EpA=; b=T+lp0IjFc56SLk
	GJWiS3qABphl/T3HFYZrDFb8JhH7i8Ct/IJWdQxvE9SnQbgBPzBkhyO0EMkB1qN3+9ja8A30tyhT+
	2mvpEVwea7cZQrROe+bPL0vI7IzgpYExcXsZjXUF7tt+SlYUMnGH1q8V0LNP7s3ZYGceQcD/6PQmn
	xew3DVVqOwgQ8m2JHWSHXnVVFr/Eqek/uVcNuG4MsZByp//7tFZq42licIl/qJYJcoBt6yjuY3MTr
	5PFDb6hJ5oEGIZYNqd8W5VFFzdfZlPE4TRECHzwa6PpFL/klT+suXxXsxl6gQPfij4g/WlwENAUM4
	dCWFUJurSpnqGl89elFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHfJW-0006A8-PP; Fri, 27 Mar 2020 03:05:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHfIO-00049y-2x; Fri, 27 Mar 2020 03:04:34 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED7002082D;
 Fri, 27 Mar 2020 03:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585278271;
 bh=V/fC1s0Q0SdYajkzSHAZo9jmk8ASCYhLB1BiZ+BO75U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=v+SPVg5T+ck0Nktn8JpcqtzoI88jHl5Up/wFoIQ0EGU4ST0H1f4h6X4hoS27uzP1F
 z5iCMazRxImpPtRrTMmhw3Z9wgHjBvf6wmealZ+NZHsjLzRq0fYQQjZGjkeMbUL3h3
 dZ1B59HZv+jOBdysdDqIC01TnGR3I+iPEY3H4sr4=
Received: by wens.tw (Postfix, from userid 1000)
 id 461785FDC0; Fri, 27 Mar 2020 11:04:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 3/6] arm64: dts: rockchip: rk3328: drop non-existent gmac2phy
 pinmux options
Date: Fri, 27 Mar 2020 11:04:11 +0800
Message-Id: <20200327030414.5903-4-wens@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200327030414.5903-1-wens@kernel.org>
References: <20200327030414.5903-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_200432_162438_B9FD147A 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

When gmac2phy was added, a whole bunch of pinmux options were added.
Turns out some of these don't exist on the actual product, based on
the publicly available TRM.

Remove them.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 7e88d88aab98..b861b4fd75e6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1794,10 +1794,6 @@ rmiim1_pins: rmiim1-pins {
 		};
 
 		gmac2phy {
-			fephyled_speed100: fephyled-speed100 {
-				rockchip,pins = <0 RK_PD7 1 &pcfg_pull_none>;
-			};
-
 			fephyled_speed10: fephyled-speed10 {
 				rockchip,pins = <0 RK_PD6 1 &pcfg_pull_none>;
 			};
@@ -1806,18 +1802,6 @@ fephyled_duplex: fephyled-duplex {
 				rockchip,pins = <0 RK_PD6 2 &pcfg_pull_none>;
 			};
 
-			fephyled_rxm0: fephyled-rxm0 {
-				rockchip,pins = <0 RK_PD5 1 &pcfg_pull_none>;
-			};
-
-			fephyled_txm0: fephyled-txm0 {
-				rockchip,pins = <0 RK_PD5 2 &pcfg_pull_none>;
-			};
-
-			fephyled_linkm0: fephyled-linkm0 {
-				rockchip,pins = <0 RK_PD4 1 &pcfg_pull_none>;
-			};
-
 			fephyled_rxm1: fephyled-rxm1 {
 				rockchip,pins = <2 RK_PD1 2 &pcfg_pull_none>;
 			};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
