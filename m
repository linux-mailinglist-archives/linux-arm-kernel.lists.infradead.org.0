Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBA7B39A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 13:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJhX4IshiZCHTvOuttHhKYEb8ic1rOyorXGXw9/0blw=; b=Qi4cnV5dEVsShw
	0/PKhRPQyY/wtAUfT9vHluSGpzzCyPoFLpQt9OypuAGeIAjhwMQXgO4yq/fhRvq2mC6whzs5D9eim
	rNQbOkDYyA4cqB498j9qp7k/wSTDkmGw0E9PTv9Z7IUNsPRrLV+z3K9ke0E4dI30rgsmhZlEKborV
	VtsDQc9FRTLt9j/9ZQ9niFLZNcD5qIjeJq63GJ8JMCNuzbS86qurBBymSZH8u8t+zOoQcIss+a4rO
	yavUmSJSFhgwtI11h9isjL2biQQ7yUMEq6A0aQmqHHiHr+H8e8fI0tfoIbXomFLyrNjWmquXbQAns
	2XcYa5cze+jucEb56zwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9pOY-00048D-6Z; Mon, 16 Sep 2019 11:42:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9pOD-00047c-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 11:41:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41E551000;
 Mon, 16 Sep 2019 04:41:52 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5AE6A3F59C;
 Mon, 16 Sep 2019 04:41:51 -0700 (PDT)
Date: Mon, 16 Sep 2019 12:41:49 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Amit Kachhap <Amit.Kachhap@arm.com>
Subject: Re: [PATCH v5 01/11] kselftest: arm64: add skeleton Makefile
Message-ID: <20190916114148.GI27757@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-2-cristian.marussi@arm.com>
 <cce97298-7a27-c470-6fc5-873b4447ecc9@arm.com>
 <e7b7b3fe-aba8-a4f2-400b-7cdeebd080e8@arm.com>
 <0a284da1-ff63-dfe9-e479-6ad68865aea1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a284da1-ff63-dfe9-e479-6ad68865aea1@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_044153_899045_16E232DA 
X-CRM114-Status: GOOD (  17.93  )
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "andreyknvl@google.com" <andreyknvl@google.com>,
 "shuah@kernel.org" <shuah@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Cristian Marussi <Cristian.Marussi@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 12:42:06PM +0000, Amit Kachhap wrote:
> Hi,
> 
> On 9/5/19 11:27 PM, Cristian Marussi wrote:
> > Hi Amit
> >
> > On 03/09/2019 10:26, Amit Kachhap wrote:
> >>
> >> Hi Cristian,
> >>
> >> On 9/2/19 4:59 PM, Cristian Marussi wrote:
> >>> Add a new arm64-specific empty subsystem amongst TARGETS of KSFT build
> >>> framework; keep these new arm64 KSFT testcases separated into distinct
> >>> subdirs inside tools/testing/selftests/arm64/ depending on the specific
> >>> subsystem targeted.
> >>>
> >>> Add into toplevel arm64 KSFT Makefile a mechanism to guess the effective
> >>> location of Kernel headers as installed by KSFT framework.
> >>>
> >>> Merge with
> >>>
> >>> commit 9ce1263033cd ("selftests, arm64: add a selftest for passing
> >>>                  tagged pointers to kernel")
> >>>
> >>> while moving such KSFT tags tests inside their own subdirectory
> >>> (arm64/tags).
> >>>
> >>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> >>> ---
> >>> v4 --> v5
> >>> - rebased on arm64/for-next/core
> >>> - merged this patch with KSFT arm64 tags patch, while moving the latter
> >>>     into its own subdir
> >>> - moved kernel header includes search mechanism from KSFT arm64
> >>>     SIGNAL Makefile
> >> This approach breaks the compilation of individual test cases which need
> >> to export includes individually.
> >>
> >> make -C tools/testing/selftests/arm64/signal
> >>
> >> ../../lib.mk:25: ../../../../scripts/subarch.include: No such file or
> >> directory
> >> Makefile:25: warning: overriding recipe for target 'clean'
> >> ../../lib.mk:123: warning: ignoring old recipe for target 'clean'
> >> make: *** No rule to make target '../../../../scripts/subarch.include'.
> >> Stop.
> >>
> >> However tags test works well,
> >> make -C tools/testing/selftests/arm64/tags
> >>
> >> aarch64-none-linux-gnu-gcc     tags_test.c  -o
> >> /home/amikac01/work/MTE_WORK/linux-server/linux/tools/testing/selftests/arm64/tags/tags_test
> >>
> >>
> >> Thanks,
> >> Amit Daniel
> >>
> >
> > So at the end I think I'll opt for the following in V6 regarding the issue of being able to build specific
> > KSFT arm64 subsystems while properly searching kernel headers (and keeping compatible with the KSFT
> > framework completely):
> >
> > - only arm64 toplevel KSFT Makefile searches for the kernel headers location for all and propagates down the info
> >
> > - you can also now optionally specify which arm64 subsystem to build (to avoid have to build, say, all of signal/
> >    if you are not interested into....a sort of standalone mode without all the burden of the old standalone mode)
> ok.
> >
> > So you can issue:
> >
> > $ make TARGETS=arm64 kselftest
> >
> > or similarly:
> >
> > $ make -C tools/testing/selftests TARGETS=arm64 \
> >                  INSTALL_PATH=<your-installation-path> install
> >
> > or select subsystems:
> >
> > $ make -C tools/testing/selftests TARGETS=arm64 SUBTARGETS="tags signal" \
> >                  INSTALL_PATH=<your-installation-path> install
> This option will be useful as it is better to compile just one subtarget
> in development phase.

Agreed, this seems a reasonable approach.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
