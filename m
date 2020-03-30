Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF82197AB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1Lls81fMYcx980mwQE0/f3umAitj692tOYgiBbvF50=; b=MCqmQeiDpmJYwL
	lM96zWK3TXGaMnQGE7XXxOTS1vfeVfLYxV5HgGyRMnhCGUGeKKSQNhbRtHefQaqVeYTs64oGppRxv
	o83tolQPxSQy83zZGVM5dksgtvOaO+ELXIj0cftwL5ydYYuk2AiKMuWxvrni2XK3iG9O8afdzdpdt
	Tt0xuA8Q6WmRgwNIeqOfEWdtfH5JpAYyvMj/ao8KjO3W5+o2xes9S7zm6Fuj9Iaa9P0Dk/JiBsvRD
	q3405m0VKuh681QS7k3zojZM0Cc7Glg6OgFSRMYbFSkF5NR/939jOzHTKmAnT8wo3zqjzhQVg4e7B
	KZfqZF1JXxN0QkHM9N4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsdc-0006ri-QE; Mon, 30 Mar 2020 11:31:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsdQ-0006rP-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:31:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1218731B;
 Mon, 30 Mar 2020 04:31:16 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E05F3F52E;
 Mon, 30 Mar 2020 04:31:14 -0700 (PDT)
Subject: Re: SError handling vs. SIGSEGV
To: Florian Fainelli <florian.fainelli@broadcom.com>
References: <3da89354-78f7-5f48-9eec-75c74270fa3e@gmail.com>
 <20200328164316.GZ3819@lunn.ch>
 <ccb24fd4-b96a-3c02-80f3-4fea3dc2a989@broadcom.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <d5390eef-edd1-360b-5a26-ff100cafc056@arm.com>
Date: Mon, 30 Mar 2020 12:31:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ccb24fd4-b96a-3c02-80f3-4fea3dc2a989@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_043116_857855_8B5A0B9D 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Doug Berger <opendmb@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Will Deacon <will@kernel.org>, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys,

On 3/28/20 7:41 PM, Florian Fainelli wrote:
> On 3/28/2020 9:43 AM, Andrew Lunn wrote:
>>> As it stands today, I see no way to have a self hosted test case that
>>> exercises that our GISB bus arbiter blocking works correctly because the
>>> whole kernel is taken down when the test is successful :/
>>
>> Hi Florian
>>
>> Isn't that just the new definition of test success :-)
>>
>> Yes, your testing will be slower, you have to wait for the watchdog to
>> reboot your machine after each successful test.

> I would be fine with this behavior if the exception was taken from EL1,
> but it is taken from EL0, killing the whole machine because of that
> sounds like a great way to DDoS your machine without having much
> valuable information to debug your problem if it exists.

And what if the exception was triggered by an access at EL0, but the CPU had
switched to EL1 before the response arrived, and the exception was taken?!


To 'handle' an SError you need it to be restartable at the CPU and you need to
know what caused it, so you can fix the error instead of it remaining latent.
Before the v8.2 RAS extensions you certainly don't have the CPU bits of this.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
