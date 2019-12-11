Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BED211A3A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 06:07:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ph6zBNaCWTjC6zp+YQkRAPXG8PRDgRT3eBrFCqG7YGk=; b=s0v
	NCRqtciTiW5K6T0OGZSFdJqiGpBpBfvzWbJWwMJThWyMd1UHIW3WKpir/twGjxqWxLXAVLWgrZ1NB
	AfTAaoI+Au02VSjWTvR8Ox3M9gfPdKNag5X4+X2RKiA5X2AS0ZUh3/rBMXueioUdFx+BUmfSuif+Y
	XVZ6/Sq8xGxXoEInTpoafSMJwJxAfqoyXRxXd/8ityKv6VQDTK2HtPz/zLVqEIleq6aEhVov9Rl1d
	Lp/ZYglCY1J46V1GDjJV5foeuKc30h845hVhdLMNgkAkq9MlsfcJxfUBAAkLs4gCqBXUZ+X4H5WCO
	eQ5RNjVw2RwcpF2OlbkECHb/dDe9m2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieuDC-0000T9-Dt; Wed, 11 Dec 2019 05:06:58 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieuD4-0000OM-Ke
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 05:06:52 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id xBB56RdY030450;
 Wed, 11 Dec 2019 14:06:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com xBB56RdY030450
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1576040787;
 bh=YtASyUS1UyPV1rSLOWOP9wW3Od7ds2m3vN7ApaY5Vfk=;
 h=From:To:Cc:Subject:Date:From;
 b=wETvnV3eobnEfUxcfdrivgO82tMV7fypCJBC97uKPCtRZvBqSnX+wRrmycB4wcwqr
 2LdRYpXlhvJJ4JfIQiSnT2CV47XRCFdMX2db1cudzBBl2pftJTTF8EzLKQPTCmi0Vx
 BM1cZThZlpcfGGh9E6w0IWhzkivvtHIEWTsegbU36FRY3koZVJf3Si99IIAMB7dNhV
 MjkLuruE26sH3PuCfkVLTzkkbr76wOEY9TGwONrfv1SXKvVqqMvwtWKMopwPwvxj4O
 VdAc6J2/qbev64v/DwyvDY8TueYY369O0WvBJQFTyaNHtD/Zli95wugqYqRQWiEp1A
 /6uPLEXMOZIXA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: uniphier: add pinmux nodes for I2C ch5, ch6
Date: Wed, 11 Dec 2019 14:06:26 +0900
Message-Id: <20191211050626.862-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_210651_009957_D012A8B7 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
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

The next generation SoC can connect on-board slave devices via
I2C ch5 and ch6.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/boot/dts/uniphier-pinctrl.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/uniphier-pinctrl.dtsi b/arch/arm/boot/dts/uniphier-pinctrl.dtsi
index 1fee5ffbfb9c..bfdfb764b25b 100644
--- a/arch/arm/boot/dts/uniphier-pinctrl.dtsi
+++ b/arch/arm/boot/dts/uniphier-pinctrl.dtsi
@@ -106,6 +106,16 @@
 		function = "i2c4";
 	};
 
+	pinctrl_i2c5: i2c5 {
+		groups = "i2c5";
+		function = "i2c5";
+	};
+
+	pinctrl_i2c6: i2c6 {
+		groups = "i2c6";
+		function = "i2c6";
+	};
+
 	pinctrl_nand: nand {
 		groups = "nand";
 		function = "nand";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
