Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB871F7060
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 00:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1t1QwjEgOowaWh6TaMQsMXZZdyOFfT2UyM0cUqjwP1g=; b=CPMRIXUSCEkWTo
	UtIuOYyg8IiXbuoTZsTdIp0vo/SIUrf4YxMSZ/lljhA7umE6Xp1pGiEtLj8xHHO95/NTSJcIfxufy
	/vUE0WNtd9JtwOdHDo0h2snE5NKzBo48jNxC9prLkakEvJc8XYwl4g9m9qH/vc9PwWYK0h+z1XYM5
	eHEqkThZVhjuNf1NqUhUCnepwdd2QGe+MfR/GrsirB9DHIUlYuLtFGNugKDBLPxNew87isR4MPl5h
	9WiLTfzEEV2SYTbxMALzw97mJH1UKudQOVCW1HLXGETBmJCrSJcUDGjrmW4u11NGurDvapup1WS2A
	4QJUhC95vyuvrNq/bmJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjVq2-00021s-5D; Thu, 11 Jun 2020 22:38:22 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:32c8:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjVps-00020w-Ty
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 22:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vl6rCo7uqYpLu8Kp1gCo/gH0TyF1wOMb17imQIGNMOM=; b=cL7bDyAivKkYlQRhVOEchrf+4
 ePuenP0KEFsDgOsVlWXmm3GE4Hs5pTcHttmUYhtePMTMmTdT+iAgCJAWA/2V6qkBwAPkP3lI/h8di
 V/tp3aCuTaOMa0sYaJOw5X2L637gG6Q+TcrAi4cu5drIh3crZuXd9m1k5i+tMs1ATJL1pXJOhF8Xx
 lOsG0i2vFgL8J9caMbkwyJojwd+0aC+Oqa1QRws0nsrPAfU4kswMQ3IHryzH/gbKBldMC2qqI0OKZ
 qwek3dylwnaT14mdrvNernjO9ncXS8YC17zTQaAVrY3LzXe5v0xrap0w3wlYGIXTrh/cpnXHZ0vU+
 6GhMiu76g==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44360)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jjVpi-0001Ox-FU; Thu, 11 Jun 2020 23:38:02 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jjVpg-0005an-LY; Thu, 11 Jun 2020 23:38:00 +0100
Date: Thu, 11 Jun 2020 23:38:00 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2 1/2] efi/arm: decompressor: deal with HYP mode boot
 gracefully
Message-ID: <20200611223800.GZ1551@shell.armlinux.org.uk>
References: <20200607135834.898294-1-ardb@kernel.org>
 <20200607135834.898294-2-ardb@kernel.org>
 <96a36110-68e1-89e3-2d59-b16f01abae21@gmx.de>
 <CAMj1kXG9XTtsyLQ=njM8LPCYCE2tOrrYQtctU_acNAxLfe=5oQ@mail.gmail.com>
 <f8a485d2-1e00-1d02-58a4-2e1684bfbfb4@gmx.de>
 <CAMj1kXGLoKDLJAihThkkcYwNpr12inneEB3dMOqvcZFm9oR5_w@mail.gmail.com>
 <CAMj1kXFjuMy6+amsMmmepkNATCec4vsxeiVVFq9CFZ64wbmGaA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXFjuMy6+amsMmmepkNATCec4vsxeiVVFq9CFZ64wbmGaA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_153813_383821_0E71624D 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>, Chen-Yu Tsai <wens@csie.org>,
 linux-efi <linux-efi@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 12:18:43AM +0200, Ard Biesheuvel wrote:
> I've given this a spin myself on a RPi4 running 32-bit U-boot, and
> everything works as expected, both with and without the GRUB hack
> enabled.
> 
> Russell, given that this only affects code inside #ifdef
> CONFIG_EFI_STUB, do you have any objections to me taking this as a fix
> via the EFI tree? I have a set of fixes I need to queue up and send
> out anyway, and I intend to do so early next week.

Please don't, I'll be basing my branches off -rc1 (as normal), and if
you then submit this as a fix through the EFI tree for merging after
rc1, and then send me further EFI work to go through the ARM tree,
we'll end up in exactly the same merge issues as we did prior to this
merge window.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
