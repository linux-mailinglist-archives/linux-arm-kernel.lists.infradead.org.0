Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8304988F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 03:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROehMSrwPpxizwuek5KQ87lzBhgL7RSinTC294QQyqY=; b=XRJDhsj0kiylMc
	hQQPaCL6ou2veaCwbw9oGjgEqEM4+G/78KqAJq/WdJ+Y4ODaRZRRdiA1LlmlQWcK4xD682RawByJW
	Yjv4eWeD52iQY/9rp9xoju/ePtJ2g68qNwsGW0hf4dUbMlHdvDcPXgNzXS4qDnt7J/akFxB/ZwBs6
	f3wzUZ1pbfk9ZTnvLg8S8jJAo588B+/16Nk7M2CEvIoTKvOKRnX6eQASBZR1O2ywmh6TmKf2aosd2
	x2+4Xh9WhjAmRQtB15ycF75KEVCEnqsTglrKSu8AWr/aLF/43waxM0KvufdXF9ASEQydMMUwDEIk9
	n3AGzTDK8vX4yhIBE7Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0btD-0001l0-Cf; Thu, 22 Aug 2019 01:27:47 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bsk-0001fG-3W
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 01:27:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id DC9B021AF1;
 Wed, 21 Aug 2019 21:27:09 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 21 Aug 2019 21:27:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=P6YpUynkrjoqomQxrt5nvLSMmxiMUP5
 C3MbwFz57nIQ=; b=po1bSAxSE0b82sdIWJwchyERgu4XtUIj/I6ox3dd0jkWZmJ
 Hb70Xt27qKswndCfNSbMggxyW4AGy5cPcwk3d6pLvCO2e6RmcY4tn0qbfAue8mUf
 By5HKRe+GLYpqdBuYIMj/TSLMSUzBLim8cetsqYd19B35s0973ajgPF9mVBXlrrW
 OLsEZOUGWPoQIe0ZwGPjIu7rKN6pHXR2n2+pjBacuYfKMHiU1xrmAMvoia1UOD+6
 hjtAaTJ5Cqu8IyX5e2h3J3B+DCG639BtU23hGngsxs4ezG4X+PtFJcTSvHy1Y0lm
 PUp5TKqQsx8G0dCgytjNz3qfYaG47RBGxjJbNrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=P6YpUy
 nkrjoqomQxrt5nvLSMmxiMUP5C3MbwFz57nIQ=; b=Tucw0xXyRP7T4g/oHMyyRq
 noLw5CMf+TsvwPixt4TAgOeiyUD/6zVrlJWf+eH7QOpnmsHoIk7NYH/w4kgYzunR
 uDo+1+B/kyvGvP5xbAqF+daskCoUZFegQH/cdQ4BN/tdc8vsIOu6zg6VmTHeUGA5
 rjXpBUVvg9imVdkRy/gNEwknI9lguU3xEMVJ2rNV67Cg04FCWRE6C+C5z9ThMg8v
 wdnImsM4Gyu3eps1I4BRzrLtn9oWGyZk7irVcnkN8SyEN2lKELwnhH91W46wRujE
 Ks2BvAyYXmyXFxLLBzh0xi9V+0JPt+SQoNmzi+PPqARO2kuoYnkHwj4wC1QT6Qog
 ==
X-ME-Sender: <xms:bO9dXRyhlMHkPIyvSyTMCpGjgAKnFwTL1VUyViUdjtfApivW59iycQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeggedggeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:bO9dXT4AzVZ6gxCBZw6KGjfUsezo-hO6vLRqE8ikv5yL0TVj5b5GDg>
 <xmx:bO9dXa18wnpibyM5my2EIwfTaUc6LehUuy7R_D_-dl2tw4CPxKEwyA>
 <xmx:bO9dXU131KUAv9eIHrFR-Q3-zsL96Kb6KqKKNeYS6jgQlKvzTaj7gA>
 <xmx:be9dXf3KDKs3dNnP04ffsk-pquiV3ZkOcC74fBLYiQKY3CkyB92BNA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 5E11AE00A3; Wed, 21 Aug 2019 21:27:08 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-916-g49fca03-fmstable-20190821v7
Mime-Version: 1.0
Message-Id: <0e9c483f-4f12-45a4-8d2c-1aa3ae34fa7a@www.fastmail.com>
In-Reply-To: <20190821055530.8720-3-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
 <20190821055530.8720-3-joel@jms.id.au>
Date: Thu, 22 Aug 2019 10:57:22 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Rob Herring" <robh+dt@kernel.org>,
 "Arnd Bergmann" <arnd@arndb.de>, "Olof Johansson" <olof@lixom.net>
Subject: Re: [PATCH 2/7] ARM: aspeed: Select timer in each SoC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_182718_508839_C1AFD3DD 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 21 Aug 2019, at 15:26, Joel Stanley wrote:
> In preparation for adding the ast2600 which does not use this timer.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/mach-aspeed/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-aspeed/Kconfig b/arch/arm/mach-aspeed/Kconfig
> index a15c3a291386..2979aa4daeea 100644
> --- a/arch/arm/mach-aspeed/Kconfig
> +++ b/arch/arm/mach-aspeed/Kconfig
> @@ -5,7 +5,6 @@ menuconfig ARCH_ASPEED
>  	select SRAM
>  	select WATCHDOG
>  	select ASPEED_WATCHDOG
> -	select FTTMR010_TIMER
>  	select MFD_SYSCON
>  	select PINCTRL
>  	help
> @@ -18,6 +17,7 @@ config MACH_ASPEED_G4
>  	depends on ARCH_MULTI_V5
>  	select CPU_ARM926T
>  	select PINCTRL_ASPEED_G4
> +	select FTTMR010_TIMER
>  	help
>  	 Say yes if you intend to run on an Aspeed ast2400 or similar
>  	 fourth generation BMCs, such as those used by OpenPower Power8
> @@ -28,6 +28,7 @@ config MACH_ASPEED_G5
>  	depends on ARCH_MULTI_V6
>  	select CPU_V6
>  	select PINCTRL_ASPEED_G5
> +	select FTTMR010_TIMER
>  	help
>  	 Say yes if you intend to run on an Aspeed ast2500 or similar
>  	 fifth generation Aspeed BMCs.
> -- 
> 2.23.0.rc1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
