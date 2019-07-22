Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF13C7017C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ok1dmQc0bIUwFhPKGza0PpY/+C4JZs80uxcs6pSk42U=; b=FcNjo8ZCaBgVegTvCAUPPwdyd
	nYe8TI87e8iWPPHKfA9Pb3JhOG/eLs/W1vR2hLHHwM80+jBvWZdZKtCEgBdq3bg0HLCJ3vP6EwCDd
	VCAAb+wUus1ey8cPX0h7rmx5bzyk0yvaAaX0b15JvCZF4je6jMbmVLwwmKj3qwtwM17kuMMH9TpqL
	UvzfiHUu7oCLZjO0zTP2ix2koZWT2Nef1qvwYY4YX5dpDrUFb3nELEQMCbuAQoU3rAXoE4WnLhdP4
	E9I3Udzaeav0LQmMcK92/ze23CLlaNMtcB/narWEwBayca+E9ZCHMR0GedRVxbTwM/SO5NVWWoUyU
	NRyvc1OTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYdQ-0003AK-A9; Mon, 22 Jul 2019 13:45:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYbx-0001Co-3P
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:44:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id c73so17391675pfb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DJ/uDnwZtRa/WIpL5XNGddtxQKDvNvsyVQzQE3LJ4gw=;
 b=ZlDEAdHEBQVvAOC5iy9LBvzMxroJH0uBe9X14guv8oxOPmuwO0Xl3rljszEAJcg8oV
 tm4OWnPKo0vPh5ZjqyaNoZ38zOBSUuqwo5ez7qwuaeag459SQGTgruZ0s5dRVaoIUz3u
 yDMEWWT3DnjLQWNcebIaVQw3j29/4V7EKFw6P7oKIwTfDnmQxMVd++FmuB/9FmPwJjvx
 uxozzjK1p8uSgNvmEZoqaXFV+b8/4bwp24GG8F1V1akXRtmCRQvme5yAvJLv/uMgdjT2
 Z7pz1slJCBQN5QLmZ9oGFdjiPZXVOA3qVqxS6OF8/YMI0wo2GORYUHFT9QMJ5h7efnYI
 lU6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DJ/uDnwZtRa/WIpL5XNGddtxQKDvNvsyVQzQE3LJ4gw=;
 b=GuqVe0XiIRPr+5KNVsSyzKaSFq/NS2BRw40fWuNNH6zMs9lCDD+bFMZul9hR621axf
 wgwSMUN3L5SxCeyoFsW93u/acrE2Uze28ktT32vDvIsiYaNl1y4y/++CRbRx8DITtNQK
 krxk/IXF+aJxpHdpELACOFOCXHxhVfCzpXD3QIlSNDSRlkgRS0xq7Jvn/2DIMx3GKgsX
 GrK+duLRTcL5REbe23ljd0bP31fodS5g0loKkYJ/EPL7hjeiP4vEDKjdpV4djvBbHikg
 poGAXjoVf59Vja9jdxp26WKOskbeFCu5lahIMKqbGc2m2bFSL345T9Z6IbKZxaL7zIIm
 uPjw==
X-Gm-Message-State: APjAAAXRob3VQ4mnsGLT9Hb4Okb9eLL21sm5JyNvmzm8FTdt78VQCvAe
 B7FsUItYs8OTaOituvT0F0hMePAt
X-Google-Smtp-Source: APXvYqxICN12ZjuVSVVmzEOLJ9xxnOHnvJY5tJdkiIIv9PDq92RdhBheLNi1HuoHWeityZ+SY89Sjg==
X-Received: by 2002:a63:d555:: with SMTP id v21mr49533803pgi.179.1563803055330; 
 Mon, 22 Jul 2019 06:44:15 -0700 (PDT)
Received: from [10.0.2.15] ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id k64sm20592830pge.65.2019.07.22.06.44.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 06:44:14 -0700 (PDT)
Subject: Re: [PATCH v2] staging: media: sunxi: Add bool cast to value
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jeremy Sowden <jeremy@azazel.net>
References: <20190722060651.6538-1-nishkadg.linux@gmail.com>
 <20190722111225.GA2695@azazel.net> <20190722122438.GA1908@aptenodytes>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <45555499-57f3-a315-6f84-f878c3aa0130@gmail.com>
Date: Mon, 22 Jul 2019 19:14:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190722122438.GA1908@aptenodytes>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064417_251448_AB412333 
X-CRM114-Status: GOOD (  31.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 22/07/19 5:54 PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Mon 22 Jul 19, 12:12, Jeremy Sowden wrote:
>> On 2019-07-22, at 11:36:51 +0530, Nishka Dasgupta wrote:
>>> Typecast as bool the return value of cedrus_find_format in
>>> cedrus_check_format as the return value of cedrus_check_format is
>>> always treated like a boolean value.
>>>
>>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>>> ---
>>> Changes in v2:
>>> - Add !! to the returned pointer to ensure that the return value is
>>>    always either true or false, and never a non-zero value other than
>>>    true.
>>>
>>>   drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>>> index e2b530b1a956..b731745f21f8 100644
>>> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>>> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>>> @@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>>>   static bool cedrus_check_format(u32 pixelformat, u32 directions,
>>>   				unsigned int capabilities)
>>>   {
>>> -	return cedrus_find_format(pixelformat, directions, capabilities);
>>> +	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);
>>>   }
>>
>> I think the original was fine.  The return value of cedrus_find_format
>> will be automatically converted to bool before being returned from
>> cedrus_check_format since that is the return-type of the function, and
>> the result of converting any non-zero value to bool is 1.
> 
> Okay I was a bit unsure about that and wanted to play it on the safe side
> without really looking it up, but that gave me the occasion to verify.
> 
>  From what I could find (from my GNU system's /usr/include/unistring/stdbool.h):
> 
>     Limitations of this substitute, when used in a C89 environment:
> 
>         - In C99, casts and automatic conversions to '_Bool' or 'bool' are
>           performed in such a way that every nonzero value gets converted
>           to 'true', and zero gets converted to 'false'.  This doesn't work
>           with this substitute.  With this substitute, only the values 0 and 1
>           give the expected result when converted to _Bool' or 'bool'.
> 
> So since the kernel is built for C89 (unless I'm mistaken), I don't think the
> compiler provides any guarantee about bool values being converted to 1 when
> they are non-zero. As a result, I think it's best to be careful.
> 
> However, I'm not sure I really see what cocinelle was unhappy about. You
> mentionned single-line functions, but I don't see how that can be a problem.

It's not a problem per se. I'm just working on a cleanup project for 
which I went through all of staging replacing single-line functions with 
what they were calling. In some cases that makes it easier to figure out 
what a particular function call does, since the called function actually 
does something itself instead of just calling a different function?
This function was also flagged as one such potentially-removable 
function by Coccinelle; but in order to do the same replacement that I'd 
done in other staging drivers, I thought I would do something about the 
type mismatch first, especially since find_format doesn't appear to be 
used anywhere else.
However, now I won't remove check_format and replace it with find_format 
as I'd originally planned, since you've said that isn't necessary here. 
That leaves the return type issue.


> So in the end, I think we should keep the !! and drop the (bool) cast if there's
> no particular warning about it.

Should I send a version 3 that does this?

Thanking you,
Nishka

> What do you think?
> 
> Cheers,
> 
> Paul
> 
>>>   static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
>>> --
>>> 2.19.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
