Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 887384EBB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2TlQmFxdttKgmhDO8yxuBduX4ulwVrBymuLx2BM6r0=; b=WX6lIbG5TzOf2j
	1f8SM/pnJ6hJpKCw9r54AJmBzlTegbKBCA1+J4GtbrvPjUrM3dMwaPONgX417NAgfZVTG6BQjLMXl
	+tOUUxg6pqIvcmX5tHQHNYnUC7Rv89TORr+n/aMTtIM2G9iMxXtmvfTkMQ2ujlQLfGxq9k++CD9c+
	D5IMaxavmT0rig+lyb1dL89fsxO4kraAh0lO6LpNTaipKEf2CH3a2Eaq3sVS1iw+I3KNC/0vUT01E
	aPBg/m0eus3N2Ajpl2bzPziSID/d0VpXj76ITwmD1r6tulykANUzxBnOgVde5e6TGcEuNqAd5PyRn
	ynCJtK+ZjW8omGYejysg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLHl-0002NI-5Q; Fri, 21 Jun 2019 15:17:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heLHT-0002Ma-8u
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:16:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C4CF5344;
 Fri, 21 Jun 2019 08:16:44 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 558C63F575; Fri, 21 Jun 2019 08:16:43 -0700 (PDT)
Date: Fri, 21 Jun 2019 16:16:41 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kevin Brodsky <kevin.brodsky@arm.com>
Subject: Re: [PATCH v5 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Message-ID: <20190621151640.GI18954@arrakis.emea.arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190613155137.47675-1-vincenzo.frascino@arm.com>
 <20190613155137.47675-2-vincenzo.frascino@arm.com>
 <1c55a610-9aa5-4675-f7de-79a1661a660d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c55a610-9aa5-4675-f7de-79a1661a660d@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_081647_413525_A4CC97FA 
X-CRM114-Status: GOOD (  21.28  )
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 02:13:01PM +0100, Kevin Brodsky wrote:
> On 13/06/2019 16:51, Vincenzo Frascino wrote:
> > +The ARM64 Tagged Address ABI is an opt-in feature, and an application can
> > +control it using the following:
> > + - /proc/sys/abi/tagged_addr: a new sysctl interface that can be used to
> > +        prevent the applications from enabling the relaxed ABI.
> > +        The sysctl is meant also for testing purposes in order to provide a
> > +        simple way for the userspace to verify the return error checking of
> > +        the prctl() commands without having to reconfigure the kernel.
> > +        The sysctl supports the following configuration options:
> > +         - 0: Disable ARM64 Tagged Address ABI for all the applications.
> > +         - 1 (Default): Enable ARM64 Tagged Address ABI for all the
> > +                        applications.
> 
> I find this very confusing, because it suggests that the default value of
> PR_GET_TAGGED_ADDR_CTRL for new processes will be set to the value of this
> sysctl, when in fact this sysctl is about restricting the *availability* of
> the new ABI. Instead of disabling the ABI, I would talk about disabling
> access to the new ABI here.

This bullet point needs to be re-written. The sysctl is meant to disable
opting in to the ABI. I'd also drop the "meant for testing" part. I put
it in my commit log as justification but I don't think it should be part
of the ABI document.

> > + - prctl()s:
> > +  - PR_SET_TAGGED_ADDR_CTRL: can be used to enable or disable the Tagged
> > +        Address ABI.
> > +        The (unsigned int) arg2 argument is a bit mask describing the
> > +        control mode used:
> > +          - PR_TAGGED_ADDR_ENABLE: Enable ARM64 Tagged Address ABI.
> > +        The arguments arg3, arg4, and arg5 are ignored.
> 
> Have we definitely decided that arg{3,4,5} are ignored? Catalin?

I don't have a strong preference either way. If it's simpler for the
user to ignore them, fine by me. I can see in the current prctl commands
a mix if ignore vs forced zero.

> > +the ABI guarantees the following behaviours:
> > +
> > +  - Every current or newly introduced syscall can accept any valid tagged
> > +    pointers.
> "pointer". Also, is it really useful to talk about newly introduced syscall?
> New from which point of view?

I think we should drop this guarantee. It would have made sense if we
allowed tagged pointers everywhere but we already have some exceptions.

> > +3. ARM64 Tagged Address ABI Exceptions
> > +--------------------------------------
> > +
> > +The behaviours described in section 2, with particular reference to the
> > +acceptance by the syscalls of any valid tagged pointer are not applicable
> > +to the following cases:
> > +  - mmap() addr parameter.
> > +  - mremap() new_address parameter.
> > +  - prctl_set_mm() struct prctl_map fields.
> > +  - prctl_set_mm_map() struct prctl_map fields.
> 
> prctl_set_mm() and prctl_set_mm_map() are internal kernel functions, not
> syscall names. IIUC, we don't want to allow any address field settable via
> the PR_SET_MM prctl() to be tagged. Catalin, is that correct? I think this
> needs rephrasing.

I fully agree. It should talk about PR_SET_MM, PR_SET_MM_MAP,
PR_SET_MM_MAP_SIZE.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
