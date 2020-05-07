Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655431C9BDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7fBvYnD4+aagwNZS+zy2ziEi8X2W4ndplgUIfaoENs=; b=qEwTkHQr5YrcBG
	nTa4RmuLRggfkUx42diQNRFvNSz0FspHzYUhwJkhhNjh34p/1V1BXbHb1mI82EC2hIoQ5uJWVwYHZ
	WYtIPa1tAm7bORTMsZ4GUSEtYnLywY6krynd4zLvSA9Gaylt1YIgLQhV10ixyIBF4Lhmqg7tHnrD7
	toKcNeZQfNeHLweQvZp4UXNHEQoXkyfaGgKtZdva+W2Vgv7r/Gj0bvIvfsWb24cNHIOqKYxEm/kNe
	17kC3U9zNaaDg6nB2H1Pmi1qUGcGH5yYwrraDBjbNl7Aj4qY1WO1XO029KEmm1etLQ6p6axGyevjx
	63mhKHROanCzVTsMGghQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmsF-0003Se-IZ; Thu, 07 May 2020 20:12:03 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWms8-0003Rh-8n
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 20:11:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id 18so3544220pfv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 13:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=iH4BVUQqr5MUkSmWtkNT/CyTXQxGh6Qtal9sIrq9n1A=;
 b=XyczQDiGsXvZ81Fl48KF4Co5Dxht7R+CdEyATfPKReiLBVt0/wYUnBu/8m4J7mq3sl
 EGP9oBM/pYd/DaoTCKQSpHz8GgrqtGpOWErUTdYadMSpoTw3UnRtdmDSfi1eJ0s/xOyh
 swcyF87kjpmbOod2DLwzQWy9X1dzALh+d2vKxmAuBd09httluJ4kxJ47r037Fkf0FQsB
 l4KDzr41t2I/aDMU0Oo5jbK2GnuI513QOcN7CrYpsRTDkU+pxxe4AIUd6wVUv11wrjs6
 W2DosLcnp8CLzAHqbHdagorBckn2cyEfmDFSKWtuN9rgNJqSZODHdXcZqiS0vxVAPV5W
 ne/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iH4BVUQqr5MUkSmWtkNT/CyTXQxGh6Qtal9sIrq9n1A=;
 b=rD2IJ/XuzY0PdTXvELLV3+KJNWVv29j/nEuJhOSuaYTE3WYyJNtJOfB6NVJAQ9ygc1
 cV8CYyQWD7oBNZcu088IZbuky2AuaJFvwMs9QlWLWtPUQGgfiF/XyBzsjH1iW79oQaFX
 QiaIC5s0ywEpp0E8s/z18GNahleExmYiwFSS2WPlqE2KoGU8aVl9ysp9zOgEg5/9TFvR
 DhNmSWdQiXzfgeZTZn6/xv5CbEEd1qqNHvtuYOw4FT15lPnIHUQiwwWuC0qSU05ygE2Y
 J85Ur2dxANMYD9hk7VZWz6LJx3i8IJ1XSWqYO126jR7GFN5X/8TBZiIgw7XvtBnBPx0z
 KzHg==
X-Gm-Message-State: AGi0Puaqjtgxcm9ZLMgmK61+2pX7W8Ki08nlHsEC08nkRS8jBi784xb6
 q9nS842an/1pSjR0ejPKgLA=
X-Google-Smtp-Source: APiQypKvktF3srF9YY4MaDyyvKezvnBBk4O70ZbiyK0m6vuRJxUY101VkxXT7Ex5ftBqoFFrz/RZwQ==
X-Received: by 2002:a63:f960:: with SMTP id q32mr12306969pgk.357.1588882315315; 
 Thu, 07 May 2020 13:11:55 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v7sm5421029pfm.146.2020.05.07.13.11.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 13:11:54 -0700 (PDT)
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
To: Mike Rapoport <rppt@linux.ibm.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
Date: Thu, 7 May 2020 13:11:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507072711.GB683243@linux.ibm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_131156_333689_7085EF0E 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 rmk+kernel@armlinux.org.uk, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/7/2020 12:27 AM, Mike Rapoport wrote:
> On Wed, May 06, 2020 at 04:50:09PM -0700, Florian Fainelli wrote:
>> From: Gregory Fong <gregory.0xf0@gmail.com>
>>
>> ARMv7 chips with LPAE can often benefit from SPARSEMEM, as portions of
>> system memory can be located deep in the 36-bit address space.  Allow
>> FLATMEM or SPARSEMEM to be selectable at compile time; FLATMEM remains
>> the default.
>>
>> This is based on Kevin's "[PATCH 3/3] ARM: Allow either FLATMEM or
>> SPARSEMEM on the multi-v7 build" from [1] and shamelessly rips off his
>> commit message text above.  As Arnd pointed out at [2] there doesn't
>> seem to be any reason to tie this specifically to ARMv7, so this has
>> been changed to apply to all multiplatform kernels.
>>
>> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-September/286837.html
>> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-October/298950.html
>>
>> Cc: Kevin Cernekee <cernekee@gmail.com>
>> Tested-by: Stephen Boyd <sboyd@codeaurora.org>
>> Signed-off-by: Gregory Fong <gregory.0xf0@gmail.com>
>> Signed-off-by: Doug Berger <opendmb@gmail.com>
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>>  arch/arm/Kconfig | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
>> index 5986277296c3..7bb5264a9c3a 100644
>> --- a/arch/arm/Kconfig
>> +++ b/arch/arm/Kconfig
>> @@ -312,6 +312,8 @@ choice
>>  config ARCH_MULTIPLATFORM
>>  	bool "Allow multiple platforms to be selected"
>>  	depends on MMU
>> +	select ARCH_FLATMEM_ENABLE
>> +	select ARCH_SPARSEMEM_ENABLE
> 
> The logic in mm/Kconfig is quite convoluted, so selecting
> ARCH_SPARSEMEM_ENABLE will automatically make SPARSEMEM the only option.
> 
> On top of this you would need to enable ARCH_SELECT_MEMORY_MODEL, e.g.
> something like:

Yes indeed, thanks that does allow me to select between flatmem and
sparsemem from menuconfig correctly now.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
