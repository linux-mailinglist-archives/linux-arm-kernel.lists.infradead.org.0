Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E50F94F673
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 17:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZUbg2zTrQDgmbIDC5SI5WtEr0W2V0WbCNcXkSJF02A=; b=i4FcPoZOdviMip
	jaJfYisU604qRyJOWmjVXPczD0KuegsnSs0cAjBLntuPmdQtmw3Ka1au5cpfjq+n0mGLvphKu910q
	OAlXEKOQGxKXN7ZEVNQCn1v83g+R+m3dZaSS41OFXma28Z8W3zEB4EOy7VmBqtEtC48URdG4gXxuW
	b5WOycRShaIc60YHfWSa2uXM+uGDDTBalPZcSYzDlbQlJRvv8BPFc5wsk1mIyhguMhZ/T7uYIe2Ml
	gHFYwC8AJMhnaNBvq7D1/1fsmo1elif2uVEI87zCHMRCJ75Ivyc9g5K8DYP7C3YwXYsFtZCrHR5H9
	6uBaYqPDNG9xcZDHRYxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hehju-0008Nv-Nw; Sat, 22 Jun 2019 15:15:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hehjh-0008MO-Ac; Sat, 22 Jun 2019 15:15:26 +0000
Received: from p508fd9dc.dip0.t-ipconnect.de ([80.143.217.220]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hehjc-00064g-TU; Sat, 22 Jun 2019 17:15:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] ARM: dts: rockchip: add ethernet phy node for tinker board
Date: Sat, 22 Jun 2019 17:15:20 +0200
Message-ID: <1891431.W4duSCi9rW@phil>
In-Reply-To: <ccf5ad2c-bd56-2d77-4728-d7906045e302@katsuster.net>
References: <20190621180017.29646-1-katsuhiro@katsuster.net>
 <1871177.hjLhdHVgcu@phil>
 <ccf5ad2c-bd56-2d77-4728-d7906045e302@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_081525_527158_0A108857 
X-CRM114-Status: GOOD (  22.69  )
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Katsuhiro,

Am Samstag, 22. Juni 2019, 16:50:10 CEST schrieb Katsuhiro Suzuki:
> Current linux-next on my environment, 'ifconfig eth0 up' does not
> work correctly with following message...
> 
> -----
> root@linaro-alip:~# ifconfig eth0 up
> [  105.028916] rk_gmac-dwmac ff290000.ethernet eth0: stmmac_open: Cannot 
> attach to PHY (error: -19)
> SIOCSIFFLAGS: No such device
> -----
> 
> I checked drivers/net/ethernet/stmicro/stmmac/stmmac_main.c and found
> stmmac_init_phy() is going to fail if ethernet device node does not
> have following property:
>    - phy-handle
>    - phy
>    - phy-device
> 
> I salvaged old version of linux-next kernel (5.2.0-rc1-20190523),
> network device of my Tinker Board worked correctly if use it.
>
> I have not bisect commit of root cause yet... Is it better to bisect
> and find problem instead of sending this patch?

That is clearly a regression (even recent) a newer kernel should
not break old devicetrees and the mdio subnode creating a
mdio bus is already marked as optional.

So this will likely affect a lot more boards than the tinker board.

So if you can find the time you could try to find the offending
commit first, so that ideally the network maintainers can fix that
up.


Thanks
Heiko

> On 2019/06/22 17:33, Heiko Stuebner wrote:
> > Hi,
> > 
> > Am Freitag, 21. Juni 2019, 20:00:17 CEST schrieb Katsuhiro Suzuki:
> >> This patch adds missing mdio and ethernet PHY nodes for rk3328 ASUS
> >> tinker board.
> >>
> >> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> > 
> > just for my understanding, which problem does this solve?
> > Normally the gmac can establish connections just fine on
> > the rk3288 by probing the phy in the automatic way.
> > 
> > And I also don't see any additional properties like phy
> > interrupt line below.
> > 
> > 
> > Thanks
> > Heiko
> > 
> >> ---
> >>   arch/arm/boot/dts/rk3288-tinker.dtsi | 12 ++++++++++++
> >>   1 file changed, 12 insertions(+)
> >>
> >> diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
> >> index 293576869546..3190817e8d5d 100644
> >> --- a/arch/arm/boot/dts/rk3288-tinker.dtsi
> >> +++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
> >> @@ -117,6 +117,7 @@
> >>   	assigned-clocks = <&cru SCLK_MAC>;
> >>   	assigned-clock-parents = <&ext_gmac>;
> >>   	clock_in_out = "input";
> >> +	phy-handle = <&phy0>;
> >>   	phy-mode = "rgmii";
> >>   	phy-supply = <&vcc33_lan>;
> >>   	pinctrl-names = "default";
> >> @@ -127,6 +128,17 @@
> >>   	tx_delay = <0x30>;
> >>   	rx_delay = <0x10>;
> >>   	status = "ok";
> >> +
> >> +	mdio0 {
> >> +		compatible = "snps,dwmac-mdio";
> >> +		#address-cells = <1>;
> >> +		#size-cells = <0>;
> >> +
> >> +		phy0: ethernet-phy@0 {
> >> +			compatible = "ethernet-phy-ieee802.3-c22";
> >> +			reg = <0>;
> >> +		};
> >> +	};
> >>   };
> >>   
> >>   &gpu {
> >>
> > 
> > 
> > 
> > 
> > 
> 
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
