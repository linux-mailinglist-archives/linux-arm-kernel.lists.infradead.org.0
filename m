Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7680713C8E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:12:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vEo42dw3d+Tujl3Ub2e8yTCbvbEFMfX89Loj7FfXlI=; b=JflMlIvpg4iWRu
	WLtmG3+Rq8KpdsCHPy+69+x6/7AQFXQe0W9PvHuUHfJo7W8kfvNxWY0DgKAV9mUr9R67GpmXCUGNb
	1iFbnraEEw5LbY3N9R3VDRwSo1s31PkWCUPENNJniWAVf7zSRWYFsc/2EhvOIGLecwCD6QT+UkMYN
	hF3xUN58H09AcjcI6ZlldX9kOYA6OLQPv9V4WD6mAiGYRRLCIwl3YFqssg2/ojl5iUmhAhdhWxH5i
	tzyl0JBD4d5TrDEiWWRwRC4Ya/up+vlf0rvIj/HVn1yUGdf0J5MUA7yCUble+Z37wcLSMloP35U5b
	gVpqJVfdV9u/eL08s3uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irlHE-00066u-F4; Wed, 15 Jan 2020 16:12:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irlH3-00066J-6l
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 16:12:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5145C328;
 Wed, 15 Jan 2020 08:12:04 -0800 (PST)
Received: from [10.2.69.39] (unknown [10.2.69.39])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E6E2A3F718;
 Wed, 15 Jan 2020 08:12:03 -0800 (PST)
Subject: Re: [PATCH] arm64: Turn "broken gas inst" into real config option
To: Will Deacon <will@kernel.org>
References: <1579097905-128661-1-git-send-email-vladimir.murzin@arm.com>
 <20200115144216.GA29230@willie-the-truck>
 <603534dd-9e61-2804-7680-5310e74ea568@arm.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <cb3bb437-984b-a001-b3a0-f42befaca0d8@arm.com>
Date: Wed, 15 Jan 2020 16:12:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <603534dd-9e61-2804-7680-5310e74ea568@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_081205_293380_28FECF31 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/15/20 4:08 PM, Vladimir Murzin wrote:
> On 1/15/20 2:42 PM, Will Deacon wrote:
>> On Wed, Jan 15, 2020 at 02:18:25PM +0000, Vladimir Murzin wrote:
>>> So it is available everywhere and there is no need to keep
>>> CONFIG_ARM64 workaround.
>>>
>>> Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
>>> ---
>>>  arch/arm64/Kconfig  |  3 +++
>>>  arch/arm64/Makefile | 10 +++-------
>>>  2 files changed, 6 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>>> index 63c19ef..4139c927 100644
>>> --- a/arch/arm64/Kconfig
>>> +++ b/arch/arm64/Kconfig
>>> @@ -303,6 +303,9 @@ config ARCH_SUPPORTS_UPROBES
>>>  config ARCH_PROC_KCORE_TEXT
>>>  	def_bool y
>>>  
>>> +config BROKEN_GAS_INST
>>> +	def_bool y if !$(as-instr,1:\n.inst 0\n.rept . - 1b\n\nnop\n.endr\n)
>>
>> Guessing you can drop the 'y if' part here?
>>
>> No need to resend just for that, but would be nice to know that it works.
> 
> With 
> 
> +config BROKEN_GAS_INST
> +	def_bool if !$(as-instr,1:\n.inst 0\n.rept . - 1b\n\nnop\n.endr\n)
> 
> I'm getting
> 
> arch/arm64/Kconfig:308: syntax error
> arch/arm64/Kconfig:307: invalid statement
> 
> :(

Because I did not drop "if". Indeed, without "y if" everything still works fine.

Vladimir


> 
> Cheers
> Vladimir
> 
>>
>> Will
>>
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
