Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6527F57E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 12:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fk03WToepdTpABruT9baH+0un9Wjc/w1mazh/7RDx+Y=; b=FNqQ42jQM7kN3Z
	Rg5HhsVZBRU50cvhZh1tTOl8rikQUoqVYZLM4dug+KeWolaNxpEeV095pFv9TlNZjYkpH3uXas1QZ
	wyzyPhRJGyK2S7ZhkJuuGPq0225+2VYL/VG+2AtIdU4xaRrWML4luLpi9JNG4XgjaB/RJOberXeMs
	xi9+uUvjSDFLXpBfYK8+bh3b10uHqrdsaSeybIaFY1g5K++tEUkZ4Wgl/FvFOrMOE5D9OZ0NUE1e5
	QqYCImrydGBGavjgkUxt4Mfqp6oFD70ZFVgVTwJiOpHnAEbgKq59zNpvnyUu9TO3hQnpW2MCX7mF2
	mjFMOOdXRr9JZCx4Bl1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htV9A-0001Fl-BD; Fri, 02 Aug 2019 10:50:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htV94-0001FO-18
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 10:50:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CBE3344;
 Fri,  2 Aug 2019 03:50:45 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 9FF973F71F; Fri,  2 Aug 2019 03:50:40 -0700 (PDT)
Date: Fri, 2 Aug 2019 11:50:38 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Hansen <dave.hansen@intel.com>
Subject: Re: [PATCH v19 02/15] arm64: Introduce prctl() options to control
 the tagged user addresses ABI
Message-ID: <20190802105038.GC4175@arrakis.emea.arm.com>
References: <cover.1563904656.git.andreyknvl@google.com>
 <1c05651c53f90d07e98ee4973c2786ccf315db12.1563904656.git.andreyknvl@google.com>
 <7a34470c-73f0-26ac-e63d-161191d4b1e4@intel.com>
 <2b274c6f-6023-8eb8-5a86-507e6000e13d@arm.com>
 <88c59d1e-eda9-fcfe-5ee3-64a331f34313@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88c59d1e-eda9-fcfe-5ee3-64a331f34313@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_035046_111650_AA78CF04 
X-CRM114-Status: GOOD (  18.13  )
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 09:45:05AM -0700, Dave Hansen wrote:
> On 8/1/19 5:38 AM, Kevin Brodsky wrote:
> > This patch series only changes what is allowed or not at the syscall
> > interface. It does not change the address space size. On arm64, TBI (Top
> > Byte Ignore) has always been enabled for userspace, so it has never been
> > possible to use the upper 8 bits of user pointers for addressing.
> 
> Oh, so does the address space that's available already chop that out?

Yes. Currently the hardware only supports 52-bit virtual addresses. It
could be expanded (though it needs a 5th page table level) to 56-bit VA
but it's not currently on our (hardware) plans. Beyond 56-bit, it cannot
be done without breaking the software expectations (and hopefully I'll
retire before we need this ;)).

> > If other architectures were to support a similar functionality, then I
> > agree that a common and more generic interface (if needed) would be
> > helpful, but as it stands this is an arm64-specific prctl, and on arm64
> > the address tag is defined by the architecture as bits [63:56].
> 
> It should then be an arch_prctl(), no?

I guess you just want renaming SET_TAGGED_ADDR_CTRL() to
arch_prctl_tagged_addr_ctrl_set()? (similarly for 'get')

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
