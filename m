Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3777DABABF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dllami8yvBbwH1nWfX8Ue+uHdwga8reVS+zvAdSdzxs=; b=LGujsVX/yZC5da
	bpnLHwTdr6CXNTGjC4iaZsAo8N9B5dq1IBbUYjE2uPa8oyqlROoMksUDzRhFijWOWLuYliLl2UaVW
	iJc1Ao66Hd09kx0+xtGpXG3TojNUiR734J4TTRrERcOGlkZL0u/rdkwiz8ttnGaPjdCVJDuDvpt8E
	avxD8yNSg/YaIhn/hJWLM9YErjpx/Hlv2WuO6+jC71ZpllXmwAcdSmrdq7icbzgnFUSs3bayBZTeP
	Cs+QPpXpYJaXtiijWtR3BGsbiTvwlW14UY4bAbMt3NsJfZuUCXZWLol7N8zI/0/+BVMKvIGaU21Dc
	z15uvYfrwPcbS8bolFrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6F7n-0002fX-B0; Fri, 06 Sep 2019 14:22:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6F7a-0002f4-25
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 14:21:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E10228;
 Fri,  6 Sep 2019 07:21:53 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8AA123F718;
 Fri,  6 Sep 2019 07:21:51 -0700 (PDT)
Subject: Re: [PATCH ARM64] selftests, arm64: add kernel headers path for
 tags_test
To: Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will@kernel.org>
References: <c28135c82eaf6d6e2c7e02c1ebc2b99a607d8116.1567615235.git.andreyknvl@google.com>
 <20190906135151.d74nq3qzjmhe4mb5@willie-the-truck>
 <CAAeHK+zDZo6oaSDnJfiD_S1WYqAT13yEFP7hbehZ62C-BBp3rQ@mail.gmail.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <febb420d-003a-0288-8636-7fd7878ef63b@arm.com>
Date: Fri, 6 Sep 2019 15:21:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAeHK+zDZo6oaSDnJfiD_S1WYqAT13yEFP7hbehZ62C-BBp3rQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_072154_149627_CF8228C2 
X-CRM114-Status: GOOD (  16.73  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Kostya Serebryany <kcc@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Evgeniy Stepanov <eugenis@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Amit Kachhap <Amit.Kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/09/2019 14:55, Andrey Konovalov wrote:
> On Fri, Sep 6, 2019 at 3:51 PM Will Deacon <will@kernel.org> wrote:
>>
>> On Wed, Sep 04, 2019 at 06:41:00PM +0200, Andrey Konovalov wrote:
>>> tags_test.c relies on PR_SET_TAGGED_ADDR_CTRL/PR_TAGGED_ADDR_ENABLE being
>>> present in system headers. When this is not the case the build of this
>>> test fails with undeclared identifier errors.
>>>
>>> Fix by providing the path to the KSFT installed kernel headers in CFLAGS.
>>>
>>> Reported-by: Cristian Marussi <cristian.marussi@arm.com>
>>> Suggested-by: Cristian Marussi <cristian.marussi@arm.com>
>>> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
>>> ---
>>>  tools/testing/selftests/arm64/Makefile | 1 +
>>>  1 file changed, 1 insertion(+)
>>
>> Damn, I just tagged the arm64 queue for 5.4 and didn't spot this patch.
>>
>> I'll queue it at -rc1 instead, if that's ok? It doesn't look urgent.
> 
> Sorry, I guess I should have pinged you directly.
> 
> I think it should be fine to leave it for rc1. It might cause a build
> error in some kernel CI systems if they run kselftests though.
> 

It won't be a big issue probably.

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
