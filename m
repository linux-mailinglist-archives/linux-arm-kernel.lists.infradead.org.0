Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520E0EBC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 22:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4vCdMR+PdmFydqkyQ41bNiDhQ8SkYjog5E44HPJ3k9M=; b=CblS6qPVgIhHzO
	JbZ6W7WWMBWW9hvcqWOwPYo+9izbxsrPJWrEk+21y2dKaWU9ulrORdU4iWsqpoUiCkZF3PYOvJU/J
	jmBq0pKzEd0MdpTn4KbuM5vV+W6NjIYsKRr2YUwk8naTy1lxIqyqCGIU/2vt5m7CZfVQHNmbYmeyY
	o23iWqUZcLqxaOjOFRywNzLgoCfLWxq71IZu5eeAGMcRVDWLK7wMxy4z0MJxfFTVqSFF8kzkjnypO
	A6L7a6L85GdZenDo3sqGgwvWBYZd1ii91vEjXr7bl4LfuQal/ttm4pV7nf7FIe87Bj+LLtlsobU/1
	aj8kOcjhAm0Key3vjqMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLD7c-0001Ye-CQ; Mon, 29 Apr 2019 20:43:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLD7V-0001Y7-C3
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 20:43:26 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 399A02075E;
 Mon, 29 Apr 2019 20:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556570604;
 bh=MJVXxdcOSTv5ZMbStCvi8fOK8k6kWrfC4eC2Nm/Mpd4=;
 h=From:To:Cc:Subject:Date:From;
 b=R0cyTOzvxYAKag91T/W+q2PfQCK+FLaNZgq2CiyQQnvCwPG2l1JIsFrNWD5LT/hcG
 vb8yB69sYarnQ4aGm1BHBHQY63nYeLSeE9eauCmnbwbSwnWs6Gh3ZfFgKI0w2Kfvsa
 bplkdeMhF8j+JnU28JAG9eCD1G+bR5OBKCB9Togw=
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH] ARM: dts: arria10: Add EMAC OCP reset property
Date: Mon, 29 Apr 2019 15:43:14 -0500
Message-Id: <20190429204314.21220-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_134325_429781_F29EE288 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dinguyen@kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the EMAC's OCP reset property on Arria10. The OCP reset bits are
also needed to correctly bring the EMACs out of reset correctly.

Cc: stable@vger.kernel.org
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria10.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index ae24599d5829..a6206a0d5763 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -431,8 +431,8 @@
 			rx-fifo-depth = <16384>;
 			clocks = <&l4_mp_clk>;
 			clock-names = "stmmaceth";
-			resets = <&rst EMAC0_RESET>;
-			reset-names = "stmmaceth";
+			resets = <&rst EMAC0_RESET>, <&rst EMAC0_OCP_RESET>;
+			reset-names = "stmmaceth", "stmmaceth-ocp";
 			snps,axi-config = <&socfpga_axi_setup>;
 			status = "disabled";
 		};
@@ -451,8 +451,8 @@
 			rx-fifo-depth = <16384>;
 			clocks = <&l4_mp_clk>;
 			clock-names = "stmmaceth";
-			resets = <&rst EMAC1_RESET>;
-			reset-names = "stmmaceth";
+			resets = <&rst EMAC1_RESET>, <&rst EMAC1_OCP_RESET>;
+			reset-names = "stmmaceth", "stmmaceth-ocp";
 			snps,axi-config = <&socfpga_axi_setup>;
 			status = "disabled";
 		};
@@ -470,8 +470,8 @@
 			tx-fifo-depth = <4096>;
 			rx-fifo-depth = <16384>;
 			clocks = <&l4_mp_clk>;
-			resets = <&rst EMAC2_RESET>;
-			clock-names = "stmmaceth";
+			resets = <&rst EMAC2_RESET>, <&rst EMAC2_OCP_RESET>;
+			clock-names = "stmmaceth", "stmmaceth-ocp";
 			snps,axi-config = <&socfpga_axi_setup>;
 			status = "disabled";
 		};
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
