Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486BC118498
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BagTCLOD3in9KP6gHykUzAFPKEhhAfmYdc/KvS2geI=; b=SffJZ7hgnywUPq
	jhLYf+UxRfXHaJX97haAkw7hbZPoKNUgE1rBFESJDTGhXeG78bg5/wVW5X9JZ9hKXOqWn0a8Z8dqx
	VegZcDqmaIhD2lQ1u+IeQPMvTh7YxztzaKANUeknHkug4TaTZ6Jld0mzvwtE7GB0j3yl8MaMwBT54
	8BkqRaaP69BzP6vVXVRZ0aRuajhF1DD25pGKvNOWOFG+4dhKSXXaPkNP4ILRYjvKqyWXXD8kp7oR7
	HHJUv9PhuIw5aILjO4OJ2E8826XagWuLB00nNmxllykp0a8DokyRP0UvSqtMdG5oHVrryOy7kzkPp
	U0+O8pS5boHB4P4ZVqaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecWi-0006Mw-HR; Tue, 10 Dec 2019 10:13:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iecWZ-0006M3-GG; Tue, 10 Dec 2019 10:13:49 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iecWS-0006Fq-56; Tue, 10 Dec 2019 11:13:40 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: RockPro64: enable wifi module
 at sdio0
Date: Tue, 10 Dec 2019 11:13:39 +0100
Message-ID: <3170826.NpdqLUR24W@diego>
In-Reply-To: <d0cece6c-9f90-c691-eb68-a25547532f68@web.de>
References: <20191209223822.27236-1-smoch@web.de> <6162240.GiEx4hqPFh@diego>
 <d0cece6c-9f90-c691-eb68-a25547532f68@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_021347_691608_4F8A9316 
X-CRM114-Status: GOOD (  29.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>,
 brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 10. Dezember 2019, 11:08:18 CET schrieb Soeren Moch:
> Hi Heiko,
> =

> On 10.12.19 02:18, Heiko St=FCbner wrote:
> > Hi Soeren,
> >
> > Am Dienstag, 10. Dezember 2019, 00:29:21 CET schrieb Soeren Moch:
> >> On 10.12.19 00:08, Heiko St=FCbner wrote:
> >>> Am Montag, 9. Dezember 2019, 23:38:22 CET schrieb Soeren Moch:
> >>>> RockPro64 supports an Ampak AP6359SA based wifi/bt combo module.
> >>>> The BCM4359/9 wifi controller in this module is connected to sdio0,
> >>>> enable this interface.
> >>>>
> >>>> Signed-off-by: Soeren Moch <smoch@web.de>
> >>>> ---
> >>>> Not sure where to place exactly the sdio0 node in the dts because
> >>>> existing sd nodes are not sorted alphabetically.
> >>>>
> >>>> This last patch in this brcmfmac patch series probably should be pic=
ked
> >>>> up by Heiko independently of the rest of this series. It was sent to=
gether
> >>>> to show how this brcmfmac extension for 4359-sdio support with RSDB =
is
> >>>> used and tested.
> >>> node placement looks good so I can apply it, just a general questions
> >>> I only got patch 8/8 are patches 1-7 relevant for this one and what a=
re they?
> >> Patches 1-7 are the patches to support the BCM4359 chipset with SDIO
> >> interface in the linux brcmfmac net-wireless driver, see [1].
> >>
> >> So this patch series has 2 parts:
> >> patches 1-7: add support for the wifi chipset in the wireless driver,
> >> this has to go through net-wireless
> >> patch 8: enable the wifi module with this chipset on RockPro64, this p=
atch
> > Thanks for the clarification :-) .
> >
> > As patch 8 "only" does the core sdio node, it doesn't really depend on =
the
> > earlier ones and you can submit any uart-hooks for bluetooth once the
> > other patches land I guess.
> The uart part for bluetooth already is in: uart0.
> However, I haven't tested if it really works.

In the new world there is now also a way to actually hook the bt-uart to
the wifi driver without userspace intervention, and you might want to hook
up the interrupt as well for sdio? For example look at the rock960:

sdio-interrupt: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/li=
nux.git/tree/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi#n510
uart-magic: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git/tree/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi#n557


Heiko

> >> If this was confusing, what would be the ideal way to post such series?
> > I think every maintainer has some slightly different perspective on thi=
s,
> > but personally I like getting the whole series to follow the discussion=
 but
> > also to just see when the driver-side changes get merged, as the dts-pa=
rts
> > need to wait for that in a lot of cases.
> OK, thanks.
> I will add you for the whole series when sending a v2.
> =

> Soeren
> >
> > Heiko
> >
> >
> >> [1] https://patchwork.kernel.org/project/linux-wireless/list/?series=
=3D213951
> >>> Thanks
> >>> Heiko
> >>>
> >>>
> >>>> Cc: Heiko Stuebner <heiko@sntech.de>
> >>>> Cc: Kalle Valo <kvalo@codeaurora.org>
> >>>> Cc: linux-wireless@vger.kernel.org
> >>>> Cc: brcm80211-dev-list.pdl@broadcom.com
> >>>> Cc: brcm80211-dev-list@cypress.com
> >>>> Cc: netdev@vger.kernel.org
> >>>> Cc: linux-arm-kernel@lists.infradead.org
> >>>> Cc: linux-rockchip@lists.infradead.org
> >>>> Cc: linux-kernel@vger.kernel.org
> >>>> ---
> >>>>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 21 ++++++++++++----=
---
> >>>>  1 file changed, 14 insertions(+), 7 deletions(-)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arc=
h/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> >>>> index 7f4b2eba31d4..9fa92790d6e0 100644
> >>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> >>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> >>>> @@ -71,13 +71,6 @@
> >>>>  		clock-names =3D "ext_clock";
> >>>>  		pinctrl-names =3D "default";
> >>>>  		pinctrl-0 =3D <&wifi_enable_h>;
> >>>> -
> >>>> -		/*
> >>>> -		 * On the module itself this is one of these (depending
> >>>> -		 * on the actual card populated):
> >>>> -		 * - SDIO_RESET_L_WL_REG_ON
> >>>> -		 * - PDN (power down when low)
> >>>> -		 */
> >>>>  		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> >>>>  	};
> >>>>
> >>>> @@ -650,6 +643,20 @@
> >>>>  	status =3D "okay";
> >>>>  };
> >>>>
> >>>> +&sdio0 {
> >>>> +	bus-width =3D <4>;
> >>>> +	cap-sd-highspeed;
> >>>> +	cap-sdio-irq;
> >>>> +	disable-wp;
> >>>> +	keep-power-in-suspend;
> >>>> +	mmc-pwrseq =3D <&sdio_pwrseq>;
> >>>> +	non-removable;
> >>>> +	pinctrl-names =3D "default";
> >>>> +	pinctrl-0 =3D <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> >>>> +	sd-uhs-sdr104;
> >>>> +	status =3D "okay";
> >>>> +};
> >>>> +
> >>>>  &sdmmc {
> >>>>  	bus-width =3D <4>;
> >>>>  	cap-sd-highspeed;
> >>>> --
> >>>> 2.17.1
> >>>>
> >>>
> >>>
> >>
> >
> >
> >
> =

> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
