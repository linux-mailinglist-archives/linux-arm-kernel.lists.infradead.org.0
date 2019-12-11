Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B346811ACF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MDat/JQtUKUUB+R4ZefsdbvQ5z91lqwZHlLMfsRSMYI=; b=e4g7zKxhbJPQrR
	JiZZWMrgPhbSsGya57HOI7s+Rq6OTmOz5mtc/eWZyPpNKf0tPwQ5+/Uq1sKe9PvulAzIcJGY5PXyV
	lPnxkFNJCfnpazAj2HgEVM/IQRupBkxC7/Iak03NkNCKIEp6UmjH4Tf+BRAWypi7mYCaB3S5qtFjp
	zXgHDCq7qJUWw4JOWeKR6KDks9KOK0YsZbuDN2KvZQe4yiGxVynKq9u/Qf+CS3O87I3ciKChuzy0B
	ncgktaAw+h3wqkzyvFSmXc4tfoSZwlY+vO/PrtaxRzEHXCbh5bxm8EUNcDpdDcLxQrJqaX9T5UxJx
	Xjl1xYnc8iyZj8lnSVIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2cA-00080i-H5; Wed, 11 Dec 2019 14:05:18 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2br-0007zm-6G
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:05:00 +0000
Received: by mail-pj1-x1041.google.com with SMTP id w23so8995790pjd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 06:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UuYwx4FSzyLc9U1xa0BZGom1pgq8tugsRTYhO5cDG3M=;
 b=PYVSQx64S9qCKQW5/VoLb1Dfu5FCANe/WwCYgMrLw68aBbp1xG/lcwq7mn5cQHYTsI
 MDAPb6c9L1Yz82iophl6y5FwYZEeoko/Dcw4tAxaC0D0tegsbw512X92+8iauX9yg6PV
 t/d1EK920x08nLMdgl6I6pmxJNQKV0mmNqUay1Du8fdV4Ul8RkT+VVWXoH8O9b8fyDHJ
 jX2AjHFDB4KWcLfQSQXiKXC/SV1mWvpNqAdmSqwf1Mo51UoN96SKiUFhWG2ZE3vyDJBT
 psDGGXUVxVYFO7VRRuDb1kB/Czx9bjjaF6sNyOGk7nc+vDsXqUJt6GIsnvjhJKZLoADC
 xsyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UuYwx4FSzyLc9U1xa0BZGom1pgq8tugsRTYhO5cDG3M=;
 b=D4oHUEUGb9wy5UZSfiKsmGCVxr18Jjdquc2EAuCQbSRO8Ff/v9F3nmneaN7k6vkdha
 2/kUs2bMmVWT6Si1OITj8A7tyMpK/yvNrOhryqCuPYhLgOW6X4KFkRBP7rWKDYkhAYxF
 Q7K0gur3F+5ckTieMQJUTcTFdG3WN/CE25Qe8WCvWISSPSXxEv/iSHsYzXkoEvRAk4au
 ZRy0WnrtUqdYTF/8JFqNa+7oLl+2vvhjJNUDBj0fBZVW9q3ozzqY8FFdhZBIKShfvrDz
 pRDgKAL0JspYHbrVVOw4Uu9NfSAnlMOcl8RkyAKMgsomK+UTnf+0qSi5hXgN66hTqzCl
 E2WA==
X-Gm-Message-State: APjAAAVF7LZnHeiLtBdgNYGgMh5kJDKpqYht4UjICIOXaSGBRlXYvxdw
 Q4tp1sA9UQlRg8ArRINo60q+eeGuIsw=
X-Google-Smtp-Source: APXvYqyOYK6C8UMov6vErx0/6/xfChBgejaGNR6iloblC4SH/KvL/ZwlKkh475bl99B63WdJu+zxIA==
X-Received: by 2002:a17:902:8216:: with SMTP id
 x22mr3374184pln.334.1576073097671; 
 Wed, 11 Dec 2019 06:04:57 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id o12sm3489656pfg.152.2019.12.11.06.04.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 06:04:56 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] ARM: dts: vf610-zii-scu4-aib: Use generic names for DT
 nodes
Date: Wed, 11 Dec 2019 06:04:43 -0800
Message-Id: <20191211140444.7076-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_060459_255627_723DFB73 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The devicetree specification recommends using generic node names.

Some ZII dts files already follow such recommendation, but some don't,
so use generic node names for consistency among the ZII dts files.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Cory Tusar <cory.tusar@zii.aero>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Changes since [v1]:

    - Rebased on top of 12/05 linux-next

    - Added "ARM: dts: vf610-zii-scu4-aib: Add node for switch
      watchdog" to this series, which was previously accidental and
      implicit prerequisite for this patch

[v1] lore.kernel.org/lkml/20190824002747.14610-1-andrew.smirnov@gmail.com

 arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
index d7caf618f980..a02c7ea3b92d 100644
--- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
@@ -407,7 +407,7 @@
 	pinctrl-0 = <&pinctrl_dspi1>;
 	status = "okay";
 
-	spi-flash@0 {
+	flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "jedec,spi-nor";
@@ -420,7 +420,7 @@
 		};
 	};
 
-	spi-flash@1 {
+	flash@1 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "jedec,spi-nor";
@@ -509,7 +509,7 @@
 		#gpio-cells = <2>;
 	};
 
-	lm75@48 {
+	temp-sensor@48 {
 		compatible = "national,lm75";
 		reg = <0x48>;
 	};
@@ -524,7 +524,7 @@
 		reg = <0x52>;
 	};
 
-	ds1682@6b {
+	elapsed-time-recorder@6b {
 		compatible = "dallas,ds1682";
 		reg = <0x6b>;
 	};
@@ -536,7 +536,7 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	adt7411@4a {
+	adc@4a {
 		compatible = "adi,adt7411";
 		reg = <0x4a>;
 	};
@@ -548,7 +548,7 @@
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
-	gpio9: sx1503q@20 {
+	gpio9: io-expander@20 {
 		compatible = "semtech,sx1503q";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_sx1503_20>;
@@ -559,12 +559,12 @@
 		interrupts = <31 IRQ_TYPE_EDGE_FALLING>;
 	};
 
-	lm75@4e {
+	temp-sensor@4e {
 		compatible = "national,lm75";
 		reg = <0x4e>;
 	};
 
-	lm75@4f {
+	temp-sensor@4f {
 		compatible = "national,lm75";
 		reg = <0x4f>;
 	};
@@ -576,17 +576,17 @@
 		reg = <0x23>;
 	};
 
-	adt7411@4a {
+	adc@4a {
 		compatible = "adi,adt7411";
 		reg = <0x4a>;
 	};
 
-	at24c08@54 {
+	eeprom@54 {
 		compatible = "atmel,24c08";
 		reg = <0x54>;
 	};
 
-	tca9548@70 {
+	i2c-mux@70 {
 		compatible = "nxp,pca9548";
 		pinctrl-names = "default";
 		#address-cells = <1>;
@@ -625,7 +625,7 @@
 		};
 	};
 
-	tca9548@71 {
+	i2c-mux@71 {
 		compatible = "nxp,pca9548";
 		pinctrl-names = "default";
 		reg = <0x71>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
