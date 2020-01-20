Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9222E142901
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 12:14:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bN/gaOLQHUwRJxTppQ8hlHIu+MwE2OfM9djelFojiTM=; b=scu0nuWnmdIMdbo2EA/qisOnN
	gZEHSaT6A8Brrj5nBQJJb06glIFQET08XKqeaE/MGrZtf9cdzhB7/SZjmZgkIO1CBIq7flcEw5zRg
	Fvdwv+oY1r9jcjhxIH0XSFCFCRTTYvaYFmmwFExIOKFKLAWArxDbvm3wduhIE9dV3Cy5i2gRbiN8X
	3k3hPbb5u4gPQBdu8mKdMzGqM/gobBQb1mx8zPVfHVYtHMhDvcUHAJNDEPMfQAkwMnIxWNmlONcgZ
	9hVPWR72G99NqJfzVbFT0X9lxcL6PLTbb/fi8t/OQFq2edk0XR5Pd2ePKnTQ5oh9eFO+u1aio/kc8
	V/42BOT1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itV0d-0006F1-KY; Mon, 20 Jan 2020 11:14:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itV0Q-0006EW-M0
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 11:14:11 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F20520674;
 Mon, 20 Jan 2020 11:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579518846;
 bh=HAHcS1egkuTL8fOWbZRIsOSuG2XkQ6V9uDzuweE93QQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uJYsc9WmWttZ+T1kL7mR5Z6VCb/q84SaSkiINgfXZ6OV7rcxaibik2M43q1wTZSJQ
 TYMzZKu8bfz1hmjiv7WfQtooviE5zNFKmfR4a/aYEulIO+03vjfQ7kkxscNFiaBZ3K
 pyZvvW7e3AJuHqLg27h6GfLQHdY9Eh6XgujCHPtk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itV0O-000FHR-G6; Mon, 20 Jan 2020 11:14:04 +0000
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 12:14:04 +0100
From: Marc Zyngier <maz@kernel.org>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH] ARM: virt: Relax arch timer version check during early
 boot
In-Reply-To: <eb889279-87f2-d674-9299-169794c285eb@arm.com>
References: <1579097798-106243-1-git-send-email-vladimir.murzin@arm.com>
 <eb889279-87f2-d674-9299-169794c285eb@arm.com>
Message-ID: <d4b8bb91f95385682f20c9dc5c6f5e50@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: vladimir.murzin@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_031406_741001_D374C0B7 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vladimir,

On 2020-01-20 11:46, Vladimir Murzin wrote:
> + Marc
> + kvmarm@lists.cs.columbia.edu
> 
> On 1/15/20 2:16 PM, Vladimir Murzin wrote:
>> Updates to the Generic Timer architecture allow ID_PFR1.GenTimer to
>> have values other than 0 or 1. At the moment, Linux is quite strict in
>> the way it handles this field at early boot and will not configure
>> arch timer if it doesn't find the value 1.
>> 
>> Since here use ubfx for arch timer version extraction (hyb-stub build
>> with -march=armv7-a, so it is safe)
>> 
>> To help backports (even though the code was correct at the time of 
>> writing)
>> Fixes: 8ec58be9f3ff ("ARM: virt: arch_timers: enable access to 
>> physical timers")
>> Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>

I'm not opposed to such a change, but it'd be good to document what 
other values
are expected here, as the current (Rev E_a) ARM ARM only mentions values 
0 and 1.

Thanks,

         M.

>> ---
>>  arch/arm/kernel/hyp-stub.S | 7 +++----
>>  1 file changed, 3 insertions(+), 4 deletions(-)
>> 
>> diff --git a/arch/arm/kernel/hyp-stub.S b/arch/arm/kernel/hyp-stub.S
>> index ae50203..6607fa8 100644
>> --- a/arch/arm/kernel/hyp-stub.S
>> +++ b/arch/arm/kernel/hyp-stub.S
>> @@ -146,10 +146,9 @@ ARM_BE8(orr	r7, r7, #(1 << 25))     @ HSCTLR.EE
>>  #if !defined(ZIMAGE) && defined(CONFIG_ARM_ARCH_TIMER)
>>  	@ make CNTP_* and CNTPCT accessible from PL1
>>  	mrc	p15, 0, r7, c0, c1, 1	@ ID_PFR1
>> -	lsr	r7, #16
>> -	and	r7, #0xf
>> -	cmp	r7, #1
>> -	bne	1f
>> +	ubfx	r7, r7, #16, #4
>> +	teq	r7, #0
>> +	beq	1f
>>  	mrc	p15, 4, r7, c14, c1, 0	@ CNTHCTL
>>  	orr	r7, r7, #3		@ PL1PCEN | PL1PCTEN
>>  	mcr	p15, 4, r7, c14, c1, 0	@ CNTHCTL
>> 

-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
