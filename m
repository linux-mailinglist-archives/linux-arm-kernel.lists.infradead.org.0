Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F308A073F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 18:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uq526pRplg6ZLX7JpjMcGp84tfGRIX7cr+7QgFWZXU=; b=LgSj0cbyzCrFQy
	jTsM4XOYmdWhWd5Mhqc7tVyNLfGNwd3hE5LZA/7txYHrrJJ9FBmG0M+O4bVwXrfLRLOZ7oAH9cRm1
	poLdYEbXliV3NecinYZtY6cR3Miw/u/UFqpryOfiKkF86nMnRmD8cl72IJeevzVz2TZaUPpjnJ0Qh
	pvUABIl7UTmBdjJ3rCM6wmfmeOMcTryHkHQKPcsT2NIeZhBxxnv77uGw1op2BMwOZI3OjanwlLCFJ
	krSsyBekXoEZFoY8SIgf2Dn3cIgF648EQaFXkl6Wk+qd1NdhhRaqbCZ7dKiD1trzDb0BuUE5XBAZR
	iSREv5/gaE8J9shDhpCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i30kH-0008Or-QI; Wed, 28 Aug 2019 16:24:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i30k1-0008OS-J8
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 16:24:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD7FD28;
 Wed, 28 Aug 2019 09:24:12 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9AD43F59C;
 Wed, 28 Aug 2019 09:24:11 -0700 (PDT)
Date: Wed, 28 Aug 2019 17:24:09 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v3 2/5] arm64: Use correct ll/sc atomic constraints
Message-ID: <20190828162409.GC42408@lakrids.cambridge.arm.com>
References: <20190812143625.42745-1-andrew.murray@arm.com>
 <20190812143625.42745-3-andrew.murray@arm.com>
 <20190822153223.GB33080@lakrids.cambridge.arm.com>
 <20190828130118.GW14582@e119886-lin.cambridge.arm.com>
 <20190828152540.GA42408@lakrids.cambridge.arm.com>
 <20190828154422.GA14582@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828154422.GA14582@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_092413_676641_52783A7D 
X-CRM114-Status: GOOD (  14.82  )
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 Will Deacon <will.deacon@arm.com>, Ard.Biesheuvel@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 04:44:22PM +0100, Andrew Murray wrote:
> On Wed, Aug 28, 2019 at 04:25:40PM +0100, Mark Rutland wrote:
> > On Wed, Aug 28, 2019 at 02:01:19PM +0100, Andrew Murray wrote:
> > > On Thu, Aug 22, 2019 at 04:32:23PM +0100, Mark Rutland wrote:
> > > > On Mon, Aug 12, 2019 at 03:36:22PM +0100, Andrew Murray wrote:
> > > > [...]
> > > > 
> > > > > -ATOMIC64_OPS(and, and)
> > > > > -ATOMIC64_OPS(andnot, bic)
> > > > > -ATOMIC64_OPS(or, orr)
> > > > > -ATOMIC64_OPS(xor, eor)
> > > > > +ATOMIC64_OPS(and, and, K)
> > > > > +ATOMIC64_OPS(andnot, bic, )
> > > > > +ATOMIC64_OPS(or, orr, K)
> > > > > +ATOMIC64_OPS(xor, eor, K)
> > > > 
> > > > Shouldn't these be 'L'?
> > > > 
> > > > IIUC K is a subset of L, so if that's deliberate we should call that out
> > > > explicitly...
> > > 
> > > Oooh yes that's wrong. I guess the atomic64_[and,or,xor] are rarely called
> > > in the kernel which perhaps is why the compiler hasn't shouted at me.
> > > 
> > > Do you agree that the and, orr and eor should all be 'L' instead of 'K'?
> > 
> > Yes, I think all the 64-bit logical ops should all use 'L'.
> 
> With the exception of bic? I don't think there is an appropriate constraint
> for this (it requires an 8 bit immediate).

The ARM ARM doesn't mention BIC (Immediate), and AFAICT that's an
(undocumented?) alias for AND (Immediate) with a negated immediate.

Where did you find a description with an 8-bit immediate?

Regardless, yes, drop the 'L' there -- I can't find any suitable
constraint either.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
