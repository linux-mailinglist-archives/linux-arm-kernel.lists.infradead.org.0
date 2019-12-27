Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F9712B653
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xe3E9eq34z+GODQtTTiW7yxHKZ+KrPyiMJaFNdjZW2k=; b=Zf6DCVGy8dWGXo
	1NJxK6Wm0g8vywnCTrXv6SlA+tHQkIQM0ESKllC9PCkTM5yyn2zqYT6U8g9d5GX805jH0CnM+ZP1S
	G+fiTojzswKZwEQgnjC7v8WYXYKq6WetqL0C9Q/QQJs1SrdvjwQXthtL+90R4kTLx8QGOm8gSN9EF
	B84JEhwxh0zeRiXOya5UJmWcsQYgUCHVG+Fr94qETH0OF5BnHS9Yg5KWhASk6lvJiYmQh11wTsCNs
	ml6qQlk9gvyIvzpXvQpunzlEQ4Ew2dT4Hg+DcmEtJwFoK5/5qC6zc/wGIZcPuWnXZrX1mMmzkLrR9
	fDU3+Nj/6IqXh0k0Nmig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iktcW-0007Xw-AO; Fri, 27 Dec 2019 17:41:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktcF-0007Wj-HS
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:41:36 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5329721775;
 Fri, 27 Dec 2019 17:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468495;
 bh=HJ0ymcUkdCCjoz9nZLNfodLIvHB94KyevMzMw3Nhzz8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZAh7GBGUU2igbVkSXBMyyXdEGiawjjdwywsuhfOM6+vWGP7H8gN0mRJ2OebqxYjW/
 sNe6Rwym4m5rmsnlBjh//+C5ldb3IHuvBfE1YSMASIL9UHkCJ4UMMT4eSCfEklZLKo
 21iTR6Q+Yk37NTTmgwTcIeD2gUdQ2MyVeapKWVio=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 030/187] ARM: dts: imx6ul: imx6ul-14x14-evk.dtsi:
 Fix SPI NOR probing
Date: Fri, 27 Dec 2019 12:38:18 -0500
Message-Id: <20191227174055.4923-30-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094135_594054_1D7CF44F 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>, Stefan Roese <sr@denx.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Roese <sr@denx.de>

[ Upstream commit 0aeb1f2b74f3402e9cdb7c0b8e2c369c9767301e ]

Without this "jedec,spi-nor" compatible property, probing of the SPI NOR
does not work on the NXP i.MX6ULL EVK. Fix this by adding this
compatible property to the DT.

Fixes: 7d77b8505aa9 ("ARM: dts: imx6ull: fix the imx6ull-14x14-evk configuration")
Signed-off-by: Stefan Roese <sr@denx.de>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
