Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985EF18717C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 18:47:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=85z6PyFbfjhlNdwGZMAXHwInJTbuSEl7GzodOVsRj3U=; b=QLN
	de/iwHdZPKZwry4RECWw32HdFyVuwP9vO/3RH1bJXNUA1MsVXP4OYK+zLF2s0db1KZN29etZmmy2D
	egN9EpMl/nZfoUE2Foc1zRPw/ZUIwqc10B0JYcs+V6rd4wH2QSPIqlCrZbt/vK4Oaa7a45wqDSjji
	AHyW0IrzXEk9rSWkypMyY9V8io+67vV4IKfdJYKjqjZ6zUhOPQQ3OFmNUGfmQKcqfPZoqIqhdT4rS
	XdbbtxU1lgIS5rQvbKD8RNabHJ4fcfX07V16hNIOX0SJr7wDhWQI1cG56BiihGKJm6ueVIzvybTuS
	fVG/OCS+TrYg7vyd3Aswb/hwPWRNWrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtpR-0005uS-RA; Mon, 16 Mar 2020 17:47:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDtpI-0005tV-SD; Mon, 16 Mar 2020 17:46:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id y2so6877596wrn.11;
 Mon, 16 Mar 2020 10:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MLNLveD6L+cH6avKSQcqN3AiAJkE99e4WdFigQsP9tE=;
 b=cc/KfyNxH1udwLv/GxysgrFxyCGR7MoHAFg+yjnWH+XHZgkIHtu/ZXMhqn4hDjaf+Q
 +faD+0V+taSxrcG9GhVHBbhZEck94ccZ7kbmgImtmMSA/zcD13JfSP/pzNhSZObXvrUp
 j0KCtd1D1lbm4Qc1F6bQcNr71jxk2lXVOHhVoeunTdVOZJCWgDpR8w2UmezNdHr50tlh
 ZAlK6+Nbblsh6s18P06WlVKkk34Y6w5tESE6W1vVJmznVMBvG2RXpTLH75AYFirMtg87
 FH8uyM0f9/qlL14Q9L/FNa15bhFWEGrLH6L2aMbcur/nFVbqeoVRKiojLOiiDVqL/Cfu
 vk7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MLNLveD6L+cH6avKSQcqN3AiAJkE99e4WdFigQsP9tE=;
 b=ZErlqYibqosRVlyBOPz+8RPVJuwjqdWDxD1SLW6vKEFRoeaS8U4ymvWNOk++ulQeDf
 RV9+eUTL5vASPRDYK8oYRRYQOLOx9lZWi/DPYtlR5bOj86jY15sUu/GVWPD74EnW2/HY
 HECXwKELBjw0DDCaSUKO4pVyf1rs/tBe5cOTggn4n7wRpREuuJusnV4LRL1gyKYXaIme
 5anQSlUTZcjQcvON9oFwG22rdXe1vx2C2KiTI0BZzj5xr5dJID04/RVmJ0lmDM7JJrvg
 uVvuPwMOIYXYTzARKdKKoW4NDshjze4qKH8ltfXKZQ7EbhTTod/YeOctSwcJE1/ITgDG
 VN8Q==
X-Gm-Message-State: ANhLgQ1mQK3V4i3IxzNh7TMstUcTlupsgKnMpLRAlLM0n8jf9Km3RrYy
 wlCtboBV8KIyCrcLMkdCZ3gXCp0j
X-Google-Smtp-Source: ADFU+vs1VNAsqxRwQaM3OZDVeqqND1v9e+aTzeUXh86E6O8j108hjsIXs8dG9PQ8GnSWhYlnyBF6Zw==
X-Received: by 2002:a5d:5342:: with SMTP id t2mr526454wrv.104.1584380814347;
 Mon, 16 Mar 2020 10:46:54 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b202sm587440wmd.15.2020.03.16.10.46.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Mar 2020 10:46:53 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: fix lvds-encoder ports subnode for
 rk3188-bqedison2qc
Date: Mon, 16 Mar 2020 18:46:47 +0100
Message-Id: <20200316174647.5598-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_104656_964959_BE04791C 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives this error:

arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: lvds-encoder:
'ports' is a required property

Fix error by adding a ports wrapper for port@0 and port@1
inside the 'lvds-encoder' node for rk3188-bqedison2qc.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/
bridge/lvds-codec.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3188-bqedison2qc.dts | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
index 8afb2fd5d..66a0ff196 100644
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
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
