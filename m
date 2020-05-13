Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906C01D1040
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39CxsxMTmjZed9m3jJrOOS+o563VLTrVflscZBxu0hM=; b=sIdMGU+u0/E03l
	ubrszD5GpfXvNn9XLu7lIOCJdCA7z6I6v4mUUf5XGs4Ke82dw0k8vHJ0JMmgwtxUO2Aa2GNj0GFKD
	PEDzj23hJHT5jg+9453151540Z9mctJMWBf/Lge/Qwt4wGzA2OC56enrYN+0filNbK5uTgiHRkMz3
	4dfyeYto3ZoPiw/vm9Z1ySs2mYQ8J5nEcJaUKrd2kfopsdK4+a83jdaMV1790mN9/nMMcTSllxPOj
	Rxsgvaw35V8TsHwY6+zz3cXpW8BV+cEYoxXiRUQaFy1EzxvIU9ctPuFwh2pT+taJe6wzVSukGNIw0
	IIwsFYeZdv7zpFdwMm8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYoxt-0005fJ-6J; Wed, 13 May 2020 10:50:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYowc-00056U-UI
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:49:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 084221FB;
 Wed, 13 May 2020 03:48:58 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 454D23F71E;
 Wed, 13 May 2020 03:48:56 -0700 (PDT)
Date: Wed, 13 May 2020 11:48:50 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Luis Machado <luis.machado@linaro.org>
Subject: Re: [PATCH v3 19/23] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
Message-ID: <20200513104849.GC2719@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-20-catalin.marinas@arm.com>
 <a7569985-eb85-497b-e3b2-5dce0acb1332@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7569985-eb85-497b-e3b2-5dce0acb1332@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_034859_065479_F984DF9E 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Omair Javaid <omair.javaid@linaro.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luis,

On Tue, May 12, 2020 at 04:05:15PM -0300, Luis Machado wrote:
> On 4/21/20 11:25 AM, Catalin Marinas wrote:
> > Add support for bulk setting/getting of the MTE tags in a tracee's
> > address space at 'addr' in the ptrace() syscall prototype. 'data' points
> > to a struct iovec in the tracer's address space with iov_base
> > representing the address of a tracer's buffer of length iov_len. The
> > tags to be copied to/from the tracer's buffer are stored as one tag per
> > byte.
> > 
> > On successfully copying at least one tag, ptrace() returns 0 and updates
> > the tracer's iov_len with the number of tags copied. In case of error,
> > either -EIO or -EFAULT is returned, trying to follow the ptrace() man
> > page.
> > 
> > Note that the tag copying functions are not performance critical,
> > therefore they lack optimisations found in typical memory copy routines.
> > 
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Alan Hayward <Alan.Hayward@arm.com>
> > Cc: Luis Machado <luis.machado@linaro.org>
> > Cc: Omair Javaid <omair.javaid@linaro.org>
> > ---
> > 
> > Notes:
> >      New in v3.
> > 
> >   arch/arm64/include/asm/mte.h         |  17 ++++
> >   arch/arm64/include/uapi/asm/ptrace.h |   3 +
> >   arch/arm64/kernel/mte.c              | 127 +++++++++++++++++++++++++++
> >   arch/arm64/kernel/ptrace.c           |  15 +++-
> >   arch/arm64/lib/mte.S                 |  50 +++++++++++
> >   5 files changed, 211 insertions(+), 1 deletion(-)
> > 
> I started working on MTE support for GDB and I'm wondering if we've already
> defined a way to check for runtime MTE support (as opposed to a HWCAP2-based
> check) in a traced process.
> 
> Originally we were going to do it via empty-parameter ptrace calls, but you
> had mentioned something about a proc-based method, if I'm not mistaken.

We could expose more information via proc_pid_arch_status() but that
would be the tagged address ABI and tag check fault mode and intended
for human consumption mostly. We don't have any ptrace interface that
exposes HWCAPs. Since the gdbserver runs on the same machine as the
debugged process, it can check the HWCAPs itself, they are the same for
all processes.

BTW, in my pre-v4 patches (hopefully I'll post v4 this week), I changed
the ptrace tag access slightly to return an error (and no tags copied)
if the page has not been mapped with PROT_MTE. The other option would
have been read-as-zero/write-ignored as per the hardware behaviour.
Either option is fine by me but I thought the write-ignored part would
be more confusing for the debugger. If you have any preference here,
please let me know.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
