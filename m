Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E206075F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gxJ2SsmCwuwU8hzqx3wecKMM2ReHWAPag8wDEN/WFRk=; b=d+mr2ViwXETlWfjjjOOkPWqO0
	NC6GuAjhivmBNfmJmYD6EBxHPBuxUokcH6RWA9+V0bH09NGlfSIKp7jacDTkPjTimx2YncaPw1/s4
	3zWD1N+TV7HlJz8bR9K9V7dQHvdRsBl8q6MUMCUA0jmtMFJ+Vz8K/pguNRrjOavqtPLH+hiSneouK
	EOzE0ZXoZKYRkZWPfI4oCuS7gtLP9ZtIY1J0UvCfjVJhX7uDRD4fBcrjGmT9S/Ryjyg9OIZvlX4wu
	Ocq88ZpUoKe2DfhSrrNeDRvz9NTsizS4+ZsWGYxjCzf8O4bNnbw6aYhOPZvdeqaBYQvZw9+7dQWhS
	r8bVRPAPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOt8-000364-Sh; Fri, 05 Jul 2019 14:08:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOt0-00035S-3n
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:08:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jePOyDB+/BJqai65o/nniy/GmigQg37Te1D63738p1E=; b=HjCiLjpJZ1Mow87AEeRiIL0nUa
 StJA1GcwIwZbadfuwRTzyLc97n2XdnkXZtBx3J8blPrKEhZTOsk06B470KJNNEgKRNyffbrk32PBd
 +38AyCwRHcy59lafxnXqfseNFNLlTX0WVE7rNAZYH41gQvfjg1RVuppwEPdiwK86S9ONNqU+30CvU
 gXiZ3FLLu/nnayaFSRG+qNAiV/YdLHCXXqfsXLncR8p7x+9XE4Vneu/xiXws7RMIVGWuWOalXMdPY
 zQnwfdeiUlYFt8QJc8IIt8JLGl8PpFjiQ0MjxokgsCArCQl1JXnUTxS5TdBmnqCxjMxr+lsyJ1WuD
 Y2KkOP5w==;
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjN7e-000175-RT
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 12:15:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id z75so4243107pgz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 05:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jePOyDB+/BJqai65o/nniy/GmigQg37Te1D63738p1E=;
 b=JtlJfhOjR1la3EpAWrJCUcNV4oHwfD9FQubM6udvIOnuMNZ5uQpom0RPxotusXmHqm
 /7W3+ZerruZFxjPXXdsH5w5RvqPd3b1xaSL9W7Lf3ym0WRX2nM5yrjKiA28bEd6YUGrt
 NU3sZVP4+earPTO1vg2PCvVapr+lWxiawwFGRwzeVtOGW8cH+bKd46geULijeR+owSD7
 2fINXPA8ilMbwNs4q9tygYZTG8azh5u9Sz8/9npjs3I7DHcNJM6iv5GDXQtnBuzoj/PI
 5onvYs9savWSAkBlHPYoLmlgi5oxybS1sZIyOeKTbqUxyMT4MEjpUyaq9Q/Om6u60JZc
 3yBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jePOyDB+/BJqai65o/nniy/GmigQg37Te1D63738p1E=;
 b=YNhYyyaeeK4aMfWu33xW2T8JYqaIPl9cdUA0q5wD2wyDauCP+jR8swu89oTr5DcS5M
 BCAL1oEJL9BfSCZ0EUk1vtstpGB4xOwsRfoLnEA+vb4fFgx+HS1AnrwEUK0FPOASFH4s
 39oQc+xdYdbg4PZMwxd0KRCWetHedyPnZmC+/VZpFgNaX0sd5uxzw2iq801IYkiEstPS
 O23D0VCm+NJq2TenjSC3G/88ZwvHlCngEoledBAWRq8DOT4s7W2oRrWMuT9TjZ3PjRU5
 qVhHuljWCUVmwjjmOac7tbO65HFugjxICI1K0/2IBYchWjFGzP1k4kDLMj0syEdVdy9o
 Uimg==
X-Gm-Message-State: APjAAAWvCQOW0Y93k2mT6AfzK9n+E22TpYzkHypEhTJtacbVFRWwmz/R
 +lZVktMn8qxvTqtwqhNSCjSOD6TH
X-Google-Smtp-Source: APXvYqy3i++VbGx86LnHqXfWM8gjGJRZBK1+vkUqx5LVHHUpUywmvMQXDo6JvqDrcbGPIIbM2HQ5uw==
X-Received: by 2002:a63:b904:: with SMTP id z4mr5103509pge.388.1562328799173; 
 Fri, 05 Jul 2019 05:13:19 -0700 (PDT)
Received: from [10.0.2.15] ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id m9sm5693445pgr.24.2019.07.05.05.13.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 05:13:18 -0700 (PDT)
Subject: Re: [PATCH 2/2] staging: media: sunxi: Replace function
 cedrus_check_format()
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
 <20190703081317.22795-2-nishkadg.linux@gmail.com>
 <20190705102650.GB1645@aptenodytes>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <1c5bd5a6-757e-2bce-6adf-6dafbf6956a6@gmail.com>
Date: Fri, 5 Jul 2019 17:43:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190705102650.GB1645@aptenodytes>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_131526_911444_223C9E59 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: devel@driverdev.osuosl.org, maxime.ripard@bootlin.com,
 gregkh@linuxfoundation.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/07/19 3:56 PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Wed 03 Jul 19, 13:43, Nishka Dasgupta wrote:
>> Remove function cedrus_check_format as all it does is call
>> cedrus_find_format.
>> Rename cedrus_find_format to cedrus_check_format to maintain
>> compatibility with call sites.
>> Issue found with Coccinelle.
> 
> Maybe we could have a !! or a bool cast to make coccinelle happy here?

Coccinelle didn't flag the type mismatch, just the single-line 
functions. I could add the bool cast then?

Thanking you,
Nishka

> Cheers,
> 
> Paul
> 
>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>> ---
>>   drivers/staging/media/sunxi/cedrus/cedrus_video.c | 10 ++--------
>>   1 file changed, 2 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> index 0ec31b9e0aea..d5cc9ed04fd2 100644
>> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> @@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
>>   	return container_of(file->private_data, struct cedrus_ctx, fh);
>>   }
>>   
>> -static bool cedrus_find_format(u32 pixelformat, u32 directions,
>> -			       unsigned int capabilities)
>> +static bool cedrus_check_format(u32 pixelformat, u32 directions,
>> +				unsigned int capabilities)
>>   {
>>   	struct cedrus_format *fmt;
>>   	unsigned int i;
>> @@ -76,12 +76,6 @@ static bool cedrus_find_format(u32 pixelformat, u32 directions,
>>   	return false;
>>   }
>>   
>> -static bool cedrus_check_format(u32 pixelformat, u32 directions,
>> -				unsigned int capabilities)
>> -{
>> -	return cedrus_find_format(pixelformat, directions, capabilities);
>> -}
>> -
>>   static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
>>   {
>>   	unsigned int width = pix_fmt->width;
>> -- 
>> 2.19.1
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
