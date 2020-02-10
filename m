Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A6B158093
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:08:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yXSaOEZ16kTP1TVtFCacV5GhI4XAP3V25jdUBTOtgyI=; b=CXcJZfAx3RA2cL
	wdpzVjrQzNSyFMAvZze/I/de5dDMBuS56IeZyXwzPjupoKuktGodFsZ6pqJfswq21Xj1XaSFlToiG
	0Qbiu9Lt0oEc7rGGROfad14YSNZJUMT+YAOKE37WLJ0tLRX7hcTeZASn7APABlhbRf9bnNHf5BA8t
	/CTr10gTjxX4SohRVpslnvcebYbMdIlJ+P4ZYUkDwFk1/UExsPDjUsqZmQiiGMzlIcwjC3na5t0b1
	bLKz1p87Yj9BJLBwzLa2DW5fkMuhEMpV5PABd9PkhsSDS2eHZSVkwtu1/uDqv82/IVVDZvy3IKJC8
	8fDbm/SByVxGzK+K/D0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CXi-0001ze-0R; Mon, 10 Feb 2020 17:08:18 +0000
Received: from mailoutvs57.siol.net ([185.57.226.248] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CWn-00017s-Ap
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:07:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A99A8521B89;
 Mon, 10 Feb 2020 18:07:18 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 6TAoZQl4S_0N; Mon, 10 Feb 2020 18:07:18 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 680B6521AFF;
 Mon, 10 Feb 2020 18:07:18 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 97F90521B89;
 Mon, 10 Feb 2020 18:07:15 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 3/5] arm64: dts: allwinner: a64: Add MBUS controller node
Date: Mon, 10 Feb 2020 18:06:54 +0100
Message-Id: <20200210170656.82265-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210170656.82265-1-jernej.skrabec@siol.net>
References: <20200210170656.82265-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_090721_859418_8FD8E15A 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.248 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A64 contains MBUS, which is the bus used by DMA devices to access
system memory.

MBUS controller is responsible for arbitration between channels based
on set priority and can do some other things as well, like report
bandwidth used. It also maps RAM region to different address than CPU.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 862b47dc9dc9..251c91724de1 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -1061,6 +1061,14 @@ pwm: pwm@1c21400 {
 			status = "disabled";
 		};
 
+		mbus: dram-controller@1c62000 {
+			compatible = "allwinner,sun50i-a64-mbus";
+			reg = <0x01c62000 0x1000>;
+			clocks = <&ccu 112>;
+			dma-ranges = <0x00000000 0x40000000 0xc0000000>;
+			#interconnect-cells = <1>;
+		};
+
 		csi: csi@1cb0000 {
 			compatible = "allwinner,sun50i-a64-csi";
 			reg = <0x01cb0000 0x1000>;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
