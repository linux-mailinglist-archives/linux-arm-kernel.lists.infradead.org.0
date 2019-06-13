Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C084348C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdNDBvzkxIZQ1KRoL9EPmvI1W5xnQt7Hu1r6Org3ZeQ=; b=MPpN5z0NB/PP5r
	cXPbkzVkLyRVemMX2pik39TbDXuEDm921roO1oTsru421LAXXfaUqPzKje3VU+N0eoNHj4nfr5qls
	GaLt1DqCvx95umEBz9EVxkO0Avqd7/ZTbEhTHUcDZeapY+FTqIGLSE2DsyLIhSxmD/Li4ZUrzXFK6
	ZuI72LNGLZI9LbTI0GnNCdrXmXIDByM8HtucxzauJ6mdV3WN8AU4poQsxs4Rhb8TwEy/xTFffi4Gc
	yzDy3DRXeJkcwTF0jHDknDFJkNxKyw0R0fmCMnX1C4kTpUycnxsV2biJyJNbm092q1M065n173EO5
	Ad52phI+u4XPahgtbYKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLpH-0005JT-Sb; Thu, 13 Jun 2019 09:15:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLp5-00046f-G1
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 09:15:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB89A367;
 Thu, 13 Jun 2019 02:14:59 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 446B13F694;
 Thu, 13 Jun 2019 02:14:59 -0700 (PDT)
Date: Thu, 13 Jun 2019 10:14:54 +0100
From: Will Deacon <will.deacon@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] arm64: smp: disable hotplug on trusted OS resident CPU
Message-ID: <20190613091454.GA17331@fuggles.cambridge.arm.com>
References: <20190612125137.10260-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612125137.10260-1-sudeep.holla@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_021507_588498_573C64CF 
X-CRM114-Status: GOOD (  14.89  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep.

On Wed, Jun 12, 2019 at 01:51:37PM +0100, Sudeep Holla wrote:
> The trusted OS may reject CPU_OFF calls to its resident CPU, so we must
> avoid issuing those. We never migrate a Trusted OS and we already take
> care to prevent CPU_OFF PSCI call. However, this is not reflected
> explicitly to the userspace. Any user can attempt to hotplug trusted OS
> resident CPU. The entire motion of going through the various state
> transitions in the CPU hotplug state machine gets executed and the
> PSCI layer finally refuses to make CPU_OFF call.
> 
> This results is unnecessary unwinding of CPU hotplug state machine in
> the kernel. Instead we can mark the trusted OS resident CPU as not
> available for hotplug, so that the user attempt or request to do the
> same will get immediately rejected.
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  arch/arm64/include/asm/cpu_ops.h |  3 +++
>  arch/arm64/kernel/psci.c         |  6 ++++++
>  arch/arm64/kernel/setup.c        | 11 ++++++++++-
>  3 files changed, 19 insertions(+), 1 deletion(-)

I'm just trying to understand the motivation behind this. It's not a fix as
far as I can tell, but more of an optimisation for a failing CPU hotplug
case. Why is that important? I feel like I'm missing something.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
