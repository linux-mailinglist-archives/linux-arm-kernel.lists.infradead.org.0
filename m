Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2571FBDB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRj3pMmPOBkYksGthzIa0luTl8g5PcK5GKUQUMb2AkE=; b=Xm5ADyc5Ngu6/k
	R8++USU6HUWLGlABbEGMi5yyB/jiwl3LBk5dvcSz5NBv+OAZLby80j8GJsr9gO08lKq+qPUCgW1C5
	8b1AzugmJkBslqjoeeMFuLzRc6tDRnPs+GnpdO3b5wbDk0Zr7R6U/tOMnpIxt2wB/lW684xtW611V
	ODP0fE8gjsOl7w/1/9MFX152JYP5S8LzpNCMaO+xmF+U2YlOHipBFhMg+G0LgEHstj3B0CBe8FXyq
	x/FSDdHU0ahcKrK3VTNI4SachvA52rU7Z4PCoif0RcS2xM+dcEpThbyF1LI7+tkhs+HWHQVPo+TtX
	kRWpv+m8DNuaNBMuXfUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlG4Y-0001SY-I1; Tue, 16 Jun 2020 18:12:34 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlG4O-0001Rw-KM
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:12:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592331141;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oqaQTeVHl80IMLUCBReUNYaEacSD+Olo81M0TlaOSA4=;
 b=ZcB/2/RqZQR3NZU87DIzAvsZFzpBUCql4xeeVk1S02E1dZ7URUy3PRRMn90Yidefw0h+k4
 boQLpXwUIIIQWF7Y3A8re8RIIos1Y4QQct/tiYU9VGe/o0KGq50cZHl4RPWwFlKZ3+D0hm
 6TcGq2QSljhF0ijnP8O1VmywR3dSWJQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-44-3YH0IQ8OP3G-bpJpOeov-Q-1; Tue, 16 Jun 2020 14:10:02 -0400
X-MC-Unique: 3YH0IQ8OP3G-bpJpOeov-Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 399B980F5DA;
 Tue, 16 Jun 2020 18:10:00 +0000 (UTC)
Received: from tstellar.remote.csb (ovpn-114-27.phx2.redhat.com [10.3.114.27])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4596119C71;
 Tue, 16 Jun 2020 18:09:59 +0000 (UTC)
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
To: Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck>
 <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
From: Tom Stellard <tstellar@redhat.com>
Organization: Red Hat
Message-ID: <892a98da-2119-a6f5-629c-a93a3f993aba@redhat.com>
Date: Tue, 16 Jun 2020 11:09:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=tstellar@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_111224_749234_597502E1 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reply-To: tstellar@redhat.com
Cc: mark.rutland@arm.com, android-kvm@google.com, catalin.marinas@arm.com,
 ndesaulniers@google.com, clang-built-linux@googlegroups.com,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 daniel.kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/16/2020 10:49 AM, Nathan Chancellor wrote:
> On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
>> On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
>>> [+ Tom, the clang 10 release manager]
>>>
>>> On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
>>>> On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
>>>>> On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:
>>>>>
>>>>>> Here, the switch statement has been replaced by a jump table which we *tail
>>>>>> call* into. The register dump shows we're going to 0xffffd68929392e14:
>>>>>
>>>>>> ffff800010032e14:       d503233f        paciasp
>>>>>> ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
>>>>>> ffff800010032e1c:       910003fd        mov     x29, sp
>>>>>> ffff800010032e20:       aa0803e0        mov     x0, x8
>>>>>> ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
>>>>>> ffff800010032e28:       93407c00        sxtw    x0, w0
>>>>>> ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
>>>>>> ffff800010032e30:       d50323bf        autiasp
>>>>>> ffff800010032e34:       d65f03c0        ret
>>>>>
>>>>>> The problem is that the paciasp instruction is not BTYPE-compatible with BR;
>>>>>> it expects to be called with a branch-and-link, and so we panic. I think you
>>>>>> need to emit a 'bti j' here prior to the paciasp.
>>>>>
>>>>> I checked with our internal teams and they actually ran into this
>>>>> recently with some other code, the patch:
>>>>>
>>>>>    https://reviews.llvm.org/D81746
>>>>>
>>>>> ([AArch64] Fix BTI instruction emission) should fix this, it's been
>>>>> reviewed so should be merged shortly.
>>>>
>>>> Cheers, that's good to hear. Shall we have a guess at the clang release
>>>> that will get the fix, or just disable in-kernel BTI with clang for now?
>>>>
>>>> Will
>>>>
>>>
>>> This will be in clang 11 for sure. Tom, would it be too late to get this
>>> in to clang 10.0.1? If it is not, I can open a PR.
>>
>> Any update on this, please? I'd like to get the kernel fixed this week.
>>
>> Cheers,
>>
>> Will
> 
> The AArch64 backend owner said it should be okay to add to 10.0.1:
> https://llvm.org/pr46327
> 
> Tom just needs to pick it, I see no reason to believe that won't happen
> this week.
> 

I have this in the list of fixes I'm working through.  I'm trying to
get everything done by Thursday.

-Tom

> Cheers,
> Nathan
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
