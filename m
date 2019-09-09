Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CE5AD22D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 05:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVaY4saLUrv5jh0EEqReedgcB4lRJggvCzf1o69TdaA=; b=aO6KAhCypphxGb
	U0urvcuZzlM6CF3s+14rB0u80ZvhcsKKqm15j20FeHmzM3EPbwhqv71rzOdxtEyZiP6jBWq2BoPKL
	t7gSeIf/ZzkluQXpp5aVo7iPXIYVEKiTiOTQtUTSYfcYxrgmpklnpfnDyW1jMSdJ/xFBXIEPNS+ei
	uE7ft4fuWkFrYHqWhK0DDUgU8le0PGmCGBcMGOMeI3WOOQ5zt6HDUpwrhKdRKXxt4NRW4MOsxnUZS
	T42S6GwTTs/YvYyWRRRjfn9bZ7YCVIL1eoTJUBtLO11wXE3lGkdRVScvcx4QQF7c6VUXD3BeSF2xG
	YmxdRoUTuYJxDwaQVTMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7AG3-0007ym-4O; Mon, 09 Sep 2019 03:22:27 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7AFq-0007y0-LH
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 03:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1567999329; bh=vGYPee7mKvLamg5HC7jtXbBVYj6KXR/2WLHAods+Fag=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=XtHCSzy5e62L1bITKndtj+3FFoPAdA6OegqfjwJSR/jyEmq+59SgqFa+A8wFEwHS0
 WLmj3PTQilbBuH5qhJMipBhxeByZPp/oTf4p5Fnm1GQcApTFCfSnZmqWjg2QLt07Hw
 tP6IhXE0K/lCI8SUbrEwrpjP32k4VpLdiNm8ITrA=
