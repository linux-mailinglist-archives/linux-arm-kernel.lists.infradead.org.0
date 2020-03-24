Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EAB191679
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 17:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4kTvmIlrr99tt8pb01m6INUmo4ZKnT7gtf8onJT4NkU=; b=bqRwBCq5808MZhc0OXDqoZOiL
	nOi6fJWThvSBeXMGycvWIcZBl+KIaWucajisJ0e7bPnX46KQJFC22GD9yXx5c+dgwhLp5Y/TvAh9N
	XNBzIM6O3O21olL2WGIX6pkQ0h0nzSsu8H4V9CNCwixvd7Oc3sgYMVYgZcTvwgOJaFl1H33l1kR+f
	PjJToozBegqBs7XMuYQXUcFFfgmdWjVyXchLGewkx4fUOeYywsWOR1tEv+7TGRwwercuFlhLywdP5
	MvH3yAGO0yQ93vppB0oTNbhD7n7JucBkUHeDUgyzJykfHU12ZdTFeTwi04F6htuo/23JAvDSkDSqo
	9euWWxdZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGmTh-00011y-L5; Tue, 24 Mar 2020 16:32:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGmTX-00010x-1x
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 16:32:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C58A31FB;
 Tue, 24 Mar 2020 09:32:21 -0700 (PDT)
Received: from [10.57.20.169] (unknown [10.57.20.169])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E90F3F52E;
 Tue, 24 Mar 2020 09:32:18 -0700 (PDT)
Subject: Re: [arm64:for-next/kernel-ptrauth 16/18] aarch64-linux-objdump:
 warning: fs/squashfs/decompressor_multi.o: unsupported GNU_PROPERTY_TYPE (5)
 type: 0xc0000000
To: Catalin Marinas <catalin.marinas@arm.com>
References: <202003211202.2NuTbuJb%lkp@intel.com> <20200323114837.GA4892@mbp>
 <ec43ce65-0e79-0596-db99-5c7622674ad9@arm.com>
 <20200324161507.GA3901@mbp>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <bf23b903-28f4-226c-49ce-3f761ae848a7@arm.com>
Date: Tue, 24 Mar 2020 22:02:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200324161507.GA3901@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_093223_182339_5447BC2C 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, daniel.kiss@arm.com,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/24/20 9:45 PM, Catalin Marinas wrote:
> On Mon, Mar 23, 2020 at 10:36:15PM +0530, Amit Kachhap wrote:
>> On 3/23/20 5:18 PM, Catalin Marinas wrote:
>>> On Sat, Mar 21, 2020 at 12:28:06PM +0800, kbuild test robot wrote:
>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/kernel-ptrauth
>>>> head:   3b446c7d27ddd06342901bb35211363f6944291a
>>>> commit: 74afda4016a7437e6e425c3370e4b93b47be8ddf [16/18] arm64: compile the kernel with ptrauth return address signing
>>>> config: arm64-randconfig-a001-20200321 (attached as .config)
>>>> compiler: aarch64-linux-gcc (GCC) 9.2.0
>>>> reproduce:
>>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>           chmod +x ~/bin/make.cross
>>>>           git checkout 74afda4016a7437e6e425c3370e4b93b47be8ddf
>>>>           # save the attached .config to linux build tree
>>>>           GCC_VERSION=9.2.0 make.cross ARCH=arm64
>>>>
>>>> If you fix the issue, kindly add following tag
>>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>>
>>>> All warnings (new ones prefixed by >>):
>>>>
>>>>>> aarch64-linux-objdump: warning: fs/squashfs/decompressor_multi.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>>>> --
>>>>>> aarch64-linux-objdump: warning: drivers/gpio/gpio-bt8xx.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>>>
>>> Just to make sure I understand the cause of this warning: gcc generates
>>> a .note.gnu.property when PAC is enabled for the kernel but binutils
>>> doesn't understand it. Is there a way to check for this via the Kconfig
>>> options?
>>
>> Yes you are right. In this case the binutils version lesser than 2.33 do not
>> recognize the GNU_PROPERTY_AARCH64_FEATURE_1_PAC property.
> 
> Are there gcc versions supporting PAC but not generating the
> .note.gnu.property?

Yes GCC older than GCC9 supports PAC without the note (I will find out 
the exact GCC version).

> 
>> However we can disable pauth in this case by checking linker version
>> and GNU_PROPERTY feature as,
>> (readelf -S --wide tmp.o | grep .note.gnu.property) && (ld-ifversion -ge
>> 233000000).
>>
>> But I feel disabling pauth in this case seems too aggressive as the current
>> way do not break any functionality even though it generates confusing
>> warning messages.
> 
> If there isn't a way to silence the linker or objdump, could we align
> the compiler version we know that generates this note with a minimum
> binutils? Something like:
> 
> 	depends on (GCC_VERSION < X) || (LD_VERSION >= 233...)

Yes this is possible.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
