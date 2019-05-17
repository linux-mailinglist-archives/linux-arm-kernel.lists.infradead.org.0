Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4DF21A03
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 16:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sUiYsAJXa17bGFlKmI31i19kM/or+a2LVc8pwnVkf0=; b=qSYpn0qUe+xraW
	RTZabgHaRZDqTawVrQIox8pSE6FeejVxRpXaL4o1xyqOWBbAbubk6bNVIsJBKMG1rs0j9HQ8/XCWN
	us4z3i1AXy5tYnMmf9jRDd91q6TM/FTLlI40oU7Y8Nh6qcDkz6rtm3HcH6OxNCsRzc1CJtk1XuwX/
	kzCfVXSD7qTSpTlzjX9Ee5tTwsxxLEOSk691mFdbZFPSGjie93J/9XGtvT1NLk6ooQFnw4TrXreUJ
	zYtsD6XVzE8U5AYM31F8jblYAON9MvMy6DsKo8qIUzZzPqeRv9z6gioBEvVdDDXI+cJWfZGHB2H8S
	nqqGgPLUOd61iYgXZqJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReBF-0006rj-0o; Fri, 17 May 2019 14:49:53 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReB6-0006q9-Co
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 14:49:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C624E1715;
 Fri, 17 May 2019 07:49:39 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 3BA583F71E; Fri, 17 May 2019 07:49:34 -0700 (PDT)
Date: Fri, 17 May 2019 15:49:31 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190517144931.GA56186@arrakis.emea.arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1557160186.git.andreyknvl@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_074944_525396_FA59EBBE 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 linux-kselftest@vger.kernel.org, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrey,

On Mon, May 06, 2019 at 06:30:46PM +0200, Andrey Konovalov wrote:
> One of the alternative approaches to untagging that was considered is to
> completely strip the pointer tag as the pointer enters the kernel with
> some kind of a syscall wrapper, but that won't work with the countless
> number of different ioctl calls. With this approach we would need a custom
> wrapper for each ioctl variation, which doesn't seem practical.

The more I look at this problem, the less convinced I am that we can
solve it in a way that results in a stable ABI covering ioctls(). While
for the Android kernel codebase it could be simpler as you don't upgrade
the kernel version every 2.5 months, for the mainline kernel this
doesn't scale. Any run-time checks are relatively limited in terms of
drivers covered. Better static checking would be nice as a long term
solution but we didn't get anywhere with the discussion last year.

IMO (RFC for now), I see two ways forward:

1. Make this a user space problem and do not allow tagged pointers into
   the syscall ABI. A libc wrapper would have to convert structures,
   parameters before passing them into the kernel. Note that we can
   still support the hardware MTE in the kernel by enabling tagged
   memory ranges, saving/restoring tags etc. but not allowing tagged
   addresses at the syscall boundary.

2. Similar shim to the above libc wrapper but inside the kernel
   (arch/arm64 only; most pointer arguments could be covered with an
   __SC_CAST similar to the s390 one). There are two differences from
   what we've discussed in the past:

   a) this is an opt-in by the user which would have to explicitly call
      prctl(). If it returns -ENOTSUPP etc., the user won't be allowed
      to pass tagged pointers to the kernel. This would probably be the
      responsibility of the C lib to make sure it doesn't tag heap
      allocations. If the user did not opt-in, the syscalls are routed
      through the normal path (no untagging address shim).

   b) ioctl() and other blacklisted syscalls (prctl) will not accept
      tagged pointers (to be documented in Vicenzo's ABI patches).

It doesn't solve the problems we are trying to address but 2.a saves us
from blindly relaxing the ABI without knowing how to easily assess new
code being merged (over 500K lines between kernel versions). Existing
applications (who don't opt-in) won't inadvertently start using the new
ABI which could risk becoming de-facto ABI that we need to support on
the long run.

Option 1 wouldn't solve the ioctl() problem either and while it makes
things simpler for the kernel, I am aware that it's slightly more
complicated in user space (but I really don't mind if you prefer option
1 ;)).

The tagged pointers (whether hwasan or MTE) should ideally be a
transparent feature for the application writer but I don't think we can
solve it entirely and make it seamless for the multitude of ioctls().
I'd say you only opt in to such feature if you know what you are doing
and the user code takes care of specific cases like ioctl(), hence the
prctl() proposal even for the hwasan.

Comments welcomed.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
