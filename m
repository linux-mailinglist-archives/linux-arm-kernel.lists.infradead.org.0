Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C4210226C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 11:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3XD2zTK+J1j/Xg7DkI0RIoxGOZOR07ajBhRDzUflJ0=; b=XI+pwilWWeu7B/
	ZAlkmCt7kdqjQv0rLXMmm9ElaawQWOSsp2Zh8vCxVon9hgT//i4QFQXFyf8YXNCGHeOJ0gwwIH/bY
	NiD6ZNiQoJ3T4glZLwxaufxuazacb42SFejxEJ7cwObjx/cGvRPVcpXWRn2YYzVpH7Vju5qAdBtLf
	QkBInu0lDym8GvURjzqngm71OChBshYa6vl4ArFbzEoJR7/9v5tXLQMNsMwvtfHI/dep2QQrR/tT5
	pKTURKToxWnUAd9pOcVtDJ7pcvYYjNyLGwajbnxxazk/gGpkg36QfzbLlSB8sWbAWH5AUKQQMVJYf
	P08jOC61Oa5flRKgGCnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1DV-0001jJ-RS; Tue, 19 Nov 2019 10:58:41 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1DH-0001gw-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 10:58:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pBNFAmR97FBBaDRon/x0r4cncQGaBYrVkV812xH4WiQ=; b=eRv+9ikfmnAvDgsavYtbZsQq7
 Ufx+ZmJ/BmlQ5PH5rnF1HMUQC+4ryuRA6pQDX/jKa9UIva+X0w3qwgHCGJsazt813Hlo1Kefl4WfN
 TWf4eDTQB0DbpiZEODulp/mu9Kz3lnsBFa3j5DQ2DMOen15/cPzNXuEskQ7eJqPNHq/aupMZrxqrL
 P5O4bcNPi5u/+Zf7Gg4jatl404+rXk1w5mTjBfQJ4g9JGAwg+o+l/EJVRwUUZVUvZJ4ouVlmRMosb
 ZpGPVinQBf5+kHIL1QYUnz2XN6ACV/3oVBI943mhW660MD1c+SVIb9aiNtVbcehCpCQaljc0GZ+jM
 dZ5qqn6XQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:41676)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iX1D8-0000me-4N; Tue, 19 Nov 2019 10:58:18 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iX1D4-0000f2-UF; Tue, 19 Nov 2019 10:58:14 +0000
Date: Tue, 19 Nov 2019 10:58:14 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: Using a GPIO as an interrupt line
Message-ID: <20191119105814.GZ25745@shell.armlinux.org.uk>
References: <f0d383f3-8efa-ae68-62af-68f69cd4143f@free.fr>
 <20191119095748.GX25745@shell.armlinux.org.uk>
 <07db59e7-ff16-0457-87f2-fba10dc182d6@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <07db59e7-ff16-0457-87f2-fba10dc182d6@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_025827_447090_EF1BCF32 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, MSM <linux-arm-msm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, GPIO <linux-gpio@vger.kernel.org>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 11:46:21AM +0100, Marc Gonzalez wrote:
> On 19/11/2019 10:57, Russell King - ARM Linux admin wrote:
> 
> > On Tue, Nov 19, 2019 at 10:28:15AM +0100, Marc Gonzalez wrote:
> > 
> >> The board I'm working on provides a TCA9539 I/O expander.
> >> Or, as the datasheet(*) calls it, a "Low Voltage 16-Bit I2C and
> >> SMBus Low-Power I/O Expander with Interrupt Output, Reset Pin,
> >> and Configuration Registers"
> >>
> >> (*) http://www.ti.com/lit/ds/symlink/tca9539.pdf
> >>
> >> The binding is documented in Documentation/devicetree/bindings/gpio/gpio-pca953x.txt
> >>
> >> I have some doubts about the interrupt output, described as:
> >>
> >> Optional properties:
> >>  - interrupts: interrupt specifier for the device's interrupt output.
> >>
> >> In my board's DT, the I/O expander is described as:
> >>
> >> 	exp1: gpio@74 {
> >> 		compatible = "ti,tca9539";
> >> 		reg = <0x74>;
> >> 		gpio-controller;
> >> 		#gpio-cells = <2>;
> >> 		reset-gpios = <&tlmm 96 GPIO_ACTIVE_LOW>;
> >> 		pinctrl-names = "default";
> >> 		pinctrl-0 = <&top_exp_rst>;
> >> 		interrupt-parent = <&tlmm>;
> >> 		interrupts = <42 IRQ_TYPE_LEVEL_HIGH>;
> 
> As pointed out by ukleinek on IRC, I might have (??) specified the wrong
> trigger type. The data-sheet states:
> "The TCA9539 open-drain interrupt (INTn) output is activated when any input state
> differs from its corresponding Input Port register state, and is used to indicate
> to the system master that an input state has changed."
> (The data sheet speaks of "INT with a line on top"; what is the typical way to
> write that in ASCII? I was told that adding a trailing 'n' or 'b' was common.)

/INT or nINT are commonly used - I've never heard or seen 'b' (which is
commonly used as a suffix on binary numbers) or a trailing 'n'.

> According to that description, it looks like IRQ_TYPE_LEVEL_LOW?

Yes.

> > This specifies an interrupt signal, number 42, on the tlmm interrupt
> > controller. It isn't a GPIO specification. Not every interrupt is a
> > GPIO, and some SoCs can have dedicated interrupt pins that are
> > exactly that.
> > 
> > Hence, needlessly limiting an external device to requiring a GPIO for
> > its interrupt is detrimental.
> 
> That makes complete sense.
> 
> IIUC, what is missing in my DT spec is defining pin 42 as a GPIO pin.
> Looking more closely at top_exp_rst:
> 
> 	top_exp_rst: top_exp_rst {
> 		mux {
> 			pins = "gpio96";
> 			function = "gpio";
> 		};
> 
> 		config {
> 			pins = "gpio96";
> 			drive-strength = <2>;
> 			bias-pull-down;
> 		};
> 	};
> 
> IIUC, this defines pin 96 as a GPIO pin (as well as defining some low-level
> properties of the pin). Likely I need something similar for pin 42?

Is pin 42 something that can be muxed?  If so, it seems sane to specify
configuration for it.  Whether it needs to be a GPIO or whether it has
a specific "interrupt" function mux state depends on the SoC.

For example, on the LX2160A, there are a bunch of pins that can be muxed
as one of:
- gpio
- interrupt
- something else

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
