Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA1317371D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zVV+shcYsQQTvufPx6UZ35vaagcEEVVeIsaNBpngNpA=; b=Gm2
	ODMinWrUM7et8MH3H6AuOELDFdwEfeyqI/Ezbadd8eViXzHY7IGubpPTWp/4KFowhCYzP8Towy4Ha
	nz/62gWLtegPbxDskUNumV1p300PR1Mmb2ooDQG0pxGcvBLZ5ZhX3xl0z2Bymcjld1xN8O+O/G7lK
	Um1UWI2vGVAvIChDAN+Tqe5OgrdXeE/s6xGsAUzkfmo3EfJoVJS5BpOnV7lVtlf7RP1HJti27RK1S
	zkd6lbdjt2yIWjlo1YoBsiTATlgNockRdjH44YWiXz36UBh3DmMecPra9YM5cPWU+mvIW8Ib1Aktj
	Qnjw2IMmoLUZYG/MFvJBevJIy646HkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7eeH-0006Ud-Lk; Fri, 28 Feb 2020 12:21:45 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ee9-0006Tr-1O
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:21:38 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 01SCL1XW004922;
 Fri, 28 Feb 2020 21:21:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 01SCL1XW004922
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582892461;
 bh=5ghtF6rUXJoiM/O0pSdOPbN8zT8QLZE6M+wi9C8WvuQ=;
 h=From:To:Cc:Subject:Date:From;
 b=fziPaJiTtPI95odVNEvQiZwh8s7oczRhLsT5hqopZ3uiv6cDdWMsA3X6vrfPcRN1q
 /CBKto9+TVaymE8VKI1Zo6/XBRjZ4WwsI5B4wX9+c7idW7xZ/riZmSuJUhCfLgzQvt
 ATGgfvyGt9x8jHWUKuT6IbJh6S/bk70XCi8YNjCO+vGV3cq6NSSktF6DfQSxfPko91
 SSIx0FoGG9VZscnKpRR0GngO7bN8IInMH3AzfDDo0ko+Q2GVtC7UkHm5FvcHmz0iwg
 Y9Njh2cyoov0cjD3J6O2L9qz3jEZxuffJl09jY7qCnH+3n4qAhaKow1R3fZqHIi6la
 KoLdFwIDfHckA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: uniphier: Add one more generic compatible string
 for I2C EEPROM
Date: Fri, 28 Feb 2020 21:20:55 +0900
Message-Id: <20200228122055.17008-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_042137_408980_3E073F62 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 73f9de0c7f5d ("ARM: dts: uniphier: Add generic compatible string
for I2C EEPROM") did not touch this node.

Add the compatible string prefixed "atmel," so that this matches to the
OF table.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/boot/dts/uniphier-ref-daughter.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/uniphier-ref-daughter.dtsi b/arch/arm/boot/dts/uniphier-ref-daughter.dtsi
index 04e60c295319..a11897669c26 100644
--- a/arch/arm/boot/dts/uniphier-ref-daughter.dtsi
+++ b/arch/arm/boot/dts/uniphier-ref-daughter.dtsi
@@ -7,7 +7,7 @@
 
 &i2c0 {
 	eeprom@50 {
-		compatible = "microchip,24lc128";
+		compatible = "microchip,24lc128", "atmel,24c128";
 		reg = <0x50>;
 		pagesize = <64>;
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
