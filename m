Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B21E1A9DC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycKRcaTAXpfIEV8pg8XREDTjpQCOmHz3+PXk8fL/wy8=; b=Kr5KX9N9FLz117
	arRbS8RlMyuJJSAkzD6MrSWaFMqNrE7rYl7yErbCyyReh9vHNtaGJobfOwpmtVPOxxc4OIGe6cfdt
	NYv7/LwrxuPTCBiKfjbK6j+r3DrXmuSVZ/L//a6Ail7bfg7Vem+U//O/q3gh/iR6HsIcU+4n/B9er
	RUK2xLQeqDJo0/nbSJEzQafFrzSKKrWEgx1Xj5I5f9FB5hlCRnkaSpLoVlNp1ZAWrUuvhUlJo9dya
	72M7ugiiMZT5ILL2jXOv+tjwJKAXFuhlQwURbT8AjlMYiVhEM4eVVKwQs3DhgVHrT+9EUy+ygrTip
	X7W/w88waQqdXV9dQ/Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgWR-0006Q4-1u; Wed, 15 Apr 2020 11:48:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgTL-0001TG-HA; Wed, 15 Apr 2020 11:44:53 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BB8C2078A;
 Wed, 15 Apr 2020 11:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586951091;
 bh=Ovw4O+bQIjjYv0PGALGX8rJlm27Kw+SfdVJ5q442p7o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ailmd1g11WnGdn5Tl8BRlqGq8HY1VvMGBDfCjVhuIyI/5iP13PNk+80FqN2UHTQT+
 D2WiAjD92Afsc38udx3qTuPKNIsoFBydu1p1DiPebnKd154O8MvdL7U1OAxvm92Ypc
 9zK5s5TrlT8hxfexF2ZdsAlaxmQ19JDORohQcsj8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 07/84] ARM: dts: rockchip: fix vqmmc-supply
 property name for rk3188-bqedison2qc
Date: Wed, 15 Apr 2020 07:43:24 -0400
Message-Id: <20200415114442.14166-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114442.14166-1-sashal@kernel.org>
References: <20200415114442.14166-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044451_590589_7AC9B030 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit 9cd568dc588c5d168615bf34f325fabe33b2c9a0 ]

A test with the command below does not detect all errors
in combination with 'additionalProperties: false' and
allOf:
  - $ref: "synopsys-dw-mshc-common.yaml#"
allOf:
  - $ref: "mmc-controller.yaml#"

'additionalProperties' applies to all properties that are not
accounted-for by 'properties' or 'patternProperties' in
the immediate schema.

First when we combine rockchip-dw-mshc.yaml,
synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
this error:

arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: mmc@10218000:
'vmmcq-supply' does not match any of the regexes:
'^.*@[0-9]+$',
'^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
uhs-(sdr(12|25|50|104)|ddr50))$',
'pinctrl-[0-9]+'

'vmmcq-supply' is not a valid property name for mmc nodes.
Fix this error by renaming it to 'vqmmc-supply'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20200307134841.13803-1-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3188-bqedison2qc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
index ad1afd403052a..8afb2fd5d9f1b 100644
--- a/arch/arm/boot/dts/rk3188-bqedison2qc.dts
+++ b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
@@ -465,7 +465,7 @@
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd1_clk>, <&sd1_cmd>, <&sd1_bus4>;
-	vmmcq-supply = <&vccio_wl>;
+	vqmmc-supply = <&vccio_wl>;
 	#address-cells = <1>;
 	#size-cells = <0>;
 	status = "okay";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
