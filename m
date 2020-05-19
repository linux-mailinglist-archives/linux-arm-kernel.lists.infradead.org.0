Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1481DA283
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:Subject:From:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcaMb8nKANiH3kjlAzRsL1iRb94FIbTwAwH+ZE1QZEo=; b=Oo47ZZ7xd6iFgw
	2mtzuSSqDfdRNZA4o1w+b4pUKSxEx7j59Yrhj4aT4oLFgC7ljPuEIN+glB/UGYb1m78gyOxTZFyr1
	mxhvrts8auvfSDdwzaMtbfb9sFneHKBd3rDJKY0vQW0C0IO9sZIv1ndZl8byFWwILvf5s28lpRVfd
	uAyaCLfxORH4juCGVCJyLdj5Ft0Ctn7KxOiWD+12ttz5UxrOY1ukxSBgCdTlIigZYYV1mf99U9nZ9
	fpFE649iw32hYJPnMBU6GQPVvRjKp9fzM5mAr1GCf0o+euH7IiMlYyvjgHq2/EnkPJ66ZAJIDd5A1
	cgByfjNXbTr19Q3czpvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8mw-0001N2-He; Tue, 19 May 2020 20:24:34 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8mm-0001Mg-HY
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 20:24:26 +0000
Received: by mail-qv1-xf41.google.com with SMTP id d1so277259qvl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 13:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=to:cc:references:from:autocrypt:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BEhjl2sdMOZA0+u7BxgbzxLPOF8R+jwnsLIgVIjuNrQ=;
 b=vcfzLicSVcEJCTGWSvbckZ/Vd1G7w0WYemjhBFSHrKBLv+gc66U8GSb5LU8krom4d6
 9E+cZn179Kvh/4YaUKu+eKgTC0y8txJTN5DUmazVIz+NtU25CnUnuNBTOjBFOmPKkJtg
 nlfOJ8C/lJFAYm07FuogQ5ujzs51Cc9Vh0wdcCF66w/svFGUJ265Erzur4gV+S6LUuvV
 42GIrluv3U2BDhBRHBDAGjkBLDK00VAGjkOJrNS67YjS7JecJkO5nCEOn2rTkCTpgSnc
 DpVgmAunIi/V9oSPXhM2VIU2e+DKJfT3FpC26it4wCw9M/JwggZgqcDLy20ktPhVWkfE
 yNWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:autocrypt:subject
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=BEhjl2sdMOZA0+u7BxgbzxLPOF8R+jwnsLIgVIjuNrQ=;
 b=YhcWbpUCBw7zucgRUY52JAFE9aeCkSKixB3ZfL25jUzgxV8ZxOgm00/CODw0kv4KA5
 1roy7HnMFrkAcR1MEiR6IhxlTSrXa4wxLnvpc/YL0h1bBgj8h50h7EpbtsCR3ANm8DW/
 KIcjAwW+sMLK/i3sqGDbmgp1bcEDNu/WdvK9K4reEet7FyuOcBg0YQGGI8p04FG1wkNH
 sFBrnb1dCDSp6BjeZK4AvjVftXYAeWKsx9xCeyyvXSvQc0sOXwELL4EzOK7zAnSPbTKn
 O8t8xqgLGSaxzxbjJPs5qimllK4LORIdfZqdM4eFWf3sEnlQ0fzcqNjCiGyj7GUAj1O+
 Edrw==
X-Gm-Message-State: AOAM530LmeG0GKXQjC6dbTXVPmCfS7okOCx69dFmv+kmLb2r/kMq0v3i
 11mmy/Iscwz0de0wpiI4OE9GJg==
X-Google-Smtp-Source: ABdhPJzWg5eT4XU8PyB/lKOKtTmUZDuIIdiKz+D0SNP4XnEEUu3zuan7MH/0OqLxDQbgToY17Qe2TA==
X-Received: by 2002:a0c:f445:: with SMTP id h5mr1361198qvm.151.1589919863076; 
 Tue, 19 May 2020 13:24:23 -0700 (PDT)
Received: from [192.168.1.4] ([177.194.48.209])
 by smtp.googlemail.com with ESMTPSA id i41sm702836qte.15.2020.05.19.13.24.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 13:24:22 -0700 (PDT)
To: Arnd Bergmann <arnd@arndb.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Russell King - ARM Linux <linux@armlinux.org.uk>
References: <CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com>
From: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Autocrypt: addr=adhemerval.zanella@linaro.org; prefer-encrypt=mutual; keydata=
 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
Subject: Re: clock_gettime64 vdso bug on 32-bit arm, rpi-4
Message-ID: <0c2abcd1-7da8-2559-1e93-4c3bdd38dec1@linaro.org>
Date: Tue, 19 May 2020 17:24:18 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_132424_592723_8705A6D2 
X-CRM114-Status: GOOD (  27.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jack Schmidt <jack.schmidt@uky.edu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 19/05/2020 16:54, Arnd Bergmann wrote:
> Jack Schmidt reported a bug for the arm32 clock_gettimeofday64 vdso call last
> month: https://github.com/richfelker/musl-cross-make/issues/96 and
> https://github.com/raspberrypi/linux/issues/3579
> 
> As Will Deacon pointed out, this was never reported on the mailing list,
> so I'll try to summarize what we know, so this can hopefully be resolved soon.
> 
> - This happened reproducibly on Linux-5.6 on a 32-bit Raspberry Pi patched
>    kernel running on a 64-bit Raspberry Pi 4b (bcm2711) when calling
>    clock_gettime64(CLOCK_REALTIME)

Does it happen with other clocks as well?

> 
> - The kernel tree is at https://github.com/raspberrypi/linux/, but I could
>   see no relevant changes compared to a mainline kernel.

Is this bug reproducible with mainline kernel or mainline kernel can't be
booted on bcm2711?

> 
> - From the report, I see that the returned time value is larger than the
>   expected time, by 3.4 to 14.5 million seconds in four samples, my
>   guess is that a random number gets added in at some point.

What kind code are you using to reproduce it? It is threaded or issue
clock_gettime from signal handlers?

> 
> - From other sources, I found that the Raspberry Pi clocksource runs
>   at 54 MHz, with a mask value of 0xffffffffffffff. From these numbers
>   I would expect that reading a completely random hardware register
>   value would result in an offset up to 1.33 billion seconds, which is
>   around factor 100 more than the error we see, though similar.
> 
> - The test case calls the musl clock_gettime() function, which falls back to
>   the clock_gettime64() syscall on kernels prior to 5.5, or to the 32-bit
>   clock_gettime() prior to Linux-5.1. As reported in the bug, Linux-4.19 does
>   not show the bug.
> 
> - The behavior was not reproduced on the same user space in qemu,
>   though I cannot tell whether the exact same kernel binary was used.
> 
> - glibc-2.31 calls the same clock_gettime64() vdso function on arm to
>   implement clock_gettime(), but earlier versions did not. I have not
>   seen any reports of this bug, which could be explained by users
>   generally being on older versions.
> 
> - As far as I can tell, there are no reports of this bug from other users,
>   and so far nobody could reproduce it.
> 
> - The current musl git tree has been patched to not call clock_gettime64
>    on ARM because of this problem, so it cannot be used for reproducing it.

So should glibc follow musl and remove arm clock_gettime6y4 vDSO support
or this bug is localized to an specific kernel version running on an
specific hardware?

> 
> If anyone has other information that may help figure out what is going
> on, please share.
> 
>         Arnd
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
