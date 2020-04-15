Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A655E1A9DCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olJ2NSq03fYe4ng7W44/duXFVhipuU3onyVtw2OaCoc=; b=bTxXkgrUh1bh90
	k9FGjanOWgtljfHrSZro1hSh/rzronE2qmYlK0McinvFvI02NMC+UolcEAdzjqcAdLvLmRZfY4Clx
	Tnld08qOoRdwzDQJklpdlzhCeldCQN/Nv5yYn4vhZ1XO+Oc29lRh6dHav0abFf6X47p9a/bd1sRzt
	VhCqkYw4GKIc2creyPJOgo7JqXlytIHQ4ubmARcdWtrQK9W37aFaQLjAfwhiIl6I2DXqJ/a8zRxMp
	YeUeRuCGXCuIBFOwL3lc8HdT3ATNFr55giUYC9UfsnW1gcK38Ize8PALY0U9gzKpWzJkUONtwOR0q
	Kv3fwUvgE/Yj1arRopGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgXr-0007qb-PO; Wed, 15 Apr 2020 11:49:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgTZ-0001vs-OS; Wed, 15 Apr 2020 11:45:15 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D4C02137B;
 Wed, 15 Apr 2020 11:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586951105;
 bh=yZRJLnU4ErUB6W+jl5bb662sTl3GJZbnFAsMghgK1O4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JhD9O9eD8hK7vfx3CuZwgXPgHLg++G45LFXntPY1DCLU9Oz+e3ZQgje0H+sxuJRRJ
 D5mCzK6WnEPnn1hlITuBC7FJTgHhwzWA4+MrxSpbh894Q08Y1QXaUQ5Dbd6Tqoz/Wg
 0CkFoTChmuay/OcukbaUcH57sfMegUeeYpX2sKCY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 20/84] ARM: dts: rockchip: fix lvds-encoder ports
 subnode for rk3188-bqedison2qc
Date: Wed, 15 Apr 2020 07:43:37 -0400
Message-Id: <20200415114442.14166-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114442.14166-1-sashal@kernel.org>
References: <20200415114442.14166-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044506_594136_447FFE43 
X-CRM114-Status: GOOD (  10.05  )
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

[ Upstream commit 1a7e99599dffd836fcb720cdc0eaf3cd43d7af4a ]

A test with the command below gives this error:

arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: lvds-encoder:
'ports' is a required property

Fix error by adding a ports wrapper for port@0 and port@1
inside the 'lvds-encoder' node for rk3188-bqedison2qc.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/
bridge/lvds-codec.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20200316174647.5598-1-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3188-bqedison2qc.dts | 27 ++++++++++++++----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
index 8afb2fd5d9f1b..66a0ff196eb1f 100644
--- a/arch/arm/boot/dts/rk3188-bqedison2qc.dts
+++ b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
@@ -58,20 +58,25 @@
 
 	lvds-encoder {
 		compatible = "ti,sn75lvds83", "lvds-encoder";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
-		port@0 {
-			reg = <0>;
-			lvds_in_vop0: endpoint {
-				remote-endpoint = <&vop0_out_lvds>;
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				lvds_in_vop0: endpoint {
+					remote-endpoint = <&vop0_out_lvds>;
+				};
 			};
-		};
 
-		port@1 {
-			reg = <1>;
-			lvds_out_panel: endpoint {
-				remote-endpoint = <&panel_in_lvds>;
+			port@1 {
+				reg = <1>;
+
+				lvds_out_panel: endpoint {
+					remote-endpoint = <&panel_in_lvds>;
+				};
 			};
 		};
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
