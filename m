Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552041EA7F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 18:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kRuMcA0RE5AgvgMytPVzPGJGY313FkJMi4saaAwA/c=; b=rKMMeZ7eNjvcUW
	KvkSzMnkDtVKCYVx12E+gZvxhY9ACoMXNKxMbR1bzIh4Fjy8Sl8ulwBtdlhFteiLgcpWycs/xn1KF
	7cw8GesT6PS2KhxIxi3AO7fAX8PRZsyGDiJb3Tj1fPrqG2M22A4vZV4a6NXRaQDLG9MIPMtQfJmVy
	z3J+zrdG52t79PevYIsP2EnZ4aZabXtZW1QE9nXHiNCocqfbF8P/+1bQcfqKdU7gNZcxo46BPbSZ4
	Xc60hmjIWD+tjO787Sk8UaQ4hzkc5csRVd8HZUMXvjmvWADof7S30xhvWaoG6G/z6WZq+oJg7DhUe
	HkxgS1TI/jGg2I1w0qCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfnew-0004b6-Ts; Mon, 01 Jun 2020 16:51:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfner-0004aU-Gh
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 16:51:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id a4so3755136pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 09:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yZr/0x/0tt7YIp5QqrXuOkQs2TAa8GG9H/kX3nBUVZM=;
 b=LTKqkuHwItefliDFh0i3M28r5LldD4UxdOom1/dFZJWn7DNZ2jYzmEYYGf48abghoc
 Q8ET1eXKbIewq48D2Cby8X629fVkKtVyqG7c5rCx1liRWAEMIk5Uf5eC01jGanxVG5sh
 r1yZf/7FG63oH017s1Bx2kVvf+6/heq7qpQ8zy3Z7TN/y+zlFX1PBtLi1bga/m4mnF37
 zIkoqgGOeGx7MVtRpwT46Pdwp5WJ1NDFA8u6IgZ9B/aU4UH3a6pWWkMkprMaZlb66Mnc
 aN1xigcnY1bI+nWQHOZrWOnWgKyhb0aZL6WNvKGm0kMR88S5V8740Dl1iJTn2GqSeYnp
 UouQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yZr/0x/0tt7YIp5QqrXuOkQs2TAa8GG9H/kX3nBUVZM=;
 b=hz6QDNtbsn61sWDtIopEgMg8K2CdOT7Grpg49CYjE8ZH30LJ7retnDhB1TeC6mE0XS
 DswsoIiYL8vjUxCje/jMnSDhxabx40V6mYsviZ52tprWlZQXwSFAz7feAihDaNSiSpq7
 ckyLi5VyFab5fHvqjnKtEwBKrcuySkKgaxRpCACe9I6Jpv4qjgYKkAY9FwhCN/dzFZha
 pltMuOZYUEVaCljjwspIkKVQ9TSbKgSO/pn3QV8Tg2qMB3M1AuyCn21+bqEa9LvYTRWh
 4lj+tPgg4GRZ74mj5fFA8TJLrp+EiNQWFcVY0BJyW30xXl6zVcDJugGUv2XKJh81JLi1
 3yTQ==
X-Gm-Message-State: AOAM531h4H8Z8SBaXcwE4LPy9MArxBdfYghTLKP0ngjrPJUOfGZHczUj
 WGZHy6zxUUqQh5rSVusrqVZ2MoS8
X-Google-Smtp-Source: ABdhPJx+acv+hHlJ2i0wDgu56fmz2mk3cCa5UhPzMM0Q98cuCINjXCXjmbaG3d/7m6Ot75/akYCUBA==
X-Received: by 2002:aa7:9ad5:: with SMTP id x21mr9278211pfp.257.1591030286588; 
 Mon, 01 Jun 2020 09:51:26 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i34sm17397pje.10.2020.06.01.09.51.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 09:51:25 -0700 (PDT)
Subject: Re: [PATCH 0/5 v2] KASan for ARM
To: Ard Biesheuvel <ardb@kernel.org>
References: <20200412002407.396790-1-linus.walleij@linaro.org>
 <107be5e0-3acd-1bf5-d1dd-e27f796e87d9@gmail.com>
 <CACRpkdZ5Dd92QYtKU8X+HHBFXXWm5m16htZ7vxeMTanxTQ=L1A@mail.gmail.com>
 <25cdd13f-1f95-1ca5-c28b-917538643590@gmail.com>
 <CAMj1kXGNSogYOBxZfoTq2uMtY-piZ3PePFVCs3-R5nBEvnx-Rg@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <06784226-a1db-875f-1165-30579421bb8a@gmail.com>
Date: Mon, 1 Jun 2020 09:51:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CAMj1kXGNSogYOBxZfoTq2uMtY-piZ3PePFVCs3-R5nBEvnx-Rg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_095129_569534_1C412F96 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abbott Liu <liuwenliang@huawei.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/1/2020 9:40 AM, Ard Biesheuvel wrote:
> On Mon, 1 Jun 2020 at 18:37, Florian Fainelli <f.fainelli@gmail.com> wrote:
>>
>>
>>
>> On 6/1/2020 1:55 AM, Linus Walleij wrote:
>>> On Mon, Jun 1, 2020 at 6:00 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>>>
>>>> Since this patch series has had many people trying to push it forward,
>>>> how about we try to get it merged as-is (minus bugs, see below) with the
>>>> caveat that TTRB0-less CPUs are not going to be supported for now and
>>>> later on, this gets lifted if we find a champion who can get that working?
>>>
>>> Oh I fixed most issues in the v9 patch set, we ironed out the actual problem
>>> with ARMv4 and ARMv5 with some help from Ard, Catalin and then Russell
>>> suggested how to also improve the way we get taskinfo from sp in the
>>> assembly.
>>>
>>>> I tested this on an ARMv8 system (Brahma-B53 CPU) and an ARMv7-A system
>>>> (Brahma-B15 CPU) with and without ARM_LPAE enabled and neither were able
>>>> to boot unless KASAN was turned off (outline instrumentation), I don't
>>>> even get to the point where earlyprintk is giving me anything which is
>>>> odd. Have not looked at the differences between this version and the one
>>>> I had sent before and have not hooked a debugger to find out where we
>>>> are hung.
>>>>
>>>> If you have a Raspberry Pi 4 you could use it as a test system for ARM_LPAE.
>>>
>>> Did you try to use the v9 patch set on top of v5.7:
>>> https://lore.kernel.org/linux-arm-kernel/20200515114028.135674-1-linus.walleij@linaro.org/
>>>
>>> I need to rebase this on v5.8-rc1 once it is out but it is working on all my
>>> targets now, there is also this git branch:
>>> https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git/log/?h=kasan
>>
>> This branch got me a bit further, but still failed to fully initialize
>> (see attached kasan.log), on another platform with a slightly different
>> memory map, I ended up getting a different error (kasan2.log).
> 
> How can you be sure kasan2.log did not detect an actual bug?

I should have been clearer, my email was just sent out unfiltered to
report the status on Linus' branch, kasan2.log may be showing up a
genuine bug indeed.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
