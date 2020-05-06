Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C9D1C703D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DKfE0Bi57u4pbeMWJ0tnOBmLvsCxQtQJoObxM8HgioY=; b=g64pFOEjVeaCKlOCOQsUq4VMD
	qtRxPtBADyw96oddrzJYm/3OMEcCMOvtlUHSsgftpHo70Ksx8bddXBcOGLjnoR1PtTc/je0a0+MCm
	3zC1+vQ/mWicQqqYkBFSJQvo7kLfghJwbtiLg9siZlUX6vYSnlfm0InX0ewWZ/SO6jtwy6Tjn05sQ
	K4OYfiLFavodWCBnBY/VJE4tVENTumGu2pbfPwXijRHYJ0qkDtGTNQxfVc2pXSwmslVgt31oameS3
	ymNci6/Z95209WGtvMDkba9ovoty4TAr4doEPq1cOJss8YKcBlMhjE/qlPUgudTTn1x7xjSmxde2Q
	LG2PdqYMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJ6y-0004zZ-WF; Wed, 06 May 2020 12:25:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJ6q-0003ql-5h
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 12:25:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 802541FB;
 Wed,  6 May 2020 05:25:05 -0700 (PDT)
Received: from [10.57.31.214] (unknown [10.57.31.214])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 72FEA3F71F;
 Wed,  6 May 2020 05:25:03 -0700 (PDT)
Subject: Re: [PATCH v2 01/10] arm64: bti: Support building kernel C code using
 BTI
To: Mark Brown <broonie@kernel.org>, Dave Martin <Dave.Martin@arm.com>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-2-broonie@kernel.org> <20200505165045.GQ30377@arm.com>
 <20200505173138.GJ5377@sirena.org.uk>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <3162f9eb-a00f-5e7d-07d5-ad634ff08a16@arm.com>
Date: Wed, 6 May 2020 17:54:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200505173138.GJ5377@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_052508_264629_3AE1523F 
X-CRM114-Status: GOOD (  18.89  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/5/20 11:01 PM, Mark Brown wrote:
> On Tue, May 05, 2020 at 05:50:45PM +0100, Dave Martin wrote:
>> On Wed, Apr 29, 2020 at 10:16:32PM +0100, Mark Brown wrote:
> 
>>> +ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
>>> +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) := -mbranch-protection=pac-ret+leaf+bti
>>> +else
>>>   branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
>>> +endif
> 
>> Is it worth a comment to explain how this differs from
>> -mbranch-protection=standard, and why we're not using that here?
> 
> There was some open discussion in a separate thread about the use of
> +leaf:
> 
>     https://lore.kernel.org/linux-arm-kernel/1588149371-20310-1-git-send-email-amit.kachhap@arm.com/
> 
> which currently settled on leaving it in but I do agree, it probably
> would be useful to document the choices we're making here.  CCing Amit
> as some of the discussion was off-list so I don't know all the details
> there.

It was decided to retain the strictest ptrauth compiler option as there
is a narrow scope of ROP protection use-case in case of leaf function.
Although I provided some static benefits in diluting this requirement
but it was suggested to differ it till there is some run-time
performance gain data for leaf functions.

Yes documenting it here makes sense.

Cheers,
Amit Daniel

> 
> As with the recent change to explicitly default to branch-protection=none
> there's probably a case for simply being explicit about whatever we're
> doing rather than relying on compiler defaults in case there are any bad
> interactions with code generated for an extension that isn't fully
> supported in the kernel in the future.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
