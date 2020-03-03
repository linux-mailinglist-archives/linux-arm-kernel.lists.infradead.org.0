Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573F9176F5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y0KgyqVsjE+8sK3CsEz3pscA8NTgJGT3sKuIGyAKwQc=; b=ngo2h2rWOeI0viu0+JPZPkW3MY
	6J7ocqe0hSSmgaclJRBgrAgbyXZZdekUfXjehxgABYwVzPwfbiNUfqHC6+cjBWnK7jyq14MQ3roqQ
	1kNRkhSHwH+IlMzkQ/7fzbezKCGRN9QYfX4NA3zw2P1ixxoML3DhdmAO7iVifPf8oa2ILSjF+hfFf
	RFxKy5oLDiAvJklbBnroPIfSqKuo4CrAtkX61MhWwRq5Cqp/GCCpGodcyxoWMfSrClAOtatFViiTF
	/QMCoAWOZanHU3dxNpEsCI+nRNnOzHh5C3BgJ7VMTbVqLUpG59kDbsBTQDqsEEiPrVHUrnNWL/5sK
	dSL9c3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90zR-00029S-LE; Tue, 03 Mar 2020 06:25:13 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90y8-00019U-A6
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:23:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id g6so849383plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 22:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=W5ipZYCqarch+VFCrahnwIr0sUcrx3kRehbQUYG33BE=;
 b=TYK3uZec7Gwsf+BtY9KIVxpawRiII17N9ErzrWeN4dBss1Hhc9KbZlIiCckDDM8rxN
 DjLtncGeV5zar3nOteLiv6s4YTcZNkBp43WwEhnmVSP52LOUHY1pQZ7ADYhwg8Mo0asc
 wKDYHwMapgEMzshWQkgGwqZJ0zkrsRQVccdvUOoXch+xMmIKhqlgilK6llqbrkbCGWlW
 pqYCsvksjgGS6fahMz7hECyVwVOnxpv6kY20W8TB1s+qHkgaDIuYtyH/QsUXsutpIeei
 mbUYJMA9PJSprDQnGgfG9YITOm96yheZXFRSnk+CgJaUMS7ajDLnWscImfgeqsf6PgMp
 VyGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=W5ipZYCqarch+VFCrahnwIr0sUcrx3kRehbQUYG33BE=;
 b=Lxi1FeANSFJUSW1pE3m+6kOKNvyBdeavBLqqXfuXQxKfIlTdLD5fL4XyTzBhX9+Isw
 CKYi4jZtfxdrzzctmBJuVtXlMuLLVcPohsgRF3DvA/W0fa/Zc87Q9LjQ07TM6h8q+B/Y
 lxfjd1tFonR6DgIKv48T3vAtSbzeuCxLc5qppC2z13dqu/iWSFChWndBpKeARhyWKcTm
 sLm8kg4lN8xbJP4w0wSAJ3ftnfOS46CUB4cXiT0mrYfkRGdLRchEu+x8kl80sjdoxulB
 MtaSKZAOrMWJmun8cK9pQTiEUCNROIIAhUQJ2PL6XHXhYpEa9C1GIywNTTqlWDPT/lcs
 p1ow==
X-Gm-Message-State: ANhLgQ3A0KqeatrRYRVo18ZtV/qYGJ0HzOmDTIH+v/2qKQrpei5dKBF6
 Tjlvg+Jmlm8tOff2hbLlW78=
X-Google-Smtp-Source: ADFU+vtn2N7wyYr1zXGtibIMIBW9UWrBHiD3AoUltb0a1WvpOoZKu0iYGXLtVV+uJNbi7evtGORI8g==
X-Received: by 2002:a17:90a:8502:: with SMTP id
 l2mr2357223pjn.163.1583216631462; 
 Mon, 02 Mar 2020 22:23:51 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id k5sm7453526pfp.66.2020.03.02.22.23.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 22:23:51 -0800 (PST)
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
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v7 4/7] ARM: dts: aspeed-g6: add usb functions
Date: Mon,  2 Mar 2020 22:23:33 -0800
Message-Id: <20200303062336.7361-5-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200303062336.7361-1-rentao.bupt@gmail.com>
References: <20200303062336.7361-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_222352_382708_94AF3100 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 No change in v3/v4/v5/v6/v7.
 Changes in v2:
   - added port/endpoint properties for vhub dt node.

 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi | 25 +++++++++++++
 arch/arm/boot/dts/aspeed-g6.dtsi         | 45 ++++++++++++++++++++++++
 2 files changed, 70 insertions(+)

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
index 796976d275e1..0a29b3b57a9d 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -245,6 +245,51 @@
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
+			aspeed,vhub-downstream-ports = <7>;
+			aspeed,vhub-generic-endpoints = <21>;
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
