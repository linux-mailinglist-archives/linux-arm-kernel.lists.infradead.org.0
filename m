Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B06183754
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:23:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9u7CnwugU8Jc0WT8vc4cC/rfQx+z9ZHhSQoOiZesb8g=; b=lCc35I8Zh8NHJ8O6nG/1Ol3b4c
	1vCLTdUEsC7grikpQe+SVDfE+o0r53cgbhdl2/y5DQMNRqv8JUu2FbFVka2OIzEkowpPj/5UWHvmH
	ELwcX7P5SNYp6KRCXWV/6j5L5UmuKeNdxvq5EFy+e6cC0HTjkM5q5zrfj4imuMQ4ldWfprmUj/emo
	irUHKe2Fi8trEaP+IJsGbbHEEa6OgGz2LeuPPxQvkt4NgHnxdakOlPvObPf03RD/g3xoWe5HaK/y7
	ulsonTqF3miV0p8CE01s/Bke+vCDlcs2WfxqDSZwiVaECPUTaBIPB2CTC37qwIu+VqRPvH3uWVD/e
	MkPvdapA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRYE-0003yH-5u; Thu, 12 Mar 2020 17:23:18 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRXl-0003ji-Nh; Thu, 12 Mar 2020 17:22:51 +0000
Received: by mail-wm1-x342.google.com with SMTP id n8so6978180wmc.4;
 Thu, 12 Mar 2020 10:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AsK4lZiLvTPVWly7O3MtjFY6qfzheagg9cYmbmhqOKY=;
 b=nPGM5SxvKf5b6JPPp18z82FgPVQEaflZ27VlAmUFrua6iJ5ra4vp4WuhpL6duNYOsG
 OZt0sJAFBRs34tnwiNPSNAumz2NlmxBfT0ixjWCV/2z39jvzIFlS9gPZ+8q6/PiH/Ul6
 3nAyRLPlh8uAz0A1j+GhNlZ7/qAmCoqjsThw+E/n6Uojpo/9jdB4a9L6GObTE6MkBUEW
 3DAdfgaFpab/HPQgrWaggLSWUokxN9gnySRkoec8/QxPfJi2zj77pvftmMQu81ycha/i
 7T0BVdxox5wLeAhNlP3QboI2CpxdX/VcNcLoSqV9tIR/AHIC9AR2K843AXIXFcihgtMg
 aSYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AsK4lZiLvTPVWly7O3MtjFY6qfzheagg9cYmbmhqOKY=;
 b=LwqAaMAzd7xMRAfibXtleY04JVAUNMi6IbmFURT4DjAKLrsmHqonQZXxvrnhxMpyr/
 6aetz487FEKb6P9rY1rc7XSdmookPhVOlnyC42IdCWeJqop9jer0ptKj9keKI16sLeqa
 SV41KAm1R64+r67iKYFbxbfO7u7LwSBm98jgfe6VUNqxTpbRV6qAeL7l55smpQ805+fb
 TOHqauujGOlZq0qXAeJFVmDcoKG52tOZXt9hfMWTQDicVKFnOqEz5rP4vhyJCoB1HB6+
 MFOMymJRvHQjA3e4NtG+OfZ5Be7JgQoj3w5Bydh8CnPpWrwkQzMRaoUWAMlI0aFvJZke
 2fYg==
X-Gm-Message-State: ANhLgQ18RBNFuCiDLFeBIScLc4UEYyNkkfiCdcR75IoI6t82sNZCl1wG
 NREwcLR9/q8d/F4E/l60TJQ=
X-Google-Smtp-Source: ADFU+vsUmojL2gcA4UagPD4gg2rCKhbMtgcVCkmNLqEkRNDJPORZpiblkgYC9vuknxd30gcWUo508w==
X-Received: by 2002:a1c:de82:: with SMTP id v124mr5711167wmg.70.1584033768625; 
 Thu, 12 Mar 2020 10:22:48 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id d7sm2064492wrc.25.2020.03.12.10.22.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2020 10:22:48 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] ARM: dts: rockchip: swap clocks and clock-names values
 for spdif nodes
Date: Thu, 12 Mar 2020 18:22:40 +0100
Message-Id: <20200312172240.21362-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200312172240.21362-1-jbx6244@gmail.com>
References: <20200312172240.21362-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_102249_767895_59388742 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Current dts files with 'spdif' nodes are manually verified.
In order to automate this process rockchip-spdif.txt
has to be converted to yaml. In the new setup dtbs_check with
rockchip-spdif.yaml expect clocks and clock-names values
in the same order. Fix this for some older Rockchip models.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/rockchip-spdif.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3188.dtsi | 4 ++--
 arch/arm/boot/dts/rk3288.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 24abf214a..2298a8d84 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -182,8 +182,8 @@
 		compatible = "rockchip,rk3188-spdif", "rockchip,rk3066-spdif";
 		reg = <0x1011e000 0x2000>;
 		#sound-dai-cells = <0>;
-		clock-names = "hclk", "mclk";
-		clocks = <&cru HCLK_SPDIF>, <&cru SCLK_SPDIF>;
+		clocks = <&cru SCLK_SPDIF>, <&cru HCLK_SPDIF>;
+		clock-names = "mclk", "hclk";
 		dmas = <&dmac1_s 8>;
 		dma-names = "tx";
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 485234f6a..07681f1f0 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -944,8 +944,8 @@
 		compatible = "rockchip,rk3288-spdif", "rockchip,rk3066-spdif";
 		reg = <0x0 0xff8b0000 0x0 0x10000>;
 		#sound-dai-cells = <0>;
-		clock-names = "hclk", "mclk";
-		clocks = <&cru HCLK_SPDIF8CH>, <&cru SCLK_SPDIF8CH>;
+		clocks = <&cru SCLK_SPDIF8CH>, <&cru HCLK_SPDIF8CH>;
+		clock-names = "mclk", "hclk";
 		dmas = <&dmac_bus_s 3>;
 		dma-names = "tx";
 		interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
