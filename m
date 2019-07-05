Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E766077E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SRz3VS9AtaNs+XuU1skt3Yhgc/3pWZawcYmskeOpxR8=; b=f9LRoExF6zFOSGl+/say6Xhqv
	ueqNT9K6cn5oKVzJJbCGxNvSevqt97r+mh9LdHjEv/FN8L4en7ngTh13A3dqAs5Vtxu3fQVwZbfv8
	e1KdUAGw+4HoxuQWWsM9xEqfiAB1iidEi+cclhD8sEVKJWmQmgNaQK+w40EwmBGhvuBdwr6Xzk4/D
	KMygKYisv+cu0zb+HT8lH5RTNhehkGqkjNzE65ewKVUaJrWlcFMRNQVyt8fjtUdoi1muGuhTZKGNk
	cLy6z+73EU+LP7WlMLePQn4X5xRqJahWlFodeVhAtR75PYZIxiGLM3GZF7wAcjwRwx+7mEUY5f2Ou
	/i6L3Y1YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOvQ-0005lA-Lr; Fri, 05 Jul 2019 14:10:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOvH-0005kv-Ls
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:10:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fGg5cmQPJco2qB5UDLvFiWfaIFjGf3sdq62tG9ZVImE=; b=cZ/rugnw4Rekw/43HbwLJAaKIV
 iyjtfKmvGWo5XvJecN48caGl1pF7EZroUvZo8hPATkWo6RQKgb6YiiZdvGpX4+YnvEoUNQDAlZeki
 uXSYehj4DnTLqMjKtt0kl6AymfIceWA76Iew0IdKBs0otsD5rbuI12CXPj65R4d174GUAfAjSMbCB
 ouWtFNrWTUL2lT1T273hBkFp4YS0US0qWy5rD5/QpPvxhrPnzCmU/zF3OySLVKIRCShOTinbYZuhd
 06WIeV6S3mLmLdtY1ZuN8GBeOjPchtkDVvJWrKrGiR82Lr9ZQBBpedj+ZT55FLUbfq0mtvBMb1UB+
 qCIxyF8A==;
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjN61-00013G-Qt
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 12:13:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id cl9so4513557plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 05:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fGg5cmQPJco2qB5UDLvFiWfaIFjGf3sdq62tG9ZVImE=;
 b=ZY6pJFD4rbKle44KkGiMoNj9hXi7Xp+EL6hAnQSSJhI4vj6R/BOzRackxznm0/aFcv
 QFV3qyiwYaTZc9ME3Si/B5tq4Y3u7/lcrSxK4RgaaYbcBNxgQjusG4U87YZYSX4+yjRB
 HODp5hO69Tm9qMuW+lCUF5+eNhfTRTbFkBxf6+lh1yb5JnTwvMDrtXrPWzb15JTKmp12
 QgIsxqLWyUEveXJq2Iyk2zXHQbyPUld9+MRTBl9TJX8uJTYq+dlP6K4v3DFYY6OVzzfy
 nnaQFsNGZJ8ERRO0BQ2e1s1K5w5RVN+nVn7Vfo4yjlmZthI+6En/Vz/WB1sQCzc4F94h
 Te+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fGg5cmQPJco2qB5UDLvFiWfaIFjGf3sdq62tG9ZVImE=;
 b=NVtvtv9WRXs2MnYLlHrgiPXfHDvbQ6zUv1+BVeyx7TzMrN/ymeT7TOR1iemWiSxxVj
 PL6Q2sR1hAynn3N8TVUGA7qVz0mymhN8DfDWGBP4FEcGhRbNLHxQPlRgUCga9vwi0KZc
 LQ5VxW/K8ZMvINkK0t5hpulyCy3Nbmmm5DT9xpCoEBBc6jJ55olk8L5kIqnH9Kp7QhEp
 jY0s+eCvqdMCe5hZiYgSUZfEo3rrx4v+s8bcJxJX3FOKXWFCIU9YiLmg+ka9W2zejtHY
 nUpIiZai+WfRkw60uJuIDBlDZm0fXjt061HVXHHBo8ALfm6qLNS/1cMDBUAun2FUssfI
 rQCg==
X-Gm-Message-State: APjAAAVEmDFFEosqjuHn2kbbaHcYHxWYtkM5itS5bKJktfbTBgSw66hI
 bZ1OJCmn75kziD0hsIE40wD2IJaG
X-Google-Smtp-Source: APXvYqzsy1r0hgrfbmfcd/68Z1oyOkJvepWGSLGX0UsVBJP9RB1teHvNd3rCpUvJh7rDk5p2+nTgag==
X-Received: by 2002:a17:902:b603:: with SMTP id b3mr5302378pls.9.1562328697756; 
 Fri, 05 Jul 2019 05:11:37 -0700 (PDT)
Received: from [10.0.2.15] ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id o16sm24507895pgi.36.2019.07.05.05.11.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 05:11:37 -0700 (PDT)
Subject: Re: [PATCH 1/2] staging: media: sunxi: Change return type of
 cedrus_find_format()
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
 <20190705102603.GA1645@aptenodytes>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <e177ab7b-2e1d-536c-6b30-3fdb9ae0ff31@gmail.com>
Date: Fri, 5 Jul 2019 16:41:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190705102603.GA1645@aptenodytes>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_131345_873816_66CC9CF2 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
>> Change return type of cedrus_find_format to bool as it is only called
>> once, by a function whose return value is bool, and the return value of
>> cedrus_find_format is returned as-is at the call-site.
>> Issue found with Coccinelle.
> 
> The purpose of this function (although definitely under-used at this point),
> was to return the pointer to the element structure, not to indicate whether
> the format format is part of the list or not.
> 
> In spite of that, this change reduces the use case for the function, so I do
> not think it is beneficial, sorry.

Okay, thank you for the clarification.

Nishka

> Cheers,
> 
> Paul
> 
>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>> ---
>>   drivers/staging/media/sunxi/cedrus/cedrus_video.c | 11 ++++-------
>>   1 file changed, 4 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> index 9673874ece10..0ec31b9e0aea 100644
>> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> @@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
>>   	return container_of(file->private_data, struct cedrus_ctx, fh);
>>   }
>>   
>> -static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>> -						unsigned int capabilities)
>> +static bool cedrus_find_format(u32 pixelformat, u32 directions,
>> +			       unsigned int capabilities)
>>   {
>>   	struct cedrus_format *fmt;
>>   	unsigned int i;
>> @@ -70,13 +70,10 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>>   
>>   		if (fmt->pixelformat == pixelformat &&
>>   		    (fmt->directions & directions) != 0)
>> -			break;
>> +			return true;
>>   	}
>>   
>> -	if (i == CEDRUS_FORMATS_COUNT)
>> -		return NULL;
>> -
>> -	return &cedrus_formats[i];
>> +	return false;
>>   }
>>   
>>   static bool cedrus_check_format(u32 pixelformat, u32 directions,
>> -- 
>> 2.19.1
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
