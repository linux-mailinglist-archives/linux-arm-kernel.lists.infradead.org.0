Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3215419282A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 13:25:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zladlPWhAy6jxLMhaX4gUcJe8amtaoWWbX72rTYJ4bU=; b=GVHA1FgMB8Y66sjQgK33AApoz
	hsMpr+CTf4JSaXH/Z+HQjvzO9bdWrWHKVXFnBDcG6siAbVkYQVPGru+pU3TLy4VMaIODYgEAgjDtY
	QwMCB2HlZgi9zw/z/ertTKZALCUvGy4P5Zu7HphWU3yzTS/pGMVY0q4+Nw51LOvSFLO7Jr3lU9JVw
	Ygg9geOgAdrXn196YtWTBX25MbJ8SsKpCwnZf7ZD0hAYAOsDcMPNS2kZUcvkqgNNQjd+NYLs+iYhO
	HXIpmZEpyzLNH9WPy1yfxgFPpsh76XpRFltWD+vPwTufnv2Uh8wbizNYqUWzIYt+Se33qTcFfv8X6
	afZTVYooQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH55t-0000tC-Ss; Wed, 25 Mar 2020 12:25:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH55e-0000rs-PI
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 12:25:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1188731B;
 Wed, 25 Mar 2020 05:24:56 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C816F3F71F;
 Wed, 25 Mar 2020 05:24:54 -0700 (PDT)
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
To: Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ardb@kernel.org>
References: <20200325114110.23491-1-broonie@kernel.org>
 <CAMj1kXH=g5N4ZtnZeX5N8hf9cnWVam4Htnov6qAmQwD58Wp73Q@mail.gmail.com>
 <20200325115038.GD4346@sirena.org.uk>
 <CAMj1kXEogCrLS1o9sQyiXsKZhykfc2kuOssCeME8HyhSnMEFvA@mail.gmail.com>
 <20200325120224.GA34330@C02TD0UTHF1T.local>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ea521053-1f55-dbab-2d34-0773fd4dcac5@arm.com>
Date: Wed, 25 Mar 2020 12:24:53 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200325120224.GA34330@C02TD0UTHF1T.local>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_052458_914497_7B366D89 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-crypto@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-25 12:03 pm, Mark Rutland wrote:
> On Wed, Mar 25, 2020 at 12:54:10PM +0100, Ard Biesheuvel wrote:
>> On Wed, 25 Mar 2020 at 12:50, Mark Brown <broonie@kernel.org> wrote:
>>> Since BTI is a mandatory feature of v8.5 there is no BTI arch_extension,
>>> you can only enable it by moving the base architecture to v8.5.  You'd
>>> need to use .arch and that feels likely to find us sharp edges to run
>>> into.
>>
>> I think we should talk to the toolchain folks about this. Even if
>> .arch_extension today does not support the 'bti' argument, it *is*
>> most definitely an architecture extension, even it it is mandatory in
>> v8.5 (given that v8.5 is itself an architecture extension).
> 
> It certianly seems unfortunate, as it goes against the premise of having
> HINT space instructions. Most software will want to enable HINT space
> instructions from ARMv8.x but nothing else to ensure binary
> compatibility with existing hardware.
> 
> I see the same is true for pointer authentication judging by:
> 
> https://sourceware.org/binutils/docs/as/AArch64-Extensions.html#AArch64-Extensions
> 
> ... so worth raising with toolchain folk as a general principle even if
> we have to bodge around it for now.

Indeed, in general, just because a feature is mandatory in v8.n doesn't 
necessarily mean it can't be included in a v8.(n-1) implementation which 
may not have the *other* mandatory parts of v8.n which ".arch 
armv8.<n>-a" would let through.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
