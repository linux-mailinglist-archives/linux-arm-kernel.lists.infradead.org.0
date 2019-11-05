Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90F5EFDEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+OdPV86QJz2DM38hfAkvet8wg7IKBbOGIL68Z91UbdA=; b=N6sWXOmVaCkkQz
	Jkn7IpdlZHVN/cXbSrErKvX9IRG+4626/eMTHdFqdmkGomb7PPIwoEgVtaCTLwt6MgJab/i8lxFO2
	51iyMnAKYND+NIhujVppnJuA0/QUWwtxIY/UTcoA6gJnwLgi7h8ss819MCqZcHCLJSt1DEXKPkXRg
	cVUC/Hyg4+0cndQn+QPD361PiuFJHLO/UUwFmaAaSaO8oDvXwDieBw/RRT6MXTWgNUOY3ax8T9LHx
	S3qmjwEUOLc5R1NReAYyvZgZYtF7YWcBnIrnDL7M8bF0o/srQ+jka3UxzgvUZu1I2XvQdKx8kyE/N
	RzjGOabyXpJiFUsU8s2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyWI-0006A6-8J; Tue, 05 Nov 2019 13:05:14 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyW8-0005EI-N5
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:05:06 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id F1791A3369;
 Tue,  5 Nov 2019 14:05:00 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id LiG40fOat9Aq; Tue,  5 Nov 2019 14:04:57 +0100 (CET)
From: Stefan Roese <sr@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] ARM: dts: imx6ul: imx6ul-14x14-evk.dtsi: Fix SPI NOR
 probing
Date: Tue,  5 Nov 2019 14:04:56 +0100
Message-Id: <20191105130456.9459-1-sr@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_050504_908798_357F2A73 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Without this "jedec,spi-nor" compatible property, probing of the SPI NOR
does not work on the NXP i.MX6ULL EVK. Fix this by adding this
compatible property to the DT.

Fixes: 7d77b8505aa9 ("ARM: dts: imx6ull: fix the imx6ull-14x14-evk configuration")
Signed-off-by: Stefan Roese <sr@denx.de>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Shawn Guo <shawnguo@kernel.org>
---
v2:
- Added fixes tag as suggested by Fabio
- Added RB tags

 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
index c2a9dd57e56a..aa86341adaaa 100644
--- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
+++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
@@ -215,7 +215,7 @@
 	flash0: n25q256a@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "micron,n25q256a";
+		compatible = "micron,n25q256a", "jedec,spi-nor";
 		spi-max-frequency = <29000000>;
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <4>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
