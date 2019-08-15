Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF2F8EB6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGeLcX7geX3zrB1slUH925eWXkC/7ebj6+Qre6mdp7M=; b=aDAVNm19zzCYMF
	bdVx5obuf3tRlu3hRpBp7/oYmcRYRSgujQaHjAKtgoJ96Naa5XFYWdx2s8F2nR7vLuUDb6KCoXNLI
	rI3f6B9Md72q9T8LodwCv+busuGwnW6vR6CM4ASEllL99hozSw+TviXGQBJFO4cUs8WgCQN7yS2QZ
	Clnw7esiZ5zdQnV7sIVfrKBNnh3N9g1ORGOiuAXKFrRcBROkoREVZZxRX4qvO4eLHJm8Hee5pP/55
	mUEK5zcJT/M9UIRPmUodvrbgYWoiTeWNXDWMWTMi6F83HhkF3ZmByk2muGDF7zqsTTCvSINa90/oy
	63sC7dqnd1ZI0ko39TIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyElf-00011t-UA; Thu, 15 Aug 2019 12:22:12 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyElM-00011S-R1
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:21:54 +0000
Received: from [172.16.25.5] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1hyEl8-000665-26; Thu, 15 Aug 2019 15:21:38 +0300
Subject: Re: [PATCH] arm64: fix CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190807155524.5112-4-steve.capper@arm.com>
 <20190814152017.GD51963@lakrids.cambridge.arm.com>
 <20190814155711.ldwot7ezrrqjlswc@willie-the-truck>
 <20190814160324.GE51963@lakrids.cambridge.arm.com>
 <20190815120908.kboyqfnr2fivuva4@willie-the-truck>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <8e472cf5-21d1-be9e-9e47-ec40e35b3192@virtuozzo.com>
Date: Thu, 15 Aug 2019 15:21:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190815120908.kboyqfnr2fivuva4@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_052152_879714_84179F8A 
X-CRM114-Status: GOOD (  11.16  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, Steve Capper <steve.capper@arm.com>,
 kasan-dev@googlegroups.com, glider@google.com, dvyukov@google.com,
 maz@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/15/19 3:09 PM, Will Deacon wrote:

> On Wed, Aug 14, 2019 at 05:03:24PM +0100, Mark Rutland wrote:
>> From ecdf60051a850f817d98f84ae9011afa2311b8f1 Mon Sep 17 00:00:00 2001
>> From: Mark Rutland <mark.rutland@arm.com>
>> Date: Wed, 14 Aug 2019 15:31:57 +0100
>> Subject: [PATCH] kasan/arm64: fix CONFIG_KASAN_SW_TAGS && KASAN_INLINE
>>
>> The generic Makefile.kasan propagates CONFIG_KASAN_SHADOW_OFFSET into
>> KASAN_SHADOW_OFFSET, but only does so for CONFIG_KASAN_GENERIC.
>>
>> Since commit:
>>
>>   6bd1d0be0e97936d ("arm64: kasan: Switch to using KASAN_SHADOW_OFFSET")
>>
>> ... arm64 defines CONFIG_KASAN_SHADOW_OFFSET in Kconfig rather than
>> defining KASAN_SHADOW_OFFSET in a Makefile. Thus, if
>> CONFIG_KASAN_SW_TAGS && KASAN_INLINE are selected, we get build time
>> splats due to KASAN_SHADOW_OFFSET not being set:
>>
>> | [mark@lakrids:~/src/linux]% usellvm 8.0.1 usekorg 8.1.0  make ARCH=arm64 CROSS_COMPILE=aarch64-linux- CC=clang
>> | scripts/kconfig/conf  --syncconfig Kconfig
>> |   CC      scripts/mod/empty.o
>> | clang (LLVM option parsing): for the -hwasan-mapping-offset option: '' value invalid for uint argument!
>> | scripts/Makefile.build:273: recipe for target 'scripts/mod/empty.o' failed
>> | make[1]: *** [scripts/mod/empty.o] Error 1
>> | Makefile:1123: recipe for target 'prepare0' failed
>> | make: *** [prepare0] Error 2
>>
>> Let's fix this by always propagating CONFIG_KASAN_SHADOW_OFFSET into
>> KASAN_SHADOW_OFFSET if CONFIG_KASAN is selected, moving the existing
>> common definition of +CFLAGS_KASAN_NOSANITIZE to the top of
>> Makefile.kasan.
>>
>> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
>> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Steve Capper <steve.capper@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> ---


Acked-by: Andrey Ryabinin <aryabinin@virtuozzo.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
