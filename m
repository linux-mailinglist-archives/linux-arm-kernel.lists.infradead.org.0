Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436A8199B20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:15:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XAVdts30RCPYbT1vkODx5jxbCxlPWzPlRnEy8feCWY=; b=UacX8ZtMrncQ/m
	qz66rpFwCjmty6yNxs4mHnu3Ijx3FHpzWJedntRmk1sXu6PAu9Fehfh8Zz6Lt5NS6UWaUnELlJG7G
	CsW5UTHmjS9O82Rm0J3gIOHRqSTKEvY/tIStzXRAovXNtmneL/YckFqUebi/j7AU0cHcX9guZs2wd
	iwdA5mb0sNBFXE7FamwktKzP1tmr4ypt0+TTK6PXWMBCQuBFW/CERYHjg0JO5tz77bevgQF5KXpHG
	IYYdZZ8imWlcNT8P+OvM5ZYhkHeLMFwiYMALOFKVle7KlpuPeNheRZu+97fETNaAv+48JaQYpiSow
	C4Ak6+Cx4L3iXiLA1kYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJXS-0007sB-8o; Tue, 31 Mar 2020 16:14:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJXA-0007p1-G9
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jIyjvWD0oZEzo4xCEedu4Z+6hX5HqofKUKUwriiXxpM=; b=Rjl2HVS3CLrMFerjOp+QZSu1QF
 0q6lAHR1NIoSJanl6Cme+gyWJFeWb+QArawos+Td5eDNdWIIKPhE8DctO6m67ZFDuLs/p9RoRgjkI
 12gUy/qoqdQ5jEnERwqzEWYLVeLX+E+sSCfd1MC15RNK1n3sgL/xG9yZhd1O5a88nAz+WnaavtYey
 6OYuXYufVmwaVgucuPQQN/qbur1WkCWrPuSrOxj3FJ3zQ2GntH+ONzq4ke2SXmhpgI9w5GE6naoNV
 MVEEroo0XfGQhVEtmo+WrUZu0X+FVyAyqORDxOJtVHQO6YDC1Ex3dwP81Z7HFRZN2QL53SyR/Pj+f
 50v5Epng==;
Received: from mx.sdf.org ([205.166.94.20])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIDB-0004VI-LU
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 14:50:00 +0000
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02VEnFEj010261
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Tue, 31 Mar 2020 14:49:16 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02VEnFfb002103;
 Tue, 31 Mar 2020 14:49:15 GMT
Date: Tue, 31 Mar 2020 14:49:15 +0000
From: George Spelvin <lkml@SDF.ORG>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [RFC PATCH v1 44/50] arm64: ptr auth: Use get_random_u64 instead
 of _bytes
Message-ID: <20200331144915.GA4303@SDF.ORG>
References: <202003281643.02SGhOi3016886@sdf.org>
 <20200330105745.GA1309@C02TD0UTHF1T.local>
 <20200330193237.GC9199@SDF.ORG>
 <20200331101412.GA1490@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331101412.GA1490@C02TD0UTHF1T.local>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.166.94.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 lkml@sdf.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 11:14:12AM +0100, Mark Rutland wrote:
> On Mon, Mar 30, 2020 at 07:32:37PM +0000, George Spelvin wrote:
>> On Mon, Mar 30, 2020 at 11:57:45AM +0100, Mark Rutland wrote:
>>> As I am unaware, how does the cost of get_random_bytes() compare to the
>>> cost of get_random_u64()?
>> 
>> It's approximately 8 times the cost.  [Of *one* get_random_u64()
>> call; 4x the cost of the two needed to generate a 128-bit key.]
>> 
>> Because get_random_bytes() implements anti-backtracking, it's a minimum 
>> of one global lock and one ChaCha20 operation per call.  Even though 
>> chacha_block_generic() returns 64 bytes, for anti-backtracking we use 
>> 32 of them to generate a new key and discard the remainder.
>> 
>> get_random_u64() uses the exact same generator, but amortizes the cost by 
>> storing the output in a per-CPU buffer which it only has to refill every 
>> 64 bytes generated.  7/8 of the time, it's just a fetch from a per-CPU 
>> data structure.
> 
> I see; thanks for this explanation. It would be helpful to mention the
> backtracking distinction explicitly in the commit message, since it
> currently only alludes to it in the first sentence.

Easily done, but I need to find a centralized place to say it, or
I'd be repeating myself a *lot* in the series.

That said, thanks for prompting me to quantify the cost ratio.
I knew it, but never actually wrote it down.

> It's worth noting that the key values *can* be exposed to userspace when
> CONFIG_CHECKPOINT_RESTORE is selected. On such kernels, a user could
> regenerate and read the keys an arbitrary number of times on a CPU of
> their choice. From my limited understanding I presume backtracking may
> be a concern there?

No.  Backtracking is an issue if the keys must remain secret *after*
they are wiped from kernel memory.  This applies to session
*encryption* keys (assuming the plaintext should remain secret
after the session is over), and to any long-lived keys which are
stored encrypted or otherwise inaccessible (e.g. in dedicated
hardware).  The latter includes most asymmetric private keys.

Since the pointer authentication keys are authentication keys,
and valueless to an attacker once the kernel is done using them,
there is no need for backtracking protetion.

Basically, do you need to wipe the key (with memzero_explicit) when
you are done with it?  If that is important, you also want to
know that the key cannot be reconstructed from the CRNG state.

>> Yes, I went overboard, and your proposed change below is perfectly
>> fine with me.
> 
> Great. That's what I'd prefer due to clarity of the code, and I'm not
> too concerned by the figures below given it only adds 12 bytes to the
> contemporary text size.

A modified patch will follow.  Thanks for your patience.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
