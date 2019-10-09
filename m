Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0504ED19FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 22:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yF4rG579AGP6Yl2XJh02BQWoD81NG2co6O484nvQhcw=; b=G+Q
	DkX74Fbz+BDcaMi3BUB3gGKnm62LxgFnT/GFxCf8R/jvCdp5/Gn3ah7NCSMODyQbR7T9ESAFdaoAP
	gTjFXLC/IYZhLQwf/v38+a6GVdGx9QlN98YyI1GLYjGYrna73C+C8MZAdb2vL4RoGuZvawrCk67+o
	jvDuaLJy1w4IM5Q8jqJJ5xtsWTLAH4Gs9SCTniwF1dcdq0s8Cg4yDCX3FV8LXGUnGe4vqpsp8FT6d
	5BT7GW3k2m4//px9lsBbMD3QtgjkvF58f1aOKm9nFpiXZgrIrav6eVs6heEMue3wXbncuGdNXiHe0
	KjhC1qpqO1M5t38O4oxNjRxw3YIMeHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIIoX-0006Lb-1t; Wed, 09 Oct 2019 20:44:05 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIIoP-0006Kp-1Y
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 20:43:58 +0000
Received: by mail-qk1-x743.google.com with SMTP id p10so3503895qkg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 13:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uNp2p1lLanWVu61zZ4fQxAmy44Z32eICYRVg4x8G4wY=;
 b=N10tpy2m3UUmrb6Iot03cWsWEgvc4qd0YWmrB5x27z3MBYIjdsx5hETTvCeV/ifDlR
 CRtSpj/GX9pqhX9/I6GSvEeDzKHTVL1DYg/cHojoQzgs/5rNeAcR08yNh6Ns1/CfLawT
 ys8L/kebD3g6Ttpb+1eI5UlgypgaufyVOs86F4sREBTwnjOxpjI8OJhAgfpJBvxOs+kh
 A3fCTSau4DU1qJD9a2Sq6ofX8q7N9Iv1+6oJhWfhBFeq2vHddKKkF4orARQx1mnK1OJ0
 IzyKQV8GywWmnt8upRbVKvUYDBQ4zpdmAVdw6Z98Pqa8IHJPNGAPmuxcrt1OLTU5SbLW
 oAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uNp2p1lLanWVu61zZ4fQxAmy44Z32eICYRVg4x8G4wY=;
 b=d0nojiyWhZHivgSHUwsmvB+4lzMFjROHfhUWEovNJ2rz2HwXQhH2xurDPvx4XA4ibe
 Yp52xUQWZFphROCMF2Xa1wQ+MTOrXWjbsGi3OF3eeCsOpDGM2iBWFDM2GG5Wyw7kRQC2
 eQG14sfzwtnv2xPfCEEvwXL5BDZ8tGjbDZBj7FP69V8wIXVPm8tEViYxLTn2BC8XYeGC
 dsiX6DVPtMiIa3hh7wuaiK2CX6hfh/duZk5iYyB7CZdryNvi/qnOegoyZAe8yDNUg4wG
 LpJ4F+WXRrMX6K9pmjVbzBX9DojW2btJcBXCMkoenuWBWiAY/LD4FNx/hnScKY5Knji6
 AMQg==
X-Gm-Message-State: APjAAAXkPOuQrFkgYt0opjOr66HNeIvcuo1ZD4ySkbzajCKy+T5QxRC1
 +Uul+dSm1QbN4DAk+47GlT0=
X-Google-Smtp-Source: APXvYqwhdEzpAv+Ycp0SCk6oDlEr04EOSmwakVxPKCW19MJa+RDSf0nTJsrdtSHEKUh0mlsn+sPTuQ==
X-Received: by 2002:a37:4dca:: with SMTP id a193mr5708784qkb.292.1570653834957; 
 Wed, 09 Oct 2019 13:43:54 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net ([2804:14c:482:a94::1])
 by smtp.gmail.com with ESMTPSA id c204sm1679602qkb.90.2019.10.09.13.43.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 13:43:54 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx6qdl-sabreauto: Fix storm of accelerometer
 interrupts
Date: Wed,  9 Oct 2019 17:43:43 -0300
Message-Id: <20191009204343.9316-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_134357_091286_A34EB066 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, leonard.crestez@nxp.com,
 Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit a211b8c55f3c ("ARM: dts: imx6qdl-sabreauto: Add sensors")
a storm of accelerometer interrupts is seen:

