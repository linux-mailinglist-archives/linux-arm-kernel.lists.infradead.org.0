Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A9E1BCD73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 22:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HjUBIBSm02gn5Gwm+nBxGDU9mCDm4r2Mc2wtOWRm630=; b=Jna+Pmo2rjotZ+nGRulouE0J55
	hDyMWTnu5axuSWiYUyTnEmE12S+KluZh5/bNCvz+/lKHRPdf/oj24IyaA/AIzMU3sDCK65lUSELwK
	55LSeLRbUIfddpAF+WC7UH1VVpRIM53Y+AIWMgITANfrnXZz/K3RKyWdVEKKlnGcppB5ionlVByXv
	NI+mhvSR5lgt10nTlqf3/KqyCCPH7pYXkca/avq2CPy0LALij2LAY7LePVQLwgrr9p02C6DPwlsAx
	wy+aDc+bQGqhepx9htHko0JVw6KIteI/vpvALvk9LXWEknkcxUjKvQ/DZt/b1FxdHSRhPZtvWh2Eh
	z0bPcLEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWsV-0008TY-I7; Tue, 28 Apr 2020 20:30:51 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTWru-0007eY-Pu; Tue, 28 Apr 2020 20:30:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id u16so197768wmc.5;
 Tue, 28 Apr 2020 13:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=D7lH5jpMtckNSFWtOtcaCj8HA5zjfrZB2xijxB3Vzwk=;
 b=eeBZUJfzaTbrABWRoPU8NpncQs7kH6G4ugk7Vdy4CgWduJ2L96HkVafVsAmiprSt65
 9sdZEOKk45ypC0Ahk3ZWmgoBY4USteNEaXkSzQ7TGF/HUVgD0sBqKuJOnhyZU/FfRtr1
 XB+C9EH+gDAB91vMTiqzRTHY+KcGPqXzXENrxGIwsf0L/lgMhhAJyK/wbWulRNSbU7G7
 /m4ea26kvZYKE64YEBG6d1bstbkbmi5VAEA4mZVFAkV4e/0B2UQUKf00dyo2UyoYHQo/
 tG1GdmPO056n4QKILjfUYJ+tI5hIVPiITw+fE/U/TVZ68f/b9XdEsfJkrkYT5OEj2VnS
 TpkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D7lH5jpMtckNSFWtOtcaCj8HA5zjfrZB2xijxB3Vzwk=;
 b=fD20u9mSlZPt577CDnEuc/FsRA0y4UwuiZUumukJe0dRAtMIpmMrQrvAvRxfMPLcRT
 cXQ1I/Hri8MYl8uVDGvayFK21fbVOYokpVRAomctJCWRCpVgQB0mk19cQzcdk9AGSTRp
 Iuj/w4s+maHU8AzZcpZ1Emdw5f10UP7XUgYfclQcABP6cD8S1//1Gd7L8/upPXM+eLdT
 guxETFPWt8D6Em2IpJtXrFTPbN21Dn/AzI8Hxhi73n1FeivSVSoti6Xag451nF01DLK7
 lXX6Gj9+EKwNEAzRNcOH7Os1XicBpm2DxeWM8f1cZfU/uYRWLLNB4m5kLuNfef7PtoBV
 urzQ==
X-Gm-Message-State: AGi0Pua5rimNku5rNF6zdPSBiyHzLc+kCcEhwsZ2bzEuV4keJLsfjEEU
 QUwsAhpKkHwnH93yb30n2eo=
X-Google-Smtp-Source: APiQypISF7Ph82vT5pmWbVwsK1+ILae0VWTNn0sORfI+E79t5C6YH1tBk0jHRXhMF5Te8XG8lhktdg==
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr6011138wmc.146.1588105812727; 
 Tue, 28 Apr 2020 13:30:12 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 1sm4797801wmz.13.2020.04.28.13.30.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 13:30:12 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/2] arm64: dts: rockchip: rk3399: fix pd_tcpc0 and
 pd_tcpc1 node position
Date: Tue, 28 Apr 2020 22:30:03 +0200
Message-Id: <20200428203003.3318-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200428203003.3318-1-jbx6244@gmail.com>
References: <20200428203003.3318-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_133015_076260_FB164D44 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pd_tcpc0 and pd_tcpc1 nodes are currently a sub node of pd_vio.
In the rk3399 TRM figure of the 'Power Domain Partition' and in the
table of 'Power Domain and Voltage Domain Summary' these power domains
are positioned directly under VD_LOGIC, so fix that in 'rk3399.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 37279db53..a4dc1bf2e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1056,6 +1056,16 @@
 				clocks = <&cru HCLK_SDIO>;
 				pm_qos = <&qos_sdioaudio>;
 			};
+			pd_tcpc0@RK3399_PD_TCPD0 {
+				reg = <RK3399_PD_TCPD0>;
+				clocks = <&cru SCLK_UPHY0_TCPDCORE>,
+					 <&cru SCLK_UPHY0_TCPDPHY_REF>;
+			};
+			pd_tcpc1@RK3399_PD_TCPD1 {
+				reg = <RK3399_PD_TCPD1>;
+				clocks = <&cru SCLK_UPHY1_TCPDCORE>,
+					 <&cru SCLK_UPHY1_TCPDPHY_REF>;
+			};
 			pd_usb3@RK3399_PD_USB3 {
 				reg = <RK3399_PD_USB3>;
 				clocks = <&cru ACLK_USB3>;
@@ -1088,16 +1098,6 @@
 					pm_qos = <&qos_isp1_m0>,
 						 <&qos_isp1_m1>;
 				};
-				pd_tcpc0@RK3399_PD_TCPD0 {
-					reg = <RK3399_PD_TCPD0>;
-					clocks = <&cru SCLK_UPHY0_TCPDCORE>,
-						 <&cru SCLK_UPHY0_TCPDPHY_REF>;
-				};
-				pd_tcpc1@RK3399_PD_TCPD1 {
-					reg = <RK3399_PD_TCPD1>;
-					clocks = <&cru SCLK_UPHY1_TCPDCORE>,
-						 <&cru SCLK_UPHY1_TCPDPHY_REF>;
-				};
 				pd_vo@RK3399_PD_VO {
 					reg = <RK3399_PD_VO>;
 					#address-cells = <1>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
