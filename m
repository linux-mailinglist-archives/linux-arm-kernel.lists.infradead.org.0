Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E901BD3BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 06:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wd8f3HY3HGOSk3IWsAG1trRxi+QzuD+erIvFrFhDXkc=; b=CRpf+T/SeSdErh
	VVUZAH9TNi9xv9uebmQ5aXOZ1JbHqt+DSCvykF/tqE+Vh79/FChbuebHrMTkiwTFewiMeNVxIHUIq
	9PZMd6JJd0xwLYj5ZgLdD72uxRfI6mphElcXG327RsOY6FHjfw2LjZh8L8Nxb06t5Z+eW/gRwr/tP
	IDVk8RH6Z6l9UUaa5jkHJlIrN4ZsksoR2El7XP3faknU6j8BaMsVtM1FcWusZdM0woyw+xPq6aa7T
	JyYEWiZxDdDO0L3vMn7QkOBiGGJDQAHFpqfNgSpWCdb2gmO76uycicfqEwYHsNcavndBGMDdmJK9t
	09GG6RfThBPSxhFDiJtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTeNC-0002gD-D0; Wed, 29 Apr 2020 04:31:02 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTeN3-0002dw-FV
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 04:30:54 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id A59EB44061F;
 Wed, 29 Apr 2020 07:30:43 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH 2/2] arm64: dts: marvell: drop i2c timeout-ms property
Date: Wed, 29 Apr 2020 07:30:36 +0300
Message-Id: <26aad6ac18993b78496ea224337d9944878fcc81.1588134636.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <21ba4c9abd5e411ba936ead8f043c5a7e490d530.1588134636.git.baruch@tkos.co.il>
References: <21ba4c9abd5e411ba936ead8f043c5a7e490d530.1588134636.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_213053_724820_47FD3491 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.115.133.116 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Baruch Siach <baruch@tkos.co.il>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The timeout-ms property for i2c master nodes is undocumented, and as
never been supported. Drop it.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm64/boot/dts/marvell/armada-ap80x.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
index e7438c21ccee..7f9b9a647717 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
@@ -201,7 +201,6 @@ i2c0: i2c@511000 {
 				#address-cells = <1>;
 				#size-cells = <0>;
 				interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
-				timeout-ms = <1000>;
 				clocks = <&ap_clk 3>;
 				status = "disabled";
 			};
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
