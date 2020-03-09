Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D7F17E168
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 14:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Vj31nscGIqfRKmZz2VnswUYE3mbjj64e3N7wVw/rWc0=; b=bzc
	a7xjXRe0uw/B3lFSbhiYXT7PM4hGTAIAQdaErDjoQ6tssKogB/nT0R3yIKUQcxl+V8PuukIA9Tuv3
	fZG1P3xxJpuI211PaB+IXK8PPlm7IeLs355H1pmQ+SrppY17Uz4bdwakv7aetSrvYBX3jrSPLu7ZG
	WAvnp8dIRIWKhuWq6cVXCUq8Gin1YoCxkrsnvBdz7ZT4YKVnSnWZq/2lsqk0f6O+Y3hupc3X8akEl
	k9OL5SRhX9fCyFIQTFvtfSiddvw5obirzseFI9G4e3Ir+5/8ortAhXmJZTxL7SYjrINtr/mdCOSuP
	PdDRcki8Fnfo+14m5j04T9q5jmS8wqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBIeN-0002BV-FN; Mon, 09 Mar 2020 13:40:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIdx-00025J-NV; Mon, 09 Mar 2020 13:40:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id s5so7288786wrg.3;
 Mon, 09 Mar 2020 06:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dfCIxcOnP/0No04iQLbl9qRZ5XXuFOMBWpVPNhSslK0=;
 b=TvE+QjV/Emq8Ejod4yOAQ3SjW85I9pv4uA1tuM280dy+KaH8L+rQ+0/nqV9rlllRl3
 6qc2ydP1JNclBtIw6xQYxivq5UnAgp5mqn86M6p0yx3dLW63cYSX4covJC3RKMZMuybD
 hIy5eZ99mJLKOhGh4sazWeUvxa2zaMc2mB636k5Cxh1N/W61/9fuv3UebPQUsTAVRR97
 MXqShPt2kM1mXpGDpgk6lPFb5Pfrjtq9rro7lxlewNqVlVPsO4cFvXm+sgduc5X09Z3j
 MNx3cZ3DpBPa5O5TIoq2kWX2Uycp7XI1cxY6swoxzmhcScv7iBBUFKWscptX7dtHAHFm
 W72g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dfCIxcOnP/0No04iQLbl9qRZ5XXuFOMBWpVPNhSslK0=;
 b=ooZwIVf1AbX3oqQi0Oo2ZQwxAh53sJJdqn5soXLCN60rKYrdzOxuyWXuJVKMUOftHu
 B94+nUYt+C5ugJGo+MXh4NGi3Dgk7gFRq1g6inYZdDc1fe90gWeFYN6ratuLkIQwwHek
 g3E8W6+6R5cIwNgMalyPX7XicUWP9Rqp7l49bIXY1N1rFTyKdWsGhBH52+m1QAu9YKj3
 NacdFfXAKvEeVfsQdGs6VttTrhdy9LJNPblF860+umqia+bEzgQRK51aUYAzvvXe0pBj
 Kxcs7AvvZHHHasAq+LtswYLy4I/90coAszOb481NideS1lzcnaMIujQ2hiWTivSodMH8
 GL5g==
X-Gm-Message-State: ANhLgQ3naTVi2aU0sIiQQAC2BVE0p88Na8hmQo99LSAi8Rs+i8epqtSG
 qkHMR73vTV6DX0DiRb1VvyQ=
X-Google-Smtp-Source: ADFU+vum0vFqAdXvHbJNX40jof7bCt99HKnCoeew+WNOZtw7BQ4UtkW70Jon8MgOr+2lGqDoKY28Rw==
X-Received: by 2002:adf:a419:: with SMTP id d25mr22152214wra.210.1583761227808; 
 Mon, 09 Mar 2020 06:40:27 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i14sm8888439wrp.82.2020.03.09.06.40.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Mar 2020 06:40:27 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH] ARM: dts: rockchip: remove #dma-cells from dma client
 nodes for rv1108
Date: Mon,  9 Mar 2020 14:40:20 +0100
Message-Id: <20200309134020.14935-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_064029_792799_27C55DA4 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we combine spi-rockchip.yaml and
spi-controller.yaml and add 'additionalProperties: false'
it gives for example this error:

arch/arm/boot/dts/rv1108-evb.dt.yaml: spi@10270000:
'#dma-cells' does not match any of the regexes:
'^.*@[0-9a-f]+$', '^slave$'

'#dma-cells' are not used for dma clients, so remove them all.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/spi/spi-rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 59295babd..fda16f976 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -120,7 +120,6 @@
 		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&pdma 6>, <&pdma 7>;
-		#dma-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart2m0_xfer>;
 		status = "disabled";
@@ -136,7 +135,6 @@
 		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&pdma 4>, <&pdma 5>;
-		#dma-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart1_xfer>;
 		status = "disabled";
@@ -152,7 +150,6 @@
 		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&pdma 2>, <&pdma 3>;
-		#dma-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
 		status = "disabled";
@@ -208,7 +205,6 @@
 		clock-names = "spiclk", "apb_pclk";
 		dmas = <&pdma 8>, <&pdma 9>;
 		dma-names = "tx", "rx";
-		#dma-cells = <2>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
