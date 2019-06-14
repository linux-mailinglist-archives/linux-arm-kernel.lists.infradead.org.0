Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC9B46C9A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 01:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1aJXJ1TM5GaLk1plgEQAnzmrSYhlGYNueYiw30D/s0M=; b=WKRRkStqPTWL1L
	ZZYjnDvYh9aGgufCikDgZwU8SBbk+D5el24bM7w3xu7iexGUkfORMsqy4uGKCBzgjfHdkI7PStaRg
	VZXX7ZhC8bTsboN32l0Fq43u3Pz3sXWrJl799qVQ6vC+RKMxctlTl3YeXkzs97jYyKO9og7bx/6BV
	pvYuh6hg6UBVgq9xZJR59GlqS1/eMVYtPZ1JFv/Co9IG5WLWkcJrQSmrY9s4PKUgq08yhAS/IPxaW
	HOs3CotofRon1UZ9E+aR5KSVVw2vdsVbknDyXdU8ar5gY6POSyt25C/M7wHG1btHib7T1UXrPta2u
	ze2QsSBHpSWwpARWb1HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbvGR-0001sN-Cs; Fri, 14 Jun 2019 23:05:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbvGI-0001rP-2h; Fri, 14 Jun 2019 23:05:35 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbvGB-00084E-SQ; Sat, 15 Jun 2019 01:05:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 3/4] ARM: dts: rockchip: add display nodes for rk322x
Date: Sat, 15 Jun 2019 01:05:27 +0200
Message-ID: <5617164.NpQ99z5SQI@phil>
In-Reply-To: <20190614203610.959DA217F9@mail.kernel.org>
References: <20190614165454.13743-1-heiko@sntech.de>
 <13456600.FWPkgmLa5g@phil> <20190614203610.959DA217F9@mail.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_160534_283625_450E6DF8 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Justin Swartz <justin.swartz@risingedge.co.za>, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Stephen,

Am Freitag, 14. Juni 2019, 22:36:09 CEST schrieb Stephen Boyd:
> Quoting Heiko Stuebner (2019-06-14 12:33:12)
> > Am Freitag, 14. Juni 2019, 20:32:35 CEST schrieb Justin Swartz:
> > > On 2019-06-14 19:45, Stephen Boyd wrote:
> > > >> diff --git a/arch/arm/boot/dts/rk322x.dtsi 
> > > >> b/arch/arm/boot/dts/rk322x.dtsi
> > > >> index da102fff96a2..148f9b5157ea 100644
> > > >> --- a/arch/arm/boot/dts/rk322x.dtsi
> > > >> +++ b/arch/arm/boot/dts/rk322x.dtsi
> > > >> @@ -143,6 +143,11 @@
> > > >> #clock-cells = <0>;
> > > >> };
> > > >> 
> > > >> +       display_subsystem: display-subsystem {
> > > >> +               compatible = "rockchip,display-subsystem";
> > > >> +               ports = <&vop_out>;
> > > >> +       };
> > > >> +
> > > > 
> > > > What is this? It doesn't have a reg property so it looks like a virtual
> > > > device. Why is it in DT?
> > > 
> > > This is a virtual device.
> > > 
> > > I assumed it would be acceptable to it find in a device tree due to 
> > > binding documentation, 
> > > "Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt, 
> > > which states:
> > > 
> > > <quote>
> > > The Rockchip DRM master device is a virtual device needed to list all
> > > vop devices or other display interface nodes that comprise the
> > > graphics subsystem.
> > > </quote>
> > > 
> > > Without the "display_subsystem" device node, the HDMI PHY and 
> > > rockchipdrmfb frame buffer device are not initialized.
> > > 
> > > Perhaps I should have included this in my commit message? :)
> > 
> > As Justin said, that is very much common as the root of the components
> > that make up the drm device and pretty much common in a lot of devicetrees
> > for the last 5 years and longer ;-) .
> > 
> > Also gpio-keys also don't have a reg property ;-) .
> > 
> 
> Do you have a SoC node? If so, this virtual device should live in the
> root, away from the nodes that have reg properties and are thus in the
> SoC node.

no we don't have any soc node and that display-subsystem is really the
same on _all_ currently supported Rockchip socs ... has gone through
dt-reviews numerous times for multiple socs, so I'm somewhat
confident that we're not doing something terrible wrong.

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
