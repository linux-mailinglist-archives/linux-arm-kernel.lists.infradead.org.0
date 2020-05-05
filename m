Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17311C5392
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvbuT/JbWhQzbEJj32hehM/MB5xiMKljGbPn/6vFNC0=; b=fFeG8yy5cL441n
	/DPKsziwAMRQdnJQSlWfgstSF8ExSeN2LeZmPjgXuRc8TqwEUoaJ+rTG9sW6d8eNFdPce/TlBkcgb
	pIxgDBycKwofi6zBngICyxGroyRuJxo8s2Yy8x8BMx0LKi7OgCHRMIFRMXZ/2b2pVOKm7mJSMykgX
	hyDrtf3/s9alPCDzPY83Hj4qV7X3QeGACWmbH6YOCMRoFn5ZK8r++aXSxOQfLzHGRQDASs7mvrpo7
	e7gl/b/zPERhhVsll/xBJ81kO+6rgqJalYyGggA01pETSwNz4OFhaM6UGz1+neTJBFrOmmcl2f7ce
	NEbFI2muE3yPatPGUyLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVv4r-0007ul-NO; Tue, 05 May 2020 10:45:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVv4N-0007nK-Ts
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:45:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E451206A5;
 Tue,  5 May 2020 10:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588675499;
 bh=J8dSAo1NkSjvZvb30jTZhQbKGZ1WYsmYm2gswSFV5RY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pc0Jpyt+vWwwHoLo73p8Vc6s1jyECtwd+SzEDzEOh1CgA7+Ynw6w5KLGRlJpIVh+K
 GhPCIzhCRMcSIrIkCk4OmS674kxNUmzoocg4/kDYIxZnAiflBNhZkT1kuPZ+F4y3R9
 K9i4Rdw3VXSbPuD9xT12RHGONOAN/UuEijWzSnVk=
Date: Tue, 5 May 2020 11:44:55 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: RFC: Adding arch-specific user ABI documentation in linux-man
Message-ID: <20200505104454.GC19710@willie-the-truck>
References: <20200504153214.GH30377@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504153214.GH30377@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_034459_996854_5006EED1 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On Mon, May 04, 2020 at 04:32:35PM +0100, Dave Martin wrote:
> I considering trying to plug some gaps in the arch-specific ABI
> documentation in the linux man-pages, specifically for arm64 (and
> possibly arm, where compat means we have some overlap).
> 
> For arm64, there are now significant new extensions (Pointer
> authentication, SVE, MTE etc.)  Currently there is some user-facing
> documentation mixed in with the kernel-facing documentation in the
> kernel tree, but this situation isn't ideal.
> 
> Do you have an opinion on where in the man-pages documentation should be
> added, and how to structure it?
> 
> 
> Affected areas include:
> 
>  * exec interface
>  * aux vector, hwcaps
>  * arch-specific signals
>  * signal frame
>  * mmap/mprotect extensions
>  * prctl calls
>  * ptrace quirks and extensions
>  * coredump contents
> 
> 
> Not everything has an obvious home in an existing page, and adding
> specifics for every architecture could make some existing manpages very
> unwieldy.
> 
> I think for some arch features, we really need some "overview" pages
> too: just documenting the low-level details is of limited value
> without some guide as to how to use them together.
> 
> 
> Does the following sketch look reasonable?
> 
>  * man7/arm64.7: new page: overview of arm64-specific ABI extensions
> 
>  * man7/sve.7 (or man7/arm64-sve.7 or man7/sve.7arm64): new page:
>    overview of arm64 SVE ABI
> 
>  * man2/arm64-ptrace.2 (or man2/ptrace.2arm64): new page:
>    arm64 ptrace extensions

Michael has been nagging me on and off about that for, what, 10 years now?
I would therefore be very much in favour of having our ptrace extensions
documented!

We could even put this stuff under Documentation/arm64/man/ if it's deemed
too CPU-specific for the man-pages project, but my preference would still
be for it to be hosted there alongside all the other man pages.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
