Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E47F194F7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 04:05:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ehWNVawpHR9NArxNxzUVfP9nynRXzJQ4BkuV0HVtSA=; b=uTzU3xkuLlzDkP
	6Zr/Jh8Y2BrTdWie2HA4ndYwcewUsJy1spFrhzC8nB7RpOQWRpk3jpWkoa/EDusda2b7sTJe9Vn5S
	1Yd2JkJ6PpKFgrL4X/DQNbzkAKSCLxk46apDQh5PtiFkMons0PogzjLmi3B5qaRSbgxciejpmkdPC
	oKPBEJqpx34VN6swQPnTu8Lv8QOERGs7XVLWVM2fl7ovJRcjtOvmb+ShiwNxcE9VdoJZSZL9EXz8j
	qqy2O1F/fIgGO+QvozXReywKHBNNztjeERVjCZ+4o19gDO9hZc3wKANU+Gtu0+NNSE2/gT9EcyGRc
	lcG+VVj2g+r5JZXvkvbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHfJK-0005uv-NK; Fri, 27 Mar 2020 03:05:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHfIN-00049z-W3; Fri, 27 Mar 2020 03:04:34 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF45C20838;
 Fri, 27 Mar 2020 03:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585278271;
 bh=8MXvUhe8inX9HXIpiLsCZJCvYdR7WItcjnns2q40lSo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jkwZljV1t7R9L7Sc6xPD/OcRfpXE2YAR3x1kThL+7r65ipHs2524rF7MsGmTlS+FV
 1OHJ2ABxxeJZ4x03QCXOVvGKzhbPvueq2fFEnNZvcdkljbm5ympqqkgu2ix4kBc0k4
 h7ALLNgQDqc5Sy8oEWooMJquCMkYcmbH+csZ4EDY=
Received: by wens.tw (Postfix, from userid 1000)
 id 514785FF1C; Fri, 27 Mar 2020 11:04:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 4/6] arm64: dts: rockchip: rk3328: drop #address-cells,
 #size-cells from grf node
Date: Fri, 27 Mar 2020 11:04:12 +0800
Message-Id: <20200327030414.5903-5-wens@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200327030414.5903-1-wens@kernel.org>
References: <20200327030414.5903-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_200432_057515_205537FD 
X-CRM114-Status: GOOD (  12.23  )
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

The device tree compiler gives the following warning:

    /syscon@ff100000: unnecessary #address-cells/#size-cells without
    "ranges" or child "reg" property

Since none of the grf node's direct child nodes have any reg properties,
remove the two properties from the grf node to silence the warning.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b861b4fd75e6..a4d591d91533 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -299,8 +299,6 @@ &pdmm0_sdi2_sleep
 	grf: syscon@ff100000 {
 		compatible = "rockchip,rk3328-grf", "syscon", "simple-mfd";
 		reg = <0x0 0xff100000 0x0 0x1000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 
 		io_domains: io-domains {
 			compatible = "rockchip,rk3328-io-voltage-domain";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
