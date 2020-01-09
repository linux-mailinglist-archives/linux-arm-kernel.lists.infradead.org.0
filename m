Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D65135AE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goT20a2P71XAyh0b+lSzKdW7SsnoOnus/m6gS7LX5Wk=; b=SdXdR5pmWl8ns1
	yYsXhZOYBamXCkqmpx8/dgDeAklWVVls6q3I/c8jkFRzrqUBHVe1iUGXYeDzyyWC5Gy1kbpkNU6It
	wcj5OApAhG+Ecan3GUcFdIvgKI85iZcEwgtLNvMpOId7SnabBscC+GwFqRxcnUp0RBVr9EULnuc9w
	2Oaa7LbW2P5rQOXmAuq9+HkORcmej9AwJs6u/l19sMytUTHK5LvjX1t73BrD+nDxAC6w7fhu5zhhu
	EI9d9OxKIvBHPZqnRah3zTAHXpB90IU4PxuVCn8beQDssQ9j7t6DDZkNHH5eI6ZXR07dYtYeOT+Wy
	X0rt22FgWvhyZWCYmrMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYP5-0003Hc-TR; Thu, 09 Jan 2020 14:03:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYOP-0002LP-D0
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:02:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so7567324wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 06:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ez/V5Sramq36JD+7yzUO8B3/5yvtgJXa0dIlo6f2ItU=;
 b=EFYCDlevIXgpVzJz4R0vNmH7DhbH9kIJsZrFuM8/EGloTmw4G51U6vBlFjizcMqdp5
 eXE/k2nuFbYPkhfkZAmVNOas6cvS+d3xn046VK8Zm0Hr5D9o5tw9YiparHlfmSSMX3Ru
 MbLFw/VWQXeBCrqF7dhfYutS1TeqQvuT5d8+T6dRoSzSqgc3/A3Pm9Tb/udfvvLQx9cd
 wWE7azOdAtASGZ5U+TcGAjDTiZ46kDmV5y3P2Q5YOmkUKJFzdEab38TPDtuBnonlGBiF
 vV8fxRZXy1xOwpi0WsOMWTchey6/mLVCqslaXN1z2QuvYxSS0K5hJ0vk6aA/Bj9RY8TL
 E+aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=Ez/V5Sramq36JD+7yzUO8B3/5yvtgJXa0dIlo6f2ItU=;
 b=nJj7tX148wXjeAex69p1g+AfBpPS8As0nDRj0SSfkqAx3U6v3YAo5I2l2ed+BSoPnm
 /rRhhZhcTsF8I/9wHtutOrO74O0KUhdxp8X51nUNMG8n6+KdsD0z4BI7st9ecRjx5Hmn
 k7aRCJQQSjk2TkqLv0MJw9YjNWIEF4zAdZGDEQSAadx119bAjWRF01bmxSJbFI9OHUJ4
 da1B+ijdboirqNwgq5SN76jnVcfsDWnbwJPTQeEMxW3Z6ZxrjqYiDg696VEN9JdfiRTD
 PIll1bTOxv2dehHckwdguWJtSBzrK1lorj7Br+ivZAapR4W/gXBfO6WYyfcQZLHjVnME
 FPtA==
X-Gm-Message-State: APjAAAW179ezeXglxKbxJ6qYHBQTT8h/yRec8a5UXw0jNdIMj6IgdHWf
 ILjydbeHE51JNjHSDF6LqM3Gsm+nAGoT2Q==
X-Google-Smtp-Source: APXvYqw6HVDuyWkxIk5uXvziv2DcUCruYqlTANAD6f65eSIQoA3TjF3BpeT5qPb5pvn++Fps3wMNKw==
X-Received: by 2002:adf:e58d:: with SMTP id l13mr10729797wrm.135.1578578551968; 
 Thu, 09 Jan 2020 06:02:31 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id a1sm2898183wmj.40.2020.01.09.06.02.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 06:02:31 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH 3/7] arm64: zynqmp: Add label property to all ina226 on zcu111
Date: Thu,  9 Jan 2020 15:02:17 +0100
Message-Id: <cea6018dfc41c5704c24c14abcc383eee7d3b5aa.1578578535.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578578535.git.michal.simek@xilinx.com>
References: <cover.1578578535.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_060233_439260_164BCE49 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Rajan Vaja <rajan.vaja@xilinx.com>,
 Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Label property is adding capability to distiguish chips from each other
when iio framework is used.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index df2bc5a41c8d..2e92634c77f9 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -212,84 +212,98 @@ i2c@0 {
 			u67: ina226@40 { /* u67 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u67";
 				reg = <0x40>;
 				shunt-resistor = <2000>;
 			};
 			u59: ina226@41 { /* u59 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u59";
 				reg = <0x41>;
 				shunt-resistor = <5000>;
 			};
 			u61: ina226@42 { /* u61 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u61";
 				reg = <0x42>;
 				shunt-resistor = <5000>;
 			};
 			u60: ina226@43 { /* u60 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u60";
 				reg = <0x43>;
 				shunt-resistor = <5000>;
 			};
 			u64: ina226@45 { /* u64 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u64";
 				reg = <0x45>;
 				shunt-resistor = <5000>;
 			};
 			u69: ina226@46 { /* u69 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u69";
 				reg = <0x46>;
 				shunt-resistor = <2000>;
 			};
 			u66: ina226@47 { /* u66 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u66";
 				reg = <0x47>;
 				shunt-resistor = <5000>;
 			};
 			u65: ina226@48 { /* u65 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u65";
 				reg = <0x48>;
 				shunt-resistor = <5000>;
 			};
 			u63: ina226@49 { /* u63 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u63";
 				reg = <0x49>;
 				shunt-resistor = <5000>;
 			};
 			u3: ina226@4a { /* u3 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u3";
 				reg = <0x4a>;
 				shunt-resistor = <5000>;
 			};
 			u71: ina226@4b { /* u71 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u71";
 				reg = <0x4b>;
 				shunt-resistor = <5000>;
 			};
 			u77: ina226@4c { /* u77 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u77";
 				reg = <0x4c>;
 				shunt-resistor = <5000>;
 			};
 			u73: ina226@4d { /* u73 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u73";
 				reg = <0x4d>;
 				shunt-resistor = <5000>;
 			};
 			u79: ina226@4e { /* u79 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u79";
 				reg = <0x4e>;
 				shunt-resistor = <5000>;
 			};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
