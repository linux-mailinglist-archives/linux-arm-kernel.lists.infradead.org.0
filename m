Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A9C17CE83
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 14:49:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wlidkfZHCC/0LAbjMXpqNnlzx4TN9gRJKqIaI1zxpZ4=; b=tq4ANwPhot/lZXoZFaZheiYdEI
	MfkZR6aqRE5hro+UJQAiUaRc+s3X89XhnW8CfYrRTmxvGykSvp8UZpoltUyLTGYmMYzGmbl6xjLsj
	58AUUBRK9nvHEgc98y4pR5jz0VWag4KJIWtHSwJFUc4bbuL060tubdFTNqRPOy7IWdOVxB4MgLfHA
	N1Ugl2ac53YpXR7qE1eyQvEdZ3rL9Nl0lQ4SfziPY1pCnUmsnpAIrqxfvQ5XH0brTTA8u28HNnddD
	VuvTx1kg/7eXiELZv8eE7CSqQxffmI7Qvj+VMCn2hJs6+wdxRdb3PHOefCR8eMWXYTicfSGdA+9R/
	ibmDkg6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAZpf-0001eW-DQ; Sat, 07 Mar 2020 13:49:35 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAZow-00019K-Vi; Sat, 07 Mar 2020 13:48:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id a132so5393294wme.1;
 Sat, 07 Mar 2020 05:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2imEdS/PBWfabOn+dN51LVNZ4eyxGJ7p2pvJGQCDbMA=;
 b=Zq0bI2jEf9UR4l3dw4/5Q20mWx9OFcm4BXeRZihBnHD77OfRm41Te+m7y0b3E3wYk/
 OW9F+mRGvUT4/yHOWoOTXtzcWqaHYuCQL63AYI+wJhPTdn39ROdOP6oezU8c4g1wX0jP
 32O33kibj9C6ND4j4Lw0ZJWiQ96pCUmfsSCDy6A8UjORaRnVto9vAHJzriQCpabDNW2n
 +4UhR1aXzOoc8E4g2ymLuOBwO/mYavCGa0lwGxexZHcfePDNh3E6NGaEk/sJoCmfv09G
 Om2iD1R39JblW6s5FVs+hbRTjFcv/eXhUjmdsF1PD8j4chZMPOMsaDRrXS7TozTHSGsy
 m+kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2imEdS/PBWfabOn+dN51LVNZ4eyxGJ7p2pvJGQCDbMA=;
 b=DNDtqZ6egVxJw9Wkf7EXkhvG19cDOh3lW1m2FmiXTvgLmxHZpfojBgXn8I/f2E4ez/
 bejA+J8n24gncCoJ1uK+iARLRkv7FjlQEugXbBJlRT/H5SZnhPBC/hHRRBTCR7vSG7Bj
 V6mNduSFLjiD7WRth6Jo9nbEh+1LHw3mkNFiSQeuUcoYb+Rq2QAgJfrnpWqp3LM+BY2V
 W42xcYHKjVQqzkMOs45TG/GmAzkC0rD+MdYLBqEMPjwQomSah0eoL7gWk6QaLFkcf68u
 q2QneXwQuicjpUbceslD5hjXCfZ3BSCdSvJOGIta53b7ngrd/8NR3lbo1iYc2Gx2EHrf
 eWog==
X-Gm-Message-State: ANhLgQ04TP2sn2os/m9K1Swsgtmui1s7MxuNZAHaNhvbWFz1LI1ifez8
 zrZt4YHd/xn7lpYc6+JTSWw=
X-Google-Smtp-Source: ADFU+vu8s4n5Jiy9JVKXd+Qg1OTKkxCBR1qUX5tnXAgdtgg4qZfDvCaWow+W0/h6haum4suXa5MHVg==
X-Received: by 2002:a05:600c:290e:: with SMTP id
 i14mr10103753wmd.139.1583588929397; 
 Sat, 07 Mar 2020 05:48:49 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 9sm11767265wmx.32.2020.03.07.05.48.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Mar 2020 05:48:49 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 2/5] ARM: dts: rockchip: fix rockchip,
 default-sample-phase property names
Date: Sat,  7 Mar 2020 14:48:38 +0100
Message-Id: <20200307134841.13803-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200307134841.13803-1-jbx6244@gmail.com>
References: <20200307134841.13803-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_054851_064988_02F2FA68 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
for example this error:

arch/arm/boot/dts/rk3036-evb.dt.yaml: mmc@1021c000:
'default-sample-phase' does not match any of the regexes:
'^.*@[0-9]+$', '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
uhs-(sdr(12|25|50|104)|ddr50))$', 'pinctrl-[0-9]+'

'default-sample-phase' is not a valid property name for mmc nodes.
Fix this error by renaming it to 'rockchip,default-sample-phase'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036-kylin.dts | 2 +-
 arch/arm/boot/dts/rk3036.dtsi      | 2 +-
 arch/arm/boot/dts/rk322x.dtsi      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-kylin.dts b/arch/arm/boot/dts/rk3036-kylin.dts
index fb3cf005c..2ff9f152d 100644
--- a/arch/arm/boot/dts/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rk3036-kylin.dts
@@ -319,7 +319,7 @@
 	bus-width = <4>;
 	cap-sd-highspeed;
 	cap-sdio-irq;
-	default-sample-phase = <90>;
+	rockchip,default-sample-phase = <90>;
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
 	non-removable;
diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index c28d293df..2226f0d70 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -263,7 +263,7 @@
 		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
 			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
-		default-sample-phase = <158>;
+		rockchip,default-sample-phase = <158>;
 		disable-wp;
 		dmas = <&pdma 12>;
 		dma-names = "rx-tx";
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index b98579035..8ad44213f 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -698,7 +698,7 @@
 			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		bus-width = <8>;
-		default-sample-phase = <158>;
+		rockchip,default-sample-phase = <158>;
 		fifo-depth = <0x100>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
