Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A006A144726
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xe9nN/S0tTR531qX93EqePlC5Pvc5HTbeNODyGWZqjo=; b=i3/Sadyj5QLWWT
	qGPkyx+TBye3HYrxfmtpIOrtUowzs58hT7Dz8flYq8hEmi5LItQfEcwLNg22cmmdZ2mEesq1uU9Gg
	yQwjcg8+/WSJbgRKSLBEvwH9VEMitXv5ZYP3eVTkOMIfeQwvgtylX9AGOX/OV881rIy4qR5EUsBfz
	MAUVP0skJltvD0sR7M4ozhePTwR8mUK7yWLRdv4hqkSbbddVQCKjXnBwoV8qITnG22lAX7sjD1Et5
	OvQs6aBAnbrc1JqL60Bbgv2hQVNgMOSB7yZPvsAjZqopDtTq9GdgDgwqq9qb7N7CROtqiohZkzxAs
	r3viMbWzT7HVy2Uii95Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1u5-00067a-2N; Tue, 21 Jan 2020 22:21:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1tW-0005sw-RP; Tue, 21 Jan 2020 22:21:16 +0000
Received: from mail.linser.at ([80.109.168.170] helo=phil.Hitronhub.home)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iu1tT-0005o8-EX; Tue, 21 Jan 2020 23:21:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: fix px30 lvds ports
Date: Tue, 21 Jan 2020 23:20:55 +0100
Message-Id: <20200121222055.4068166-2-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200121222055.4068166-1-heiko@sntech.de>
References: <20200121222055.4068166-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_142111_039827_BA3006F1 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The lvds controller has two ports. port@0 for the connection
to the display controller(s) and port@1 for the connection to
the panel, so should have a ports node covering the port@x nodes.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 9b1c92132007..37e014444214 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -421,19 +421,24 @@ lvds: lvds {
 			rockchip,output = "lvds";
 			status = "disabled";
 
-			port@0 {
-				reg = <0>;
+			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				lvds_vopb_in: endpoint@0 {
+				port@0 {
 					reg = <0>;
-					remote-endpoint = <&vopb_out_lvds>;
-				};
-
-				lvds_vopl_in: endpoint@1 {
-					reg = <1>;
-					remote-endpoint = <&vopl_out_lvds>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					lvds_vopb_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&vopb_out_lvds>;
+					};
+
+					lvds_vopl_in: endpoint@1 {
+						reg = <1>;
+						remote-endpoint = <&vopl_out_lvds>;
+					};
 				};
 			};
 		};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
