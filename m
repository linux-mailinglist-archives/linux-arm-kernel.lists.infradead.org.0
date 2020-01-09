Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9CA135AEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fq6arrbZKjw4GO9sPWC5UIlnRMyNCBThvvLAff4ET6A=; b=Xn1ZZQrliEU0g6
	6Y0Ow1yFGAGpCoaYAdEZ/tLekSN5gOttJOLb09m+A8p8JJxEOyTz3zN+YJLqeYrB5bk0vCTNVjoOm
	qgbssVJmD1Cp1McofulmuUMTLidi44jWivHMjP639cjNZUsEagNAJzBoM4DvQ/dPNrVhJR7cIgW/g
	KR5ZY2RD8ebAqtOM3JJ3lEwc0Fwb4Kb5A6UMqO/rt968R+YeiCoIglRRvIalDPq47Vv51p/peCHIr
	XjwJIhErkxC5WqKOgXp8N63Brf0GbmVvSzXUsU42RFt7DyDNvZTs3aAmlpu40b6hVXaFOscr4QWL/
	o2NzKjkYoWWchtWhvOCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYQD-0004lW-FQ; Thu, 09 Jan 2020 14:04:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYOa-0002bJ-2w
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:02:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id j42so7450089wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 06:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=syyZvcqrhkvwz9+9AfK0kisJzKRZe7HmGDtRCZtQx7c=;
 b=R3YuKmY+q+Hu/s5I4o2jG1sF4dIKnkXnWee0yEPCF2pvxhAVP6I7HAvNIR2UgGj/du
 qjbYiA7f6HIxfmwWUWRlo6zauXE1yk2mIdwAIIH0crY3pmkxpixfer4FJfAkrmDD6hMB
 g7WS4jjPxiM78ZGRrAoOFhZK+pXADwgjR4A5evRn/+p4iNEp3JrJDHXd71998Uxrw+yx
 04Nbkcjl8rBomUskduByR21gw/+TAXkWCw6MDlfTFnVbusoHw8CZYMqOBVFO3gLRVK0X
 cfvTplbLuy/u7YGUbUKkoHzoZeiLqzNQjdS74qAFj5h7IYLp/1iv7KSinU7vXUV1YTYs
 eGkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=syyZvcqrhkvwz9+9AfK0kisJzKRZe7HmGDtRCZtQx7c=;
 b=trfQ7JHmyWNTAzJbSAtZWwugXbdjpDoPf/tjFPX5KoflxkrxCN+SS/C/rn9SZNeqiW
 7F2178wvE5o2FEV1p50KmcihOfcgmWHmdoD6GFEaHa28FHDzw+T/U82ns9Wa8k28BHoM
 e+YAjekIRKtdjxNkFaIJPb15G+Y7oFpsBaM7WLBXiTTbUNWrgkdUmifVrtr2hyznTzq7
 7pzlgsg56cGkbtyamORFTvvamOHhC/PgixlLPFMdDBy0CdJoa72bCjboqxODRNQGO1+l
 8n6cLB8neHVxIcudpWauhwpVU60L4/fSEjHFdmt1uONiGqsbW6+JxyrvUxil5flRd7S3
 j0iA==
X-Gm-Message-State: APjAAAWVJLoJ98XNj5FWIpkku0WFhiqnlGHIJPN5jo3jbQYZE6AxOVkz
 PNgSwPI7as0w9inw40OKOPr3CFYrYMbuzA==
X-Google-Smtp-Source: APXvYqwQ6hMiArjqehmXFiPoI9oRbrRuf+K8jWXYPDm5kOzDnjt/nygyDYp+H7K246LRLunL2lYxaQ==
X-Received: by 2002:adf:fd07:: with SMTP id e7mr10930170wrr.21.1578578561226; 
 Thu, 09 Jan 2020 06:02:41 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id e18sm8201370wrw.70.2020.01.09.06.02.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 06:02:40 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH 7/7] arm64: zynqmp: Add label property to all ina226 on zcu106
Date: Thu,  9 Jan 2020 15:02:21 +0100
Message-Id: <d659d25f4ebfd1304e5a3b9b1a7a993525a0a2ae.1578578535.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578578535.git.michal.simek@xilinx.com>
References: <cover.1578578535.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_060244_172069_1EC5B585 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Label property is adding capability to distiguish chips from each other
when iio framework is used.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../boot/dts/xilinx/zynqmp-zcu106-revA.dts     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index d136ce1fb07e..6e9efe233838 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -253,60 +253,70 @@ i2c@0 {
 			u76: ina226@40 { /* u76 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u76";
 				reg = <0x40>;
 				shunt-resistor = <5000>;
 			};
 			u77: ina226@41 { /* u77 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u77";
 				reg = <0x41>;
 				shunt-resistor = <5000>;
 			};
 			u78: ina226@42 { /* u78 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u78";
 				reg = <0x42>;
 				shunt-resistor = <5000>;
 			};
 			u87: ina226@43 { /* u87 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u87";
 				reg = <0x43>;
 				shunt-resistor = <5000>;
 			};
 			u85: ina226@44 { /* u85 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u85";
 				reg = <0x44>;
 				shunt-resistor = <5000>;
 			};
 			u86: ina226@45 { /* u86 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u86";
 				reg = <0x45>;
 				shunt-resistor = <5000>;
 			};
 			u93: ina226@46 { /* u93 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u93";
 				reg = <0x46>;
 				shunt-resistor = <5000>;
 			};
 			u88: ina226@47 { /* u88 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u88";
 				reg = <0x47>;
 				shunt-resistor = <5000>;
 			};
 			u15: ina226@4a { /* u15 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u15";
 				reg = <0x4a>;
 				shunt-resistor = <5000>;
 			};
 			u92: ina226@4b { /* u92 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u92";
 				reg = <0x4b>;
 				shunt-resistor = <5000>;
 			};
@@ -319,48 +329,56 @@ i2c@1 {
 			u79: ina226@40 { /* u79 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u79";
 				reg = <0x40>;
 				shunt-resistor = <2000>;
 			};
 			u81: ina226@41 { /* u81 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u81";
 				reg = <0x41>;
 				shunt-resistor = <5000>;
 			};
 			u80: ina226@42 { /* u80 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u80";
 				reg = <0x42>;
 				shunt-resistor = <5000>;
 			};
 			u84: ina226@43 { /* u84 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u84";
 				reg = <0x43>;
 				shunt-resistor = <5000>;
 			};
 			u16: ina226@44 { /* u16 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u16";
 				reg = <0x44>;
 				shunt-resistor = <5000>;
 			};
 			u65: ina226@45 { /* u65 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u65";
 				reg = <0x45>;
 				shunt-resistor = <5000>;
 			};
 			u74: ina226@46 { /* u74 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u74";
 				reg = <0x46>;
 				shunt-resistor = <5000>;
 			};
 			u75: ina226@47 { /* u75 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u75";
 				reg = <0x47>;
 				shunt-resistor = <5000>;
 			};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
