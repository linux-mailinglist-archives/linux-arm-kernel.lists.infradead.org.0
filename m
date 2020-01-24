Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FC714874F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:23:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWJf+44BqPk9YUOy2Vcyj0N3jboe6PeeDqq0KGhKkS8=; b=MCoebIOrd3jNzV
	GX3eWx+ZrLJTsQvCxyyGXJURkMJh1YoAvTB8h+KJIvfsZUCFMXvuyOBKWpXD0nPI67ejoqLxocZ+Z
	P1SYieQexAPj3X735o2yyWVdTZY0mwygcPrMS/SRmRby9Cva5eFr1hoFHVtePwSv9m3mXt3SIZlqo
	y4etndJtJqXmI04GlpFmH5FI5gqC3a/XGgqpfEuKXJCEsH8JqGPI5+MPZeoW6tY5PM+gMhDj4Mpyu
	63ueSFcUj6auKd0Tle2nK+a15wP6DHWytXdfcssmBSbJQuaiSsrG1nX2HiM5/mILDTXmL3mLxk8ow
	MToo2AN810hDrILvYndw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzrO-0005Ez-JO; Fri, 24 Jan 2020 14:22:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuznE-0000im-0s
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:18:42 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF94F208C4;
 Fri, 24 Jan 2020 14:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875518;
 bh=TDxPorzrIJGs1ZqB7kiIUwv25RiRwUZ8gQeU5ZGA0Yc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=r0fV1D/da4A/2mpzyJpC950PQ2V/861yc9+JBLLk5ULwQcs49yUvC8CtDkAiN4MEG
 7CORZZHhFFiy3XWGQT0H4D//0fUOGapTgqBB1ooHK0kampU0e8rAW/kukr+9gYjsoC
 2TRdR+Jh1dpDimQuq7Ye9i3HUBakBZix9CfDTE6M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 018/107] arm64: dts: imx8mq-librem5-devkit: use
 correct interrupt for the magnetometer
Date: Fri, 24 Jan 2020 09:16:48 -0500
Message-Id: <20200124141817.28793-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124141817.28793-1-sashal@kernel.org>
References: <20200124141817.28793-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_061840_123147_4FC6B36B 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 Martin Kepplinger <martin.kepplinger@puri.sm>, devicetree@vger.kernel.org,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

[ Upstream commit 106f7b3bf943d267eb657f34616adcaadb2ab07f ]

The LSM9DS1 uses a high level interrupt.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
Fixes: eb4ea0857c83 ("arm64: dts: fsl: librem5: Add a device tree for the Librem5 devkit")
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 683a110356431..98cfe67b7db7b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -421,7 +421,7 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_imu>;
 		interrupt-parent = <&gpio3>;
-		interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <19 IRQ_TYPE_LEVEL_HIGH>;
 		vdd-supply = <&reg_3v3_p>;
 		vddio-supply = <&reg_3v3_p>;
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
