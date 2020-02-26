Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CCD17075A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:12:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PDsRsgAwQvEi7zUVQEvI6AFQZh/5HQt4WdNnCy+IkM0=; b=PGyBASK8GPrUzu0ReWNFvba5/2
	lJR4DpwOXbI5Hwn+12kUOllqOuCDglwSJU8jDJokXKJtf5jNqOa1nmPearF7CqYnIcqzw9P63ezN1
	X1fHUyKpOTQhh4Rwu62nGEwN4EpS2swfYWkp2GFzs0Sv5BSxRrVW1xkav5RBoNfjfmwZXr8o4ARPk
	KPMxkze8vlsnOQE2C+ZhIjHtBkG7ELUJXr+tC/hPJ2lny7GlBnHaNr6WXjv1R72E5fOblwFu6I0Zg
	1hEWSJwnRWMck9Hr8YDlG0ENBUuvxk3RkAN0QgZP9ZCUx+/EMxV8Jn3kcCSfHN4C0nRANH2iiGZwM
	/e6fXn6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71Am-0005ss-9N; Wed, 26 Feb 2020 18:12:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j717U-00021j-Un
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:09:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F27D4B2;
 Wed, 26 Feb 2020 10:09:16 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D9013F881;
 Wed, 26 Feb 2020 10:09:14 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 02/13] arm: dts: calxeda: Provide UART clock
Date: Wed, 26 Feb 2020 18:08:50 +0000
Message-Id: <20200226180901.89940-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226180901.89940-1-andre.przywara@arm.com>
References: <20200226180901.89940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100917_048288_86466519 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jon Loeliger <jdl@jdl.com>, Mark Langsdorf <mlangsdo@redhat.com>,
 Robert Richter <rric@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PL011 UART binding requires two clocks to be named in a node.
Add the second clock, which is the bus gate, that just gets enabled.
Since this is a fixed clock anyway, it doesn't make any difference.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/ecx-common.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/ecx-common.dtsi b/arch/arm/boot/dts/ecx-common.dtsi
index 66ee1d34f72b..f819e3328a9e 100644
--- a/arch/arm/boot/dts/ecx-common.dtsi
+++ b/arch/arm/boot/dts/ecx-common.dtsi
@@ -114,8 +114,8 @@
 			compatible = "arm,pl011", "arm,primecell";
 			reg = <0xfff36000 0x1000>;
 			interrupts = <0 20 4>;
-			clocks = <&pclk>;
-			clock-names = "apb_pclk";
+			clocks = <&pclk>, <&pclk>;
+			clock-names = "uartclk", "apb_pclk";
 		};
 
 		smic@fff3a000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
