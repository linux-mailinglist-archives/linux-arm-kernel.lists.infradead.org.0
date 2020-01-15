Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B240A13C8D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAq6vmaMSrABS3v1rwNHEOBuT8P8PqX0BAtC1V7P5FI=; b=KFr497s1cL9njg
	1ky0B2bWgkobM9X0HnYZcPQOYjSbJ3edlwcYSwy/3mLID16Rm++sIMsgSICE7SvkvK0C2BkNyc20B
	0Yomh76MejiAbsU85rdbanzsdKzntCX+rhDiOLW3lZBov6x7LghX0w31DNVzBnDwpGZVdJ85QPYUT
	CRbNt62T+6Fk0EDfjTK31wnZI7ORcbTgL6MgDRPNti+rSKMXmX2ku2oGQ1XCYqbGPTX+Mik0kCvwb
	tk5lyqF9EdfRfAo1igij8bPD7uVoPqVR2hhyp0/3NFP0cKd1Qwki6zw0JaFD+A65Z4oRyx07Qb1nU
	a5yvxGA4rqmFlM/XsWlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irlDc-0003fh-SR; Wed, 15 Jan 2020 16:08:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irlDR-0003ew-Ei
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 16:08:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0956C328;
 Wed, 15 Jan 2020 08:08:21 -0800 (PST)
Received: from [10.2.69.39] (unknown [10.2.69.39])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98C3C3F718;
 Wed, 15 Jan 2020 08:08:20 -0800 (PST)
Subject: Re: [PATCH] arm64: Turn "broken gas inst" into real config option
To: Will Deacon <will@kernel.org>
References: <1579097905-128661-1-git-send-email-vladimir.murzin@arm.com>
 <20200115144216.GA29230@willie-the-truck>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <603534dd-9e61-2804-7680-5310e74ea568@arm.com>
Date: Wed, 15 Jan 2020 16:08:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200115144216.GA29230@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_080821_531960_F26EAACE 
X-CRM114-Status: GOOD (  14.94  )
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

On 1/15/20 2:42 PM, Will Deacon wrote:
> On Wed, Jan 15, 2020 at 02:18:25PM +0000, Vladimir Murzin wrote:
>> So it is available everywhere and there is no need to keep
>> CONFIG_ARM64 workaround.
>>
>> Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
>> ---
>>  arch/arm64/Kconfig  |  3 +++
>>  arch/arm64/Makefile | 10 +++-------
>>  2 files changed, 6 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 63c19ef..4139c927 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -303,6 +303,9 @@ config ARCH_SUPPORTS_UPROBES
>>  config ARCH_PROC_KCORE_TEXT
>>  	def_bool y
>>  
>> +config BROKEN_GAS_INST
>> +	def_bool y if !$(as-instr,1:\n.inst 0\n.rept . - 1b\n\nnop\n.endr\n)
> 
> Guessing you can drop the 'y if' part here?
> 
> No need to resend just for that, but would be nice to know that it works.

With 

+config BROKEN_GAS_INST
+	def_bool if !$(as-instr,1:\n.inst 0\n.rept . - 1b\n\nnop\n.endr\n)

I'm getting

arch/arm64/Kconfig:308: syntax error
arch/arm64/Kconfig:307: invalid statement

:(

Cheers
Vladimir

> 
> Will
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
