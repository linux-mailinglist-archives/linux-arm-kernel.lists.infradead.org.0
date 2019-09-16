Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C799EB373F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 11:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8cJIkbjenDpJvtlxdwmR7akiYhjuARpV6j+rgJhfNg=; b=BVoIqwyAyM2o1G
	WSzQaWglrDLLBFCPPmCdNo+SXof+m9p2MBYAfrCgc6yLYtQKVyV3RtPx7Z1bju/LyFtPiuqyJMtWF
	JXGo3sP/Kh9w4mBLfXqi0ia1ESzKUK9cmhfKZGTXRSVoDp4UnZjGEHC1MWc5U1/VJXYnkIKkTDonY
	1Ka3sXG+lcly5PkmspmGdQWIKCZLQH08aBvwlveez1U4DoPIPZpkD6O8kM3TMQ1DMQUMc23YMmuhl
	2XHyUdsl0vrcQapjTXjeNonpAc79nsBwG3ZaK8oe+cSo8u1oizH4qlNT5UzR1gqS49E/dr28z7x2p
	zQtHGpuhd3W43+xE62uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nSo-0000dC-1s; Mon, 16 Sep 2019 09:38:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nSY-0000c3-MA
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 09:38:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A259D1000;
 Mon, 16 Sep 2019 02:38:11 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 379A93F59C;
 Mon, 16 Sep 2019 02:38:09 -0700 (PDT)
Subject: Re: [RFC PATCH v2 00/12] Unify SMP stop generic logic to common code
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20190913181953.45748-1-cristian.marussi@arm.com>
 <20190913182713.GB13294@shell.armlinux.org.uk>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <81e7e4da-93a3-c234-6ed6-0d709289776c@arm.com>
Date: Mon, 16 Sep 2019 10:38:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190913182713.GB13294@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_023814_813078_BC9AE2F3 
X-CRM114-Status: GOOD (  23.17  )
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com,
 sparclinux@vger.kernel.org, dzickus@redhat.com, ehabkost@redhat.com,
 peterz@infradead.org, catalin.marinas@arm.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net, hch@infradead.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 hidehiro.kawai.ez@hitachi.com, tglx@linutronix.de, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/09/2019 19:27, Russell King - ARM Linux admin wrote:
> On Fri, Sep 13, 2019 at 07:19:41PM +0100, Cristian Marussi wrote:
>> Tested as follows:
>>
>> - arm:
>> 1. boot
> 
> So this basically means the code paths you're touching are untested on
> ARM... given that, and the variety of systems we have out there, why
> should the patches touching ARM be taken?
> 

Yes, but sincerely it's an RFC, so I was not expecting any change to be picked up
by anyone at this stage: the expectation was to have some feedback on the general
approach used in the common code side of the series (patches 01-02-03-04):

is it worth ? is it over-engineered ? is it badly coded ? is it complete crap ?

In fact in the cover letter I stated:

> A couple more of still to be done potential enhancements have been noted
> on specific commits, and a lot more of testing remains surely to be done
> as of now, but, in the context of this RFC, any thoughts on this approach
> in general ?

I didn't want to port and test a lot of architectures before having some basic
feedback: in fact I did port more than one arch just to verify if they could
easily all fit into the new common code logic/layout I introduced, and, also,
to show that it could be generally useful to more than on arch. (as asked in V1)

As you noticed, though, I did certainly test as of now a lot more on some of them:

- arm64: because is where the initial bug was observed, so I had to verify if all
  of the above at least also fixed something at the end

- x86: because the original x86 SMP stop code differs more than other archs and so
  it was a good challenge to see if it could fit inside the new common SMP code logic
  (and in fact I had to extend the common framework to fit also x86 SMP stop needs)

Moreover within this series structure it is not mandatory for all archs to switch to the
new common logic: if not deemed important they can simply stick to their old code, while
other archs can switch to it.

So testing and porting to further archs is certainly work in progress at this time,
but in this RFC stage, I could be wrong, but I considered the arch-patches in this series more
as an example to showcase the usefulness (or not) of the series related to the common code
changes: I did not extensively tested all archs to the their full extent, so more fixes
could come in V3 (if ever) together with more testing and archs.

> Given that you're an ARM Ltd employee, I'm sure you can find 32-bit
> systems to test - or have ARM Ltd got rid of everything that isn't
> 64-bit? ;)
> 

well...worst case there's always Amazon anyway ... :D

Cheers

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
