Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A8414F4A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 23:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1nBoxxBiIYZR1ZQivS7c96cQON8d52dQxjpt2SQtYt4=; b=AbRObq6I0pWjgcEpzF2m9/3cPp
	0/Wmee45CsROyemBEoxF8Og9u7cce7apFg1kcQi8Y40kD7CdPdR6nfyOEJg+/FffjVcpgj7NLrwDH
	Zr5XemqNqh/rfzvOyEHhiUgYCcj13gs+VI7W6hGSTK9ZITjnQf6UOQpjaaZEf8N/w67Bgxy/c9t5J
	MHD8L+2qhFdhJLfAhuvGyR5lH+WM5dUr78tMTAWlR5mOitFkAx9gcXa9uapTRajFRz/UML7juY5nx
	K3Pbw3WGjiU77pABBII9qx0g9wA/1T/FzOu0b8YBguhIv6kxB9a7L7vmxCdh2jAGnFDTXc7O9RiEs
	+5YTiJqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixegZ-0003H7-PV; Fri, 31 Jan 2020 22:22:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixeg1-0002qD-6G
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 22:22:14 +0000
Received: by mail-pg1-x541.google.com with SMTP id 4so4234090pgd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 14:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=i4A6iS3d4v/SDXbDNLzH3HRItLiF9tqu3vO4L3thEV4=;
 b=efT6ccLLp725L6rmbzhCKHhoXCUWhEwmpCzY1M+jmHhTKSv68aEPvW/DqEUQIeY5Bb
 Ha7TcJomL0rg5YLj5Xq1aukFl6aIdrkbdV4pUmRQaT2XCAY/5i5w+KLDBYQ2R4EoW4pF
 EgBs1rHu2empMUuaQNXCM0U4M1QIurIvJubCyJxhk1IcWfsQuOADPNLu75YqMsx5OWVY
 iR3JEiyuFMRmUNQjT2Blkz8ajOFdobI7mgOOHuTM+ZIJ3dvD9NaqVad1/tTMd76JFzLe
 xyXREL2FrL6L8XsWZTAM3O3nmii846OgGb3o3Njc4BWIXNRW1O42+VuNFDDEiWlsvjZh
 WVDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=i4A6iS3d4v/SDXbDNLzH3HRItLiF9tqu3vO4L3thEV4=;
 b=WM+Sv2h5O74A8lHTUEVe4estFWAfYgA+ToXYb/NPAqTHcAs2EErobd+Jp3kswyQUx9
 NTFcCA9xJdML7MBQh3zbMm/VG+/3anuqIyKMJGPTQC2LvIRaS7Mn9Z7OQk07ppHz4mW9
 fJZdDZDoU5Z+ssYOBGq3ZabGxTyoe2WNeWkZUxTs0xv/NHcyWpJoa86paaOEROI9BQrL
 9IIzTILWnSRuhayVmmBwvorqrQnjYIwetPZ+FuAetDZKbUYOyBpsFxmaDz7wrSMvHtBV
 z3710beSV779Gui4YWiz2JWFmW0rxlh09kZhSM79sX/lehNIxNwH1aJCn1xP8esN+nMM
 gr9A==
X-Gm-Message-State: APjAAAX8xa4Py2BNBK5NELNKRnohLiiKf8FKFhG8j063MFYPeGgdRyzW
 69bIx2wbvdEw9UJW3xioElE=
X-Google-Smtp-Source: APXvYqzsvIXic1sYRK0SB3cYQOIXBh9Yp6xjO2Hj+C+T4Jdwwae0tMAZ9/O1DNXBWbW0RMAk+sN7GA==
X-Received: by 2002:a63:1204:: with SMTP id h4mr12135526pgl.288.1580509332195; 
 Fri, 31 Jan 2020 14:22:12 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:200::1:a521])
 by smtp.gmail.com with ESMTPSA id v8sm11201515pff.151.2020.01.31.14.22.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 14:22:11 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org
Subject: [PATCH 3/3] ARM: dts: aspeed-g6: add usb functions
Date: Fri, 31 Jan 2020 14:21:57 -0800
Message-Id: <20200131222157.20849-4-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200131222157.20849-1-rentao.bupt@gmail.com>
References: <20200131222157.20849-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_142213_294639_8BCA5802 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Add USB components and according pin groups in aspeed-g6 dtsi.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi | 25 ++++++++++++++
 arch/arm/boot/dts/aspeed-g6.dtsi         | 43 ++++++++++++++++++++++++
 2 files changed, 68 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
index 045ce66ca876..7028e21bdd98 100644
--- a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
@@ -1112,6 +1112,31 @@
 		groups = "UART9";
 	};
 
+	pinctrl_usb2ah_default: usb2ah_default {
+		function = "USB2AH";
+		groups = "USBA";
+	};
+
+	pinctrl_usb2ad_default: usb2ad_default {
+		function = "USB2AD";
+		groups = "USBA";
+	};
+
+	pinctrl_usb2bh_default: usb2bh_default {
+		function = "USB2BH";
+		groups = "USBB";
+	};
+
+	pinctrl_usb2bd_default: usb2bd_default {
+		function = "USB2BD";
+		groups = "USBB";
+	};
+
+	pinctrl_usb11bhid_default: usb11bhid_default {
+		function = "USB11BHID";
+		groups = "USBB";
+	};
+
 	pinctrl_vb_default: vb_default {
 		function = "VB";
 		groups = "VB";
diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index 5f6142d99eeb..02c21c15c19f 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -265,6 +265,49 @@
 			status = "disabled";
 		};
 
+		ehci0: usb@1e6a1000 {
+			compatible = "aspeed,ast2600-ehci", "generic-ehci";
+			reg = <0x1e6a1000 0x100>;
+			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_usb2ah_default>;
+			status = "disabled";
+		};
+
+		ehci1: usb@1e6a3000 {
+			compatible = "aspeed,ast2600-ehci", "generic-ehci";
+			reg = <0x1e6a3000 0x100>;
+			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&syscon ASPEED_CLK_GATE_USBPORT2CLK>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_usb2bh_default>;
+			status = "disabled";
+		};
+
+		uhci: usb@1e6b0000 {
+			compatible = "aspeed,ast2600-uhci", "generic-uhci";
+			reg = <0x1e6b0000 0x100>;
+			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+			#ports = <2>;
+			clocks = <&syscon ASPEED_CLK_GATE_USBUHCICLK>;
+			status = "disabled";
+			/*
+			 * No default pinmux, it will follow EHCI, use an
+			 * explicit pinmux override if EHCI is not enabled.
+			 */
+		};
+
+		vhub: usb-vhub@1e6a0000 {
+			compatible = "aspeed,ast2600-usb-vhub";
+			reg = <0x1e6a0000 0x350>;
+			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_usb2ad_default>;
+			status = "disabled";
+		};
+
 		apb {
 			compatible = "simple-bus";
 			#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
