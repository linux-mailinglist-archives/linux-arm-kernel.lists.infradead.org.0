Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135A9361AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vyV3onBjqqgYS619wyQAnpDhwrEhyN4art8LJO/J8Q=; b=IseFLxA+Ubyb7c
	XV2RLnPkK1tGp/F3djAaaHUaxLSeNWuRcSOaPSefhfIl7ubmLJNIK0uReuzcpPWAE9Gdc2FmEdjpq
	jcENDXmyEGsafsdxette05g0JM4gSgRtJQXCeGrqIHoui1HG2T65Y/Tz8uKNPzmMm7hV+YhJclOVH
	knHiTXeDGCIGvvuGFw59MtmqCVy88+gTuYHtAMpRGR9I9TEYrHm1hIL9bRiiCAMibXnP2M6Iv/IVt
	R7QMr1e4vaqLBhOxzrF3UQxhfL1cs7TQOtJflk0o01wK9gHFoBkmtUq6YWwAIVaMOHYh4xVxoYXO1
	62jvi6UXmftzarLMGDNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZB1-0008Kb-IW; Wed, 05 Jun 2019 16:54:15 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZAs-0008IC-4y
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 16:54:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 621C0374;
 Wed,  5 Jun 2019 09:54:05 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 708623F5AF; Wed,  5 Jun 2019 09:54:03 -0700 (PDT)
Date: Wed, 5 Jun 2019 17:54:00 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v4 0/4] ptrace: cleanup PTRACE_SYSEMU handling and add
 support for arm64
Message-ID: <20190605165400.GF50849@arrakis.emea.arm.com>
References: <20190523090618.13410-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523090618.13410-1-sudeep.holla@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_095406_195581_92AB4070 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Richard Weinberger <richard@nod.at>, jdike@addtoit.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, Bin Lu <bin.lu@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 10:06:14AM +0100, Sudeep Holla wrote:
> Sudeep Holla (4):
>   ptrace: move clearing of TIF_SYSCALL_EMU flag to core
>   x86: simplify _TIF_SYSCALL_EMU handling
>   arm64: add PTRACE_SYSEMU{,SINGLESTEP} definations to uapi headers
>   arm64: ptrace: add support for syscall emulation

I queued patches 1, 3 and 4 through the arm64 tree. There is no
dependency on patch 2 (just general clean-)up; happy to take it as well
or it can go in via the x86 tree.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
