Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FCBFCAE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 17:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtRVs8BXSptvtmtCNtUONcwmdgeZxBNtRtH8MnLdMk4=; b=L8KwHQD4oBxQ3r
	+gk9pTMgcdm8h2bTyXKHBf3cMUfDKpfngZ0O2fVmQYBzcbz04jAvyWdUgEqIMKuxwO8qCfJV0+MOh
	CwMS/3GSzSiO3zQKyRlRGRzalSv7tPH03m60E6c6C+fY2f906JMkDI0hpCZEu3GinyBBODMtVdQOw
	8cGjK7Cp5+Ac1cW7cVsfb/RaOkEubxKy89zjegkhn+PW5l34Hx+DYguxSF2fe77JMPDo8JOGBtHd6
	eQnC/QrGF03cQ88VXVJrrdsO63pqGpwN2oPtQ6L/MosN2r+Ruiw/+IyEWe0wc3fi01KNrN3ptji1T
	Jw+W3W0tdc5pCUWEk3oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVIAH-0003aS-1o; Thu, 14 Nov 2019 16:40:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVI9z-0003Zd-Lx
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 16:39:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5897206DB;
 Thu, 14 Nov 2019 16:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573749594;
 bh=PTKkYOF538f1BfiJH54rPCCMJM9wzIDTNfQcUOB9nNw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MWTFt5Rq2pveMB+L+QaMgeH7P0sOa0jN+pG8Sex7+EBw0TCWC/nLN039QkzIyPn9v
 2RVcmksBs7o0gsK52BDP5B3cFFqcVNOq2zwCpb01eo4jIZ0oysPLtiYvTlX80Oo70g
 e6EadHc1yFckWb5SJH+lyuf2CqICuueq555dKpD8=
Date: Thu, 14 Nov 2019 16:39:48 +0000
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 0/5] arm64: Add workaround for Cortex-A77 erratum 1542418
Message-ID: <20191114163948.GA5158@willie-the-truck>
References: <20191114145918.235339-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114145918.235339-1-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_083955_738915_F9C6D947 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Thu, Nov 14, 2019 at 02:59:13PM +0000, Suzuki K Poulose wrote:
> This series adds workaround for Arm erratum 1542418 which affects

Searching for that erratum number doesn't find me a description :(

> Cortex-A77 cores (r0p0 - r1p0). Affected cores may execute stale
> instructions from the L0 macro-op cache violating the
> prefetch-speculation-protection guaranteed by the architecture.
> This happens when the when the branch predictor bases its predictions
> on a branch at this address on the stale history due to ASID or VMID
> reuse.

Two immediate questions:

 1. Can we disable the L0 MOP cache?
 2. Can we invalidate the branch predictor? If Spectre-v2 taught us
    anything it's that removing those instructions was a mistake!

Moving on...

Have you reproduced this at top-level? If I recall the
prefetch-speculation-protection, it's designed to protect against the
case where you have a direct branch:

addr:	B	foo

and another CPU writes out a new function:

bar:
	insn0
	...
	insnN

before doing any necessary maintenance and then patches the original
branch to:

addr:	B	bar

The idea is that a concurrently executing CPU could mispredict the original
branch to point at 'bar', fetch the instructions before they've been written
out and then confirm the prediction by looking at the newly written branch
instruction. Even without the prefetch-speculation-protection, that's
fairly difficult to achieve in practice: you'd need to be doing something
like reusing memory to hold the instructions so that the initial
misprediction occurs.

How does A77 stop this from occurring when the ASID is not reallocated (e.g.
the example above)? Is the MOP cache flushed somehow?

With this erratum, it sounds like you have to end up reusing an ASID from
a task that had a branch at 'addr' in its address space that branched to
the address of 'bar' (again. in its address space). Is that right? That
sounds super rare to me, particularly with ASLR: not only does the aliasing
branch need to exist, but it needs to be held in the branch predictor while
we cycle through 64k ASIDs *and* the race with the writer needs to happen
so that we get stale instructions from the MOP cache.

Is there something I'm missing that makes this remotely plausible?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
