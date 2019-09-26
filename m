Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2ACEBEE62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 11:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/6HEiJkJFCKT6Jd4LeRktIhPez7gCxknvnKwZxDaR4=; b=L/yh16GXRCJ2Gy
	VHZMBtl4z3ZOvzd8BIs2Q1uUO/z+C8MuB9g1fJZWu03MMRkrexcw0ggGmuk1zlZb1j4v8VMFVYCjB
	zIsRorG7Q20e33ar/0OeD/+cOOU8Z+JhA3NS+gs2uVyjB2yj7qji8Ai3QCppxs0/NkGRZaY0rz5F7
	7+jdlK5YiD+pnbzZfSF75rNuX2Fo7Eot4LizBJZzkbNYVZz0cukqCUGongvYipcvAs34ydAqBkctF
	95BkviDpgSBb0BoJLrAgaEf0KQ9PL2gV+ryoxUPzKxWbBFdPr4UFitV4kMG1Y6wWBxBnYzWlKzpRz
	WHPKpmq4ZDQTgeCHJwag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQ1V-0006ue-A0; Thu, 26 Sep 2019 09:25:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQ1D-0006uE-RC
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 09:25:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C83871000;
 Thu, 26 Sep 2019 02:24:58 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 38D5B3F67D;
 Thu, 26 Sep 2019 02:24:58 -0700 (PDT)
Subject: Re: [PATCH 1/2] kselftest: add capability to skip chosen TARGETS
To: shuah <shuah@kernel.org>, linux-kselftest@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20190925132421.23572-1-cristian.marussi@arm.com>
 <e8848069-124d-a236-30c9-b8915471db16@kernel.org>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <45393e0b-666c-37b4-5454-cdbecc92361f@arm.com>
Date: Thu, 26 Sep 2019 10:24:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e8848069-124d-a236-30c9-b8915471db16@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_022459_922111_AEFFCCD7 
X-CRM114-Status: GOOD (  14.93  )
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
Cc: dave.martin@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/09/2019 20:36, shuah wrote:
> On 9/25/19 7:24 AM, Cristian Marussi wrote:
>> Let the user specify an optional TARGETS skiplist through the new optional
>> SKIP_TARGETS Makefile variable.
>>
>> It is easier to skip at will a reduced and well defined list of possibly
>> problematic targets with SKIP_TARGETS then to provide a partially stripped
>> down list of good targets using the usual TARGETS variable.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>>   tools/testing/selftests/Makefile | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
>> index 25b43a8c2b15..103936faa46d 100644
>> --- a/tools/testing/selftests/Makefile
>> +++ b/tools/testing/selftests/Makefile
>> @@ -132,6 +132,10 @@ else
>>   		ARCH=$(ARCH) -C $(top_srcdir) headers_install
>>   endif
>>   
>> +# User can optionally provide a TARGETS skiplist.
>> +SKIP_TARGETS ?=
>> +TARGETS := $(filter-out $(SKIP_TARGETS), $(TARGETS))
>> +
>>   all: khdr
>>   	@for TARGET in $(TARGETS); do		\
>>   		BUILD_TARGET=$$BUILD/$$TARGET;	\
>>
> 
> Thanks for doing this. This looks good to me. Would you like to
> update the documentation file?
> 

Thanks for the review Shuah, I'll add doc and fixes in V2
with a proper cover letter

Thanks

Cristian
> thanks,
> -- Shuah
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
