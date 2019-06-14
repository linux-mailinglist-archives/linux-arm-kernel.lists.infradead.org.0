Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C48045CC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QeBqCTU8riDEfGtNWV6tzpM9qn+cuR0Ijs8KGDET+UM=; b=ej+wGXv3Zjhh0f
	mTi4QJ+GH1gLv4/FbpjoWSeaHUagLwPHuQYIIJ/7l36177/v9LuJ9dAzIlCSfCgIN78D5+KCA3kad
	P8Vv0eCf2Oamk4FE2jkGI+DEpQy91M4Hk/F6OJI0QwCtLJh3llBcaQSkXg8ZZ/dx8mCFgmxMjrjt/
	EiydP1yZHd0x3byoTImMCjDXzhGV1Bmym62yK1BjPn/inKQKYO2RNTMLnmEq+xNAxy4wiO5tVRP0Q
	gYnJAArG4ImkdCKUS31j5YURQQFCAteCZafHo9BO0pi25IOPlL3kTGKEMn06/EBIycQHm7xcQJeHU
	eQnvfAhCx1WuEYelrkiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblGI-0007X6-Ub; Fri, 14 Jun 2019 12:24:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hblG7-0007Wc-8y
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:24:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 957F83EF;
 Fri, 14 Jun 2019 05:24:42 -0700 (PDT)
Received: from [192.168.1.18] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C78263F246;
 Fri, 14 Jun 2019 05:24:39 -0700 (PDT)
Subject: Re: [PATCH v6 03/19] kernel: Unify update_vsyscall implementation
To: Thomas Gleixner <tglx@linutronix.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-4-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906141307430.1722@nanos.tec.linutronix.de>
 <a69e48a2-575d-255c-2653-d3e99b7ba760@arm.com>
 <alpine.DEB.2.21.1906141416100.1722@nanos.tec.linutronix.de>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <9371eabc-ed74-3db8-794c-44c37ada2163@arm.com>
Date: Fri, 14 Jun 2019 13:25:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1906141416100.1722@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_052443_359274_74156F6D 
X-CRM114-Status: GOOD (  17.71  )
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 linux-kselftest@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/14/19 1:19 PM, Thomas Gleixner wrote:
> On Fri, 14 Jun 2019, Vincenzo Frascino wrote:
>> On 6/14/19 12:10 PM, Thomas Gleixner wrote:
>>> On Thu, 30 May 2019, Vincenzo Frascino wrote:
>>>> +
>>>> +	if (__arch_use_vsyscall(vdata)) {
>>>> +		vdata[CS_HRES_COARSE].cycle_last	=
>>>> +						tk->tkr_mono.cycle_last;
>>>> +		vdata[CS_HRES_COARSE].mask		=
>>>> +						tk->tkr_mono.mask;
>>>> +		vdata[CS_HRES_COARSE].mult		=
>>>> +						tk->tkr_mono.mult;
>>>
>>> These line breaks make it really hard to read. Can you fold in the patch
>>> below please?
>>>
>>
>> Thanks for this. I will do it in v7.
> 
> Talking about v7. I'd like to get this into 5.3. That means you'd have to
> rebase it on
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/hyperv/linux.git hyperv-next
> 
> to avoid the hyperv conflict. I'll sort this out with the hyperv folks how
> I can get these bits as a base for a tip branch which holds all the vdso
> pieces.
>

Ok, I will rebase and test the patches against the hyperv-next branch. Could you
please let me know when all the bits are sorted?

> Thanks,
> 
> 	tglx
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
