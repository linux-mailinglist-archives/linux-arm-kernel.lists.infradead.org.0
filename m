Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8F6555B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 19:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnyxM2WvxxZt56jxJS5cKm9CZ9qIIrzluJILMt7aP7k=; b=S67HzWbK+N1kgW
	KAhjElKPCaK6VUMyMAoBJgK/VfOXGgTRYprn13og7h9tb5MkutnlwJYGFl0LtIFI0oG2+tq/QONyL
	teV75SkBW5tg8Is4OsKd/QvFlC2JvsQ1yCt7QNK9ZBsDIhR8sgKq2mRjiBqpkYl2qfS09I+bGjTXn
	OWrmTzB5agVoeBxPvXh4YxHsSKKX7sKCLezi1LP0dW8yJCDXOpciy2Rd/DNo6Qxv6TfCfGzApqaIE
	FDxPoViGgq84cklHrYobSO9Usog+f2DvnA+KyuqYGvXdMdV2SE7obgs4tnmaXQZb+SAgURcglsTUJ
	KMKtowOFxEkLaVSeVYsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfp4f-0002VW-9s; Tue, 25 Jun 2019 17:17:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfp4O-0002V2-2I
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 17:17:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E48D360;
 Tue, 25 Jun 2019 10:17:23 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB6273F718;
 Tue, 25 Jun 2019 10:17:19 -0700 (PDT)
Subject: Re: [PATCH v7 00/25] Unify vDSOs across more architectures
To: Paul Burton <paul.burton@mips.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
 <20190624184157.mu6n74a7qqa4z5z5@pburton-laptop>
 <3ae7f595-0a15-0584-198e-b32fe3e3ea57@arm.com>
 <20190625171118.wznk5nva3h3jetky@pburton-laptop>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <28ad9bf4-d639-f77c-8ac0-980f4f4595cd@arm.com>
Date: Tue, 25 Jun 2019 18:17:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190625171118.wznk5nva3h3jetky@pburton-laptop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_101724_149585_7785AEAA 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Dmitry Safonov <dima@arista.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Andre Przywara <andre.przywara@arm.com>,
 Sasha Levin <sashal@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Michael Kelley <mikelley@microsoft.com>,
 Peter Collingbourne <pcc@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Andrei Vagin <avagin@openvz.org>,
 Huw Davies <huw@codeweavers.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Shijith Thotton <sthotton@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

On 25/06/2019 18:11, Paul Burton wrote:
> Hi Vincenzo,
> 
> On Tue, Jun 25, 2019 at 12:16:55AM +0100, Vincenzo Frascino wrote:
>> In the end I concluded that all the errors seen here depend on the fact that I
>> tested my vdso implementation on MIPS32el only (as stated in the cover letter)
>> and that when I tried to compile a 32BIT binary on a 64BIT configuration I did
>> it wrongly for two reasons, for N32 and O32 binaries:
>>  - we need to undefine CONFIG_64BIT and define CONFIG_32BIT
>>  - we need to define CONFIG_GENERIC_ATOMIC64
>>
>> I have a fix for this (patch in attachment), but I do not have the hardware to
>> test it. If you could provide some feedback would be appreciated (really want to
>> see MIPS merged with the other archs in 5.3 :) ).
> 
> Thanks for the quick turnaround on your patch!
> 
> I'm certainly willing to test it, but in a few hours I'll be spending
> the bulk of a day on airplanes[1] so it might take a few days until I
> get to it.
> 

Sounds like a plan. Let us know when you have an update.

> Thanks,
>     Paul
> 
> [1] ...and travel isn't the hackathon it used to be with my 9 month old
>     son around :)
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
