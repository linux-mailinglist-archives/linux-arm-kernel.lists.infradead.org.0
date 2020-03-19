Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B52318ADA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 08:52:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SPjyrI0S0X5RaZTVFzzHx8iPs9H51kSbOT/9mm/uu/Y=; b=bHw/uwKz9Nksn/+FSjpRmOYVp/
	nJ0Whr/PQT9UhbAuGI3bZwTzHGcaJiirSgKzS3ol93D4ABu7B85ruYY/K0cshKOCX8qtmJ6nYfVwc
	0IOqo6pdvBBYPayvVQjxVy8zr+CcQ4RG45GHDNIHJMyHjUkPP2S3bQ3F84J7xjnXFUT2Yh2D3ya3h
	n2a6fw9AAdYqnL1X0n9A35RyC//8SrUIAg2JxqmUPoTaAgsvOSNnECPMDvR7MxJgci31JIqrr2ErV
	FmDk2chAKTWt9l20dVJ0FRsmw/6IsuJt6avB8cVRXKLjxRiaV62v5ewLyixnE8DTcrid0C8QWQYC/
	zK5pyXqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEpyh-00005M-OP; Thu, 19 Mar 2020 07:52:31 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEpxH-00079z-Qg
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 07:51:05 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 19 Mar 2020 16:51:03 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 5ABF318005C;
 Thu, 19 Mar 2020 16:51:03 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 19 Mar 2020 16:51:03 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id E91731A12B9;
 Thu, 19 Mar 2020 16:51:02 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 6/6] arm64: dts: uniphier: Stabilize Ethernet RGMII mode of
 PXs3 ref board
Date: Thu, 19 Mar 2020 16:50:52 +0900
Message-Id: <1584604252-13172-7-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584604252-13172-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584604252-13172-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_005103_988090_D6B08BEC 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jassi Brar <jaswinder.singh@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RGMII PHY needs to change drive-strength properties of the Ethernet
Tx pins to stabilize the PHY.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
index fcab6d1..d74a6c6 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
@@ -132,3 +132,19 @@
 		reg = <0>;
 	};
 };
+
+&pinctrl_ether_rgmii {
+	tx {
+		pins = "RGMII0_TXCLK", "RGMII0_TXD0", "RGMII0_TXD1",
+		       "RGMII0_TXD2", "RGMII0_TXD3", "RGMII0_TXCTL";
+		drive-strength = <9>;
+	};
+};
+
+&pinctrl_ether1_rgmii {
+	tx {
+		pins = "RGMII1_TXCLK", "RGMII1_TXD0", "RGMII1_TXD1",
+		       "RGMII1_TXD2", "RGMII1_TXD3", "RGMII1_TXCTL";
+		drive-strength = <9>;
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
