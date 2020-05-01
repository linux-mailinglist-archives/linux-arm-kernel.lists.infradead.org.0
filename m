Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE891C0BBE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 03:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UGDVoAgMdyJjgM8vaN4kJitfBt9hzLKmHzX+a7vECY=; b=cMW32uHQ5JNDRm
	teNT/JYkppDO72xDY/D2RUpBmtUYXpRhzL5DJ1b1HqHrZyE8z3mJkCnOwUGlaLY5IF5jarpKvEz0w
	kBE/uaIpdLSQ5hmJFK8LOac6KjDOa0uMNROxRNlb7ppkw/FiLwicpMo3yahmMAJzk1zKiJcp650VQ
	FN6Dlu25YiSZPQhkZQez/nJKSyNI5gPBfkv0WUcqO11BHnYgfYCmoRUjdRp/vzxJPnWDCa5l3svtK
	VB8P0bTll7+sAggqmbDOCweAYDUsN1DC0KlfAs+RKJzaXVaUM+/4awm0z4tHlIubxdLWaqLaqDsVw
	Zad3sTWtTGzE3jSgbeCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUKfP-0008Ug-9D; Fri, 01 May 2020 01:40:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUKfD-0008Tw-NR
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 01:40:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id d184so937751pfd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 18:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mQqYrPQYFIDRJNtN/SAJy2t+xhyEUoAd2W8p48g17wQ=;
 b=qOsxv6vEvbD4wGxk4LHlqwR83qbl5dodfHnuXOGhvA4bduTWwFKJL2ZL+Qy5brd1TH
 LUjSN4TQgb2a1HhOCErAV6sbo+5OK5dTL25GYXh1RrCdrQmomW36pW9jlhh7dmVYb4Rb
 Xuq2uqKfq71qhtgKEjCjqTdZAJPbCPWf9m946U6eOmBjDggUu4h+yIjI8Egg+K5ycJ3A
 oOs5Lwqy19kTJohvRjttP13COYBFrMX4Fu5KVcTINGR4W5JKH88g3m7m9pU+eieV7yY5
 YkeOu0vci/6NUb9qkD2f4Lvb8blVGeMkZY2c7NW6INSurKZZDuZeJAEpn3o47E3uYWVw
 6m9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mQqYrPQYFIDRJNtN/SAJy2t+xhyEUoAd2W8p48g17wQ=;
 b=JJXKPdEJ725/h/5PwP3G7HXLcPtFk50kF7CzoRC1ncyhFwhyacTMcsB/gTIV6dh/A5
 ASSavsZmG4Oqr1loWs+ulMgcBcdI2iG8ORkuGwCkZjv8P0U1D+rhdqOv4hH23D19lK0b
 2RKI//r11wV9At/sYaQhzAb/nZdKRaPcy6+asgWXR69Gc/FwmUEd3JbxmTIvQ2kQ8z7P
 cr3DGK8Kry4KgIWjiAw67dtwSuueqHi8OaRrt66rnrsWqv7UrTJPxz9WK4aca+jRKUlR
 ucD2L8QdpRg9P4/Q1UCrcwqIlRE3X2iPwXmkSMZN5ZC3bxNFmUQ9iVZT+aUJLUkroOXs
 pg6Q==
X-Gm-Message-State: AGi0PuZKJi9gpPCuC2TkyneJT31i6ZAspbDFUbw0GQrB8xs/glzDgw0P
 ivZPHptyEajco6blLbuXlEA=
X-Google-Smtp-Source: APiQypJz7l4igwtJb1meMfrQsLaxqn5KYdCbRys7N0lK7x/6DU1RlFfxq8c0rVr+R8v+8Msb3+0V9A==
X-Received: by 2002:a63:1d46:: with SMTP id d6mr1982542pgm.236.1588297227198; 
 Thu, 30 Apr 2020 18:40:27 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 f74sm2027363pje.3.2020.04.30.18.40.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 18:40:26 -0700 (PDT)
Subject: Re: [PATCH -next] tty: serial: bcm63xx: fix missing clk_put() in
 bcm63xx_uart
To: Greg KH <gregkh@linuxfoundation.org>,
 Florian Fainelli <f.fainelli@gmail.com>
References: <1587472306-105155-1-git-send-email-zou_wei@huawei.com>
 <4cd8f963-9292-faef-1e24-df90821274d6@suse.cz>
 <73c4cebb-467b-e5d5-89bf-8a6fe29cf858@gmail.com>
 <20200428111842.GA1159152@kroah.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <589eda5a-296b-daa1-f40c-fd27056ac4b8@gmail.com>
Date: Thu, 30 Apr 2020 18:40:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200428111842.GA1159152@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_184027_771799_2BDBD72B 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org, Zou Wei <zou_wei@huawei.com>,
 Jiri Slaby <jslaby@suse.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/28/2020 4:18 AM, Greg KH wrote:
> On Mon, Apr 27, 2020 at 10:29:58AM -0700, Florian Fainelli wrote:
>>
>>
>> On 4/26/2020 11:19 PM, Jiri Slaby wrote:
>>> On 21. 04. 20, 14:31, Zou Wei wrote:
>>>> This patch fixes below error reported by coccicheck
>>>>
>>>> drivers/tty/serial/bcm63xx_uart.c:848:2-8: ERROR: missing clk_put;
>>>> clk_get on line 842 and execution via conditional on line 846
>>>>
>>>> Fixes: ab4382d27412 ("tty: move drivers/serial/ to drivers/tty/serial/")
>>>> Reported-by: Hulk Robot <hulkci@huawei.com>
>>>> Signed-off-by: Zou Wei <zou_wei@huawei.com>
>>>> ---
>>>>  drivers/tty/serial/bcm63xx_uart.c | 4 +++-
>>>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/tty/serial/bcm63xx_uart.c b/drivers/tty/serial/bcm63xx_uart.c
>>>> index 5674da2..ed0aa5c 100644
>>>> --- a/drivers/tty/serial/bcm63xx_uart.c
>>>> +++ b/drivers/tty/serial/bcm63xx_uart.c
>>>> @@ -843,8 +843,10 @@ static int bcm_uart_probe(struct platform_device *pdev)
>>>>  	if (IS_ERR(clk) && pdev->dev.of_node)
>>>>  		clk = of_clk_get(pdev->dev.of_node, 0);
>>>>  
>>>> -	if (IS_ERR(clk))
>>>> +	if (IS_ERR(clk)) {
>>>> +		clk_put(clk);
>>>
>>> Why would you want to put an erroneous clk?
>>
>> Doh, somehow I completely missed, you are right this does not look legit.
> 
> Ugh, can you send a revert for this please?

Yes, now done:

https://lore.kernel.org/linux-arm-kernel/20200501013904.1394-1-f.fainelli@gmail.com/
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
