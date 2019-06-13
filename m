Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845BC43F8A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oa1kPKVyvsTxQaaxOiJ3n1nvQDs5AG/Q/3mTQHdkimk=; b=aEPVZJoZ2FAWe1
	uqCMdI8K+DXPTVtHahsmqXs2MaffVV0FZE9DALVOLawx2/m6B7pk4RwfXZx/q8P9sCjhZ0xFW8X18
	PpY5SqIc7Vjocj60nsWvn18O5/4uAN03DorXLnq+lh0n+kDAoFm/i85UApBJYMvOHrFOEGJ367JjP
	GoR8r3IvWwvpQ6QrM1pwrUhpTYuef935BRYevgFWZ0tcuVNiN7tFKyShv9/palYsvqzba8ZBjM3km
	6eJpLgpxjJQVCnr+Pbp8iDeU3bE6JxtwYXHijRMbxR81JsDFpUQZUAG9Ee3p4mS5mlGPpBRrh8FTp
	S1TteP3g/synZxF1873A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbS7Y-0007Ov-AJ; Thu, 13 Jun 2019 15:58:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbS7L-0007O8-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:58:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2C10367;
 Thu, 13 Jun 2019 08:58:22 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 825ED3F246;
 Thu, 13 Jun 2019 08:58:02 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:57:55 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v17 03/15] arm64: Introduce prctl() options to control
 the tagged user addresses ABI
Message-ID: <20190613155754.GX28951@C02TF0J2HF1T.local>
References: <cover.1560339705.git.andreyknvl@google.com>
 <a7a2933bea5fe57e504891b7eec7e9432e5e1c1a.1560339705.git.andreyknvl@google.com>
 <20190613111659.GX28398@e103592.cambridge.arm.com>
 <20190613153505.GU28951@C02TF0J2HF1T.local>
 <99cc257d-5e99-922a-fbe7-3bbaf3621e38@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99cc257d-5e99-922a-fbe7-3bbaf3621e38@arm.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_085823_896941_23E9D7E6 
X-CRM114-Status: GOOD (  17.39  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, Kostya Serebryany <kcc@google.com>,
 Khalid Aziz <khalid.aziz@oracle.com>, Lee Smith <Lee.Smith@arm.com>,
 linux-kselftest@vger.kernel.org, Jacob Bramley <Jacob.Bramley@arm.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Dmitry Vyukov <dvyukov@google.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 04:45:54PM +0100, Vincenzo Frascino wrote:
> On 13/06/2019 16:35, Catalin Marinas wrote:
> > On Thu, Jun 13, 2019 at 12:16:59PM +0100, Dave P Martin wrote:
> >> On Wed, Jun 12, 2019 at 01:43:20PM +0200, Andrey Konovalov wrote:
> >>> +
> >>> +/*
> >>> + * Control the relaxed ABI allowing tagged user addresses into the kernel.
> >>> + */
> >>> +static unsigned int tagged_addr_prctl_allowed = 1;
> >>> +
> >>> +long set_tagged_addr_ctrl(unsigned long arg)
> >>> +{
> >>> +	if (!tagged_addr_prctl_allowed)
> >>> +		return -EINVAL;
> >>
> >> So, tagging can actually be locked on by having a process enable it and
> >> then some possibly unrelated process clearing tagged_addr_prctl_allowed.
> >> That feels a bit weird.
> > 
> > The problem is that if you disable the ABI globally, lots of
> > applications would crash. This sysctl is meant as a way to disable the
> > opt-in to the TBI ABI. Another option would be a kernel command line
> > option (I'm not keen on a Kconfig option).
> 
> Why you are not keen on a Kconfig option?

Because I don't want to rebuild the kernel/reboot just to be able to
test how user space handles the ABI opt-in. I'm ok with a Kconfig option
to disable this globally in addition to a run-time option (if actually
needed, I'm not sure).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
