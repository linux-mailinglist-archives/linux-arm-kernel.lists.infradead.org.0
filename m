Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E701FDCB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hJFktkhY/MjGCSsBlElSYCseVG0GHYkkPy+KilrGJY=; b=iEJf66N8nTgpKQ
	xr22r7cE7IYRnuvIBptbUQxBAkXWALSmbE/iPZZm0NqB6yoEOl0fQtp/4/da9or/cetrY8w22f3pO
	V3mWgxrRhfYbRfqTaKyj+TMOLo5iFOQA5Ths9/bTMOXfogUAukrol5KZKhPaUCsohRUAKmWNugGU5
	O7cTZyHIcVOooFd3YOQQl5m3lHdGcwNxPMwUtodH2VwLYHrfHwQxkie/i6KvY0oUQtu2GKcTML0ZA
	Qi8hjstzzhfsaYPsDhbpB9p2mrUtGIPEtgQoyiZyNST9IVfe/ZWbfjwleA5zFV0FzjgyExHP94NjU
	WHpC9eaCG0lBSF3jElPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljFJ-0004wg-7O; Thu, 18 Jun 2020 01:21:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj5i-0001Qs-Rr
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:11:51 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2062320B1F;
 Thu, 18 Jun 2020 01:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442702;
 bh=HyWkwtaU0/RoTtrJwEMQ2IOLdNbG66utKfyAaE3FH+A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cUF3JzZ3cCUoQpbPWImubojPtFYTPfi8wT4uIpw20TjE8Kml/ZWFCnowBTIWQGPFW
 TFpNH9HMaYOtZ9rM+qnC56QpPjmVMWD1G9luDcpqo2RLK4pKxh7hEdRonrxXJiOKhE
 hAoPW0Gr8BB+mgwTkSL6RdUbY7lef8pmlQJy8gS8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 164/388] ARM: dts: aspeed: ast2600: Set arch timer
 always-on
Date: Wed, 17 Jun 2020 21:04:21 -0400
Message-Id: <20200618010805.600873-164-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181143_057726_AB933BCF 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, Eddie James <eajames@linux.ibm.com>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eddie James <eajames@linux.ibm.com>

[ Upstream commit c998f40f2ae6a48e93206e2c1ea0691479989611 ]

According to ASPEED, FTTMR010 is not intended to be used in the AST2600.
The arch timer should be used, but Linux doesn't enable high-res timers
without being assured that the arch timer is always on, so set that
property in the devicetree.

The FTTMR010 device is described by set to disabled.

This fixes highres timer support for AST2600.

Fixes: 2ca5646b5c2f ("ARM: dts: aspeed: Add AST2600 and EVB")
Signed-off-by: Eddie James <eajames@linux.ibm.com>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Signed-off-by: Joel Stanley <joel@jms.id.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/aspeed-g6.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index 0a29b3b57a9d..fd0e483737a0 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -65,6 +65,7 @@ timer {
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
 		clocks = <&syscon ASPEED_CLK_HPLL>;
 		arm,cpu-registers-not-fw-configured;
+		always-on;
 	};
 
 	ahb {
@@ -368,6 +369,7 @@ timer: timer@1e782000 {
 						<&gic  GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&syscon ASPEED_CLK_APB1>;
 				clock-names = "PCLK";
+				status = "disabled";
                         };
 
 			uart1: serial@1e783000 {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
