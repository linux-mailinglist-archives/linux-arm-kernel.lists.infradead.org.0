Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D2039013
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OuBwUsbYH0oKFIOuVMsDZJ7u1cZaChrXWRAGDuqVE5M=; b=J1rJoCHZR//IKH
	Jw3baa9KHdWqzu4m/CiYHPiQnZMvVCQUk5RRoRnVQgpn1g6EWxMS6zzbPr7QMF4S9uu6jaoMc5eRI
	UNeW/G0gfNAqYk98LQ4PI0U5nzfUYtpxlfx8P3KmphxufJ0YJE8zfwRH7pak5r7OgBelV+nM0dAgj
	zlnpUUo3S/RttoHI/bm8G2hyHc0ffavgmSM8grVmnI1ufNfj9gHJOPLn260j95mvHX8PRhTVz734E
	jTVkYhc8XY/JOKmnb1umgcmDK76RTNQhkvL2XcAzVGDfQhUrD0/mKljGhMgCW0OeJkqQP14+YwdNS
	mKWzftFcOwihODZS7nWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZH6h-0000QX-TJ; Fri, 07 Jun 2019 15:48:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZH6a-0000Pj-Lw
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:48:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9296680D;
 Fri,  7 Jun 2019 08:48:35 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 72FFC3F718;
 Fri,  7 Jun 2019 08:48:34 -0700 (PDT)
Date: Fri, 7 Jun 2019 16:48:32 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH 0/2] arm64/sve: Fix mutating register endianness on
 big-endian
Message-ID: <20190607154832.GH28398@e103592.cambridge.arm.com>
References: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
 <20190607093858.GA21378@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607093858.GA21378@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_084836_768708_854E218F 
X-CRM114-Status: GOOD (  20.08  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 gdb@sourceware.org, Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 10:38:58AM +0100, Will Deacon wrote:
> On Thu, Jun 06, 2019 at 05:44:53PM +0100, Dave Martin wrote:
> > By inspection while debugging something else, I noticed that the byte
> > order of FPSIMD V-register stores and SVE Z-register stores is not the
> > same when running on big-endian.
> > 
> > This is not properly taken into account when moving between the FPSIMD
> > and SVE register views inside the kernel, resulting in the bytes of a
> > V-register getting spontaneously reversed in some situations, from
> > userspace's point of view.  The signal frame and ptrace interface are
> > also affected.  The KVM ABI forbids mixing the two views and so should
> > not be affected.
> > 
> > See patch 2 for details.
> > 
> > Patch 1 does some trivial preparatory refactoring.
> 
> Sorry to be a pain, but would you be able to flip this series round so that
> the fix doesn't depend on the refactoring, please? That way we can put it
> into stable without the dependency.
> 
> > gdb may or may not be affected by this, depending on how it uses the
> > NT_PRFPREG and NT_ARM_SVE regsets.  I'll leave it to the developers to
> > assess that.
> 
> Wouldn't this be easy enough to test?

So, gdb works OK on big-endian but weird stuff happening on both with
and without the fix.

There are places in the gdb code itself where it is likely missing
endianness conversions, but I need to follow up with the gdb folks to
clarify whether my patch is missing something...

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
