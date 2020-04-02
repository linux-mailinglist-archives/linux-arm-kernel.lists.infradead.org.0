Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA9819C450
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 16:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RycfASHRIousemXG33mkFcDNyEHVAUCrmgwJzdsD7w=; b=YP6mbTiRE9DH1i
	AQ7c+m4KcUItPL9fbGtmr/gRwqzkEA3PxL50GIVHO+Oo70I9Z0icd7bgbg69wu6H4V8NU1BmyzzVQ
	q37EeYAsjvRl8OGp74Bh8zqZt2z7Xk4B8ZvOpWTr9cNW0kzhANrCJnaOgMs2bfR8j+kSbQ67n2O4v
	bkcCNKj95yOUSRn2ogekPxPKcMlW11Dstn0Y9eTz3O7+ncJM+bjIqA0zAHUCA3TaKE0xaJvxpNEim
	sezvXhVWdIuj2+jZnUgh3fu2KFsPEVHDJ9axyrwG0kHSwCAngW2yT3UohZGXL/qa/ouTGcFvF3umf
	P0JDbGY7wXdE+dkzoxDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0vC-0000dC-3f; Thu, 02 Apr 2020 14:34:18 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0v5-0000bz-IQ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 14:34:13 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 5F61E5C0842;
 Thu,  2 Apr 2020 16:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1585838046;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5W45807pAC71hL/yM35fhSQ/isq694lE2RzwHUJCouo=;
 b=riWQSs+JQkSV8IuBCO9KPrGlqTYOSdBueR5JGiomta+BiJAA1yR2rlaDzMnnBUBAKyKcwc
 ecymobVuYoGIuLSezN0Fh0wC4qUc6fhIKdfTZ7A5ab2PtJ3xiVbj9gMRs/bHtrGxa8zb9U
 n2+KbHaDRoT3dsDZ6U0lArnalIXP3SI=
MIME-Version: 1.0
Date: Thu, 02 Apr 2020 16:34:06 +0200
From: Stefan Agner <stefan@agner.ch>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
In-Reply-To: <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
 <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
 <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
 <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <e0c125ea492670c7069c407b6b0c5958@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_073412_056289_C58485DB 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-omap@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Peter Smith <Peter.Smith@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Russell King <linux@armlinux.org.uk>, nd <nd@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-02 14:05, Ard Biesheuvel wrote:
> On Thu, 2 Apr 2020 at 13:50, Peter Smith <Peter.Smith@arm.com> wrote:
>>
>> > I take it this implies that the LLVM linker does not support the
>> > R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
>> > expanded to a pair of adds with the appropriate relocations, letting
>> > the linker fix up the immediates (and the ADD vs SUB bits)
>>
>> Not at the moment. I have a patch in review to add the G0 variants for these in Arm state at reviews.llvm.org/D75349 . As far as I know LLVM MC does not have support for generating the relocations either. This could be added though. I agree that using the G* relocations with a pair of add/sub instructions would be the ideal solution. The adrl psuedo is essentially that but implemented at assembly time. I think it would be possible to implement in LLVM but at the time (4+ years ago) I wasn't confident in finding someone that would think that adrl support was worth the disruption, for example the current Arm assembly backend can only produce 1 instruction as output and adrl requires two.
>>
>> I'd be happy to look at group relocation support in LLD, I haven't got a lot of spare time so progress is likely to be slow though.
>>
> 
> For Linux, I have proposed another approach in the past, which is to
> define a (Linux-local) adr_l macro with unlimited range [0], which
> basically comes down to place relative movw/movt pairs for v7+, and
> something along the lines of
> 
>         ldr <reg>, 222f
> 111:    add <reg>, <reg>, pc
>         .subsection 1
> 222:    .long <sym> - (111b + 8)
>         .previous

Just to confirm: The instance at hand today seems to be working fine
without adrl, so I guess we are fine here, do you agree?

There are a couple more instances of adrl in arch/arm/crypto/, maybe
that is where the adr_l macro could come in.

--
Stefan

> 
> for v6 and earlier. Could you comment on whether Clang's integrated
> assembler could support anything like this?
> 
> 
> Thanks,
> Ard.
> 
> 
> 
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/commit/?h=arm-kaslr-latest&id=fd440f1131553a5201ce3b94905419bd067b93b3

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
