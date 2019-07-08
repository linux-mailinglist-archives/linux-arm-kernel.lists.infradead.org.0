Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C51BC61F54
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 15:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oydorAq2N0ViVdNypsxtkvkMF4Qdu5w3Aip3XXEb8g8=; b=uPvOXDjaNGK/HC
	3yVuIA7glF3lxP6uvPDN3l/z19rSa2kapSkIbDFOoXYsTsqPaDgqgjgPIS1LAB+Q0ixf9TgE/aErU
	oWqNkX9D0UWpJmakEQu1ll/hOJDKD2+j7nimM3dmzN0vjHdOwhGqt78BKQs9QzIGbdiKby8WWPstZ
	Zmt27WwnX6cGKkIA6vZyB/bZmI6/y7lBW9QvYiu0JweUkHs7zGGpYMW9iZcHl4FCnJsEIuzKymGQ7
	NYgcmUWRMARUoz/8KESS/w0Q32L8ZgQ6yVJzHfMc8mcVwYLoVVDoERtafQhsYeZW0jEY395KsjFcs
	fk/SgSaDRfdnECPdsz/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkTOa-0002tu-O3; Mon, 08 Jul 2019 13:09:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkTOO-0002st-2H
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 13:09:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA27B2B;
 Mon,  8 Jul 2019 06:09:12 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C89363F738;
 Mon,  8 Jul 2019 06:09:08 -0700 (PDT)
Subject: Re: [PATCH v7 04/25] arm64: Substitute gettimeofday with C
 implementation
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-5-vincenzo.frascino@arm.com>
 <CGME20190628130921eucas1p239935b0771032c331911eacc1a69dd2e@eucas1p2.samsung.com>
 <1fd47b0d-f77f-8d07-c039-6ac9072834fc@samsung.com>
 <27386d82-2906-b541-f71d-3c61f5099bdf@arm.com>
 <530cd07e-0da7-1d83-be4e-b14813029424@samsung.com>
 <06c264a8-8778-18b1-1094-4281a4a2abc9@arm.com>
 <ed758c10-7260-bec3-caf1-08cae7e0968d@samsung.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <b10b6723-6d5f-e667-b626-f13f5a5c3400@arm.com>
Date: Mon, 8 Jul 2019 14:09:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <ed758c10-7260-bec3-caf1-08cae7e0968d@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_060916_151068_3D9947C9 
X-CRM114-Status: GOOD (  14.35  )
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Shuah Khan <shuah@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arch@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Andre Przywara <andre.przywara@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Huw Davies <huw@codeweavers.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sylwester,

On 08/07/2019 13:57, Sylwester Nawrocki wrote:
> Hi Vincenzo, 
> 
> On 6/29/19 08:58, Vincenzo Frascino wrote:
>> If I may, I would like to ask to you one favor, could you please keep an eye on
>> next and once those patches are merged repeat the test?
>>
>> I want just to make sure that the regression does not reappear.
> 
> My apologies, I forgot about this for a moment. I repeated the test with 
> next-20190705 tag and couldn't see any regressions.
> 

No problem and thank you for the confirmation.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
