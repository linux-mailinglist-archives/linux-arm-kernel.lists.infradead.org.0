Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7478AABFD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 20:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8VrHkIFW+oZ9Hc+zq+/z0lS9XlRrcdaqXZe7j5qaE0=; b=BMZB3Hv1e209qQ
	gJRQ5PcNw50ObDoTgwKZY6v01IbJFZVQ+ITzeLXY/1SIqBTcyrnyj7CAwdABj4TqKzIcShs1aZh79
	tyvCLU9QHo5Iq3hNamN2IG3BAXn3AS8undk7w2o9rrQTvkCKvJSzwPbopl/7Tl8KsKyy7w8ejMaDx
	aJzEC2TBJP0MiAcuYWyIHy+mKew+qDJt66ajlkbz5rCMj5w5H3+CNefSZHZ4rZtWn6zGBofbkR5+u
	CUBBUA/PZgdIaXJALglUMES7KuqWHPORMb9vS95kYh5TXGHFGPprwt1u97VovfAwsCzh2IPeJwKOg
	ZgJt4iqszCeppz+kT8qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JHD-00075Q-P1; Fri, 06 Sep 2019 18:48:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JFP-0005GH-W1
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 18:46:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id u16so7633086wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 11:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f5t3zhoR3RfkeeCxhIwf2rf3xgfwu01/OJcOf9PrEec=;
 b=oqF++9+SpbMo/KW24R+/jjUd2tj8D9lulEIyiUTjAaqRg9yH+SueSFntF23gdNjUeT
 CKRO/mKS4pkej7wwckSIO95TxZ71BMjA201QBlQFpIutN9WDYyRrdtSU1abY2rDEcSoa
 rpMmiggvRfxQcaG2tmvtxZJ9R4lbZsUFJqHUoH5CX0BR4gLTMKUh9qpo4wICvfPJdVd5
 i5AfRQ58PxxuyiXuxq+WPpyMa688V5TbGoiNu1qwLj9AstCZGnNIDckKRTfJ7cIB62kG
 33xPZ/sHi+NQ7Gn1EY6w5FzBwH1a2WmYJKohrVGuo8KFR6I8AduANY9gH8hfmG4myh3u
 9A+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f5t3zhoR3RfkeeCxhIwf2rf3xgfwu01/OJcOf9PrEec=;
 b=QVSbyvPVHYkq8KunwEFDRhXsrtfe6mT/P11jG203O/5f8gr6jmOVlNluZSADlXEmDA
 BjnqDt8mDzkxAKl1xjKgWOYmmkU7oPRuubppDsCi9m4g7kx8647EF6KsOxFYzQiHlyEr
 6q9omm/tJcp7WiJ+USxiFeqv3TXETRSqXe+FiUJ5BFPIrSWNwdcOE7uPDnfmtJGmeVjU
 7XOccupH+BdY2eDpBNvRH3tnoaRnT+/8GRbUPikV1WdNTLeqkp9QfukQISkRltViPQvR
 c7cyu1eIwRgjmBKuVM5uZd65zrgYxThAEI6uOFuRCp7hIHHIs6QQHETj6rx1UKNhGEqp
 kOAw==
X-Gm-Message-State: APjAAAV3NmdlNim5Os87fjDDvnselICZ2/HmfhvVIcDhzu/LjzwlKASY
 SPdiygZByqoVB0a2iYx0VzU=
X-Google-Smtp-Source: APXvYqxd5fVSBGAObcD5kqUHTqNYg4ew2h9AYvB8irXufaBYEpdRX5dLgjHGxv2PBsEVbxFIdoGj+A==
X-Received: by 2002:a5d:4408:: with SMTP id z8mr8252982wrq.106.1567795574866; 
 Fri, 06 Sep 2019 11:46:14 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id j1sm8677577wrg.24.2019.09.06.11.46.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:46:14 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, linux@armlinux.org.uk,
 mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 8/9] ARM64: dts: allwinner: sun50i: Add Crypto Engine node on
 H6
Date: Fri,  6 Sep 2019 20:45:50 +0200
Message-Id: <20190906184551.17858-9-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_114616_093899_CAF39482 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.

This patch enables the Crypto Engine on the Allwinner H6 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 0754f01fd731..51762499ed06 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -149,6 +149,16 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1904000 {
+			compatible = "allwinner,sun50i-h6-crypto";
+			reg = <0x01904000 0x1000>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>, <&ccu CLK_MBUS_CE>;
+			clock-names = "ahb", "mod", "mbus";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "ahb";
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		syscon: syscon@3000000 {
 			compatible = "allwinner,sun50i-h6-system-control",
 				     "allwinner,sun50i-a64-system-control";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
