Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E881135AE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAMAIP1PCD85XqQR816noun3wqzfVlaMz0p3WXVYluA=; b=Xpymt44APIaP/j
	qnySM1/XjhzFkZjfFh92/A0zglIwnNaBiSnDzPTkJKm2L7+uKqPjuVzg47MBZuh1JhmnfOnoa0KiM
	8HLnApTX55JzuQjDN9DG8PVA8uDxQd4QwBfI+mh4xUuZpP+dfPQSGJibfNUlwE2XB0PBxrG4Fkt5j
	tmQ5ESPRA7J0znWi4xdklMmx5trwogsoZugkVj5YOJL9uN/PHPCxTnakWRHWnVOOv8r0zUU0lWCyV
	Hb4widh8+3r0v+4XPZTOFTZQSSOLVPgGkmeBk80by5v5eYRn4fgptMJGf5QqmbkiDwjcpbur7a7FP
	tCJwWQyoCxoM45B4tzKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYPK-0003pt-3k; Thu, 09 Jan 2020 14:03:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYOW-0002Rk-KT
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:02:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id d73so3052393wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 06:02:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TG2woCcPtSsZFZqS+iMQDZj2SmEEY13YTogN1lSrI+I=;
 b=S4sXMfk+F+gdcwAtycqdg3QU1/70IIiYt/X5zC1hzn6ySGVkEbef9QKwbjbdkAcOqf
 i0FTXSC2JAS3fdR/cSRZeUVInuMQuEMQHBdZhJWKXFPVWPXHDB9jVhZEzX9t2ZQ0Ssb4
 y0kbJO54RhauW2HtjV2zMQbrJ4jRJQd7LTorh9AV1aSMc9sRLAcCgk4JA+40yiDpdTEX
 29REhzdrWXcAWEXD9+g5kiRFMvaN4UVHkotOFc7PUjckz8FstQbqms83nGNh1MQ9kgES
 vpcKm3FujgL9b+QVwWByTmTcPZ6OFXbJe//WX+3WxsLtg/yWcIXn5J7pvjUxrUXM0V1q
 XECQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=TG2woCcPtSsZFZqS+iMQDZj2SmEEY13YTogN1lSrI+I=;
 b=UhuvETYZ8tco12Ff1jnY2NjX6P0h1O9cToI2USm0J81+h9tdGwKz9XitG18GNXnzb1
 nhQqpiT3TLYxrKektIAUAop2vTKXF9fIatUoINGto3MbNuQ+QhrCOAL3BOzNjY0/GZnG
 5AkTTLkHcwQxRes9KPbQoCl8dhKgyXSAqINg0ChviRNmCyqNsmBIL1Gz8Q0W3lhmcpxc
 diHjNmiA2wdUm6X/bi9LV4AYgAVmtarL8tYcbqtbej7q+oRiFLluvVEMBk7DaPK1JxqY
 Iqo8OOYLM6iUHxRuLq48GA6ES3HCCiyc11AsEnAj5e2kda+lC4FmdXWXSbOPxD90HkLg
 7SDA==
X-Gm-Message-State: APjAAAXL2Z37c4J8KOfazCz+e9R8gjBiSPfOMR9BuJQFOMHHOPAhlgXh
 bfQCK0NDTl/4VPwOZZ0IwBL6UZzxxJSWbQ==
X-Google-Smtp-Source: APXvYqz4brO2seX3lqYhvSlG7cla7AZ6Z+wvs6Y13BLgKEhXbo4aCBJ3FUWhcd6wYqPVrae1SrOlQA==
X-Received: by 2002:a05:600c:2150:: with SMTP id
 v16mr4768848wml.156.1578578557466; 
 Thu, 09 Jan 2020 06:02:37 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id c2sm8264253wrp.46.2020.01.09.06.02.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 06:02:36 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH 5/7] arm64: zynqmp: Add label property to all ina226 on zcu102
Date: Thu,  9 Jan 2020 15:02:19 +0100
Message-Id: <a7febcff2f7674a4b5afbd5c5c360171e6658ff4.1578578535.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578578535.git.michal.simek@xilinx.com>
References: <cover.1578578535.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_060241_225799_9646F0E4 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index afdd0ff37900..4f801721564f 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
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
