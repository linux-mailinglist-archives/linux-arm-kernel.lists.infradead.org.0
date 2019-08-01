Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 723D07DB9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OwhBFlXTn0QZsRMRrtOOOtx66YO6cNpspC3OIP8LYtI=; b=mXWnYtqFPmTiOz3fqSlxJEADZ
	9coXst5P+SQFloqN6buhc7jp2EVKPTPfPikXNGiUH7V98oX0UPco3fvcB7wN5OD48GFtIh2du8IKA
	NYAbdxHeClDMrXYSNmM6OAXTTQG/xoJZ+JxQaUEi9xqE9+mYI9vI4gveNk9CP1IaDsUoehiYdjFV6
	XcYg8V5qZD+W/cHEMbUErVqnMnchVGEaU4jB2gHQyW+PKyNc5mrbrpqX0gI+Ws9SlgpiMMZvoZpXp
	M+CE2cT3IwFDbBKrbyr/fRbMODee8FwXBwl/kyIZ1PVkirCFff+UqtcS3TvS+UaBCU85PZfVVW+Q0
	M99Ak9kRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htALh-0000Is-51; Thu, 01 Aug 2019 12:38:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htALV-0000I4-Or
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:38:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA8AC1570;
 Thu,  1 Aug 2019 05:38:12 -0700 (PDT)
Received: from [10.1.194.48] (e123572-lin.cambridge.arm.com [10.1.194.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E84103F575;
 Thu,  1 Aug 2019 05:38:07 -0700 (PDT)
Subject: Re: [PATCH v19 02/15] arm64: Introduce prctl() options to control the
 tagged user addresses ABI
To: Dave Hansen <dave.hansen@intel.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org,
 linux-media@vger.kernel.org, kvm@vger.kernel.org,
 linux-kselftest@vger.kernel.org
References: <cover.1563904656.git.andreyknvl@google.com>
 <1c05651c53f90d07e98ee4973c2786ccf315db12.1563904656.git.andreyknvl@google.com>
 <7a34470c-73f0-26ac-e63d-161191d4b1e4@intel.com>
From: Kevin Brodsky <kevin.brodsky@arm.com>
Message-ID: <2b274c6f-6023-8eb8-5a86-507e6000e13d@arm.com>
Date: Thu, 1 Aug 2019 13:38:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7a34470c-73f0-26ac-e63d-161191d4b1e4@intel.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_053813_898634_BAF60D13 
X-CRM114-Status: GOOD (  17.66  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31/07/2019 18:05, Dave Hansen wrote:
> On 7/23/19 10:58 AM, Andrey Konovalov wrote:
>> +long set_tagged_addr_ctrl(unsigned long arg)
>> +{
>> +	if (!tagged_addr_prctl_allowed)
>> +		return -EINVAL;
>> +	if (is_compat_task())
>> +		return -EINVAL;
>> +	if (arg & ~PR_TAGGED_ADDR_ENABLE)
>> +		return -EINVAL;
>> +
>> +	update_thread_flag(TIF_TAGGED_ADDR, arg & PR_TAGGED_ADDR_ENABLE);
>> +
>> +	return 0;
>> +}
> Instead of a plain enable/disable, a more flexible ABI would be to have
> the tag mask be passed in.  That way, an implementation that has a
> flexible tag size can select it.  It also ensures that userspace
> actually knows what the tag size is and isn't surprised if a hardware
> implementation changes the tag size or position.
>
> Also, this whole set deals with tagging/untagging, but there's an
> effective loss of address space when you do this.  Is that dealt with
> anywhere?  How do we ensure that allocations don't get placed at a
> tagged address before this gets turned on?  Where's that checking?

This patch series only changes what is allowed or not at the syscall interface. It 
does not change the address space size. On arm64, TBI (Top Byte Ignore) has always 
been enabled for userspace, so it has never been possible to use the upper 8 bits of 
user pointers for addressing.

If other architectures were to support a similar functionality, then I agree that a 
common and more generic interface (if needed) would be helpful, but as it stands this 
is an arm64-specific prctl, and on arm64 the address tag is defined by the 
architecture as bits [63:56].

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
