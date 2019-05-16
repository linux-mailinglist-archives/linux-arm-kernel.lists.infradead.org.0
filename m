Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CC5207D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ueCY/Ol+mhmFwp99598N7vhqCzRKOFMdODpAOYAz+UQ=; b=kB7v27bK+NzWDUMxUFlFLhQCR
	mHwa6cV42L8a1sDtSalOlTZXnko/fwKbSjyXIjn5R+x+QJexu9hlZrwgRdsVtzlVdl0nk0ysxSbTz
	bdciGzCv11D5YgF9+jGcaO0HLt63pG0w8oct4djzYltIj3q+GDZesMmEKfsLGCD4JPPxiSWHHeGq8
	Iq3xlxlZYq0Ffh927t4UAiOpRkXUxLcoMwTSxxxO5/54iY6bEE2Plei3f6Sv+AyrUQzSNilmySDPs
	RPsu2hPJCS3QKuGf2us95isMrJcTdrWlkRYHgdIoLXv8ZyU0eKgOARq8NZnLqvbRr/eIVy+9kpOGa
	3nbOk5xTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGFZ-0003oV-Ty; Thu, 16 May 2019 13:16:45 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGFR-0003nk-IL
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:16:39 +0000
Received: by mail-qk1-f195.google.com with SMTP id d10so2208033qko.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 06:16:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Xbcsfs9fPhPAxid9VLXerkrXA7gIRwceIo40+cdxdOM=;
 b=LdcvOlzulO5uUcTFX0yNMeZig/hL1b1yJsEM2nxuU7z+VtV21+WdEe7zjx+ojepAoz
 ifmNlY6tRuwjZ0eCvMsruMfHQFJsM0y4RG1/ArLA3Rsw0cltTXEleCXsFTbpQ4xP66zw
 OdJg7EreLkevK9caFwCwF/YGY/uh/dlc8BW4YN8p7qUgUEWNjPPGq1NLzvmaesFex+P4
 VEE8D5g8DpCwR0u7MC93Q7NEASFnFUOm0eIYuy4qOkJjUQG5xaEllyXf4x48M021zv3x
 KYY0Znj/nuMaW+dtYWIGgVq+ffN19gLZs5ZNCXnDY9kodtW7+D2e/resHlbCmLZFD+ZB
 eDKA==
X-Gm-Message-State: APjAAAV36d5fS77z1WeJQNKa7zQGLd8Acdn0T2RjxVEIeXT2slL033MH
 8GiuGmIAAIAJDARpAnQwiXQnmLxr50Q=
X-Google-Smtp-Source: APXvYqw9TWQ3IfH3iSJSDru28VPmlBF3K1DIMQfkSHuQda0F5JApl5cueYi9JH5aELT2HWEmikJyjg==
X-Received: by 2002:a05:620a:1116:: with SMTP id
 o22mr38219629qkk.23.1558012594687; 
 Thu, 16 May 2019 06:16:34 -0700 (PDT)
Received: from ?IPv6:2601:602:9800:dae6::e443? ([2601:602:9800:dae6::e443])
 by smtp.gmail.com with ESMTPSA id d127sm2471936qkg.69.2019.05.16.06.16.32
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 06:16:32 -0700 (PDT)
Subject: Re: [PATCH] arm64: vdso: Explicitly add build-id option
To: Will Deacon <will.deacon@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
References: <20190515194824.5641-1-labbott@redhat.com>
 <CAK7LNASZnRrSsZSrnw41kintGfmpyj3iz-Vjduk7w3k9iSih-w@mail.gmail.com>
 <20190516104619.GA29705@fuggles.cambridge.arm.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <fb9891e6-3bc4-5bef-6575-5c272082085e@redhat.com>
Date: Thu, 16 May 2019 06:16:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516104619.GA29705@fuggles.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_061637_609981_163958B9 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/16/19 3:46 AM, Will Deacon wrote:
> On Thu, May 16, 2019 at 01:58:56PM +0900, Masahiro Yamada wrote:
>> On Thu, May 16, 2019 at 4:51 AM Laura Abbott <labbott@redhat.com> wrote:
>>>
>>> Commit 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to
>>> link VDSO") switched to using LD explicitly. The --build-id option
>>> needs to be passed explicitly, similar to x86. Add this option.
>>>
>>> Fixes: 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to link VDSO")
>>> Signed-off-by: Laura Abbott <labbott@redhat.com>
>>> ---
>>>   arch/arm64/kernel/vdso/Makefile | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
>>> index 744b9dbaba03..ca209103cd06 100644
>>> --- a/arch/arm64/kernel/vdso/Makefile
>>> +++ b/arch/arm64/kernel/vdso/Makefile
>>> @@ -13,6 +13,7 @@ targets := $(obj-vdso) vdso.so vdso.so.dbg
>>>   obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
>>>
>>>   ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 \
>>> +               $(call ld-option, --build-id) \
>>>                  $(call ld-option, --hash-style=sysv) -n -T
>>>
>>>   # Disable gcov profiling for VDSO code
>>
>>
>> I missed that. Sorry.
>>
>> You can add  --build-id without $(call ld-option,...)
>> because it is supported by our minimal version of toolchain.
>>
>> See commit log of 1e0221374e for example.
> 
> Ok, so I'm ok folding in the diff below on top?
> 
> Will
> 
> --->8
> 
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index ca209103cd06..fa230ff09aa1 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -12,9 +12,8 @@ obj-vdso := gettimeofday.o note.o sigreturn.o
>   targets := $(obj-vdso) vdso.so vdso.so.dbg
>   obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
>   
> -ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 \
> -		$(call ld-option, --build-id) \
> -		$(call ld-option, --hash-style=sysv) -n -T
> +ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
> +		--build-id -n -T
>   
>   # Disable gcov profiling for VDSO code
>   GCOV_PROFILE := n
> 

Looks good to me.

Thanks,
Laura

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
