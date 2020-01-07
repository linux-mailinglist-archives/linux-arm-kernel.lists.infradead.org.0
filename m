Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85CC132E37
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:17:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3Jmn1DTkt6iHJo4nKs/bZbMCywPz9fpkSPNvdSNQuD0=; b=ik3qMsDbyY7oIjPW5+6nccv1h7
	oTVZ+0E3fy/IjWBwKY5FfojiU4G096Dur2GDb1EeYQdJPYEusJkMhhogib+k9m2wcU+Ho8h2EZeKF
	Jll43seK5zjOJwQO8N/Jv0wOd2UqlWswRCLEoAUgGbDEU5gYR8Ue2MPlCFqJMBEeZ8KC3SeWIfYgi
	fLTUD74gERNQ7YL6u8uEq8Nx6BUgyW0/HUQ3Km8r9DMV7NbRoKm07M+5sKldGxSqxMRWUkW1aq9YV
	cQW+XybMtNHLfcTOJYOvyQApYP0CK8q+I+xtd4SM150gTyCKEhDUAk+UFEUnJ9pDgTeh6yGqQqv5I
	BmWUq8aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotPj-0004bP-Up; Tue, 07 Jan 2020 18:17:11 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotOp-0003ue-1N
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:16:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578420966;
 bh=aWglA2PfdwtIHtm2mDExM6LOMnFuWnZiRAiujdoAMW8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=dq7Bd9O5pRIoP35pWiEbr3vIwPVUIZdztKslWibSe4sYkKnlLAbn2Tly+3mecxMX4
 plidbchinnJHsr1byo3468d32bXORW9ghvyBGxOn50Zs4URcLnZ6Mj9sUeBhkRs9yz
 afE9G4bQQvpFS9Aa/ELtd1yj+QyiHuLkxDC5oxSA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.154]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MoO2E-1jUaw13WDg-00onqT; Tue, 07 Jan 2020 19:16:05 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V3 3/4] ARM: dts: bcm2711: Enable thermal
Date: Tue,  7 Jan 2020 19:15:56 +0100
Message-Id: <1578420957-32229-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578420957-32229-1-git-send-email-wahrenst@gmx.net>
References: <1578420957-32229-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:nnCaGh26y5WZ7Y+Du8wo80ycqs5dd0zUOiU8IyxmRBut3vh+kbS
 hWpSdRT6jUdGy0zdQC4p0GWbndKZlE8PcisuGyj1O6JS+PZF0lvHyqMgg93jy1GqVcINVAT
 m9kwkGNF9DR+OKHvvajSgRYV5gRp3BIZpN7jBioSwAr2xEZCwI3aFYzZL0/nM1tdwZi08do
 f9kojNp6jUr4vT/oaeL8g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eypfnYKWbbQ=:3vD1OpSV55xSk4yzLYUc8F
 ss17pikWe3sKTkGoI3BFvSL2dMCJntwyDYvcMBefgSpGcgd2z3eK3CjpAhx5Z35UkdK7cr6ep
 lsMn51ut2iKyCZ1FGpPY5mDJroBPqJFUDxNCh0BAQJn/Vyd5aWvtIStBX8vhSZeSLwOpkgYtq
 INAm+O2AD+nw7gqpqya1+fc2pMPvW9S2I6sYSLCuOP1gqJraZSDDgUp8hn2DbLlhVPgD5MSet
 VUMc8Crizcnnhu+3dx1SJtxS/Vykaw4X0YVr5/sV3mNPI9sqSWpndRywGkJfhs6ruCBSTZPqD
 lR/PwjRR58iwZ2J2O3oBfahA9dQYEQNQqxsQxIcJ296R7AyEpq8PePDjT6Z0qKPaIP1KiR9/8
 bq+HA6Be/peO7fvhwDxJNy0yQSnXJDjLqu8Gop7ybALxiK+c+alVEtyBJwd7wL+FCdL3hNnHi
 gGsohKQNAHfMWgJXcnYBqr/mcSjQf07IYNuidrfs7biH4SIVMneDFBM+bDyXpPKaHrAf3f8AJ
 6RwAQAuSBoGRrR6lOKFx63o3tmAI4R/vfyosXbLXm8nheUTCB3tmW+/J++QiCrafqCA8rzZCF
 eZgIaNncjMxPxyUmV608AjOWEnE6xf0cXC57Cw6mOq19oVtp3qesCkDvbyaAskyCX2IXZJ7hp
 R4RpokH33Uhu6IaIyGV2LuP3GZK9YmAOG1CZc6l5u7se8WRN7N1n2HkLLe2u6DM/WjZmdT7HR
 uOAbQn7NWoke1DXdnj57eY3h0Y+OJlYvhkdh7pWVUiWRLRqOOnD+ME2CRRRqD6RlKuSilEpeu
 qvPT2/eJFvIL4pejhNNrPB2C3RiHhHmyeUbQo+2Na5X/sLn3vwhfDac57ev5NKIeD7FPGPgzr
 4YF/E/rSQhXylqhqwomJMyE77jIsa09OD73gY0UYIW38Z3bfj1MlNpM3Dzq68Uy7ILcunYJgS
 JYdohNePZWLE8JBRj3z04HdTs4ogtDQLrJZEoPqWJwyYXpIblHXV3hcEm99M6ZiBCVeJQz2st
 narTYNER7iY19YC1Bc/z0ahz5Y/DiKEZI1KwPjmqzwl9DtgiFpahgvJ/htv/UFTl6UZHKBM9g
 k/uJbVQbreofaRz730uheNJu0ruz6QvWSAMa21Ge+vl84CGbcDOtC2ydUXhbjpVYa12n5Eg5A
 pQS244oqQTS3hWqK8xrFNm4jmBcCDAPGv3xVBW1Jg6pRqybLzta5jN+FfPaMbWh0yVV5VO6qu
 tKLGAzCzdsJVRK3ly7+y1msAZ7D0THx91qoghfQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_101615_402374_8C4F49A4 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables thermal for the BCM2711 (used on Raspberry Pi 4) by adding
the AVS monitor and a subnode for the thermal part.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/boot/dts/bcm2711.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 961bed8..96f341d 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -66,6 +66,17 @@
 						 IRQ_TYPE_LEVEL_HIGH)>;
 		};

+		avs_monitor: avs-monitor@7d5d2000 {
+			compatible = "brcm,bcm2711-avs-monitor",
+				     "syscon", "simple-mfd";
+			reg = <0x7d5d2000 0xf00>;
+
+			thermal: thermal {
+				compatible = "brcm,bcm2711-thermal";
+				#thermal-sensor-cells = <0>;
+			};
+		};
+
 		dma: dma@7e007000 {
 			compatible = "brcm,bcm2835-dma";
 			reg = <0x7e007000 0xb00>;
@@ -363,6 +374,7 @@

 &cpu_thermal {
 	coefficients = <(-487) 410040>;
+	thermal-sensors = <&thermal>;
 };

 &dsi0 {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
