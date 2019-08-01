Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D348C7D552
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 08:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLcqmQ/G8fKRgEnZ/OWG5uAZgbtgLqgmrCiLWzfADGU=; b=UUHH3ntZBp+MAe
	J180YjfDENr7GyW5VliXD4S6yytOrvC2fYhXF+a7goIv19COFfZJrBx5Ovq79/3XVjp26X9HKf/26
	q07ZolEh/NzUY3CWayyTyT9BHmwuc6vu7cHNvn4yOD/ur0VJim9FQL/HEj5SG2k2+F0Vwpi0dR2e4
	5UWGibaluLk1E/Lu4ov8B61WtmqjQDO99NnLQN+Kj137BIZnQNQLKxJILoXvvTiJYqoCzxhqAl4vh
	AzqENOIaCAVI1liH/pswj8nv12ZMMbeNsPo8G6z6oK7Ce88Rw126NUiTXNXVGegAaEbqA+uGHYRt3
	dlvDx2AU+6RPXfBPyTiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4L4-0000Qh-4y; Thu, 01 Aug 2019 06:13:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4Ky-0000Px-17
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 06:13:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10555337;
 Wed, 31 Jul 2019 23:13:14 -0700 (PDT)
Received: from [10.163.1.81] (unknown [10.163.1.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E7AE53F694;
 Wed, 31 Jul 2019 23:15:06 -0700 (PDT)
Subject: Re: [PATCH v9 10/21] mm: Add generic p?d_leaf() macros
To: Mark Rutland <mark.rutland@arm.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-11-steven.price@arm.com>
 <20190723094113.GA8085@lakrids.cambridge.arm.com>
 <ce4e21f2-020f-6677-d79c-5432e3061d6e@arm.com>
 <20190729125013.GA33794@lakrids.cambridge.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <d427ccad-e64f-82f4-588b-816376e3cadb@arm.com>
Date: Thu, 1 Aug 2019 11:43:38 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190729125013.GA33794@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_231316_119591_3E63B7E8 
X-CRM114-Status: GOOD (  12.23  )
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
Cc: x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, linux-mm@kvack.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/29/2019 06:20 PM, Mark Rutland wrote:
> On Sun, Jul 28, 2019 at 05:14:31PM +0530, Anshuman Khandual wrote:
>> On 07/23/2019 03:11 PM, Mark Rutland wrote:
>>> It might also be worth pointing out the reasons for this naming, e.g.
>>> p?d_large() aren't currently generic, and this name minimizes potential
>>> confusion between p?d_{large,huge}().
>>
>> Agreed. But these fallback also need to first check non-availability of large
>> pages. 
> 
> We're deliberately not making the p?d_large() helpers generic, so this
> shouldn't fall back on those.

I meant non-availability of large page support in the MMU HW not just the
presence of p?d_large() helpers.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
