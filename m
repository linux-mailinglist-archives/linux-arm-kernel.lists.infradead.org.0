Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C8110205A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 10:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qzGiw9ViirPTrmYT60u5bq7e+AkjoAM4342pEEXKGNg=; b=f6ZbQ0Q+n4PWQe
	nB4xtnijzsnldN5jlfqmkuJLsGzO05GJm6GlOLGFeKGfzF26+v+2gdjW+8WPmBuCSbKWp0ZM3Yun+
	WkQOjvdPQC0BHqsR3LMgTijn+kCxaMs2H7FNEuvECewSaabKGJlcKJZzZAnwunMwQNsDeqacsjCmN
	B6TN5lHAw6Kn02H8Ie33PJ+bu7TaHzvFSV2sL6XEZcw6HvWAGo2/tOv36mW8CeuN3mEbUQgQATGjb
	4+Z5F2SQcEXf9x/AfM5NBVJoWL8cFjRMSO3IY8jAmEwkwf3aMjQxqE2lZUOOcAhStY0jhVb3HbZjJ
	wajULlb7A9BDcT5JUw6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWzoF-0001aq-P6; Tue, 19 Nov 2019 09:28:31 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWzo4-0001aL-ON
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 09:28:24 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 33CF620193;
 Tue, 19 Nov 2019 10:28:15 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 1F5FB20415;
 Tue, 19 Nov 2019 10:28:15 +0100 (CET)
To: GPIO <linux-gpio@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Using a GPIO as an interrupt line
Message-ID: <f0d383f3-8efa-ae68-62af-68f69cd4143f@free.fr>
Date: Tue, 19 Nov 2019 10:28:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Nov 19 10:28:15 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_012820_935506_16489DAA 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 SPOOFED_FREEMAIL       No description available.
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

The board I'm working on provides a TCA9539 I/O expander.
Or, as the datasheet(*) calls it, a "Low Voltage 16-Bit I2C and
SMBus Low-Power I/O Expander with Interrupt Output, Reset Pin,
and Configuration Registers"

(*) http://www.ti.com/lit/ds/symlink/tca9539.pdf

The binding is documented in Documentation/devicetree/bindings/gpio/gpio-pca953x.txt

I have some doubts about the interrupt output, described as:

Optional properties:
 - interrupts: interrupt specifier for the device's interrupt output.

In my board's DT, the I/O expander is described as:

	exp1: gpio@74 {
		compatible = "ti,tca9539";
		reg = <0x74>;
		gpio-controller;
		#gpio-cells = <2>;
		reset-gpios = <&tlmm 96 GPIO_ACTIVE_LOW>;
		pinctrl-names = "default";
		pinctrl-0 = <&top_exp_rst>;
		interrupt-parent = <&tlmm>;
		interrupts = <42 IRQ_TYPE_LEVEL_HIGH>;
	};


("tlmm" is a pinctrl for qualcomm SoCs.)

The problem with this DT node is that nowhere have I specified that
the interrupt output is itself a GPIO line... I see other drivers
calling gpiod_to_irq() to handle this kind of setup. I assume this
function marks the GPIO as "used for interrupt, no longer available
as software-controlled GPIO"?

The tlmm node has the following properties:

	tlmm: pinctrl@03400000 {
		compatible = "qcom,msm8998-pinctrl";
		reg = <0x03400000 0xc00000>;
		interrupts = <0 208 0>;
		gpio-controller;
		#gpio-cells = <2>;
		interrupt-controller;
		#interrupt-cells = <2>;

Does gpio-controller and/or interrupt-controller mean something
is automagically happening when exp1's interrupts = <42 IRQ_TYPE_LEVEL_HIGH>
prop is being processed?

Or maybe I just have no idea what gpiod_to_irq() is used for?

I'd appreciate any help clearing my confusion.

Regards.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
