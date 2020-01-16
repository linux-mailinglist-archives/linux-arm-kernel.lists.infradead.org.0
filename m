Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1677F13EFC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:17:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndYhLNykHSJadVSPABnkv5gmMBP/PVxwPitVCt2Nli8=; b=jdSmtlvCfh/KpD
	Xyp3A68Pp/cY5jscLjF6qCHwzKHjahQb2ovOdcGCz5xNpYeGLdX8fUPofMGVurHd3xv+yQQKb7GlR
	fR1E81K27qu5ckeHU8MxGc7tSfM/G9oSSRDWCBDTRp97I5KhW6SN+njgWhpMaf/srAb5u1QCJ2Oqc
	usvSBcsaqxpOmV2Tj8spw7RSmUKOxG7yed7uh9e1Ck2irWmjmCNOM+Pm6kFscGK9Du0eSEqTetyhq
	IpDscZRzKMqJ2/2cfc2eEwJKnyfOgwnJsX2qX8XVyVRTVWduhh8P4agXIqjmLrXn1J8R/kWNppclU
	mQaSULY1YbaxgpC3RXpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9iD-0001A7-M8; Thu, 16 Jan 2020 18:17:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is94j-0006XW-Jh
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:37:19 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 708B4246CE;
 Thu, 16 Jan 2020 17:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579196216;
 bh=okBlYRU+qK/rpan1trzG4zDf6FeAwhV0O9O+nav5m4s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MjMOYnLSkSSNj1j5Zbjx+cbi1rDLpwuRU9XPLI7Ygzzxspk2UD5NWinP2wWu1poKw
 2c3CscIuWvFSqQeoT700TOAOBsMMJ2pm4xlTnuHxgfwQP98Nd8m60hB/53ACNyw2gZ
 BT63eAOo13p5hZG3FcU8v3bwQgvucTrmbO5H65BY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 051/251] ARM: dts: lpc32xx: reparent keypad
 controller to SIC1
Date: Thu, 16 Jan 2020 12:33:20 -0500
Message-Id: <20200116173641.22137-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093657_979021_71943856 
X-CRM114-Status: GOOD (  11.10  )
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

[ Upstream commit 489261c45f0ebbc1c2813f337bbdf858267f5033 ]

After switching to a new interrupt controller scheme by separating SIC1
and SIC2 from MIC interrupt controller just one SoC keypad controller
was not taken into account, fix it now:

  WARNING: CPU: 0 PID: 1 at kernel/irq/irqdomain.c:524 irq_domain_associate+0x50/0x1b0
  error: hwirq 0x36 is too large for interrupt-controller@40008000
  ...
  lpc32xx_keys 40050000.key: failed to get platform irq
  lpc32xx_keys: probe of 40050000.key failed with error -22

Fixes: 9b8ad3fb81ae ("ARM: dts: lpc32xx: reparent SIC1 and SIC2 interrupts from MIC")
Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/lpc32xx.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/lpc32xx.dtsi b/arch/arm/boot/dts/lpc32xx.dtsi
index da375813afd0..6bd196457ccc 100644
--- a/arch/arm/boot/dts/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/lpc32xx.dtsi
@@ -463,7 +463,8 @@
 				compatible = "nxp,lpc3220-key";
 				reg = <0x40050000 0x1000>;
 				clocks = <&clk LPC32XX_CLK_KEY>;
-				interrupts = <54 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-parent = <&sic1>;
+				interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
