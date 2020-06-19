Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9497200652
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJWWWXgsNHBBOkSLhwpE6auQTzQYrNSMWOzEBKM0SMs=; b=Twky+6BcU5NvKu
	gbopXcAtp5v2zqqeZANOrd1jdghqtzmCdddaR4O3lPG+Kby11W7f7hhxR0oa2o7kzfYfsh7J5alzU
	U9gsqXYD1Ovu5aSG5eQSlYDHZhEnbSpy/guxbfbqu0xu9VW9GNwJFztHTOAjA2nle1xIixFwWIzV6
	mJjvh+IM5OfR8RzODNrtFRELyZ6NYiwEH/0ng8z1OuUZUDO1QHaSU4pVPm0U2iISUJ1labwwNOExM
	nB6dev1tEWU8So894VEYINgyL9vy/cbAPituaJ5b1sIEwLtYbdGQanQjcl+kWZHFuGgD71YBFdLps
	8kXO3wMdzkB70r6oUybQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEHW-0006kA-Hr; Fri, 19 Jun 2020 10:29:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEFm-00057m-9x; Fri, 19 Jun 2020 10:28:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 572C62A5201
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] arm64: dts: mt8183-evb: Fix unit name warnings
Date: Fri, 19 Jun 2020 12:27:55 +0200
Message-Id: <20200619102757.1358675-6-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619102757.1358675-1-enric.balletbo@collabora.com>
References: <20200619102757.1358675-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_032810_501010_F94BFB4A 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: erwanaliasr1@gmail.com, drinkcat@chromium.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the unit address from the DT nodes that doesn't have a reg
property. This fixes the following unit name warnings:

    Warning (unit_address_vs_reg): /soc/pinctrl@10005000/mmc0@0: node has a unit name, but no reg or ranges property
    Warning (unit_address_vs_reg): /soc/pinctrl@10005000/mmc1@0: node has a unit name, but no reg or ranges property

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index afd6ddbcbdf2c..ae405bd8f06b0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -205,7 +205,7 @@ pins_rst {
 		};
 	};
 
-	mmc0_pins_uhs: mmc0@0{
+	mmc0_pins_uhs: mmc0 {
 		pins_cmd_dat {
 			pinmux = <PINMUX_GPIO123__FUNC_MSDC0_DAT0>,
 				 <PINMUX_GPIO128__FUNC_MSDC0_DAT1>,
@@ -264,7 +264,7 @@ pins_pmu {
 		};
 	};
 
-	mmc1_pins_uhs: mmc1@0{
+	mmc1_pins_uhs: mmc1 {
 		pins_cmd_dat {
 			pinmux = <PINMUX_GPIO31__FUNC_MSDC1_CMD>,
 				   <PINMUX_GPIO32__FUNC_MSDC1_DAT0>,
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
