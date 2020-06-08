Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DC71F1B7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJtksqvRVkAqxnN7rmqiKL4UX17Y7ZqW1uSG9mblyZ8=; b=N3L/KrK5YlPPn0
	7PYtmpWdtV2+0BYj9/vtS2fERMycynupe/sv1hNNEm95tpWh6xqFzFaiKLGpD1nEpf/SZX/X4oIP1
	DBNV51L5qoBbNiKPpfGzdysvt4MSajSXI2LybfeQGYqCERfMIogDq32Oy/11IwqCZ/WfXPRRWOI1q
	v31Wd1+CZ5gK8oesa+b2fvt1OolbvWNLLsmy1enH8IbScQm+Cqm/zCYaCaijXCT56mteSLC7oxYal
	fudPJmcx3kSKzRkNd/zbTIYqsJWXFGOa7igYyTs9MZcemYJ8aVzoPa0plcPBpdXduY1rvsdmiNTrl
	WOSobCw/k1nSEE6F7law==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJ8R-0007lZ-BB; Mon, 08 Jun 2020 14:52:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJ81-0007aU-Fc
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:51:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13A7F206C3;
 Mon,  8 Jun 2020 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591627917;
 bh=1puOhgt4Uwf+poNYxoCheW9wNrOBAmiWsqq8Yg7kpT0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m1kfouFwxncpCcEUNSdwbfYPisRKvhk/SAz5yBJSKNX6jTYHy4QU21ppwYpPr5V7Q
 HrEe8QaOQAhpPu78xdMKMQ4/xH32NzcJr496kd3wG0fJOyr/huuSLV/bX10UmZI42a
 F8jFf2UKv1bK96myVv3ydxBmFRmlxTmMHY0GSYYA=
Date: Mon, 8 Jun 2020 15:51:50 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
Message-ID: <20200608145150.GA7418@willie-the-truck>
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
 <BYAPR11MB30969737340044437013BF44F08B0@BYAPR11MB3096.namprd11.prod.outlook.com>
 <CAKwvOdmsCmPFiDOq7AYUyEx=60B=qo8u9yhnJDQ6nd6Ew7xDkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdmsCmPFiDOq7AYUyEx=60B=qo8u9yhnJDQ6nd6Ew7xDkQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_075157_553532_17BF8D73 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, "Kaneda,
 Erik" <erik.kaneda@intel.com>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "Moore,
 Robert" <robert.moore@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "glider@google.com" <glider@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "devel@acpica.org" <devel@acpica.org>, "pcc@google.com" <pcc@google.com>,
 Ard Biesheuvel <ardb@kernel.org>, "dvyukov@google.com" <dvyukov@google.com>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Nick,

On Tue, Jun 02, 2020 at 11:46:31AM -0700, Nick Desaulniers wrote:
> On Mon, Jun 1, 2020 at 5:03 PM Kaneda, Erik <erik.kaneda@intel.com> wrote:
> > > Will reported UBSAN warnings:
> > > UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> > > UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> > >
> > > Looks like the emulated offsetof macro ACPI_OFFSET is causing these. We
> > > can avoid this by using the compiler builtin, __builtin_offsetof.
> >
> > I'll take a look at this tomorrow
> > >
> > > The non-kernel runtime of UBSAN would print:
> > > runtime error: member access within null pointer of type for this macro.
> >
> > actypes.h is owned by ACPICA so we typically do not allow compiler-specific
> > extensions because the code is intended to be compiled using the C99 standard
> > without compiler extensions. We could allow this sort of thing in a Linux-specific
> > header file like include/acpi/platform/aclinux.h but I'll take a look at the error as well..
> 
> If I'm not allowed to touch that header, it looks like I can include
> <linux/stddef.h> (rather than my host's <stddef.h>) to get a
> definition of `offsetof` thats implemented in terms of
> `__builtin_offsetof`.  I should be able to use that to replace uses of
> ACPI_OFFSET.  Are any of these off limits?

It's not so much about not being allowed to touch the header, but rather
that the kernel imports the code from a different project:

https://acpica.org/community

> $ grep -rn ACPI_OFFSET
> arch/arm64/include/asm/acpi.h:34:#define ACPI_MADT_GICC_MIN_LENGTH
> ACPI_OFFSET(  \
> arch/arm64/include/asm/acpi.h:41:#define ACPI_MADT_GICC_SPE
> (ACPI_OFFSET(struct acpi_madt_generic_interrupt, \

I'm happy to take patches to the stuff under arch/arm64/, fwiw.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
