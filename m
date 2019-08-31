Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F2BA4681
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 01:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRMmIGVP9+0fcWfyjwwGhKZnwRuDmpTyOZD8WH0FjZs=; b=rk5+W+SKLXFIHi
	68ffUMhTeb0UCy5mQdO8VEaM+pm/ugKBeh70VxbnA9S5o9zjcFw1yrQCKj+L5RYyBHo1Ky1mNv6aH
	etr7OhKejarqeZQWZw2P7cZYOh5eeMLsPh02VvjdEWq3FYB8ywivO4i7Wa07XWQ+ShHxIxb8gylha
	4gJnKfbBzvvDb6uajZwUukQB8AsWLOr/++jHkg9SbRkFA/XBnzbRLYsdIGB4UBJNz9CbDjKtxU/v8
	2UW3H8ahfMPBJ75TFsz+RPWS8FCdmzvfeAhq66nKR9oPaugpuY3kMAquY3eekDG5NcPHIwSn4a4nI
	ls3ux9hdC1eQhua2iyGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4CR4-0001Uh-EI; Sat, 31 Aug 2019 23:05:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4CQY-0000qy-7S; Sat, 31 Aug 2019 23:05:03 +0000
Received: from [88.128.80.160] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i4CQJ-0002xc-OE; Sun, 01 Sep 2019 01:04:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Elon Zhang <zhangzj@rock-chips.com>
Subject: Re: [PATCH v1 1/1] ARM: dts: rockchip: set crypto default disabled on
 rk3288
Date: Sun, 01 Sep 2019 01:04:31 +0200
Message-ID: <3345609.Z0LLm6LDBC@phil>
In-Reply-To: <3b9cbffa-291e-fc95-bce6-5b24f5fd860d@rock-chips.com>
References: <20190827071439.14767-1-zhangzj@rock-chips.com>
 <4806912.UyKsYhR33o@phil>
 <3b9cbffa-291e-fc95-bce6-5b24f5fd860d@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_160502_426643_D97A9087 
X-CRM114-Status: GOOD (  22.16  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Elon,

Am Donnerstag, 29. August 2019, 13:31:00 CEST schrieb Elon Zhang:
> On 8/27/2019 22:28, Heiko Stuebner wrote:
> > Am Dienstag, 27. August 2019, 09:14:39 CEST schrieb Elon Zhang:
> >> Not every board needs to enable crypto node, so the node should
> >> be set default disabled in rk3288.dtsi and enabled in specific
> >> board dts file.
> > Can you give a bit more rationale here? There would need to be a very
> > specific reason because of the following:
> >
> > The crypto module is not wired to some board-specific components,
> > so its usability does not depend on the specific board at all.
> > Instead every board can just use it out of the box and the devicetree
> > is supposed to describe the hardware and is _not_ meant as a space
> > for user configuration.
> 
> Right for almost all normal hardware modules but the crypto module was 
> designed
> 
> for secure world. As a result,  the crypto module will become 
> inaccessible for linux kernel if secure world enable it.
> 
> We plan to enable the crypto module in secure world so we should set 
> crypto module default disabled in linux kernel.

ok ... I'm halfway convinced ;-) .

The big thing I want to see is that secure setting in the actual firmware.
Aka right now you probably have that in your Rockchip-specific ATF fork
and I really want to see the relevant change for public uboot or ATF.

I don't necessarily require it to be fully merged before taking this, but
I really want to see the change either on a mailing list or atf gerrit
instance [that makes the crypto engine secure only].

Rationale behind this is that we don't care very much about private stuff
that the general ecosystem doesn't benefit from.


Thanks
Heiko


> > So in fact the status property should probably go away completely from
> > the crypto node, as it's usable out of the box in all cases.
> >
> >
> > Heiko
> >
> >
> >
> >> Signed-off-by: Elon Zhang <zhangzj@rock-chips.com>
> >> ---
> >>   arch/arm/boot/dts/rk3288.dtsi | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> >> index cc893e154fe5..d509aa24177c 100644
> >> --- a/arch/arm/boot/dts/rk3288.dtsi
> >> +++ b/arch/arm/boot/dts/rk3288.dtsi
> >> @@ -984,7 +984,7 @@
> >>   		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
> >>   		resets = <&cru SRST_CRYPTO>;
> >>   		reset-names = "crypto-rst";
> >> -		status = "okay";
> >> +		status = "disabled";
> >>   	};
> >>   
> >>   	iep_mmu: iommu@ff900800 {
> >>
> >
> >
> >
> >
> >
> >
> 
> 
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
