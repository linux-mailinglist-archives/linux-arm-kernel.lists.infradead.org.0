Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA59C9AE98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Cxs+oX4WtD+Gnr6oTHp7jaiDLKb4qHXVs0Y5Y0IYRA=; b=Zi13cfnm5cBJm8+2qOrjeu5TZ
	Ubr1K+d25Tu7bDlJlz1dVtEDy83AzHPs66yP11uHm76wqHEAJX3wq9zV5xaGlVljQ7Y+91uLN4UbU
	PV3BZ1hnLn8/3aWZEymvBx8i3oFufVpiybDMo3jeXSlu1j4QiYXnyxZlikgQEtFVos/TQXRmk5JlG
	DkujHvEzab5gsQHTWAD0ocl7sR1np8LNbhmnP/Uvy79nH4W7T1GmIY6VCWG3/t1h7qGucmqVIXgpe
	wMqaFoggaZYnZwceqj67X9FWGrAb12On0IAwL26HN8dyocTx7lrNO9sQY2d/y9iyv3boLFtFzuMRJ
	m21L7PItg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18FQ-0005cp-T5; Fri, 23 Aug 2019 12:00:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i18FK-0005cN-AL
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:00:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9DB6337;
 Fri, 23 Aug 2019 05:00:45 -0700 (PDT)
Received: from [10.1.196.120] (e121650-lin.cambridge.arm.com [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B17E73F246;
 Fri, 23 Aug 2019 05:00:44 -0700 (PDT)
Subject: Re: [RFC v4 00/18] objtool: Add support for arm64
To: Josh Poimboeuf <jpoimboe@redhat.com>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190822195627.mzi3c4sjqnvnzaho@treble>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <0493722d-2c6e-c91e-1f8e-7c6674b299c7@arm.com>
Date: Fri, 23 Aug 2019 13:00:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822195627.mzi3c4sjqnvnzaho@treble>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_050046_404785_0B76C363 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Josh,

On 8/22/19 8:56 PM, Josh Poimboeuf wrote:
> On Fri, Aug 16, 2019 at 01:23:45PM +0100, Raphael Gault wrote:
>> Hi,
>>
>> Changes since RFC V3:
>> * Rebased on tip/master: Switch/jump table had been refactored
>> * Take Catalin Marinas comments into account regarding the asm macro for
>>    marking exceptions.
>>
>> As of now, objtool only supports the x86_64 architecture but the
>> groundwork has already been done in order to add support for other
>> architectures without too much effort.
>>
>> This series of patches adds support for the arm64 architecture
>> based on the Armv8.5 Architecture Reference Manual.
>>
>> Objtool will be a valuable tool to progress and provide more guarentees
>> on live patching which is a work in progress for arm64.
>>
>> Once we have the base of objtool working the next steps will be to
>> port Peter Z's uaccess validation for arm64.
> 
> Hi Raphael,
> 
> Sorry about the long delay.  I have some comments coming shortly.
> 
> One general comment: I noticed that several of the (mostly minor)
> suggested changes I made for v1 haven't been fixed.
> 
> I'll try to suggest them again here for v4, so you don't need to go back
> and find them.  But in the future please try to incorporate all the
> comments from previous patch sets before posting new versions.  I'm sure
> it wasn't intentional, as you did acknowledge and agree to most of the
> changes.  But it does waste people's time and goodwill if you neglect to
> incorporate their suggestions.  Thanks.
> 

Indeed, sorry about that.

Thanks for you comments, I will do my best to address them shortly. 
However, I won't have access to my professional emails for a little 
while and probably won't be able to work on this before at least a week. 
I'll try to have a new soon though and use my personal email.

Thanks,

-- 
Raphael Gault

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
