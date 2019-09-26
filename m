Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4530BEE6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 11:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMcEZjci38uoHATxCONheBlLoZNPBW/PsfzZVsxhJko=; b=KH5hJHXzL5BhGG
	nEgpd2jm8Eea+3OZkuPI2iKZ1SnnqSQodaD0RA4lIaxcuJ8nB27GFo9sJdTWSdBoe5HF2i9Wt/8aQ
	rNAsqeT4wvuQ0Oi1efQTD2+hXFLllhBhpe2E8Yv9d00TeVrt0i8BXtc26AFKocsWqZdkldUAYeHxS
	h5+V/Iy4fPhcRpBc2S8OkmUzHokuJd7cRhWrsa87G4ktvehxrAHFZImVf8XxiIexUJalhqv4GN2hL
	RNSlR0T7Z6VHC/h51lRIHFJeVjiinLFKNhJ1eYgxVydPxOVYD5UG0OtbYmfJFM66+uggu3Zv48jm9
	uuCJOmLAi0V60urRU2uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQ33-0000GP-R3; Thu, 26 Sep 2019 09:26:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQ2o-0000Fy-NX
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 09:26:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F5691000;
 Thu, 26 Sep 2019 02:26:37 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 842F63F67D;
 Thu, 26 Sep 2019 02:26:36 -0700 (PDT)
Subject: Re: [PATCH 1/2] kselftest: add capability to skip chosen TARGETS
To: Tim.Bird@sony.com, linux-kselftest@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, shuah@kernel.org
References: <20190925132421.23572-1-cristian.marussi@arm.com>
 <ECADFF3FD767C149AD96A924E7EA6EAF977BD152@USCULXMSG01.am.sony.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <5aeaf05c-e5da-458f-45b8-c78094e74eab@arm.com>
Date: Thu, 26 Sep 2019 10:26:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF977BD152@USCULXMSG01.am.sony.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_022638_809942_6B6B2BBC 
X-CRM114-Status: GOOD (  16.60  )
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

Hi Tim

thanks for the review.

On 25/09/2019 21:20, Tim.Bird@sony.com wrote:
> Just a few nits inline below.
> 
>> -----Original Message-----
>> From: Cristian Marussi on Wednesday, September 25, 2019 3:24 AM
>>
>> Let the user specify an optional TARGETS skiplist through the new optional
>> SKIP_TARGETS Makefile variable.
>>
>> It is easier to skip at will a reduced and well defined list of possibly
> 
> It seems like there's a word missing.
> at will a -> at will using a
> 
>> problematic targets with SKIP_TARGETS then to provide a partially stripped
> 
> then -> than
> 
>> down list of good targets using the usual TARGETS variable.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>>  tools/testing/selftests/Makefile | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/tools/testing/selftests/Makefile
>> b/tools/testing/selftests/Makefile
>> index 25b43a8c2b15..103936faa46d 100644
>> --- a/tools/testing/selftests/Makefile
>> +++ b/tools/testing/selftests/Makefile
>> @@ -132,6 +132,10 @@ else
>>  		ARCH=$(ARCH) -C $(top_srcdir) headers_install
>>  endif
>>
>> +# User can optionally provide a TARGETS skiplist.
>> +SKIP_TARGETS ?=
>> +TARGETS := $(filter-out $(SKIP_TARGETS), $(TARGETS))
>> +
>>  all: khdr
>>  	@for TARGET in $(TARGETS); do		\
>>  		BUILD_TARGET=$$BUILD/$$TARGET;	\
>> --
>> 2.17.1
> 
> Great feature!  Thanks.
>  -- Tim
> 

I'll fix all in V2.

Thanks

Cristian


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