[  114.211283] irq 260: nobody cared (try booting with the "irqpoll" option)
[  114.218108] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.3.4 #1
[  114.223960] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
[  114.230531] [<c0112858>] (unwind_backtrace) from [<c010cdc8>] (show_stack+0x10/0x14)
[  114.238301] [<c010cdc8>] (show_stack) from [<c0c1aa1c>] (dump_stack+0xd8/0x110)
[  114.245644] [<c0c1aa1c>] (dump_stack) from [<c0193594>] (__report_bad_irq+0x30/0xc0)
[  114.253417] [<c0193594>] (__report_bad_irq) from [<c01933ac>] (note_interrupt+0x108/0x298)
[  114.261707] [<c01933ac>] (note_interrupt) from [<c018ffe4>] (handle_irq_event_percpu+0x70/0x80)
[  114.270433] [<c018ffe4>] (handle_irq_event_percpu) from [<c019002c>] (handle_irq_event+0x38/0x5c)
[  114.279326] [<c019002c>] (handle_irq_event) from [<c019438c>] (handle_level_irq+0xc8/0x154)
[  114.287701] [<c019438c>] (handle_level_irq) from [<c018eda0>] (generic_handle_irq+0x20/0x34)
[  114.296166] [<c018eda0>] (generic_handle_irq) from [<c0534214>] (mxc_gpio_irq_handler+0x30/0xf0)
[  114.304975] [<c0534214>] (mxc_gpio_irq_handler) from [<c0534334>] (mx3_gpio_irq_handler+0x60/0xb0)
[  114.313955] [<c0534334>] (mx3_gpio_irq_handler) from [<c018eda0>] (generic_handle_irq+0x20/0x34)
[  114.322762] [<c018eda0>] (generic_handle_irq) from [<c018f3ac>] (__handle_domain_irq+0x64/0xe0)
[  114.331485] [<c018f3ac>] (__handle_domain_irq) from [<c05215a8>] (gic_handle_irq+0x4c/0xa8)
[  114.339862] [<c05215a8>] (gic_handle_irq) from [<c0101a70>] (__irq_svc+0x70/0x98)
[  114.347361] Exception stack(0xc1301ec0 to 0xc1301f08)
[  114.352435] 1ec0: 00000001 00000006 00000000 c130c340 00000001 c130f688 9785636d c13ea2e8
[  114.360635] 1ee0: 9784907d 0000001a eaf99d78 0000001a 00000000 c1301f10 c0182b00 c0878de4
[  114.368830] 1f00: 20000013 ffffffff
[  114.372349] [<c0101a70>] (__irq_svc) from [<c0878de4>] (cpuidle_enter_state+0x168/0x5f4)
[  114.380464] [<c0878de4>] (cpuidle_enter_state) from [<c08792ac>] (cpuidle_enter+0x28/0x38)
[  114.388751] [<c08792ac>] (cpuidle_enter) from [<c015ef9c>] (do_idle+0x224/0x2a8)
[  114.396168] [<c015ef9c>] (do_idle) from [<c015f3b8>] (cpu_startup_entry+0x18/0x20)
[  114.403765] [<c015f3b8>] (cpu_startup_entry) from [<c1200e54>] (start_kernel+0x43c/0x500)
[  114.411958] handlers:
[  114.414302] [<a01028b8>] irq_default_primary_handler threaded [<fd7a3b08>] mma8452_interrupt
[  114.422974] Disabling IRQ #260

# cat /proc/interrupts 
           CPU0       CPU1       
....
260:     100001          0  gpio-mxc  31 Level     mma8451

The MMA8451 interrupt triggers as low level, so the GPIO6_IO31 pin
needs to activate its pull up, otherwise it will stay always at low level
generating multiple interrupts.

The current device tree does not configure the IOMUX for this pin, so
it uses whathever comes configured from the bootloader.

The IOMUXC_SW_PAD_CTL_PAD_EIM_BCLK register value comes as 0x8000 from
the bootloader, which has PKE bit cleared, hence disabling the
pull-up.

Instead of relying on a previous configuration from the bootloader,
configure the GPIO6_IO31 pin with pull-up enabled in order to fix
this problem.

Fixes: a211b8c55f3c ("ARM: dts: imx6qdl-sabreauto: Add sensors")
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx6qdl-sabreauto.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
index f3404dd10537..cf628465cd0a 100644
--- a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
@@ -230,6 +230,8 @@
 			accelerometer@1c {
 				compatible = "fsl,mma8451";
 				reg = <0x1c>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_mma8451_int>;
 				interrupt-parent = <&gpio6>;
 				interrupts = <31 IRQ_TYPE_LEVEL_LOW>;
 			};
@@ -628,6 +630,12 @@
 			>;
 		};
 
+		pinctrl_mma8451_int: mma8451intgrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0xb0b1
+			>;
+		};
+
 		pinctrl_pwm3: pwm1grp {
 			fsl,pins = <
 				MX6QDL_PAD_SD4_DAT1__PWM3_OUT		0x1b0b1
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
