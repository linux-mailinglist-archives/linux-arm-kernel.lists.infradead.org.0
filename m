Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949251F3C63
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QAZzTBSIDLKpEYbmXA0IjMyhtMWvpQbc2W4GCr/hVvo=; b=Gy+N6v9WMdA7zltHKLx1T44cb7
	xq8msQ00NrB9GXB9AIjyrMo89eSn8BOXnlxon766mTWZf6+ZHcSpPM7d+vxVgFn+USwrC7thyng0B
	WwBjb28lg/I/iAgxItNxjgvBNFkMvvs08GVDC8dBjrXQS1Udwp1iVxyk115CvZqqAkKOxG5DbWhf4
	rWDZI1WgBH72c4p9miNsOvkXoMQpJvs4aqBQLei1PC9Zi0I/dZfzlc2yusWitb909bfdhPUxhgX3U
	ZNRvGsxY8SuV/s5soF0Si3vQgG5u/WQtIT7BqaCY0/SmVOlYPaWtk3Zy60xNdjgCFDJez+qXHWkfC
	/+OIXjxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieIF-0003Xw-0C; Tue, 09 Jun 2020 13:27:55 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieHM-0002pw-05
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:27:02 +0000
Received: by mail-pg1-x543.google.com with SMTP id p21so10271843pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 06:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aYMF8YUhot7LiLw3oFS3/mzi/UrWf4Gg+68yZs/PTjs=;
 b=sgGbqRUkyDWUtzzQdzNZIOrKXN8s30ddQ1jDBSWTsBSz8ST1UW2xY9er013Keh0tkb
 bbVb0EAZmz2FcjOg0tY1AtsIZtW6tCFJhZMb40jRIq7cTqJyhRgeg1/rIt13DaBrDOKd
 0PEEey68luuZLlZB/zCUTuNcmeAm0R/8loPKH+3lOODVmw2CAmdfA/uM2yNnfhQwAe5o
 anOSKZzUJ5moWHDDQ7UxW5LdFo9iz2Q3Ksg90oBDa0q565HCN57RA1oo+Jc6SlZNAnv6
 HMi59cFDI7fajeJCX6zy9/VDju2JIaa5Fzyx+FrW+BGjsRTkk7o8yov5/DHzX+SF2h7m
 ZZIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aYMF8YUhot7LiLw3oFS3/mzi/UrWf4Gg+68yZs/PTjs=;
 b=XHtvhfStxtyJOR6/K0alGkULx0XKhUvOiEk+gJT3GMQ2KBNmo5BrptiV5oDghYkmgO
 gsBs2KQUZCWWtReQuyyu6vN6s8PN4UgSjUiQpXL8tmmzZBClCbGtH0gflXnoDyxARHJm
 9oUNfcrevJjZxSi0XuHrzOsIly6UdMXPHGazsNxINsQD7Mxu87h7OqijOqsN2ZetRN5E
 VEIUmySy3N+OaSppGezJFnYOjVG0r6GxJEuBqASFEXPapkmXkbStxucEApx8GWQh0vXS
 zv34reLdiCU/p0K3Xlew9EYyZqRNi45A6p6ATvQubM++TLZ5h6GluQdaiSfMdClsjLbK
 CXmQ==
X-Gm-Message-State: AOAM531mNzc5+E5TS0LBVUQMR/SmB9ojUvgP+BK+v1TihcsL1SLAecHl
 OaGJ81E9hHcpyYI4WboKo30=
X-Google-Smtp-Source: ABdhPJw7afLAjpJsItQsnX3qt0rEIAvvOvZk+nKKPPFz9OcVyn+axZGQ/zVVsYCjoQRpV5oByTFdOg==
X-Received: by 2002:a65:46cc:: with SMTP id n12mr24887487pgr.80.1591709219129; 
 Tue, 09 Jun 2020 06:26:59 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.42])
 by smtp.gmail.com with ESMTPSA id b5sm2624348pjz.34.2020.06.09.06.26.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 06:26:58 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 p.zabel@pengutronix.de, pierre-yves.mordret@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH v4 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco
 board
Date: Tue,  9 Jun 2020 21:26:42 +0800
Message-Id: <1591709203-12106-4-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
References: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_062700_218372_4D582E50 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Enable the stmpe811 touch screen on stm32429-disco board.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429-disco.dts | 47 +++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
index 30c0f6717871..fad1ec10efb6 100644
--- a/arch/arm/boot/dts/stm32f429-disco.dts
+++ b/arch/arm/boot/dts/stm32f429-disco.dts
@@ -49,6 +49,8 @@
 #include "stm32f429.dtsi"
 #include "stm32f429-pinctrl.dtsi"
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "STMicroelectronics STM32F429i-DISCO board";
@@ -127,3 +129,48 @@
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3_pins>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	stmpe811@41 {
+		compatible = "st,stmpe811";
+		reg = <0x41>;
+		interrupts = <15 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-parent = <&gpioa>;
+		/* 3.25 MHz ADC clock speed */
+		st,adc-freq = <1>;
+		/* 12-bit ADC */
+		st,mod-12b = <1>;
+		/* internal ADC reference */
+		st,ref-sel = <0>;
+		/* ADC converstion time: 80 clocks */
+		st,sample-time = <4>;
+
+		stmpe_touchscreen {
+			compatible = "st,stmpe-ts";
+			/* 8 sample average control */
+			st,ave-ctrl = <3>;
+			/* 7 length fractional part in z */
+			st,fraction-z = <7>;
+			/*
+			 * 50 mA typical 80 mA max touchscreen drivers
+			 * current limit value
+			 */
+			st,i-drive = <1>;
+			/* 1 ms panel driver settling time */
+			st,settling = <3>;
+			/* 5 ms touch detect interrupt delay */
+			st,touch-det-delay = <5>;
+		};
+
+		stmpe_adc {
+			compatible = "st,stmpe-adc";
+			/* forbid to use ADC channels 3-0 (touch) */
+			st,norequest-mask = <0x0F>;
+		};
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
