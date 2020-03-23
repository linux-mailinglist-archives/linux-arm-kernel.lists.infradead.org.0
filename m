Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B6D18FAD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:06:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jFaKxXsyLG5YnuyPS9O2kzPXrbXFD165kAvIYXvTskM=; b=TzOe8GMISEHqdd3OcYa0hGISx
	uF384RbyXNQmuvRlXzQpTEGYRQO1EJv6NMdKY9tVSyYVbie8W7PH3Wg19uDw2we8bD4ZWYAPnmJIX
	MSMIYUq3Djuang4cH6LYwqZ5iWsaNlLu7VMQwrm2tSTsqZaXN5HZV5wV/cESqpm7GJx4Atn9CDM97
	MuZ5zsdyqQ/ud/eQmyUy15uRExqJ8FG5yJiOr0OaA+dx86bsoJ0O8EQ37EgvwAD9hXaSnVQ2FOxtS
	gN+ovjmCkZlITV0Uw3LzVOQfvordz6TSPI0qnXHeIqET6WAmZMKET0KsEWYtA/Ajd1kQERSiRj7HV
	PKPT41/Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQX6-0007nz-Mq; Mon, 23 Mar 2020 17:06:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQWx-0007mz-Gz
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 17:06:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B01B1FB;
 Mon, 23 Mar 2020 10:06:25 -0700 (PDT)
Received: from [10.57.20.169] (unknown [10.57.20.169])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9AD323F7C3;
 Mon, 23 Mar 2020 10:06:21 -0700 (PDT)
Subject: Re: [arm64:for-next/kernel-ptrauth 16/18] aarch64-linux-objdump:
 warning: fs/squashfs/decompressor_multi.o: unsupported GNU_PROPERTY_TYPE (5)
 type: 0xc0000000
To: Catalin Marinas <catalin.marinas@arm.com>,
 kbuild test robot <lkp@intel.com>
References: <202003211202.2NuTbuJb%lkp@intel.com> <20200323114837.GA4892@mbp>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <ec43ce65-0e79-0596-db99-5c7622674ad9@arm.com>
Date: Mon, 23 Mar 2020 22:36:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200323114837.GA4892@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_100627_608776_EAD1B13F 
X-CRM114-Status: GOOD (  18.61  )
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
Cc: kbuild-all@lists.01.org, Kees Cook <keescook@chromium.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, daniel.kiss@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 3/23/20 5:18 PM, Catalin Marinas wrote:
> On Sat, Mar 21, 2020 at 12:28:06PM +0800, kbuild test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/kernel-ptrauth
>> head:   3b446c7d27ddd06342901bb35211363f6944291a
>> commit: 74afda4016a7437e6e425c3370e4b93b47be8ddf [16/18] arm64: compile the kernel with ptrauth return address signing
>> config: arm64-randconfig-a001-20200321 (attached as .config)
>> compiler: aarch64-linux-gcc (GCC) 9.2.0
>> reproduce:
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          git checkout 74afda4016a7437e6e425c3370e4b93b47be8ddf
>>          # save the attached .config to linux build tree
>>          GCC_VERSION=9.2.0 make.cross ARCH=arm64
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> aarch64-linux-objdump: warning: fs/squashfs/decompressor_multi.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>> --
>>>> aarch64-linux-objdump: warning: drivers/gpio/gpio-bt8xx.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
> 
> Just to make sure I understand the cause of this warning: gcc generates
> a .note.gnu.property when PAC is enabled for the kernel but binutils
> doesn't understand it. Is there a way to check for this via the Kconfig
> options?

Yes you are right. In this case the binutils version lesser than 2.33 do 
not recognize the GNU_PROPERTY_AARCH64_FEATURE_1_PAC property.
I tried somethings like below but could not find a good way to generate
error via Kconfig for this warning.

~/linux$ echo "int main(void) {return 0;}" > tmp.c | aarch64-linux-gcc 
-Wall -Werror -nostdlib -mbranch-protection=pac-ret+leaf -e main tmp.c 
-o tmp

~0day/gcc-9.2.0-nolibc/aarch64-linux/bin/../lib/gcc/aarch64-linux/9.2.0/../../../../aarch64-linux/bin/ld: 
warning: /tmp/ccExLvun.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

~/linux$ echo $?
~/linux$ 0

However we can disable pauth in this case by checking linker version
and GNU_PROPERTY feature as,
(readelf -S --wide tmp.o | grep .note.gnu.property) && (ld-ifversion -ge 
233000000).

But I feel disabling pauth in this case seems too aggressive as the 
current way do not break any functionality even though it generates 
confusing warning messages.

Cheers,
Amit
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
