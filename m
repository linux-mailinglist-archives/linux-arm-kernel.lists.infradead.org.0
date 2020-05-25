Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4D51E14F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 21:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yStnir1tJepN047FzdrDKgVHU124dwWrFe6QY59Lpmg=; b=Z+zy48ZRfQ7AIU
	y3ohUvOeOgRm+eTJqyEE7uwG/AryGngU9YMSzPA80stHetGQwpLtt5CbklzO4xIEZCqTLTOkrbCcj
	fxjagGVWp+V4Y12qVmXwxNvqNgbg3KiaaIkhzBTiaWbhPVLNeLeovqItVehRnkkz8vudctggrKc6H
	nlV6dOzsGb3cQqrHHvD+q0TYKRwLRan0bG4sjooALdd/6zVKWAgi1UfHL0Uv9yhJXfjLItJOXFUFH
	+T9+qvjmHFNWN3YM1T/I3oOEUfQv3kcfBDRaqJ2NsnQfzc/20yf5RErmtC7Kj0zkkEBkxQHcFAL0X
	E2CgRF453gguxYy1SG4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdJ7k-0008R9-9H; Mon, 25 May 2020 19:51:00 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdJ7a-0008QT-L9
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 19:50:51 +0000
Received: by mail-qk1-x743.google.com with SMTP id 205so5287269qkg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 12:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=leaflabs-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CBPda5NA99jy1A5gbIBXWbIi5pPJWudA4hi9ywStCK8=;
 b=AFwEOdJXx9pmke4TFlrGLvTobL3pkHPcTeYy1VQ/+NvoFFCp6uirMXgQ82v8Zl8lNw
 dSUO3wm4ySpmHP4HelChS2Nh3NbDfp5DUqxcKyw+YzzMm1mPA39vsq8fTKmDauRWXz80
 dKj6Lw74fKNBb2AZSPqrJdEiv9X3fj8XpYj5nI9ETulqC7pEvJ8nNt1tiUsajsT9xhUK
 /2Pw9Z1aKCLtkn4jCV7lj1Qem68tYBkGTKk32B4gIMIO84gkwXe5YW+zoaTaV8zKNBKP
 lygN2dgGZJH5JDESQd1/jbD8os9LxmYezSp25v318vJiJeTvo0XVOtJTfuYRxfsK5DgP
 iUPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CBPda5NA99jy1A5gbIBXWbIi5pPJWudA4hi9ywStCK8=;
 b=jfESP9xEy5MURJwmO9oU4zo57X2L1H8KbyFiuDlEtHJXYOx4Hv3tJpLC28xhoBO8bi
 RhszUdP7l3ywzYKGGuhfhvV3F+NdtoYyGFwmuoM0I9LTjE7jQNkvdlpcdp52S3eySNjC
 rfM+fzzmEgMls1ZMPEV3VC9rCbDuTC0s0g14ZrDfDMm4a3M1CHcc5TPryFqfznVNf65r
 wGSqCr2HgN280nEGOAXE+57WmPi+9P7lEvaIiEKtSP3HjJjfQDPup3gF2hucttWLPEl6
 w1cX99zPyfvYZ2Uqvc0MouWsgbvG9DOIExzYdMczz7l6l1iyeiEROerfOernbyFn5sbm
 a89g==
X-Gm-Message-State: AOAM5326X4t9Cb/hH9xVaS/omM0CVtw3LngDeA0aOrcOj1FVCepBMzMi
 2aBpB/lQhgs2Mf8eMUDOFRuEVgHjZbI=
X-Google-Smtp-Source: ABdhPJy2ocMQraNI2+O+UyJv/WlvUwdvZdG5MF0q1EO9a6FaJj8c2aCSHVNxa636iD1znd8Fs29E6g==
X-Received: by 2002:a37:63d0:: with SMTP id
 x199mr24878172qkb.271.1590436248754; 
 Mon, 25 May 2020 12:50:48 -0700 (PDT)
Received: from [192.168.189.130]
 (209-6-156-57.s56.c3-0.sbo-ubr1.sbo.ma.cable.rcncustomer.com. [209.6.156.57])
 by smtp.gmail.com with ESMTPSA id i14sm2984009qkl.105.2020.05.25.12.50.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 12:50:48 -0700 (PDT)
Subject: Re: [PATCH] staging: vchiq_arm: cast with __force as needed
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200519004531.33158-1-tasman@leaflabs.com>
 <20200522110623.GL30374@kadam>
From: Mitchell Tasman <tasman@leaflabs.com>
Message-ID: <4dcf963f-ce9a-fa2b-09c9-c8657f407167@leaflabs.com>
Date: Mon, 25 May 2020 15:50:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200522110623.GL30374@kadam>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_125050_746149_A42A9036 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/22/20 7:06 AM, Dan Carpenter wrote:
> On Mon, May 18, 2020 at 08:45:31PM -0400, Mitchell Tasman wrote:
>> In several cases where a pointer marked as __user is
>> (intentionally) assigned or passed to a non-marked target,
>> cast to the target pointer type with a __force directive
>> to quiet warnings from sparse.
>>
>> Signed-off-by: Mitchell Tasman <tasman@leaflabs.com>
>> ---
>>  .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c     | 7 ++++---
>>  .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c  | 4 +++-
>>  2 files changed, 7 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
>> index c18c6ca0b6c0..38a13e4618a8 100644
>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
>> @@ -371,14 +371,15 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
>>  	pagelistinfo->scatterlist = scatterlist;
>>  	pagelistinfo->scatterlist_mapped = 0;
>>  
>> -	if (is_vmalloc_addr(buf)) {
>> +	if (is_vmalloc_addr((void __force *)buf)) {
> 
> Am I reading this correctly???
> 
> This is actually a user controlled pointer that comes from the
> vchiq_ioctl() when we do VCHIQ_IOC_QUEUE_BULK_TRANSMIT/RECEIVE.  So we
> take random pointer from user space and if it happens to point to kernel
> space then we trust it and presumably start BULK_TRANSMITing data to
> it???
> 
> LOL....  This doesn't seem safe at all.

Is additional validation of buf and its extent necessary and sufficient, e.g. perhaps access_ok(buf, count * PAGE_SIZE) somewhere along the call chain?  Or does vhciq_arm need to take a different approach in the area that Dan Carpenter flagged?

Thank you.

> 
> regards,
> dan carpenter
> 

Regards,
Mitch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
