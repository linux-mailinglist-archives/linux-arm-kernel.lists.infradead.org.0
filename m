Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893CC138254
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 17:17:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=00p+1DvyPD63ywTmoaUieIG/Ucvr2esb9KG//dEUXhk=; b=WfCL3mDiwBJU1tUZ9JuhU7I+0r
	+AtTYMIrHJVFyort0CmFgDiYSO8yl/mJtmaQlYLX/aNeQ6g9jomEW9Hyql+tomile7XIFiPRbDxZ3
	+oTWPt2tKkiR4tAyGBFNGd8c5ZmJNO6xdryX8aQEQhfmd9Dnl4ex/h9fVtbq+xZ1iR5FXXJQROhFf
	ZL0Fop8GSsJCHUAVkVStTRBbsscRLO25G41VHTTkc0+2UCFe0/uMYI/tlCnrXwINNBJX/UUhRqKoa
	HEFN0lzEoTf2WK4DXET/C4JP6xcVOH5QolkW91wpDNTThUY53K+ixakhuWxU9RPUAWd+hFJFQO/AB
	ej5YS2hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqJRh-0003Ux-HO; Sat, 11 Jan 2020 16:17:05 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqJQp-0002qp-BX
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 16:16:13 +0000
Received: from localhost.localdomain ([37.4.249.154]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MAxLT-1iwc0f1XRZ-00BKky; Sat, 11 Jan 2020 17:15:52 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V4 3/4] ARM: dts: bcm2711: Enable thermal
Date: Sat, 11 Jan 2020 17:15:41 +0100
Message-Id: <1578759342-4550-4-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578759342-4550-1-git-send-email-stefan.wahren@i2se.com>
References: <1578759342-4550-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:0IUicZLxdYp4qHZTyX6kmYwbihuuzvekhpMT2zBM5MdAzJFI8Zb
 TnyIvYP83Sd6Q1mNIZClhRa8DgoepMjtak3u/3UC2PvTJmhvKg3bOobmKjRNuX3Ct6zVOib
 4MZj57j1ValZPtjVGT6916Kct6VP+7X7KmoUzAzbBAtxzozfuE54d7Dp7jg/s3tZkWDDzhr
 O0pRr8746i+6ag5larC/g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PG4FVKCkg8o=:p72Bcm07B31S0vAEPP3C86
 pvVcGFbOsQmqlyiyCFi8u4/QcSZ12aNgOePNixWnVmNS43xMhc6AwZ1tbkcopV1d3TyZY7nJp
 stfc0RO3zPWkGXHejh4Beg+PVoiZKNuzUEm/L711hKjGyWBsrNZUnOqjQPdY0UMPH7SekX6OB
 XJGsBDbvF6CGZ3f2NpSis5xmV4Bb4lfJBLPIuFSUzZxHDXQRkeT2Oh9SGROvogfojcq3RjPCd
 CmCafC+JsEF6hfeMOqtDGVJoUx1yaX4zox5SAnANVNB5V+dxFHV+5FzNsQ76BzJr8nH0qJ9yQ
 JCZ/iwnsuGB+10NS85x58oDGDTawCy7LEEYiDW1Kh/Nrf8FALg9bRE54llfWv6pExV39numVO
 KgSO+LUoisGO0ehBkjWNCPDoZ2eyihsH2iyYSZqDzQltuQPYJgMdwJBY85Gw4iyREktWPjnm8
 f99GqOiVjleHPOWigwV9XnYoDON4Xc7OV8p55Kzox2Y4zmXArBeummyn3o1k9ghss9u1NA+T/
 oK5izKsf1SGZK5gxh1ewEiu2AIskARqqo6L43Tf8a3m/t7hMb2sPRE9ZSKHKbU170d1iO225W
 CtxngFJtKhV1X+uebG1W25w6q9cIxrKb8dBLZFkKeiUpxfoi5dUSm7TLrZlaeyhy2C/N5h57I
 8Cl1C/XcB3HITsiSYfkHeMXJHcC0lKCzJea9xxBsmC2l9h6U530wsY5ddBplZ95bIfxDB3l7r
 egNDPMvZZOr+buA8iBcNRTZuCRjxQJnbfjZWC0fupJB3veiDZxeCnkOfQC5QNygRNWoEpx/Mr
 QJl4Y06GbntfFN1lz08k0RAwEIKAplo4dtuJv1WAQOrCows68pjYWMILRXJFoTvx0dGkpevui
 AtsY/W8p5s9TFG6LUTe1gdFLiM54Ojwm0PeJYwHxU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_081611_709898_FAE108FD 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables thermal for the BCM2711 (used on Raspberry Pi 4) by adding
the AVS monitor and a subnode for the thermal part.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
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
