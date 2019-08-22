Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0906C988F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 03:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BbPTtOoPd3lBj8N+jD8abKT0QTByfp9GcpJBNd1Vd0=; b=CuvnTmJxGRDfoI
	5NoRjpBhDmW3hD788Vn1uYm4XuBen599p9m8jyTxz5m+gJf1ef5JSiu5ljLrmJNw3w9kbh0qlsCKU
	nPOUyafb6pNdq7aVKXy8VsUZYbYwPorUIL0D86Mn6x0yWKAl2vke82BIW1oYrrlWDpeIJEfQcgwuA
	ZrYqqLyr5GRtr48HDj9xQ39+fzHKMDZ6VRKHUzTtE3ll6orO9C7k/n86IUMOs3nByEoV8ZMpQFZYN
	FzDnWRj9c2qPAFXj0D2Cmkn5TGvYKL5F5HqPCaYqlIPg8zx3ekfgjzN9XS0c9O0Lp2Ptu1Oy8YX6G
	kFZINNDw5el2/SU+ffrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bu8-0002WN-8i; Thu, 22 Aug 2019 01:28:44 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0btm-0002Vq-J4
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 01:28:25 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 2107521B10;
 Wed, 21 Aug 2019 21:28:20 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 21 Aug 2019 21:28:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=JffuWZmKIHpAssdWvVAgw68YOG/K4zA
 LCtps5XoDx6E=; b=GT0VQcuwqjqfOC32GkjkXxhQZgy+D/YsTeMPBVd3l1vET41
 OPRTPWzvsS3ZiRffKXppIhY6rR9bPJqKh0E6QQeFsW+gQ136lRnMNWWk9mciIgta
 hDW1MGt27Zc70nDEPn+HBOPpl3/cmBBNJYWcIAdbiNRF0aU1MIanVGoNRRmF54Zk
 JZMJFbe5Q/qgZuiMvMOp2MiRddqZeBDBIRUl6rk7SpKw1qSIu9ctAYQ+hWpqtZ+C
 DxNretB5Pb261wAa7XqVTmy2wmnFOMfylLKB3t42xzVzLCRqZhsKgIjI4arNaPH5
 8kzJbD+TpsI/ugkaRwj1Oqri4wnHG1rk9D14JTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=JffuWZ
 mKIHpAssdWvVAgw68YOG/K4zALCtps5XoDx6E=; b=uHRHlDyc4h6wWa4YwSnnrr
 Db7lIU0M9x8Fob20Y6ZvxM4jaj0lOEq4yhj3n5fJawIvxtKQNQA5gb6wZ4v4h0xs
 xzFeacwvqhMa6zzbJr+idpYRv8qW2MA3UOBex0dPw7CB2B5HycTr3SKgoUkqfwo6
 iB7ysZXEHLHHuJmYsSmJCdCWACPbq+nwYZY+a91eJ8yBXbWrfxiwU5Oxn8Ct6UXf
 2wYZJsA3uLkQe12I4fT+BdoYV5ngtSLYnLpPxugzLhah16BIE6eYS0NANb0gqhbh
 lcGewnkyI1faP1/PO00a4Nz5k2/HoLsx5RMwKTDrt8kjGQ6hAoYkK6nauTj5jy8Q
 ==
X-ME-Sender: <xms:s-9dXdeEUQr19jj29sGcWTzsYgvrLQ66vX_wNEYJEISUfXtDH0KWgw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeggedggeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgepud
X-ME-Proxy: <xmx:s-9dXSiKCGyKqVPdoNAz-SbW6YY-4ySNcu0kZ-OdE0ifpz2LZIEaMA>
 <xmx:s-9dXbN_UpMnyLPg0RXc4lw8anu2OQokCjO7VuEQLTKdDnm5LUeyGw>
 <xmx:s-9dXf8ff-Eqcn56XzTatMQPYL8YBCukKX8WiLNuqeuKwMQhOCY7Zw>
 <xmx:tO9dXZHqNj_6CL3r9Pm7FzvMo0Jtl8pdWJPRYdKnm0Y05ObNpNchJg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id CFF33E00A3; Wed, 21 Aug 2019 21:28:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-916-g49fca03-fmstable-20190821v7
Mime-Version: 1.0
Message-Id: <839a0780-e0ab-4615-ad6f-fda1881260b2@www.fastmail.com>
In-Reply-To: <20190821055530.8720-4-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
 <20190821055530.8720-4-joel@jms.id.au>
Date: Thu, 22 Aug 2019 10:58:35 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Rob Herring" <robh+dt@kernel.org>,
 "Arnd Bergmann" <arnd@arndb.de>, "Olof Johansson" <olof@lixom.net>
Subject: Re: [PATCH 3/7] ARM: aspeed: Add ASPEED AST2600 architecture
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_182823_830948_7388DD9C 
X-CRM114-Status: GOOD (  12.70  )
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
> The AST2600 is a Cortex A7 dual core CPU that uses the ARM GIC for
> interrupts and ARM timer as a clocksource.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/mach-aspeed/Kconfig | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-aspeed/Kconfig b/arch/arm/mach-aspeed/Kconfig
> index 2979aa4daeea..56007b0b6120 100644
> --- a/arch/arm/mach-aspeed/Kconfig
> +++ b/arch/arm/mach-aspeed/Kconfig
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  menuconfig ARCH_ASPEED
>  	bool "Aspeed BMC architectures"
> -	depends on ARCH_MULTI_V5 || ARCH_MULTI_V6
> +	depends on ARCH_MULTI_V5 || ARCH_MULTI_V6 || ARCH_MULTI_V7
>  	select SRAM
>  	select WATCHDOG
>  	select ASPEED_WATCHDOG
> @@ -33,4 +33,16 @@ config MACH_ASPEED_G5
>  	 Say yes if you intend to run on an Aspeed ast2500 or similar
>  	 fifth generation Aspeed BMCs.
>  
> +config MACH_ASPEED_G6
> +	bool "Aspeed SoC 6th Generation"
> +	depends on ARCH_MULTI_V7
> +	select CPU_V7
> +	select PINCTRL_ASPEED_G6
> +	select ARM_GIC
> +	select HAVE_ARM_ARCH_TIMER
> +	select HAVE_SMP
> +	help
> +	 Say yes if you intend to run on an Aspeed ast2600 or similar
> +	 sixth generation Aspeed BMCs.
> +
>  endif
> -- 
> 2.23.0.rc1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
