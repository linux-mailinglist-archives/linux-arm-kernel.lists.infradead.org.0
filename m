Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8DAAAEF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 01:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwTysaHcPsOnw3rX38CZyUA3WulbES3P9l3WvmzAgAs=; b=il6cG7dbh+mUdq
	/sC22Rr/SViak+6jAmJKjmWBfWKGuch/kPiM48sTmhMW4hUszotm1hwJX8G8awJheN88S9x+SY31Y
	FAsxy0SzlWMS24z16nNCOKMZPOnVJG9nDICyszJF2ip+vDmqHNVOJ4NQmf5sUSAc+hsxCBVGeCkNh
	Or2YlCdpexzTwZSdWC2XDhdF6IH/lUwmtFCywAzs8wL/zXBamWGhnBSGOGyAzFVUoc9ugJdgHHvwr
	6GBcHmaFoXC9wTSF7y6VMVSTfeQWPbGoNiDM8TVreCMZHFnd5DDsBNXzx3nByL9S58RIxdtWENK21
	zPOcm/9k9nyGvw44eMkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i60oC-00048o-HA; Thu, 05 Sep 2019 23:04:56 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i60o5-00048K-9n
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 23:04:50 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 0A27C810D;
 Thu,  5 Sep 2019 23:05:16 +0000 (UTC)
Date: Thu, 5 Sep 2019 16:04:43 -0700
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
Message-ID: <20190905230443.GA52127@atomide.com>
References: <20190828150037.2640-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828150037.2640-1-aford173@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_160449_382910_70FDEE51 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Paul Walmsley <paul@pwsan.com>, aaro.koskinen@iki.fi,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>, pali.rohar@gmail.com,
 linux-omap@vger.kernel.org, adam.ford@logicpd.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Adam Ford <aford173@gmail.com> [190828 15:01]:
> The datasheet for the AM3517 shows the RNG is connected to L4.
> It shows the module address for the RNG is 0x480A0000, and it
> matches the omap2.dtsi description.  Since the driver can support
> omap2 and omap4, it seems reasonable to assume the omap3 would
> use the same core for the RNG.
> 
> This RFC, mimics much of the omap2 hwmods on the OMAP3. It
> also adds the necessary clock for driving the RNG.  Unfortunately,
> it appears non-functional.  If anyone has any suggestions on how
> to finish the hwmod (or port it to the newer l4 device tree
> format), feedback is requested.

Yup I'll take the bait :) The patch below seems to do the trick
for me on dm3730 based on translating your patch to probe with
ti-sysc.

Not sure about 34xx, it seems we're missing rng_clk? Care
to give it a try and attempt simlar patches for 34xx and
3517?

At least I'm not needing the "ti,no-reset-on-init" property
that your patch has a comment for. Maybe that's needed on
some other omap3.

Oh and this needs to default to status = "disabled" for
HS devices like n900 as it needs to use the omap3-rom-rng.

Regards,

Tony

8< -----------------------
diff --git a/arch/arm/boot/dts/omap36xx.dtsi b/arch/arm/boot/dts/omap36xx.dtsi
--- a/arch/arm/boot/dts/omap36xx.dtsi
+++ b/arch/arm/boot/dts/omap36xx.dtsi
@@ -140,6 +140,29 @@
 			};
 		};
 
+		rng_target: target-module@480a0000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x480a003c 0x4>,
+			      <0x480a0040 0x4>,
+			      <0x480a0044 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-mask = <(SYSC_OMAP2_AUTOIDLE)>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>;
+			ti,syss-mask = <1>;
+			clocks = <&rng_ick>;
+			clock-names = "ick";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x480a0000 0x2000>;
+
+			rng: rng@0 {
+				compatible = "ti,omap2-rng";
+				reg = <0x0 0x2000>;
+				interrupts = <52>;
+			};
+		};
+
 		/*
 		 * Note that the sysconfig register layout is a subset of the
 		 * "ti,sysc-omap4" type register with just sidle and midle bits

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
