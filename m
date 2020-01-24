Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08198148C36
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:34:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=piqGMc6pMKaslizYxZ+asvDwHOuLQiCvZ2f5VaBKvnM=; b=AuoO1AlQKm0LJl5ynWg1+hwbAc
	6CM1G+l1EuwYCIajBfhB550PvkLjhNLNnL3lIwxCC817s8EZXG3RUwvLu20r6Q0gjP/we48ag0a/9
	/Y+DKDUD5HMSwH9GnX0CP8CDiDegaJu4ZUCTA7Gf1hql4tgdQ33wzgNnTmxxlWG0NdxvTA7/mC62s
	h9SQbqb99Bq9qIwkvrC2xWJ1qTFYZljENIrDPhr4ctOjr81kIEcsYRxDsNIybzoalLZalH1kbdBEv
	boq+TMNU9XSKbYIcfzbUnfQC2LeZYy8ttsDWrCPpuwKk3vvBlMW7VLVfFtDxdKWihyD+MjxSLqAkW
	g4Gic45w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1uA-0005fv-H3; Fri, 24 Jan 2020 16:33:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1qb-0002VG-PO; Fri, 24 Jan 2020 16:30:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id c14so2701042wrn.7;
 Fri, 24 Jan 2020 08:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MtdDB+Ad0iU6rgEXiY5ujEmZtuAHwTecRPkyhRx/V2g=;
 b=aypsDmrwK+xusSVzi2cZtehPj6u2rMYRKcLIcd7vaZKL9HP3ckHFO7r/vJcuSZRKUP
 MiwlmPlW2p0W1mVmSYtktOpTy8maE6t1NQBtEdCjYGq0y6q038wHvYwM7go3ufq4MQHC
 WiTZB1YzTgRPDQG3JhNHenWlhlbgC4jnLXwF1iLCKsHDPhrPQBVY1Kgt7+G1kw6sPrxL
 H5m6wpSxHXCjZIORK5n7hH3MnwSMsm88lWdnqpMU7Aa++P5WbH/B+8Fv9G/yt1jMLFnZ
 Pz9sVgYp+e26LgWBevXEdoXFJlfa93dx5o9ywNTN5WguJJ0vYnwnqpaSycneBzh8GStZ
 /U0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MtdDB+Ad0iU6rgEXiY5ujEmZtuAHwTecRPkyhRx/V2g=;
 b=taJ8492pp3d0klZ6wazsgFZSlgTfWil6BKsyDSmXS8BAOgm4zMf91Zy2t5hTInL8+M
 qTQshgVPwwPgSeyobXOsND2LDenHok8cNk6w6MzB0SkCGv8it6wudnVqhNSsBCQ793tH
 Wbmyy09bseuqdBmN46VpJRWUHaDVPNKs3kzBCZZvRIaOTQZShEwULoHA1Ea12gh3loEl
 g4w4TnC0kSLJ/6iZsFnC0l0KvWQDhSEXMjAFWH/4h85pLsSFlh+wGxpMg9+UbWIx3GGr
 9uW25Jr8Qwl2UtDxUyWqrLl6jRwmGWhQJsEre4sTFbHamoFxl/ZvK1rLVbJM9NKJq59M
 l5Bw==
X-Gm-Message-State: APjAAAUxZ2BPK/z9/vtw2oVoJa52/q4ADh8qnq2GseeEfYzOZ2gV5Wla
 3m0mi4hXQQ/PlY25EDBCHTE=
X-Google-Smtp-Source: APXvYqxFNPosxjrpJ4H+Ptr3l58QXTCusDkQ0TCFfKpKOQXiyqk42bKBWvVxtpm37CGxyH9wfVwwKg==
X-Received: by 2002:a5d:45cc:: with SMTP id b12mr5002968wrs.424.1579883416466; 
 Fri, 24 Jan 2020 08:30:16 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 205sm1977304wmd.42.2020.01.24.08.30.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 08:30:16 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v2 05/10] ARM: dts: rockchip: add nandc nodes for rk3288
Date: Fri, 24 Jan 2020 17:29:56 +0100
Message-Id: <20200124163001.28910-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_083017_935626_EC3DA5E8 
X-CRM114-Status: GOOD (  10.60  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, yifeng.zhao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jianqun Xu <jay.xu@rock-chips.com>

Add nandc nodes for rk3288.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 415c75f57..ebb833a1a 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -30,6 +30,8 @@
 		mshc1 = &sdmmc;
 		mshc2 = &sdio0;
 		mshc3 = &sdio1;
+		nandc0 = &nandc0;
+		nandc1 = &nandc1;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
@@ -596,6 +598,24 @@
 		status = "disabled";
 	};
 
+	nandc0: nand-controller@ff400000 {
+		compatible = "rockchip,rk3288-nand-controller";
+		reg = <0x0 0xff400000 0x0 0x4000>;
+		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC0>, <&cru SCLK_NANDC0>;
+		clock-names = "hclk_nandc", "clk_nandc";
+		status = "disabled";
+	};
+
+	nandc1: nand-controller@ff410000 {
+		compatible = "rockchip,rk3288-nand-controller";
+		reg = <0x0 0xff410000 0x0 0x4000>;
+		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC1>, <&cru SCLK_NANDC1>;
+		clock-names = "hclk_nandc", "clk_nandc";
+		status = "disabled";
+	};
+
 	usb_host0_ehci: usb@ff500000 {
 		compatible = "generic-ehci";
 		reg = <0x0 0xff500000 0x0 0x100>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
