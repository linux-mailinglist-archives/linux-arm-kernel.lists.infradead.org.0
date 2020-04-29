Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95D21BEB7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aL2ZBcftHzcVdJ5vJ45c3WITmryx7C5FBDAaci8aQWY=; b=IGFB8VUkZGqlQi
	Ux8gInFp/ZYxVIV6gs0UrJiwNRox8Dan/6ZVGy9KNE5dkuvQTsiCbOQ82JBRHEf0wuEodFXjuc0WR
	kujRXB0lF7+nhVFvgpYnnrkPBbsp9XPUS7J3xd/eolumn7EsCRAr2lBLuSblYuRx+Avy3AeuTDyRf
	GmlqFE+oM/s7qv9wTXLgtHqdID85qoDiq021rhmbv261+JDxFTZk1cGMuCr4TUIySsBweqv/xGbrw
	o5seC8x3LSFmPzMeNGf7E+xG/yog098SigWj8PHFnpKdzzxe0/DooOtzbhr6kFx7p4ekAf46KtBcS
	Da6VazBRLgwS9Z4ZcsQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTurB-00032M-3E; Wed, 29 Apr 2020 22:07:05 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTukc-0002XD-Ub
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 22:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SU1lWpCnN4KpLvmDuejl0gdjsgj91EnjRHLqH1AwXoM=; b=J1Foq9OaB+iP4PYEBrX39RUdo
 tJ5tsJ8/9rST4bb7FzV62t+KI4JNsBIjYzvw8juY/7TRNXfOh+TcPTWOMCXKjTPnLyueveQNu94W0
 OthGAP2QVE3xZbSZlzsNdFf3HsnN55X2CQlXD6mCcnMVa3Dze7EsdAVIpExgNhVHMwpCga7xLDGH7
 +AUuXkxpeg7HIapJHUiTSVLBgWxmB/U79IUkOjT+lqInAWQ1sMQash19DdQBJNN7hX81zGwRPuo+3
 +bx9E9ZeZQHPaMFeloKfkyhapBWC8KctXdFN7X+1Zs+gCglwkM6DGzVH+BXV7wE2XT79ZDjtCJO4u
 rLXtBwNvA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:54122)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jTukH-0001ra-Vx; Wed, 29 Apr 2020 22:59:58 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jTukF-0001SH-KI; Wed, 29 Apr 2020 22:59:55 +0100
Date: Wed, 29 Apr 2020 22:59:55 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 04/18] ARM: debug-ll: Add support for r8a7742
Message-ID: <20200429215955.GN1551@shell.armlinux.org.uk>
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588197415-13747-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_150019_046703_78C4333F 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dmaengine@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 10:56:41PM +0100, Lad Prabhakar wrote:
> @@ -1701,6 +1709,7 @@ config DEBUG_UART_PHYS
>  	default 0xe6e60000 if DEBUG_RCAR_GEN2_SCIF0
>  	default 0xe6e68000 if DEBUG_RCAR_GEN2_SCIF1
>  	default 0xe6ee0000 if DEBUG_RCAR_GEN2_SCIF4
> +	default 0xe6c60000 if DEBUG_RCAR_GEN2_SCIFA2

Hi,

This is ordered by address.  Please keep it so.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
