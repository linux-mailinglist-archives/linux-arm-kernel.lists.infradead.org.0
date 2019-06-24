Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5326E51992
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjDgDLedd+61YUxvbe6m1B72XfsSHcz0MvP05AH0fM4=; b=PKzpULUMsBp1Ss
	FNFyboaHHVV6xx9WpahJ+6A9zGyWj2XSiX7VD5PdJP5uryc7OrvkPHU4BZOfq6PnnSSVydn3/uY9g
	BVmljeQvxnJLbQ+T7MT4ppQW/oU5EElIAInxqNGN1+y86c3iF9honQCAZQ0al5TcIj7vCvx7FK50E
	nSJWq0vwWwItsySy3Vfb3QPbILl9WJ7fVf1oA1r6AB2dg+GtQcy9O9epQ8C1Vy3L4kMJ0X4YLX3K9
	TK8JGrswFOPtyLJH6NMF38+WN+vXw3pJqyAnbNoXpxcIwDWeVDJds7tVxWgd+9dGgtsBBSQzVk/1G
	nQor1se3Q0px2Jo0fOag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSnX-0002NW-1V; Mon, 24 Jun 2019 17:30:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSnI-0002Mg-6w
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:30:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75C6B360;
 Mon, 24 Jun 2019 10:30:12 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A90D43F718; Mon, 24 Jun 2019 10:30:10 -0700 (PDT)
Date: Mon, 24 Jun 2019 18:30:08 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v5 2/4] x86/entry: Simplify _TIF_SYSCALL_EMU handling
Message-ID: <20190624173008.GJ29120@arrakis.emea.arm.com>
References: <20190523090618.13410-3-sudeep.holla@arm.com>
 <20190611145627.23229-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611145627.23229-1-sudeep.holla@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_103016_305043_332FE953 
X-CRM114-Status: GOOD (  13.42  )
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
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Richard Weinberger <richard@nod.at>, jdike@addtoit.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 03:56:27PM +0100, Sudeep Holla wrote:
> The usage of emulated and _TIF_SYSCALL_EMU flags in syscall_trace_enter
> is more complicated than required.
> 
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Acked-by: Oleg Nesterov <oleg@redhat.com>
> Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  arch/x86/entry/common.c | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)
> 
> Hi Catalin,
> 
> I assume you can now pick up this patch.

I can, unless Thomas picks it up through the tip tree (there is no
dependency on the other patches in this series, which I already queued
via arm64).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
