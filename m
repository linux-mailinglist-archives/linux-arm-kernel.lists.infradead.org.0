Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38F01B5431
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 07:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZEIVVrsdu4oIze9KzrfcfJ5PNkO1wBqNg4cX1fGutc=; b=Sg7E1F1LNUQset
	jHR11pu/no0+RPyOMd6diRRVm9rpKHDhbwFush0pfx9wlGJ8cNqqrC7cFEGi1LdmBlQKSZj6yQGd4
	ePiO68Ah365AYjm1zYWtEjicwuG7QhXLG34YcwsLMYzkaTByXZEpz5jlllrA839aRWTlWav5cPKcI
	gOyZQAstyv5XjCIlEu64X4lhtTMkZiI3DA72aiqPuPmE+oWpYciMgmNRQ7a8hsDSINNER/PgDFVMx
	3NW4CXFeeTqCIfbFL7WPlNYNQzR7CH3dhXXyfMkA3+oKhJBsGQuGrF8p0CbbTHMwwUkgNaS1aWsVP
	c0LYGbhkeErOJP+XA+PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRUNw-0006Xp-2O; Thu, 23 Apr 2020 05:26:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRUNh-0006Vf-Qo
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 05:26:39 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jRUNS-0005wG-3M; Thu, 23 Apr 2020 07:26:22 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jRUNQ-0004xB-1a; Thu, 23 Apr 2020 07:26:20 +0200
Date: Thu, 23 Apr 2020 07:26:20 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fengping yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: add matrix keypad documentation
Message-ID: <20200423052619.5qi7n7q6ytmrchio@pengutronix.de>
References: <20200423011958.30521-1-fengping.yu@mediatek.com>
 <20200423011958.30521-2-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423011958.30521-2-fengping.yu@mediatek.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:24:53 up 159 days, 20:43, 157 users,  load average: 0.10, 0.06,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_222637_870751_ECABFC52 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: wsd_upstream@mediatek.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fengping,

On 20-04-23 09:19, Fengping yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>
> 
> Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
> ---
>  .../devicetree/bindings/input/mtk-kpd.txt     | 61 +++++++++++++++++++

Pls don't add new binding docs as .txt instead you should use the new
yaml schema.

Regards,
  Marco

>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
> 
> diff --git a/Documentation/devicetree/bindings/input/mtk-kpd.txt b/Documentation/devicetree/bindings/input/mtk-kpd.txt
> new file mode 100644
> index 000000000000..8b154a5e2f7d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/mtk-kpd.txt
> @@ -0,0 +1,61 @@
> +* Mediatek's Keypad Controller device tree binding
> +
> +Mediatek's Keypad controller is used to interface a SoC with a matrix-type
> +keypad device. The keypad controller supports multiple row and column lines.
> +A key can be placed at each intersection of a unique row and a unique column.
> +The keypad controller can sense a key-press and key-release and report the
> +event using a interrupt to the cpu.
> +
> +Required properties:
> +- compatible should contain:
> +	* "mediatek,kp" for common keypad
> +	* "mediatek,mt6779-keypad" for specific keypad chip
> +
> +- reg: The base address of the Keypad register bank.
> +
> +- interrupts: A single interrupt specifier.
> +
> +- mediatek,debounce-us: Debounce interval in microseconds, maximum value
> +  is 256000 microseconds.
> +
> +- keypad,num-rows: Number of row lines connected to the keypad controller, it is
> +	not equal to PCB rows number, instead you should add required value for each IC.
> +
> +- keypad,num-columns: Number of column lines connected to the keypad controller,
> +	it is not equal to PCB columns number, instead you should add required value
> +	for each IC.
> +
> +- linux,keymap: The keymap for keys as described in the binding document
> +  devicetree/bindings/input/matrix-keymap.txt.
> +
> +- pinctrl: Should specify pin control groups used for this controller.
> +  See ../pinctrl/pinctrl-bindings.txt for details.
> +
> +- clocks: Must contain one entry, for the module clock.
> +  See ../clocks/clock-bindings.txt for details.
> +
> +- clock-names: Names of the clocks listed in clocks property in the same order.
> +
> +Optional Properties:
> +- wakeup-source: use any event on keypad as wakeup event.
> +
> +Example:
> +
> +	keypad: kp@10010000 {
> +		compatible = "mediatek,kp";
> +		reg = <0 0x10010000 0 0x1000>;
> +		wakeup-source;
> +		interrupts = <GIC_SPI 75 IRQ_TYPE_EDGE_FALLING>;
> +		clocks = <&clk26m>;
> +		clock-names = "kpd";
> +	};
> +
> +	&keypad {
> +		mediatek,debounce-us = <32000>;
> +		keypad,num-rows = <8>;
> +		keypad,num-columns = <9>;
> +		linux,keymap = < MATRIX_KEY(0x00, 0x00, KEY_VOLUMEDOWN) >;
> +		status = "okay";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&kpd_gpios_def_cfg>;
> +	};
> -- 
> 2.18.0

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
