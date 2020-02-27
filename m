Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A3717240B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:53:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=knviH8C3vOqrGlxsWi5OZViRO4PX0A74kHQ63I3Llb4=; b=QsD4makOuIR3WqmZ9Sut+NFaI
	hpb3cB6OmigTR0FD25iowguhLZqgQ9H7ZSWUtJG+4R5IiIZm/dEbJCyZ6X2BcYY+uKqKNs+HtaMaT
	yq8SjSqu1j4SKCz/+I2brzeY5tduGrJekvGnR9Oahs6tnMFC5UCwPryT6RNWva/fEwUjmpAjt2Aym
	at1cYxliZdXAooodj+787OdIkz4eyIItRk6LyOH4GDMxNAYMh8Di210Z6/yzs7KVKxyC/oMrTYrNA
	u4aJAYa50pDYv3hyhtPics9UFLr9++z2qB0DSmuvmf3XRV7axrdrY3WbzeSQs4aotJ7F5jgupmOKm
	tuK4+p84g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MPx-0002SH-TD; Thu, 27 Feb 2020 16:53:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MPn-0002Rp-HV
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:53:36 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F9BE2469F;
 Thu, 27 Feb 2020 16:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582822415;
 bh=FCpEczpISHL8j03AAQqFyL4qGLGWBbexvzcAmi6nUKw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=wW7QVVDuMTfXdNeCfIsChW07MzXyoK8XLlBGOtXMiWqPA7GvXvbVyJF2pfGTDUiXV
 qrP5uc7DkE4+yIAgI5O6cDDbwWeovrEAqIG5Zn8fBYP/dOK1eQb/y4U1mM4+li6Iey
 WBsVateRyNYB1kT4FU/kWhYy40szzoMrTUqQjMfU=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j7MPl-008VgO-9G; Thu, 27 Feb 2020 16:53:33 +0000
MIME-Version: 1.0
Date: Thu, 27 Feb 2020 16:53:33 +0000
From: Marc Zyngier <maz@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v4 0/5] ARM: decompressor: use by-VA cache maintenance for
 v7 cores
In-Reply-To: <CAKv+Gu_smwr3RDW=B8BQ8AG1+aOibFHwvoTSR=F2TxDguV2ELQ@mail.gmail.com>
References: <20200226165738.11201-1-ardb@kernel.org>
 <CACRpkdZ9WR7wEjgscAF=Pwy0=YwbNPjtH6BQWa5wfXW74Md4xQ@mail.gmail.com>
 <91023d8f118440439cf55847a6bc43c2@kernel.org>
 <CAKv+Gu_smwr3RDW=B8BQ8AG1+aOibFHwvoTSR=F2TxDguV2ELQ@mail.gmail.com>
Message-ID: <bb66152dddd84d34d2cf8c7a98c486a1@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ardb@kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org,
 linux@armlinux.org.uk, nico@fluxnic.net, catalin.marinas@arm.com,
 tony@atomide.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_085335_631226_C96B724C 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-27 16:47, Ard Biesheuvel wrote:
> On Thu, 27 Feb 2020 at 17:01, Marc Zyngier <maz@kernel.org> wrote:
>> 
>> On 2020-02-27 10:11, Linus Walleij wrote:
>> > On Wed, Feb 26, 2020 at 5:57 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>> >
>> >> So instead, switch to the by-VA cache maintenance that the
>> >> architecture
>> >> requires for v7 and later (and ARM1176, as a side effect).
>> >>
>> >> Changes since v3:
>> >> - ensure that the region that is cleaned after self-relocation of the
>> >> zImage
>> >>   covers the appended DTB, if present
>> >>
>> >> Apologies to Linus, but due to this change, I decided not to take your
>> >> Tested-by into account, and I would appreciate it if you could retest
>> >> this version of the series? Thanks.
>> >
>> > No problem, I have tested it on the following:
>> >
>> > - ARMv7 Cortex A9 x 2 Qualcomm APQ8060 DragonBoard
>> > - ARM PB11MPCore (4 x 1176)
>> 
>> <pedant>
>> 
>> The ARM11MPCore isn't a bunch of 1176s glued together. It is actually 
>> a
>> very
>> different CPU, designed by a different team.
>> 
>> </pedant>
>> 
> 
> It still takes the same code path in the cache routines, afaict:
> - the architecture field in the main id register == 0xf, so it uses
> __armv7_mmu_cache_flush
> - ID_MMFR1[19:16] == 0x2, so it does not take the 'hierarchical' code
> path which is modified by these patches

Absolutely. From a SW perspective, this is treated in a similar way as
ARM1176. The underlying HW is very different though...

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
