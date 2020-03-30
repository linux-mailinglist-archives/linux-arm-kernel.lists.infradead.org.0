Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96618198482
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 21:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IR1Z0qAvsZ7VBmnX+7qQogtGVw6NEvgm+63/V5gB5CA=; b=h7+oVK+oe96HfW
	yCkKVs/bjARKIurDaBUQF82kZDkKpSzRnmrQkvp8+WX/0kfpZuR6Q25LNoiiXYEZCW1gpmESiMsPW
	kUBMuhRu5fD+m/4KBvQX2vtqomzXQzZO+GrPbWphv/sh2NhpusWy/V2xfnNWsTh4ptOd/HSvLwvIH
	NuOJsjDXAoJ0uDGa6XOUBPDluL444Wtr4Q/ONPzY2qb47zBx9QTDOAKACrzMv6u1RlkBw4s4v6LNp
	Q+H14GfA8p4PCji5AE3m6UrUE+/Qb6sFqeXboKgOUFvUMKUsoAqNvlqrmB/U1vc9a9Evl7KEw/Nfl
	QIpmp9j7+CGdQzLwID6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ09W-0002wX-5j; Mon, 30 Mar 2020 19:32:54 +0000
Received: from mx.sdf.org ([205.166.94.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ09N-0002vn-CZ
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 19:32:46 +0000
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02UJWcho000323
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Mon, 30 Mar 2020 19:32:38 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02UJWb9C003561;
 Mon, 30 Mar 2020 19:32:37 GMT
Date: Mon, 30 Mar 2020 19:32:37 +0000
From: George Spelvin <lkml@SDF.ORG>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [RFC PATCH v1 44/50] arm64: ptr auth: Use get_random_u64 instead
 of _bytes
Message-ID: <20200330193237.GC9199@SDF.ORG>
References: <202003281643.02SGhOi3016886@sdf.org>
 <20200330105745.GA1309@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330105745.GA1309@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_123245_467754_4B075532 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

Sorry for the delay responding; I had to re-set-up my arm64
cross-compilation environment.

On Mon, Mar 30, 2020 at 11:57:45AM +0100, Mark Rutland wrote:
> On Tue, Dec 10, 2019 at 07:15:55AM -0500, George Spelvin wrote:
>> Since these are authentication keys, stored in the kernel as long
>> as they're important, get_random_u64 is fine.  In particular,
>> get_random_bytes has significant per-call overhead, so five
>> separate calls is painful.
> 
> As I am unaware, how does the cost of get_random_bytes() compare to the
> cost of get_random_u64()?

It's approximately 8 times the cost.

Because get_random_bytes() implements anti-backtracking, it's a minimum 
of one global lock and one ChaCha20 operation per call.  Even though 
chacha_block_generic() returns 64 bytes, for anti-backtracking we use 
32 of them to generate a new key and discard the remainder.

get_random_u64() uses the exact same generator, but amortizes the cost by 
storing the output in a per-CPU buffer which it only has to refill every 
64 bytes generated.  7/8 of the time, it's just a fetch from a per-CPU 
data structure.

>> This ended up being a more extensive change, since the previous
>> code was unrolled and 10 calls to get_random_u64() seems excessive.
>> So the code was rearranged to have smaller object size.
> 
> It's not really "unrolled", but rather "not a loop", so I'd prefer to
> not artifially make it look like one.

I intended that to mean "not in a loop, but could be".  I guess
this entire exchange is about the distinction between "could be"
and "should be".  ;-)

Yes, I went overboard, and your proposed change below is perfectly
fine with me.

> Could you please quantify the size difference when going from
> get_random_bytes() to get_random_u64(), if that is excessive enough to
> warrant changing the structure of the code? Otherwise please leave the
> structure as-is as given it is much easier to reason about -- suggestion
> below on how to do that neatly.

Here are the various code sizes:
   text    data     bss     dec     hex filename
   1480       0       0    1480     5c8 arch/arm64/kernel/pointer_auth.o.old
    862       0       0     862     35e arch/arm64/kernel/pointer_auth.o.new
   1492       0       0    1492     5d4 arch/arm64/kernel/pointer_auth.o.new2
   1560       0       0    1560     618 arch/arm64/kernel/pointer_auth.o.new3

"old" is the existing code.  "new" is my restructured code.
"new2" is your simple change with a __ptrauth_key_init() helper.
"new3" is with the helper forced noinline.

I shrank the code significantly, but deciding whether that's a net
improvement is your perogative.

I should mention that at the end of my patch series, I added a function 
(currently called get_random_nonce(), but that's subject to revision) 
which uses the get_random_u64 internals with the same interface as 
get_random_bytes().  We could postpone this whole thing until that gets
a final name and merged.


(BTW, somehow in my patch a "#include <linux/prctl.h>" needed in the 
revised <asm/pointer_auth.h> got omitted.  I probably did something stupid 
like added it in my cross-compilation tree but didn't push it back to my 
main development tree.  Sorry.)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
