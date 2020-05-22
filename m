Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30D41DEACC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJeWwSw0xNdZm8EK4pTTn/qGQW/mrMCKVSdl3Tn1AWk=; b=uzArgkv2R+Blmu
	h01CmyAk6aiV4rWszniGrFpFs1YxM7WAjiaH0eQUMhEkMvTLkOAJV47ZRfwAonREsKrPWhAWu16W1
	cP4GgVz73PpTVuxx1HL+BSkUE/a3B7gB6VI+qbMjFfavW6FD+M6GmQr+pXanXTaG/guQzBSn2bYU2
	xLfUHY1U3cz0udDcYr4KFCUZ6Ld5FbZsY8VxefONSxybTSKIZq+IBe0VLvzkr/MG83cnmCKsm0Q/c
	hrwGwk4WUHcOZBYEwiLA3IgG66auOa0nhRybhAa5AtRBfCpafmdq7drCFTEQJKDAMQ9knVMySFq+b
	2Y9jGIWxwkdqsR0EKvLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc96H-0001G7-CT; Fri, 22 May 2020 14:56:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc91B-0002TA-MV; Fri, 22 May 2020 14:51:27 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A78642240A;
 Fri, 22 May 2020 14:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590159084;
 bh=ItKeQkSoQTVnFcBr+f9ZOmDE3R/JRfrPNEmeZ6RfQyw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d8mDBYenZTmdFAyZo78z+Ki287IyGz6u34SEBomKYT7Ath8O9OIBp6/iBiMZIIbiq
 QxOiF9aMLbAL8Zjn2KGqyF7H0VpohO5xxItYl7DWuCGVuTf06TCfMoI9RISpUrgI2b
 CySA4MSAbjWDEsWmzjo6swJuLm6bGd0zqZkE045s=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 03/19] arm64: dts: rockchip: swap interrupts
 interrupt-names rk3399 gpu node
Date: Fri, 22 May 2020 10:51:04 -0400
Message-Id: <20200522145120.434921-3-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522145120.434921-1-sashal@kernel.org>
References: <20200522145120.434921-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_075125_805936_BF54B68A 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit c604fd810bda667bdc20b2c041917baa7803e0fb ]

Dts files with Rockchip rk3399 'gpu' nodes were manually verified.
In order to automate this process arm,mali-midgard.txt
has been converted to yaml. In the new setup dtbs_check with
arm,mali-midgard.yaml expects interrupts and interrupt-names values
in the same order. Fix this for rk3399.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/gpu/
arm,mali-midgard.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20200425143837.18706-1-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 451f00a631c4..f14e8c5c41ac 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1817,10 +1817,10 @@
 	gpu: gpu@ff9a0000 {
 		compatible = "rockchip,rk3399-mali", "arm,mali-t860";
 		reg = <0x0 0xff9a0000 0x0 0x10000>;
-		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "gpu", "job", "mmu";
+		interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "job", "mmu", "gpu";
 		clocks = <&cru ACLK_GPU>;
 		power-domains = <&power RK3399_PD_GPU>;
 		status = "disabled";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
