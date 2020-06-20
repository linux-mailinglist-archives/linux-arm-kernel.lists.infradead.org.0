Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF78202517
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCQ7cDzzh0NVMidPGcRu8QWoNp0rLGx8J0wjPjqay00=; b=Hu64K3X5R4VTee
	FMIwLNN2ul7BRRYFlAmykh3lLfFmppfTjlOvj54hvi+/5vy8MxEwkqV9ZsQjuj5nN/cJQMryvl5l0
	k7SvjzlitA9xDoO587J0YkdhqfhLC00IMel8Ec/VLIrESSMPX21s6uvT3V7sggr28sQibiEGPVTSr
	MjSrrMn7dAuvjLmuPmmtWATdYfFPvCe+y0UAYOIdfcJ3KMVY2XYNwSReRWj5qm19A3kJbVxxN3ULc
	PzXuq/ASIzDARMu3yt9tRHcKLJrOydVhGw2CV9blGsHA7BLlM4LsB/gCQxlzDxP6nvTvYxyZIsnY7
	FjhSKA+oKatnAykPPSag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmg5n-0000Cw-51; Sat, 20 Jun 2020 16:11:43 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmg4V-0007ji-7t; Sat, 20 Jun 2020 16:10:24 +0000
Received: by mail-ej1-x643.google.com with SMTP id o15so13517842ejm.12;
 Sat, 20 Jun 2020 09:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=orxvClwe2X1G6LLt220P18SzRHWKPs1DBn4J3ndLHzk=;
 b=YUUYjvalbkovpygqyDgaPEV7N9U2IPmmAXOai69kZglvy+h2R3uKIrIQee89/1FLRY
 GvTGfvbO0udWlLhVHtMvHntmxj2Rvh7lIYbj3KiDps+ylKwTBtSKynQz46m3sp5UddNJ
 LAZrq8LsQ6BQwT7KOqDe13dwbDo09+fdZO/6pO60GealIKm6TYZeSLnw5i4ZjLImW7ZN
 F9UTiwOujDit0cRM7zugBQhTTA1UkMfzfo0lt+Y9tbLK1n1eo0FytuNSe15isnoEV633
 zzJMug2C8hB3MP6wlogp3HXPtt2h9dIw9HMB3GvxvZOyUyov7hpx3s4/PFLkzPNA+I0K
 PRBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=orxvClwe2X1G6LLt220P18SzRHWKPs1DBn4J3ndLHzk=;
 b=XotWXVeAZL+4rpGJAZV7CB18nEeE0DYnHfgSl1WCfxBDFwuQABFVCjmWqoEnYLevpy
 hmZznJeQX1klT8Qe0f/pQSvUH8/A427xKdGKdPbI5tCdJ+vsx0Z7uNdEINy45sEaKaSK
 TlIR2XZc4GH5wFo2VdYTB83Sncj6K4k/Hj5LzXe6FEysTEHzo63xRxqwNj8re6wGNPRV
 7tUOpErwqeACF/zp1xt9WPaA4dtI6mwVwCmUlJ2TabMm1yYqADKJNZEMPsxvs9A2aLs4
 ZyUdvgUPdVPeghblgRw2XVD+AeeHVlpr+kk/UZmCG2e0d12SIasWBthFHf4lDLmuUpFM
 GdfA==
X-Gm-Message-State: AOAM532sUFNp4JB82GrH1OSaWIQSUIhNtljFB7iUywFsZKucLRuEVcSl
 FmJDiKrNu22aBH1ykKdAlvpJ7+YU
X-Google-Smtp-Source: ABdhPJwcmrBNH01zMxqTshJiUr2AslvrntLjBXS1qW9UDYE1kESSIvl+rlvq9nY/RaNdZ3eqKoAtow==
X-Received: by 2002:a17:906:e298:: with SMTP id
 gg24mr8377986ejb.120.1592669421795; 
 Sat, 20 Jun 2020 09:10:21 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a62sm8033207edf.38.2020.06.20.09.10.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 09:10:21 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 3/3] ARM: dts: meson8b: add power domain controller
Date: Sat, 20 Jun 2020 18:10:10 +0200
Message-Id: <20200620161010.23171-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200620161010.23171-1-martin.blumenstingl@googlemail.com>
References: <20200620161010.23171-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_091023_282632_AF7F2337 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Meson8b SoCs have a power domain controller which can turn on/off
various register areas (such as: Ethernet, VPU, etc.).
Add the main "pwrc" controller and configure the Ethernet power domain.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index ba36168b9c1b..2069c57343e5 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/clock/meson8-ddr-clkc.h>
 #include <dt-bindings/clock/meson8b-clkc.h>
 #include <dt-bindings/gpio/meson8b-gpio.h>
+#include <dt-bindings/power/meson8-power.h>
 #include <dt-bindings/reset/amlogic,meson8b-reset.h>
 #include <dt-bindings/reset/amlogic,meson8b-clkc-reset.h>
 #include "meson.dtsi"
@@ -433,6 +434,8 @@ &ethmac {
 
 	resets = <&reset RESET_ETHERNET>;
 	reset-names = "stmmaceth";
+
+	power-domains = <&pwrc PWRC_MESON8_ETHERNET_MEM_ID>;
 };
 
 &gpio_intc {
@@ -449,6 +452,30 @@ clkc: clock-controller {
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
+
+	pwrc: power-controller {
+		compatible = "amlogic,meson8b-pwrc";
+		#power-domain-cells = <1>;
+		amlogic,ao-sysctrl = <&pmu>;
+		resets = <&reset RESET_DBLK>,
+			 <&reset RESET_PIC_DC>,
+			 <&reset RESET_HDMI_APB>,
+			 <&reset RESET_HDMI_SYSTEM_RESET>,
+			 <&reset RESET_VENCI>,
+			 <&reset RESET_VENCP>,
+			 <&reset RESET_VDAC_4>,
+			 <&reset RESET_VENCL>,
+			 <&reset RESET_VIU>,
+			 <&reset RESET_VENC>,
+			 <&reset RESET_RDMA>;
+		reset-names = "dblk", "pic_dc", "hdmi_apb", "hdmi_system",
+			      "venci", "vencp", "vdac", "vencl", "viu",
+			      "venc", "rdma";
+		clocks = <&clkc CLKID_VPU>;
+		clock-names = "vpu";
+		assigned-clocks = <&clkc CLKID_VPU>;
+		assigned-clock-rates = <182142857>;
+	};
 };
 
 &hwrng {
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
