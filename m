Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B573112925
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 11:19:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoJyeOamDgXzhP1P2cAtuSYA8NPEngbaIJrbckZZtME=; b=M2+uk2OzQaOAlh
	Wor1BvyLhcR1I6QIbzxuT8x22fYkPgZk7Hc8TvcoLTRYM992dtFGqQsQ9XBFg4ECbM1CRcrts8NKF
	Kcn3K10+IbmBxOPJylWr372/WaLz1ZwagGDYm7yLT1/J7XXumQLdq8nHXbqPwIJG3r5BFWhlZc7tI
	K+CtEjn2QvBoWityQ2MT7T9Oy+GL8GLBFxavvWb7tKOdH1ZZxGzoZdSd/Qexhs/zNSQzaoM3SDfe8
	0pm5CRSjfFPsN8sc4XaNVT6v9p12ye46jg3E9dPMURZCvY12S/IqW3bFVE7WZxJsrwBAIZCXhC7yV
	f0QpokBxCru/J+Ys3blQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRkV-0000a7-2X; Wed, 04 Dec 2019 10:19:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRkG-0000Tg-9m
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 10:18:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F6FB1FB;
 Wed,  4 Dec 2019 02:18:54 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E83F93F52E; Wed,  4 Dec 2019 02:18:53 -0800 (PST)
Date: Wed, 4 Dec 2019 10:18:51 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jerome Forissier <jerome@forissier.org>
Subject: Re: Kernel v5.2+ on HiKey960?
Message-ID: <20191204101851.GC13081@arrakis.emea.arm.com>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_021856_426635_7BE3FC69 
X-CRM114-Status: GOOD (  15.38  )
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 04:43:22PM +0100, Jerome Forissier wrote:
> Has anyone successfully run kernel v5.2 or later on a HiKey960 board?
> 
> For some reason, anything past v5.1 doesn't work for me and I could not
> figure out why. The symptom is it never gets to the login prompt. The
> root FS is a Buildroot-generated one, and prior to reaching the kernel
> the board runs TF-A, OP-TEE, UEFI (edk2) and Grub.
> 
> I tried replacing /init with a shell, in which case I can type a command
> but whatever it is (even a simple "ls"), the command hangs on exit and I
> never get back to the prompt.
> 
> Then I started bisecting, that was quite painful but I found several
> problematic commits. I ended up reverting the following (in this order)
> to be able to boot v5.4:
> 
> 1. "arm64: vdso: Substitute gettimeofday() with C implementation"

Commit 28b1a824a4f4, merged in 5.3

> 2. "arm64: vdso: Explicitly add build-id option"

Commit 7a0a93c51799, merged in 5.2

> 3. "arm64: arch_timer: Ensure counter register reads occur with seqlock
>     held"

Commit 75a19a0202db, merged in 5.2.

> 4. "arm64: vdso: Remove stale files from old assembly implementation"

Commit 37a5076098c1, merged in 5.4.

The above is a pretty random set of reverts that doesn't really help
pinpoint the issue.

Since 5.2 was the first kernel where the regression was noticed, could
you try reverting commit 75a19a0202db in 5.2 and try that specific
kernel version? If this doesn't solve the issue, it may be simpler to
bisect only between 5.1 and 5.2 rather than across multiple kernel
versions.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
