Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AA6181705
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:44:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6e9NtOb3qQkGQkVi6ZgkKlmo2+A1yR6zmyhRC1iGVA=; b=raHilvNJfQj4mu
	GOwjCr3P65T1MKsOyRlq+OkL38183VZoRn9jMOkLfBLNUavyKMajzeTK/cgz6MbzkyHvLyiCtiY7E
	QPWspYvG1Of6aOVlvPOLSrSYxYNIgmbwMhhM76EvUfIL4GKDrD5Ig8QLhWnG49dZynw7ZPto679Tt
	jo0IxZjaOcy9PHPtofi/GVmqE9dyiG0Jue2q0+r/aEv3fXCc8kq4wgoRhz7aBMUWdbBuLWMPMaH8s
	Xmz9aRdRekD9Xnee64FH9U74yy9RNf7RrpFxAHTzcia08GRiXyqZPfT9gT8ujLaTUvuD33B2LpgZs
	p2Cb9aNxo1yZCja6gSxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzmf-0005zF-I9; Wed, 11 Mar 2020 11:44:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzmV-0005yi-34
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:44:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 03CD81FB;
 Wed, 11 Mar 2020 04:44:09 -0700 (PDT)
Received: from [10.37.8.101] (unknown [10.37.8.101])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 35D933F6CF;
 Wed, 11 Mar 2020 04:44:06 -0700 (PDT)
Subject: Re: [PATCH v6 07/18] arm64: cpufeature: Move cpu capability helpers
 inside C file
To: Catalin Marinas <catalin.marinas@arm.com>,
 Amit Kachhap <amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-8-git-send-email-amit.kachhap@arm.com>
 <eb3acde3-ba4c-162d-b1d2-54183ab4e921@arm.com>
 <e3749f3f-e314-c3b8-cf71-b1ea9d699f4e@arm.com>
 <20200311105020.GA3216816@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <59873436-7c77-33f7-4981-215d4d458cf0@arm.com>
Date: Wed, 11 Mar 2020 11:44:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200311105020.GA3216816@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_044411_177711_6285DA43 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/11/20 10:50 AM, Catalin Marinas wrote:
> On Tue, Mar 10, 2020 at 06:23:15PM +0530, Amit Kachhap wrote:
>> On 3/10/20 5:50 PM, Vincenzo Frascino wrote:
>>> On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
>>>
>>> [...]
>>>
>>> Seems that the signature of the functions above is changed during the migration.
>>> In particular you dropped "inline". Is there any specific reason?
>>
>> Earlier Catalin pointed me here [1]. I guess its not a hot-path function.
>>
>> [1]: https://www.spinics.net/lists/arm-kernel/msg789696.html
> 
> Indeed, it had to be static inline in a header but not anymore in a .c
> file. Also if it's really essential to be inlined and the compiler
> doesn't do this automatically, use __always_inline. But my preference is
> not to bother unless you back it up by numbers.
> 

Ok, fine by me.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
