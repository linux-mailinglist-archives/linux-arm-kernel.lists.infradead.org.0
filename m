Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D563173346
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 09:49:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EBUacXuMJRDOTOm8phQuUem8a+VojgPpBe2rsMHyEfw=; b=Lp/
	Kejjnd8BW1V4XtlNoaZ5Hgr4/snZwr6/Czb0sCSXd5GECwn8YSSFyRH7HIRQSRzJXJNNYVzfMS8cm
	3GcEqVqydcVd9PUqPOaPMLrEMPric9djIpkN9vxaE8omMVl38f34thj4E3/R6oQ60SzKHC7VwgHRE
	+gGhLDH8794F0L5JK0mtTRJbpQIn2Iecd/fmSEnACf66S/UIPPQFaQMv5bLH6gR/Xedwip5+nGpu4
	bnu+YRNkUpgS82Jz/IJBEKvI7g/qr2MS/TQ+Kj3pbuRCWqHz0pvCG2H2CHIyhmvvnsZJ4XNze77nL
	ORWhPhxJw/PzMK5cJamffeQTgAojh+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7bKA-0007n4-82; Fri, 28 Feb 2020 08:48:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7bK0-0007mZ-H3; Fri, 28 Feb 2020 08:48:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id m3so2319924wmi.0;
 Fri, 28 Feb 2020 00:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=kSTO66soFbvc/5Jm/tEDfZFDRH8dNbe8ver6F7pISSU=;
 b=t8nLVzUAuYfbtG81ZKfM6k4Iiq22yAcFELg8c8fyrEXnuq3RHaTsEVHWCRrcekNowk
 zwoaEr5b5s6BsOhLnMu9vvrFjpmZL3ydmLdEqkP/Mdju3GROnN3RgJgS3FWS67RRebmn
 QV/qBZ2xvvuxMB/Lg4vxXzkAvlXBl2Msegis4TD2qOVuYQv3SDnw9aNU3uggXdZejCVg
 ebQzb4QZD20BbpcsqzSRifFqAl68kzyTIGdK/rfoY0fYJ3wQkHgt/NUH0L0ytTXmlT3O
 dFVJGkGWudoMVg0UHBWRKFBIbHKJbwiGzvUsDs/7L3u3w5r+hKqUbutT8u3geyTges5B
 7Iig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kSTO66soFbvc/5Jm/tEDfZFDRH8dNbe8ver6F7pISSU=;
 b=bDqI3dKahz8mm+gxaa28fSKgJRutD6vEaKzD6CltOiNdNwKoZ4VIrVoNiQBFB9RO62
 40SlYftL6TygZDYqbV6Ij8OLhpDM1HS8L3Kmdxh9+UxHe5eGgcozQdP2xfuTa3hqW66l
 KgfRexVv9K1kfFookTbMFJIqvL+FDyBYlInZ5ek1HOsoeXK0DJIx1DcVbqN7hn5bjgR3
 BuUaR405m9VFCsit4Y7WCpFw5hX2UOXrpp6hwqaWfEAlXHaSHdko8iGiZdRRtCxw2SvA
 BdkvSF1T89UcTlzh/KIe+4PwWWDJ+iAptyatr/86UJmLGE60mjLi2fsgTxCpm1uk3L6b
 78iw==
X-Gm-Message-State: APjAAAWpa2cXC6iCyFoPM+Z4IcgNTPVlnXzatQRmw/rHF12YmM5P3ate
 KouJtt82VV+16hepYOmKA+4=
X-Google-Smtp-Source: APXvYqyqHsz+mxqVS4aLRQAeppLeop3ADBWwBXJvRWEgLA6x8ZR5U0eUOgB2g79t4bbxWiNTpy4Ayw==
X-Received: by 2002:a1c:2b44:: with SMTP id r65mr3659938wmr.72.1582879714750; 
 Fri, 28 Feb 2020 00:48:34 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id y3sm1209337wmi.14.2020.02.28.00.48.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 00:48:34 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: fix cpu compatible property for rk3308
Date: Fri, 28 Feb 2020 09:48:27 +0100
Message-Id: <20200228084827.16198-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_004836_593394_5DC429B8 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example these errors:

arch/arm64/boot/dts/rockchip/rk3308-evb.dt.yaml: cpu@0: compatible:
Additional items are not allowed ('arm,armv8' was unexpected)
arch/arm64/boot/dts/rockchip/rk3308-evb.dt.yaml: cpu@0: compatible:
['arm,cortex-a35', 'arm,armv8']
is too long

Fix these errors by removing the last argument of
the cpu compatible property in rk3308.dtsi.

make ARCH=arm64
dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/cpus.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 116f1900e..3bd5bc860 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -40,7 +40,7 @@
 
 		cpu0: cpu@0 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a35", "arm,armv8";
+			compatible = "arm,cortex-a35";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			clocks = <&cru ARMCLK>;
@@ -53,7 +53,7 @@
 
 		cpu1: cpu@1 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a35", "arm,armv8";
+			compatible = "arm,cortex-a35";
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
@@ -63,7 +63,7 @@
 
 		cpu2: cpu@2 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a35", "arm,armv8";
+			compatible = "arm,cortex-a35";
 			reg = <0x0 0x2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
@@ -73,7 +73,7 @@
 
 		cpu3: cpu@3 {
 			device_type = "cpu";
-			compatible = "arm,cortex-a35", "arm,armv8";
+			compatible = "arm,cortex-a35";
 			reg = <0x0 0x3>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
