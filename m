Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865E938BB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 15:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtPJ4K9w8FumAikN0fgGKxEe4CGLorllo4JXkfSxcEc=; b=j0GeBO1H8rLhkN
	3AlfhBx3pNk5FDDdR31UE6rN/kfSAb/bVUlI7WactwAXWB6L5TkxDe5y0aD3C3+eM7EwJa6BZ71Iw
	03qMQv6nVMpRF3zHlSjtG0VEiPpRrQ2nSDvhq7H39W9blKG4rAlZmQxWlv4/pxYPU6VM9RQR+3IUD
	K+Dy2j1nhbS0unIKebdM6QwZm1UcON5h451Ec3bv/i0wg5hPDoZkqe7OddhNHAYHe9HWdPwU4gHSC
	ke6UpVarkoaQOBeybPrCeV8ystaU8RgRoz356iPpGoS72E6DuQCHwo8M1H+7sVZwGwJcCtCcwnNXj
	xu2NDG75P7YDoifm4FgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZF0h-0003JY-GA; Fri, 07 Jun 2019 13:34:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZF0Z-0003Io-Bv
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 13:34:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37614337;
 Fri,  7 Jun 2019 06:34:13 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 33D0D3F96A; Fri,  7 Jun 2019 06:34:12 -0700 (PDT)
Date: Fri, 7 Jun 2019 14:34:10 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH V3 1/2] arm64/mm: Consolidate page fault information
 capture
Message-ID: <20190607133409.GJ16801@arrakis.emea.arm.com>
References: <1559898786-28530-1-git-send-email-anshuman.khandual@arm.com>
 <1559898786-28530-2-git-send-email-anshuman.khandual@arm.com>
 <20190607103045.GB15753@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607103045.GB15753@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_063415_455617_1B9ECBFA 
X-CRM114-Status: GOOD (  12.98  )
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 11:30:46AM +0100, Mark Rutland wrote:
> On Fri, Jun 07, 2019 at 02:43:05PM +0530, Anshuman Khandual wrote:
> > This consolidates page fault information capture and move them bit earlier.
> > While here it also adds an wrapper is_write_abort(). It also saves some
> > cycles by replacing multiple user_mode() calls into a single one earlier
> > during the fault.
> > 
> > Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will.deacon@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >  arch/arm64/mm/fault.c | 26 +++++++++++++++++++-------
> >  1 file changed, 19 insertions(+), 7 deletions(-)
> 
> As I mentioned previously, I doubt that this has any measureable impact
> on performance, and other than commenting the caveats w.r.t. cache
> maintenance, I'm not sure this makes things any clearer.
> 
> However, AFAICT it is correct, so I'll leave that to Catalin:

I only merged the is_write_abort() wrapper from this patch (changed the
commit log as well).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
