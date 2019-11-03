Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA34ED42B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 19:24:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TZEqDD9ge32ZDYJUSLn0hyoTsPaya9IEYHPC8ADgso=; b=jeQWNzoHNSf5Cz
	IkfLwPr4Iqbxc+5eauWO5VBdnutBXt1F8UribpsStSLoVFDeV/LCT0krP6LZOuEwIObuGiYRdt5qW
	WIw5QJgY0jkUpwd0AK1O8gh0R8fZNonSkhQJfFpnHaxHdBMAJiDweaVAgC9mvhtcZWIidB+9Bzc7x
	du2PKoWbtEcV9BIQbdqaVI/D48ptSQh/MEo3ifnlAyiPH1G/VBpbSBnEqInQ2hnE2Rft3C5K4gHEU
	AZSrVOPiPQs2BwBDLd4O4p+s/2Bv/x5HgbN1AkFLuqk54CD9yNKS753JcarAHsFUjRrtkOQ5hT1qU
	EfXSwGUWK5E11ximNM/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRKXw-0000PH-OW; Sun, 03 Nov 2019 18:24:16 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRKXp-0000ON-4a
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 18:24:11 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 34EDB5C007C;
 Sun,  3 Nov 2019 19:24:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1572805444;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9fntE1N5AsxqOETEl0Wde7bowPGM0/SedoanyW84npw=;
 b=H9JGfR6Hnx3O3JQWlqYwe5gxmek/VvGEgb/LxRsQIy00QvWxciE48gTPkgGsOItjFt1qPf
 RNogeHnunwNSbTpTqhAHOI0h9tPfXiYrb5LgyC5EGlfjHlyuX139zaF0JvbqUBfxLiniac
 rHYlaY+bnWNmsdSin9GegTwXicQoZdk=
MIME-Version: 1.0
Date: Sun, 03 Nov 2019 19:24:04 +0100
From: Stefan Agner <stefan@agner.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: use APSR_nzcv instead of r15 as mrc operand
In-Reply-To: <20191101220939.GK25745@shell.armlinux.org.uk>
References: <472f8bd1f000f45343cc0c66a26380fe4b532147.1572644664.git.stefan@agner.ch>
 <20191101220939.GK25745@shell.armlinux.org.uk>
Message-ID: <0a24fe5e4aeba78c5fada3fca0bbeb99@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_102409_473861_1657434B 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ard.biesheuvel@linaro.org, linus.walleij@linaro.org, nico@fluxnic.net,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, rfranz@marvell.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On 2019-11-01 23:09, Russell King - ARM Linux admin wrote:
> On Fri, Nov 01, 2019 at 10:47:58PM +0100, Stefan Agner wrote:
>> LLVM's integrated assembler does not accept r15 as mrc operand.
>>   arch/arm/boot/compressed/head.S:1267:16: error: operand must be a register in range [r0, r14] or apsr_nzcv
>>   1: mrc p15, 0, r15, c7, c14, 3 @ test,clean,invalidate D cache
>>                  ^
>>
>> Use APSR_nzcv instead of r15. The GNU assembler supports this
>> syntax since binutils 2.21 [0].
>>
>> [0] https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=db472d6ff0f438a21b357249a9b48e4b74498076
>>
>> Signed-off-by: Stefan Agner <stefan@agner.ch>
> 
> Looks fine, please put it in the patch system; however, please note
> that I've been tweaking the patch system over the last week (mainly
> with the database, which has impacted almost everything) so there
> may be issues that I've not yet found...

I used the form to submit the patch. From what I can tell it worked
fine, patch number is 8929/1.

--
Stefan

> 
> Thanks.
> 
>> ---
>>  arch/arm/boot/compressed/head.S | 2 +-
>>  arch/arm/mm/proc-arm1026.S      | 4 ++--
>>  arch/arm/mm/proc-arm926.S       | 4 ++--
>>  3 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
>> index 15ecad944847..ead21e5f2b80 100644
>> --- a/arch/arm/boot/compressed/head.S
>> +++ b/arch/arm/boot/compressed/head.S
>> @@ -1273,7 +1273,7 @@ iflush:
>>  __armv5tej_mmu_cache_flush:
>>  		tst	r4, #1
>>  		movne	pc, lr
>> -1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
>> +1:		mrc	p15, 0, APSR_nzcv, c7, c14, 3	@ test,clean,invalidate D cache
>>  		bne	1b
>>  		mcr	p15, 0, r0, c7, c5, 0	@ flush I cache
>>  		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
>> diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
>> index 10e21012380b..0bdf25a95b10 100644
>> --- a/arch/arm/mm/proc-arm1026.S
>> +++ b/arch/arm/mm/proc-arm1026.S
>> @@ -138,7 +138,7 @@ ENTRY(arm1026_flush_kern_cache_all)
>>  	mov	ip, #0
>>  __flush_whole_cache:
>>  #ifndef CONFIG_CPU_DCACHE_DISABLE
>> -1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
>> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
>>  	bne	1b
>>  #endif
>>  	tst	r2, #VM_EXEC
>> @@ -363,7 +363,7 @@ ENTRY(cpu_arm1026_switch_mm)
>>  #ifdef CONFIG_MMU
>>  	mov	r1, #0
>>  #ifndef CONFIG_CPU_DCACHE_DISABLE
>> -1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
>> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
>>  	bne	1b
>>  #endif
>>  #ifndef CONFIG_CPU_ICACHE_DISABLE
>> diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
>> index 3188ab2bac61..1ba253c2bce1 100644
>> --- a/arch/arm/mm/proc-arm926.S
>> +++ b/arch/arm/mm/proc-arm926.S
>> @@ -131,7 +131,7 @@ __flush_whole_cache:
>>  #ifdef CONFIG_CPU_DCACHE_WRITETHROUGH
>>  	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
>>  #else
>> -1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
>> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
>>  	bne	1b
>>  #endif
>>  	tst	r2, #VM_EXEC
>> @@ -358,7 +358,7 @@ ENTRY(cpu_arm926_switch_mm)
>>  	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
>>  #else
>>  @ && 'Clean & Invalidate whole DCache'
>> -1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
>> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
>>  	bne	1b
>>  #endif
>>  	mcr	p15, 0, ip, c7, c5, 0		@ invalidate I cache
>> --
>> 2.23.0
>>
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
