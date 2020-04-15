Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D580F1A9CB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olJ2NSq03fYe4ng7W44/duXFVhipuU3onyVtw2OaCoc=; b=SRjVuW2kxpXz1A
	LAbjrMUMDOVGjX5Fe+ApszY8ognADEVAFxtZ03wKLUH0XlsS+4eSB9tQOmTn13E+Bf/P/i8ibCC/R
	L8XiMFf2J108UFbhYu5ml7c0/v0a0FxpR5hQU2THIukdvPbYm3uGC+fW4OB7giQW/AfUrFmoNPKlP
	g+fvn/xVBKfwDn8ziwbo2YLQ+hC9hpedHKydCa8TX5tH+W30rPR7VR/omcgyQS2oy1s0NQMkJz6Qs
	z1guD44UIyJSIF+fxn/lc5+SW+tiEQJIQ5EgTRqM+h9Cc7EjC02WIPbgO+f3+C0Hecv2/7tmkPAFY
	pZs8+8o4zpB0uF8Cq3Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgMb-000284-Ou; Wed, 15 Apr 2020 11:37:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgKH-00005t-38; Wed, 15 Apr 2020 11:35:30 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A0A0120936;
 Wed, 15 Apr 2020 11:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586950528;
 bh=yZRJLnU4ErUB6W+jl5bb662sTl3GJZbnFAsMghgK1O4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=llISxg66j8GDmIUQcbVn2sL5Lm7FpGnV8tq0jdiWUnW8hFu0ZbRoOV43yMbHvkgAS
 267bGfB9JPwHswlviTpYHN5r2qKJS5uAKyGE0GvulP7GQ9HIhuUegw7e+gy77j4lLq
 HBeDJkrzX0z1AFNVs5qovBo3iSPqIF9tQiJOFyUo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 037/129] ARM: dts: rockchip: fix lvds-encoder
 ports subnode for rk3188-bqedison2qc
Date: Wed, 15 Apr 2020 07:33:12 -0400
Message-Id: <20200415113445.11881-37-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415113445.11881-1-sashal@kernel.org>
References: <20200415113445.11881-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_043529_236021_0BCDC8CE 
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
