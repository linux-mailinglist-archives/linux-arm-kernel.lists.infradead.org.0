Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE53113D6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wi3iWWj6IReQcnFqNlNNeLLGVT8wqhEuB4lEPNfugi4=; b=NHB9DaaNhhAL0D
	O8bDBJW24qdM/93ycGzcHAlCI1yz0gM3Fbr5v6t2rGGu9IYol0Whz1B1yngFSThPkWFWOWspzKpTn
	GaT1NJZ2WyUme192eNfeEMXX+DG3i3aVIErEIy+V3eNzx2Z+QPJS6t56GjeA6rhiwnrrseJ3bFoZC
	txaW0v/9cvCgbAqAKxqTNvEp38Tgb2zz/4pouFsbm5b4y4VMx2M56VtwUcCW0c6D31Gc/Z8YTYfrL
	DIlVLOJ/4Y0u7rzKE/jZ/s+SYYQjDWhvJd1OiFXtNzwPx7B36eSnmr3u1A+TyxLhMuoqGvCwiOz3O
	t43/NwNEpqFp7GVCxt3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmwr-0001kE-Ac; Thu, 05 Dec 2019 08:57:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmwk-0001jp-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 08:57:16 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47CCA206DB;
 Thu,  5 Dec 2019 08:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575536234;
 bh=cmGci16+e8W+TvooB/M7XV+9nSul3ZD6hI/4tXq0L6E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h98gp9hyV/ZoZYvTGLUPGRPBjdOb1iUHJt7OJIdj7BN2h7T/qooX7FadI8zclxPFK
 ZFgSLsmq+ZJrZnIqkYQNbImIlwuHz6lJ/AOU0Ah7Q7rcSJWN1R8R9jOqF4GFqfpwOK
 FgBwinMvzxkBDpkeSw/qIDN2JT+tRNJrcBVdcqZI=
Date: Thu, 5 Dec 2019 08:57:10 +0000
From: Will Deacon <will@kernel.org>
To: Jerome Forissier <jerome@forissier.org>
Subject: Re: Kernel v5.2+ on HiKey960?
Message-ID: <20191205085709.GB8606@willie-the-truck>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
 <1c5e497f-4be0-e1f3-4d6d-fed9470d0406@forissier.org>
 <20191204142824.GB26730@arrakis.emea.arm.com>
 <226a53f8-9404-1aa0-ed44-22e2157e4521@forissier.org>
 <20191204175726.GA28736@willie-the-truck>
 <d7481911-9f5f-7f52-0731-0b123c384b08@forissier.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d7481911-9f5f-7f52-0731-0b123c384b08@forissier.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_005714_638528_877EF449 
X-CRM114-Status: GOOD (  24.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 08:26:48AM +0100, Jerome Forissier wrote:
> On 12/4/19 6:57 PM, Will Deacon wrote:
> > On Wed, Dec 04, 2019 at 03:58:57PM +0100, Jerome Forissier wrote:
> >> On 12/4/19 3:28 PM, Catalin Marinas wrote:
> >>> On Wed, Dec 04, 2019 at 02:15:48PM +0100, Jerome Forissier wrote:
> >>>> On 12/4/19 11:18 AM, Catalin Marinas wrote:
> >>>>> On Tue, Dec 03, 2019 at 04:43:22PM +0100, Jerome Forissier wrote:
> >>>>>> Has anyone successfully run kernel v5.2 or later on a HiKey960 board?
> >>>>>>
> >>>>>> For some reason, anything past v5.1 doesn't work for me and I could not
> >>>>>> figure out why. The symptom is it never gets to the login prompt. The
> >>>>>> root FS is a Buildroot-generated one, and prior to reaching the kernel
> >>>>>> the board runs TF-A, OP-TEE, UEFI (edk2) and Grub.
> >>>>>>
> >>>>>> I tried replacing /init with a shell, in which case I can type a command
> >>>>>> but whatever it is (even a simple "ls"), the command hangs on exit and I
> >>>>>> never get back to the prompt.
> >>>>>>
> >>>>>> Then I started bisecting, that was quite painful but I found several
> >>>>>> problematic commits. I ended up reverting the following (in this order)
> >>>>>> to be able to boot v5.4:
> >>> [...]
> >>>> 75a19a0202db is the first bad commit. Its parent: commit 2f1d4e24d91b
> >>>> ("firmware: arm_sdei: Prohibit probing in '_sdei_handler'") boots fine
> >>>> [2]. Since reverting 75a19a0202db in v5.2 does not work, I suspect we're
> >>>> dealing with multiple problems. As I said, the set of reverts above is
> >>>> the best I could figure out, and believe me I spent several days trying
> >>>> to troubleshoot this :-/ (that being said, I know nothing about the VDSO
> >>>> or the arch timer so I could not try anything meaningful other than
> >>>> reverting some commits).
> >>>
> >>> Thanks. There could as well be multiple issues. Since commit
> >>> 75a19a0202db is cc stable, could you please apply it on top of 5.1 and
> >>> see if it fails? I don't have a HiKey960 at hand to try this.
> >>>
> >>
> >> Fails indeed (panic): https://pastebin.com/F0jpktii
> > 
> > Interesting. I followed your instructions and my board boots fine even
> > after applying that patch, but then I see the following on shutdown:
> > 
> > [   83.022955] WARNING: CPU: 0 PID: 1995 at kernel/time/tick-broadcast.c:647 tick_handle_oneshot_broadcast+0x1c8/0x1e8
> > [   83.033392] Modules linked in:
> > [   83.036447] CPU: 0 PID: 1995 Comm: init Tainted: G S                5.1.0-253105-g2b41f6584d59 #3
> 
> That is not v5.1 plus one commit, is it?

No, and I wasn't claiming that it was. I followed the instructions you
pointed us to [1] and cherry-picked 75a19a0202db on top. If there's
something different that I need to do in order to reproduce the problem,
then please holler. My experience with Hikey960 has been 100% "bloody awful"
so I don't have a good setup for simply building and running a kernel on it.

I also had to hack some of the EDK2 code in there to get it to compile, so
it continues to live up to expectations.

My hunch is that we're somehow ending up in the vDSO code but with the A73
workaround for erratum 858921 enabled. This shouldn't ever happen because
the syscall fallback will be enabled in this case, so I'm also thinking that
the SP804 clocksource is confusing things somehow. If we end up trapping to
the kernel with the seqlock held then I could see userspace getting stuck in
an infinite loop. Since I've been unable to reproduce the failure, could you
see if it persists even with CONFIG_ARM64_ERRATUM_858921=n?

Will

[1] https://optee.readthedocs.io/en/latest/building/gits/build.html#get-and-build-the-solution

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
