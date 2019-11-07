Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C744F3486
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 17:20:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zPvQIZn3kBQTrCK07iYlBAmOJuWJKksLZPbW5itnSnk=; b=eCoy1n86UGbW5/k4/seACcWJr
	wWfydtjRlFQPieUryP8zpsx/gKnqDxhgFYoXbVPGPil+b8Xi7HzEVZwjDyBtYa1dzyLwuk2Hbd3Oi
	FK38YBzXiwYyPSGdxlu+RioDZbmUpIFm/o1USrx5IY7eCqUYRQ0g4PBW0ftyfIOU56tCvGJ5vD4JS
	HFEfr9jeFEIjiVBuFf1OkHTWFxiQHqGEjARrCZBlaM1OZWAPYo+juSb27/3NLpF8Pl7f4wl9PmryO
	s0NARobyVYNmqKb22BmbuevD1uQ9R7xOcNryoyBzpCh+/AECfqKX7yX6vIzWRTbjO46dHM6NZPzva
	KflVR68Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSkWf-0004or-Cb; Thu, 07 Nov 2019 16:20:49 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSkWX-0004oD-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 16:20:42 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iSkWV-0008Qw-8Z; Thu, 07 Nov 2019 17:20:39 +0100
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH resend 0/2] ARM/decompressor: deal with disabled CP15
 barrier instructions
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 07 Nov 2019 17:30:00 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191106104918.26397-1-ardb@kernel.org>
References: <20191106104918.26397-1-ardb@kernel.org>
Message-ID: <36e25caa345f95ff785a814fcba5778f@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: ardb@kernel.org, linux-arm-kernel@lists.infradead.org,
 rmk+kernel@armlinux.org.uk, linus.walleij@linaro.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_082041_379150_0A93263B 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: rmk+kernel@armlinux.org.uk, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-06 11:58, Ard Biesheuvel wrote:
> [ Resending because --cc-cover didn't take ]
>
> While trying to test my v4.4 backport of the firmware/hypervisor
> based spectre
> v1/v2 mitigations for 32-bit ARM, I noticed that KVM/qemu failed to 
> boot my
> kernel while it booted fine under TCG emulation.
>
> As it turns out, KVM/qemu may instantiate the VCPU with support for 
> CP15
> barrier instructions disabled, causing them to UNDEF and crash the
> decompressor.
>
> I already fixed the same issue for UEFI boot, but since v4.4 does not 
> support
> that, I only noticed now that this is an issue for bare metal as 
> well.
>
> Cc: Russell King <rmk+kernel@armlinux.org.uk>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Marc Zyngier <maz@kernel.org>
>
> Ard Biesheuvel (2):
>   ARM/decompressor: avoid CP15 barrier instructions in v7 cache setup
>     code
>   Revert "ARM: 8857/1: efi: enable CP15 DMB instructions before 
> cleaning
>     the cache"
>
>  arch/arm/boot/compressed/head.S | 51 ++++++++++----------
>  1 file changed, 26 insertions(+), 25 deletions(-)

For the whole series:

Acked-by: Marc Zyngier <maz@kernel.org>

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
