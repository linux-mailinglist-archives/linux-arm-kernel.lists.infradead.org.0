Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C03013DA9E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 13:51:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X0MqBUh9rADJ6yX05zD613EtdIcSQK/M7dsnKll0YFg=; b=uK79DECO3aXIaEWrkvM+O9Dgao
	Fy4zqwKk8eyvcskb3mVp/FjLdpO3jjX2+8IWrpgF3vzhuYZB2Ncfy7KESXPQ3DHRaWFt19SyAKygz
	+GDD0oKkoW75zlwVjP1syiEg5wHStpa8t7RZEgemIN/dPpz5GYBkRqwWTmnOgtzykUMsei0UIWHa8
	CF1w4M5UrvrhwXIYz2/22GS5jEzhApKwb6+pgNdW/XKyg14WygMqYYJpakYR+WIhfocBKhAS5b28r
	Eyvbb7Op43F9UJLbQVhW2UH6p6mFY0OMqMQFTKuDZCC/4Nbhz5KAg2moX3rgUGQZGzMR4NqX2TbAy
	78EAUOAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4ci-0000iy-Dg; Thu, 16 Jan 2020 12:51:44 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4cV-0000hy-Qz
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:51:36 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 00GCp0LN004484;
 Thu, 16 Jan 2020 21:51:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 00GCp0LN004484
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579179062;
 bh=KmqleiAw0MVSjh4HEf5T+ImDC/VDq4dszju/GsZ7wC0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FBL346imjwYWy9xiVxhENfVVWXygIiVFIdVxSwSDCULelopHtV1UMIJbA4nzIcwv5
 81WTYEh3s/NKoi7hnQjCKpogpRoZGPQS0jT8LROSuWYVvK289EXjXdysnhyEnSTj6s
 6zoubgPv6J32r8ptB4y6W0FIMI5NUhgQziGc5TMezy11ZgHKyRYINP9hHa7lyytlgv
 Zk+6Uzkx6SQrcBVBwKCb4zarPV4yVKf2C/uWiCwwf/242u04mapoVNZ57DBUA2oVEP
 AZkIMQpaEXgJTUDDWwVqEFXR4f37a9wJUGxRUlrhrV7nqFi6p/mC5rErPtx7rPnZvk
 tKoLkL3SWr3EQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: uniphier: add reset-names to NAND controller
 node
Date: Thu, 16 Jan 2020 21:50:45 +0900
Message-Id: <20200116125045.17581-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200116125045.17581-1-yamada.masahiro@socionext.com>
References: <20200116125045.17581-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_045132_222046_7072C33D 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Denali NAND controller IP has separate reset control for the
controller core and registers.

Add the reset-names, and one more phandle accordingly. This is the
approved DT-binding.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 3 ++-
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 3 ++-
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index 8ec40a0b8b1e..5b18bda9c5a6 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -633,7 +633,8 @@
 			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
-			resets = <&sys_rst 2>;
+			reset-names = "nand", "reg";
+			resets = <&sys_rst 2>, <&sys_rst 2>;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index b658f2b641e2..f2dc5f695020 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -937,7 +937,8 @@
 			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
-			resets = <&sys_rst 2>;
+			reset-names = "nand", "reg";
+			resets = <&sys_rst 2>, <&sys_rst 2>;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index d6f6cee4d549..73e7e1203b09 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -795,7 +795,8 @@
 			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
-			resets = <&sys_rst 2>;
+			reset-names = "nand", "reg";
+			resets = <&sys_rst 2>, <&sys_rst 2>;
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
