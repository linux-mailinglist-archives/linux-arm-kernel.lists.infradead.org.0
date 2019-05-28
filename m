Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E18632D1EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 01:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p/PDVXyVgsfp9HUjsyg594R83rS2Y1akk9hob8uaOSI=; b=uNSqS3IGGarAP6fuq85GMi3XpF
	bGQiSkfPI25kmaRpqC5RHSlnKUQDxynaheRiLHaibXRoUDuEjDe7mikM/umlGoEdJPyKjthfMB6NM
	4nNULGPHJpxJ3RnEcjhjtwaZ8ukBUW+UGIAiEF8hREDAmaQhCyHmuL03BpQj+NmH7I1A0B5e+xdbv
	p90+jId8L949kQyXCOrBDwa8Gs+fXDjsCBDKAjvuOhE7CmS53Fnt9BBWMVaGg+46/uqcGej+FxUt5
	M+hg1kQB0eulANE5IvnPf7iH3p+lIbTLArh72pyPIp8ViXu7MPRWe8WtXuNSb0lnF0JlXWPcYw0Bn
	PEEWe+9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVl7k-0001nF-EQ; Tue, 28 May 2019 23:03:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVl6n-0000in-As
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 23:02:20 +0000
Received: by mail-pg1-x541.google.com with SMTP id h17so118240pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 16:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TYxqVL6ya69qBm4d49uLd/seawSvaqtAiTG+XLQaxa8=;
 b=MJ0SeKUfWyrctojOBtc2sUIRaYZjaPr/SfW6rtwAj13+sI6jDqQ8wpcYbyqf8JBgTp
 3K/2kDdfdDdKj8vAFxNjPobsLjXBIbGOgv56DB/ngzeAt00MKfI0WHMaZ2gaBCqKIMxL
 jEfgENpp3+blpCPEks+/TVdmAGZqqdyc57pGju8LIku/a1prFdsYMuygNueazoK0JS1f
 LhZ95SPE67XH8nyKJskl2AV43xc3sm6JzDA0DEHhKyWB2iWDZOOXDMKDLj3ePXCo5qWn
 nUNj1RYlOANAvKcncMGI+gdRrNfRTaxdzDMEIaMEcWhKz7dPKAPFOeey5b9+i1djez+g
 YuvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TYxqVL6ya69qBm4d49uLd/seawSvaqtAiTG+XLQaxa8=;
 b=mLrZA2vFjyAcKcFMqS3bIw+ril7Nr3vC4WQPXmMlNseHOLbNC7tGSY1q/4o09dPrCo
 h0H8t31OLg1Y5k8XDRe2u39DUTBzQrmgiJNbiQ4BO3Jmw/MdNYQMbayGMaB4Ecb9Wf6X
 loZQQYxyGiSa/ncn9/DMgizQTwCKJQIZHX7LybtBD0MDfka8vriDZe0Y53+TbUx6zAUB
 cDpP0BOaWi0085V1l8NRqpPQREbxmA+8M0qML0cUks0GxyWb6H7PC2yT6+sZN2ZKDUEW
 9Qvn/xeWc8PNFkMs9MhE6CClXeV5+VxTMUi+aYhK5mvJ3nKjQ7658XQLuf19ynZ1KuiX
 KhBg==
X-Gm-Message-State: APjAAAWBciyVu3ZT8rchu51sZUXTi2e1pn68P4s3tRdoGlayVcDM5hDs
 +PvGQoy1m2nWz4EKi8dqnD19lKyC
X-Google-Smtp-Source: APXvYqyO9aGngsIKVqNqsAs0/kG5aaHpoSPbIa3wS0StMA1Ypw++h0bJTbJ1hAlqIYYRutjO6nnBmA==
X-Received: by 2002:a62:cfc4:: with SMTP id
 b187mr147977844pfg.134.1559084536452; 
 Tue, 28 May 2019 16:02:16 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm14369573pfh.13.2019.05.28.16.02.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 16:02:15 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/7] ARM: dts: BCM63xx: Fix DTC W=1 warnings
Date: Tue, 28 May 2019 16:01:32 -0700
Message-Id: <20190528230134.27007-6-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-1-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_160218_104854_9800D8DC 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Brian Norris <computersforpeace@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the bulk of the unit_address_vs_reg warnings and unnecessary
\#address-cells/#size-cells without "ranges" or child "reg" property

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/dts/bcm63138.dtsi    | 9 +++------
 arch/arm/boot/dts/bcm963138dvt.dts | 2 +-
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/bcm63138.dtsi b/arch/arm/boot/dts/bcm63138.dtsi
index e6a41e1b27fd..9c0325cf9e22 100644
--- a/arch/arm/boot/dts/bcm63138.dtsi
+++ b/arch/arm/boot/dts/bcm63138.dtsi
@@ -41,9 +41,6 @@
 	};
 
 	clocks {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		/* UBUS peripheral clock */
 		periph_clk: periph_clk {
 			#clock-cells = <0>;
@@ -94,7 +91,7 @@
 			reg = <0x1e000 0x100>;
 		};
 
-		gic: interrupt-controller@1e100 {
+		gic: interrupt-controller@1f000 {
 			compatible = "arm,cortex-a9-gic";
 			reg = <0x1f000 0x1000
 				0x1e100 0x100>;
@@ -125,7 +122,7 @@
 						  IRQ_TYPE_LEVEL_HIGH)>;
 		};
 
-		armpll: armpll {
+		armpll: armpll@20000 {
 			#clock-cells = <0>;
 			compatible = "brcm,bcm63138-armpll";
 			clocks = <&periph_clk>;
@@ -144,7 +141,7 @@
 			#reset-cells = <2>;
 		};
 
-		ahci: sata@8000 {
+		ahci: sata@a000 {
 			compatible = "brcm,bcm63138-ahci", "brcm,sata3-ahci";
 			reg-names = "ahci", "top-ctrl";
 			reg = <0xa000 0x9ac>, <0x8040 0x24>;
diff --git a/arch/arm/boot/dts/bcm963138dvt.dts b/arch/arm/boot/dts/bcm963138dvt.dts
index 8dca97eeaf57..43a5f78acd5e 100644
--- a/arch/arm/boot/dts/bcm963138dvt.dts
+++ b/arch/arm/boot/dts/bcm963138dvt.dts
@@ -16,7 +16,7 @@
 		stdout-path = &serial0;
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x0 0x08000000>;
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
