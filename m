Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFD31EB66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 11:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7YJmhD3bRqWxefAaSQEuDgGyINqb1f53zXrKad61Cc=; b=bXNwR+ES9HP37Y
	dKWVPIaKzkeaAWV8iLL0FxqUpPtbnn+t/1u5AXXwqxM9t85ZwOwSWdksFx+/P6bJ9x3V8X/VIH2se
	gOU7C57sVP75qvKscJWFQkL6egdj4ZTFN7HdI79IloNgABlNu2iSqzmlGHgy8Ge0ImijA4ZfWA1lh
	XDRcNS+2x1BUovgSikII9kfNyiAJW9iy5eIrLnT4AY8lqqBET9WJ3ccFsVqaHuCIKm0FML7F50plj
	pVc88VsIH6gH4dvaii+1WHel71wnBaGNZTi24fMcuSpfEtFsCX1xc2KGVU9OAguUcFOkgAvIyT6DY
	5IDWRmut79Rmh4vhCEdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqVM-0002ru-Nd; Wed, 15 May 2019 09:47:20 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqVA-0002mX-Lg
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 09:47:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3839380D;
 Wed, 15 May 2019 02:47:08 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B1F153F703;
 Wed, 15 May 2019 02:47:06 -0700 (PDT)
Date: Wed, 15 May 2019 10:47:04 +0100
From: Will Deacon <will.deacon@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: do_csum: implement accelerated scalar version
Message-ID: <20190515094704.GC24357@fuggles.cambridge.arm.com>
References: <20190218230842.11448-1-ard.biesheuvel@linaro.org>
 <d7a16ebd-073f-f50e-9651-68606d10b01c@hisilicon.com>
 <20190412095243.GA27193@fuggles.cambridge.arm.com>
 <41b30c72-c1c5-14b2-b2e1-3507d552830d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <41b30c72-c1c5-14b2-b2e1-3507d552830d@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_024708_769230_4B795771 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, netdev@vger.kernel.org,
 ilias.apalodimas@linaro.org, Zhangshaokun <zhangshaokun@hisilicon.com>,
 "huanglingyan \(A\)" <huanglingyan2@huawei.com>,
 linux-arm-kernel@lists.infradead.org, steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 07:18:22PM +0100, Robin Murphy wrote:
> On 12/04/2019 10:52, Will Deacon wrote:
> > I'm waiting for Robin to come back with numbers for a C implementation.
> > 
> > Robin -- did you get anywhere with that?
> 
> Still not what I would call finished, but where I've got so far (besides an
> increasingly elaborate test rig) is as below - it still wants some unrolling
> in the middle to really fly (and actual testing on BE), but the worst-case
> performance already equals or just beats this asm version on Cortex-A53 with
> GCC 7 (by virtue of being alignment-insensitive and branchless except for
> the loop). Unfortunately, the advantage of C code being instrumentable does
> also come around to bite me...

Is there any interest from anybody in spinning a proper patch out of this?
Shaokun?

Will

> /* Looks dumb, but generates nice-ish code */
> static u64 accumulate(u64 sum, u64 data)
> {
> 	__uint128_t tmp = (__uint128_t)sum + data;
> 	return tmp + (tmp >> 64);
> }
> 
> unsigned int do_csum_c(const unsigned char *buff, int len)
> {
> 	unsigned int offset, shift, sum, count;
> 	u64 data, *ptr;
> 	u64 sum64 = 0;
> 
> 	offset = (unsigned long)buff & 0x7;
> 	/*
> 	 * This is to all intents and purposes safe, since rounding down cannot
> 	 * result in a different page or cache line being accessed, and @buff
> 	 * should absolutely not be pointing to anything read-sensitive.
> 	 * It does, however, piss off KASAN...
> 	 */
> 	ptr = (u64 *)(buff - offset);
> 	shift = offset * 8;
> 
> 	/*
> 	 * Head: zero out any excess leading bytes. Shifting back by the same
> 	 * amount should be at least as fast as any other way of handling the
> 	 * odd/even alignment, and means we can ignore it until the very end.
> 	 */
> 	data = *ptr++;
> #ifdef __LITTLE_ENDIAN
> 	data = (data >> shift) << shift;
> #else
> 	data = (data << shift) >> shift;
> #endif
> 	count = 8 - offset;
> 
> 	/* Body: straightforward aligned loads from here on... */
> 	//TODO: fancy stuff with larger strides and uint128s?
> 	while(len > count) {
> 		sum64 = accumulate(sum64, data);
> 		data = *ptr++;
> 		count += 8;
> 	}
> 	/*
> 	 * Tail: zero any over-read bytes similarly to the head, again
> 	 * preserving odd/even alignment.
> 	 */
> 	shift = (count - len) * 8;
> #ifdef __LITTLE_ENDIAN
> 	data = (data << shift) >> shift;
> #else
> 	data = (data >> shift) << shift;
> #endif
> 	sum64 = accumulate(sum64, data);
> 
> 	/* Finally, folding */
> 	sum64 += (sum64 >> 32) | (sum64 << 32);
> 	sum = sum64 >> 32;
> 	sum += (sum >> 16) | (sum << 16);
> 	if (offset & 1)
> 		return (u16)swab32(sum);
> 
> 	return sum >> 16;
> }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
