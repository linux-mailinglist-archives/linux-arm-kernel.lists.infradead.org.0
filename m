Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B621321D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:03:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpIXP5qfRnNgK+2d8BnEolMAL25Kj+ci8MgetNvgFwI=; b=Xd65ktVqzy12mu
	xStYC02CQ5vKenkRliUXzvnsRftTonHm9j3tN5TnXoja5cNZeKVysxE5CTIen06Xf5bjgG/+2ZAj3
	YHdssX1j23xNS3NLSS4Ulr5NRwssCRhUK0+AhjAUMNNeDWD3V0gaEsPKPMN8Uvrj67CDpDdsYZcb5
	Pbn68kYr+42uURL5QXMiiLiW1uCWOnUkMZR58v8B4o22BtE+D8T98e4MZeLnaTWE5745eK53QBAjp
	MZwFSrautuhZ41Eq4E9eWQgVDYJoRybPb4Qm2ijIH8rFQ5qB4qddEPjIrLeVKEtZrBNqS7pirZC4q
	rSsNytoJbSEoXZkMJybA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioklb-00066b-W7; Tue, 07 Jan 2020 09:03:11 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioklS-00065V-Gn
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:03:04 +0000
Received: from ip-109-41-1-227.web.vodafone.de ([109.41.1.227]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1ioklG-0004Nl-2G; Tue, 07 Jan 2020 09:02:50 +0000
Date: Tue, 7 Jan 2020 10:02:27 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Amanieu d'Antras <amanieu@gmail.com>
Subject: Re: [PATCH 2/7] arm64: Implement copy_thread_tls
Message-ID: <20200107090219.jl4py4u2zvofwnbh@wittgenstein>
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-3-amanieu@gmail.com>
 <20200102180130.hmpipoiiu3zsl2d6@wittgenstein>
 <20200106173953.GB9676@willie-the-truck>
 <CA+y5pbSBYLvZ46nJP0pSYZnRohtPxHitOHPEaLXq23-QrPKk2g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+y5pbSBYLvZ46nJP0pSYZnRohtPxHitOHPEaLXq23-QrPKk2g@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_010302_693518_FC2D33F4 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: keescook@chromium.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, "# 3.4.x" <stable@vger.kernel.org>,
 Christian Brauner <christian@brauner.io>, linux-kselftest@vger.kernel.org,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Cc Kees in case he knows something about where arch specific tests live
 or whether we have a framework for this]

On Mon, Jan 06, 2020 at 07:03:32PM +0100, Amanieu d'Antras wrote:
> On Mon, Jan 6, 2020 at 6:39 PM Will Deacon <will@kernel.org> wrote:
> > I also ran the native and compat selftests but, unfortunately, they all
> > pass even without this patch. Do you reckon it would be possible to update
> > them to check the tls pointer?
> 
> Here's the program I used for testing on arm64. I considered adding it
> to the selftests but there is no portable way of reading the TLS
> register on all architectures.

I'm not saying you need to do this right now.
It feels like we must've run into the "this is architecture
specific"-and-we-want-to-test-this issue before... Do we have a place
where architecture specific selftests live?

> 
> #include <sys/syscall.h>
> #include <unistd.h>
> #include <stdio.h>
> #include <stdint.h>
> 
> #define __NR_clone3 435
> struct clone_args {
>     uint64_t flags;
>     uint64_t pidfd;
>     uint64_t child_tid;
>     uint64_t parent_tid;
>     uint64_t exit_signal;
>     uint64_t stack;
>     uint64_t stack_size;
>     uint64_t tls;
> };
> 
> #define USE_CLONE3
> 
> int main() {
>     printf("Before fork: tp = %p\n", __builtin_thread_pointer());
> #ifdef USE_CLONE3
>     struct clone_args args = {
>         .flags = CLONE_SETTLS,
>         .tls = (uint64_t)__builtin_thread_pointer(),
>     };
>     int ret = syscall(__NR_clone3, &args, sizeof(args));
> #else
>     int ret = syscall(__NR_clone, CLONE_SETTLS, 0, 0,
> __builtin_thread_pointer(), 0);
> #endif
>     printf("Fork returned %d, tp = %p\n", ret, __builtin_thread_pointer());
> }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
