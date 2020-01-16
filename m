Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0BD13E4E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:11:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRC0NMK7xGRt84Lk+EjZRs/pjMwawprq/Rbf1B5fhzo=; b=LvZHzPVmQBbfGy
	yFph7wRtzWuHJxi8OYtmqZPNQ3rjtLPU58v6GpumRvDG5LTxEdBi2rd7Aw7pmIYkRIZEAGSdP557n
	ImQ8AcaI9scW46Xcy/gMkSrTYEvn5JImCL+DODDdURRFPXAK+/hPtdRDc2w6t9wiSJEbelt/Ga+uU
	NHrAbSQbuFgFoQgKyaCsor+LPYS4wZjuiNNEBdPQGP5GyyY3oD50QChaCcwFzYcPvjqSP3rXVqXtZ
	Swt5aleHJzFfWOLoPh/YS4+jAIKgsqcf8PXfvXOijU8Pmu1MdqBQttg7rC5WFYjWu52Q8vMqj5lDE
	wm9FONIwGD7cCoPwUJbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8g3-0004Yf-EH; Thu, 16 Jan 2020 17:11:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8VT-0000n3-8N
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:00:37 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A68E24681;
 Thu, 16 Jan 2020 17:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194030;
 bh=gmmjYdhVeD7er2tUkAkAiRFI6JSPKXZj5K+epVd+gqg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2AbJg6Z/Fv9fQF23X0Z+fBQM2/zqA/G+ScwVg0cZOHzJOcBnCKpZQ3dAMw/RJpOO8
 Fxu6ZNjjsTAf49+LT6zS8j/shgrI8qRlHwo+5hzKX82jfxTuOw75Fwp77x86qFT8YY
 OYfJu1+o6lJWi9NBUodIaCDcqM+8Otzjm6DeGjto=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 150/671] ARM: dts: lpc32xx: fix ARM PrimeCell LCD
 controller clocks property
Date: Thu, 16 Jan 2020 11:50:59 -0500
Message-Id: <20200116165940.10720-33-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090031_348673_E71B4721 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-kernel@lists.infradead.org, Vladimir Zapolskiy <vz@mleia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vladimir Zapolskiy <vz@mleia.com>

[ Upstream commit 30fc01bae3cda747e7d9c352b1aa51ca113c8a9d ]

The originally added ARM PrimeCell PL111 clocks property misses
the required "clcdclk" clock, which is the same as a clock to enable
the LCD controller on NXP LPC3230 and NXP LPC3250 SoCs.

Fixes: 93898eb775e5 ("arm: dts: lpc32xx: add clock properties to device nodes")
Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/lpc32xx.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/lpc32xx.dtsi b/arch/arm/boot/dts/lpc32xx.dtsi
index cfd422e7f774..9ad3df11db0d 100644
--- a/arch/arm/boot/dts/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/lpc32xx.dtsi
@@ -142,8 +142,8 @@
 			compatible = "arm,pl111", "arm,primecell";
 			reg = <0x31040000 0x1000>;
 			interrupts = <14 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clk LPC32XX_CLK_LCD>;
-			clock-names = "apb_pclk";
+			clocks = <&clk LPC32XX_CLK_LCD>, <&clk LPC32XX_CLK_LCD>;
+			clock-names = "clcdclk", "apb_pclk";
 			status = "disabled";
 		};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
