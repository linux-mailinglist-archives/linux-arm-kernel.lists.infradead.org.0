Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE9B8A40B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 19:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpfJX6rMK9XHNh5BsA2+fR+lTrSdU1c+lr6bYyjlvUk=; b=XdMp0xzt1xMiQz
	bNQ/G4+PkR51aq67CRLPynRuSQmYB8rFbKQYhgNo5xj3PGG8vHrl5fC40iTPdoTowkSs6IRxPcyqQ
	av2eLC519Qq+rEb69t4jgpY6kuQTs9ImuP5FwduDonMYWZvtdzZlr0EbQLa6ym9JvQAVPAEDZdj5J
	If1v3HLgkL/ua7B5C8+SyB7ImdI2uft4yDg28d8dWUOFpAyaseL4nwzhqeb4s/VWwKC8WA/wxlzV7
	z4+2OPQsR5vTJozidMcinhxmHXre9/rSOFk0Ajknqjs1IRTKKDeoLkeih9EVSbC57pBh/MCXY1zW6
	SJDR4VzuwgqUkQupmcDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxDqr-0007cG-HC; Mon, 12 Aug 2019 17:11:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxDqg-0007bt-U0
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 17:11:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40E6115AB;
 Mon, 12 Aug 2019 10:11:09 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E3EA3F706;
 Mon, 12 Aug 2019 10:11:08 -0700 (PDT)
Date: Mon, 12 Aug 2019 18:11:03 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] arm64: smp: disable hotplug on trusted OS resident CPU
Message-ID: <20190812171103.GA9765@e107155-lin>
References: <20190612125137.10260-1-sudeep.holla@arm.com>
 <20190613091454.GA17331@fuggles.cambridge.arm.com>
 <ae9944d8-0c0a-5f0f-707d-4d9e70a4f163@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae9944d8-0c0a-5f0f-707d-4d9e70a4f163@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_101111_014846_2DFA7A9F 
X-CRM114-Status: GOOD (  19.85  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

(sorry for responding so late, I seem to have lost your reply and
when I saw the patch today in my git, searched and saw this reply)

On Mon, Aug 12, 2019 at 06:00:52PM +0100, Sudeep Holla wrote:

>
> On 13/06/2019 10:14, Will Deacon wrote:
> > Hi Sudeep.
> >
> > On Wed, Jun 12, 2019 at 01:51:37PM +0100, Sudeep Holla wrote:
> >> The trusted OS may reject CPU_OFF calls to its resident CPU, so we must
> >> avoid issuing those. We never migrate a Trusted OS and we already take
> >> care to prevent CPU_OFF PSCI call. However, this is not reflected
> >> explicitly to the userspace. Any user can attempt to hotplug trusted OS
> >> resident CPU. The entire motion of going through the various state
> >> transitions in the CPU hotplug state machine gets executed and the
> >> PSCI layer finally refuses to make CPU_OFF call.
> >>
> >> This results is unnecessary unwinding of CPU hotplug state machine in
> >> the kernel. Instead we can mark the trusted OS resident CPU as not
> >> available for hotplug, so that the user attempt or request to do the
> >> same will get immediately rejected.
> >>
> >> Cc: Mark Rutland <mark.rutland@arm.com>
> >> Cc: Catalin Marinas <catalin.marinas@arm.com>
> >> Cc: Will Deacon <will.deacon@arm.com>
> >> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> >> ---
> >>  arch/arm64/include/asm/cpu_ops.h |  3 +++
> >>  arch/arm64/kernel/psci.c         |  6 ++++++
> >>  arch/arm64/kernel/setup.c        | 11 ++++++++++-
> >>  3 files changed, 19 insertions(+), 1 deletion(-)
> >
> > I'm just trying to understand the motivation behind this. It's not a fix as
> > far as I can tell, but more of an optimisation for a failing CPU hotplug
> > case. Why is that important? I feel like I'm missing something.
> >

Yes it's just optimisation and not a fix. The main reasons I came up
with this was to avoid unnecessary CPU hotplug state machine unwinding
as it's generally heavy weight operation. There's no other hidden
reasons :) that you are missing.

IIRC I wrote this when I was debugging some issue with suspend-to-ram
which was broken for a different reason.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