Date: Mon, 9 Sep 2019 05:22:08 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v4 00/10] Allwinner sunxi message box support
Message-ID: <20190909032208.rlorx2ppytymtyej@core.my.home>
Mail-Followup-To: Samuel Holland <samuel@sholland.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190820032311.6506-1-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820032311.6506-1-samuel@sholland.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_202215_204805_8E3A7953 
X-CRM114-Status: GOOD (  30.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Samuel,

On Mon, Aug 19, 2019 at 10:23:01PM -0500, Samuel Holland wrote:
> This series adds support for the "hardware message box" in sun8i, sun9i,
> and sun50i SoCs, used for communication with the ARISC management
> processor (the platform's equivalent of the ARM SCP). The end goal is to
> use the arm_scpi driver as a client, communicating with firmware running
> on the AR100 CPU, or to use the mailbox to forward NMIs that the
> firmware picks up from R_INTC.
> 
> Unfortunately, the ARM SCPI client no longer works with this driver
> since it now exposes all 8 hardware FIFOs individually. The SCPI client
> could be made to work (and I posted proof-of-concept code to that effect
> with v1 of this series), but that is a low priority, as Linux does not
> directly use SCPI with the current firmware version; all SCPI use goes
> through ATF via PSCI.
> 
> As requested in the comments to v3 of this patchset, a demo client is
> provided in the final patch. This demo goes along with a toy firmware
> which shows that the driver does indeed work for two-way communication
> on all channels. To build the firmware component, run:

I've tried using this driver with mainline arm_scpi driver (which is probably
an expected future use, since crust provides SCPI interface).

The problem I've found is that arm_scpi expects message box to be
bi-directional, but this driver provides uni-directional interface.

What do you think about making this driver provide bi-directional interface?
We could halve the number of channels to 4 and mandate TX/RX configuration
(from main CPU's PoV) as ABI.

Otherwise it's impossible to use it with the arm_scpi driver.

Or do you have any other ideas? I guess arm_scpi can be fixed to add a
property that would make it possible to use single shmem with two
mailboxes, one for rx and one for tx, but making sun6i mailbox have
bi-directional interface sounds easier.

regards,
	o.

>   git clone https://github.com/crust-firmware/meta meta
>   git clone -b mailbox-demo https://github.com/crust-firmware/crust meta/crust
>   cd meta
>   make
> 
> That will by default produce a U-Boot + ATF + SCP firmware image in
> [meta/]build/pinebook/u-boot-sunxi-with-spl.bin. See the top-level
> README.md for more information, such as cross-compiler setup.
> 
> I've now used this driver with three separate clients over the past two
> years, and they all work. If there are no remaining concerns with the
> driver, I'd like it to get merged.
> 
> Even without the driver, the clock patches (1-2) can go in at any time.
> 
> Changes from v3:
>   - Rebased on sunxi-next
>   - Added Rob's Reviewed-by for patch 3
>   - Fixed a crash when receiving a message on a disabled channel
>   - Cleaned up some comments/formatting in the driver
>   - Fixed #mbox-cells in sunxi-h3-h5.dtsi (patch 7)
>   - Removed the irqchip example (no longer relevant to the fw design)
>   - Added a demo/example client that uses the driver and a toy firmware
> 
> Changes from v2:
>   - Merge patches 1-3
>   - Add a comment in the code explaining the CLK_IS_CRITICAL usage
>   - Add a patch to mark the AR100 clocks as critical
>   - Use YAML for the device tree binding
>   - Include a not-for-merge example usage of the mailbox
> 
> Changes from v1:
>   - Marked message box clocks as critical instead of hacks in the driver
>   - 8 unidirectional channels instead of 4 bidirectional pairs
>   - Use per-SoC compatible strings and an A31 fallback compatible
>   - Dropped the mailbox framework patch
>   - Include DT patches for SoCs that document the message box
> 
> Samuel Holland (10):
>   clk: sunxi-ng: Mark msgbox clocks as critical
>   clk: sunxi-ng: Mark AR100 clocks as critical
>   dt-bindings: mailbox: Add a sunxi message box binding
>   mailbox: sunxi-msgbox: Add a new mailbox driver
>   ARM: dts: sunxi: a80: Add msgbox node
>   ARM: dts: sunxi: a83t: Add msgbox node
>   ARM: dts: sunxi: h3/h5: Add msgbox node
>   arm64: dts: allwinner: a64: Add msgbox node
>   arm64: dts: allwinner: h6: Add msgbox node
>   [DO NOT MERGE] drivers: firmware: msgbox demo
> 
>  .../mailbox/allwinner,sunxi-msgbox.yaml       |  79 +++++
>  arch/arm/boot/dts/sun8i-a83t.dtsi             |  10 +
>  arch/arm/boot/dts/sun9i-a80.dtsi              |  10 +
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi            |  10 +
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  34 ++
>  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  24 ++
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  10 +
>  drivers/clk/sunxi-ng/ccu-sun50i-a64.c         |   3 +-
>  drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c        |   2 +-
>  drivers/clk/sunxi-ng/ccu-sun50i-h6.c          |   3 +-
>  drivers/clk/sunxi-ng/ccu-sun8i-a23.c          |   3 +-
>  drivers/clk/sunxi-ng/ccu-sun8i-a33.c          |   3 +-
>  drivers/clk/sunxi-ng/ccu-sun8i-a83t.c         |   3 +-
>  drivers/clk/sunxi-ng/ccu-sun8i-h3.c           |   3 +-
>  drivers/clk/sunxi-ng/ccu-sun8i-r.c            |   2 +-
>  drivers/clk/sunxi-ng/ccu-sun9i-a80.c          |   3 +-
>  drivers/firmware/Kconfig                      |   6 +
>  drivers/firmware/Makefile                     |   1 +
>  drivers/firmware/sunxi_msgbox_demo.c          | 307 +++++++++++++++++
>  drivers/mailbox/Kconfig                       |  10 +
>  drivers/mailbox/Makefile                      |   2 +
>  drivers/mailbox/sunxi-msgbox.c                | 323 ++++++++++++++++++
>  22 files changed, 842 insertions(+), 9 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sunxi-msgbox.yaml
>  create mode 100644 drivers/firmware/sunxi_msgbox_demo.c
>  create mode 100644 drivers/mailbox/sunxi-msgbox.c
> 
> -- 
> 2.21.0
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
