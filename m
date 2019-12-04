Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DED112C6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:16:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4JLaD/HoSHBE8zdFbVW/jOYtGK1q/oFxGvQz9r+y+A=; b=rndI7ifP8ZXsN0
	FiUK1PCNzh1ZosYloCh9hUF5lgzdFbdYnOHKUJANXstnrXbVV8v3P6U3Flgloj4hgySzqpJqR2ftk
	OwiLtPWOF3Canoz7Tt+NX3pBb70GBiv4hkAzE2O/6C+Gd2G2te95c3nOcJcycEWyfwwWT+hMOD5Ka
	TP4TslkEwCaoaOPc0sdAKJ4RwL4+Ws1J6Lbmsb2TuAz+j1OlZb7zdaO8Y63D8kX/WzP2YsLGg37Xl
	UiPNzLOEUwpQhtg5ylx4aZl7fThbbOZIhhxC8HrVzCxhKZ7nwnuH/nxcpcLLTO7aqAl2su981rQ7X
	P61+BTqXpJlT/kaUEqvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUVf-0002LS-Uz; Wed, 04 Dec 2019 13:16:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUVY-0002Kx-MP
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:15:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so8543755wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 05:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lg0wcQ9qSliL/16/yUG7yuxbY838eryV6jlA7T+y1eE=;
 b=is5xur2kiIPMlfEIBksGoIbup7rmve9Y8Kksbr0wbd6Q7VkuqeKBi63wJwXUA4FJVV
 fykF3rWQzRKVy43/BrFsPOhsQDpgTIy26xFYvdGSrNTXCt7aftofYWBZ50jESnwAT8AL
 QR94QKhaWCH0gFVj1HqULXbrxm3kqytQ4v5i+WRCChW3PvOsOsThbhzxqxomw6/5v7MH
 zjyS9VZUgNx2SsOIP1D2Qisz0oDXYWkwJk/Apvby82qW6rjhgNSiYrTTxTJeMrm6DJdW
 iMUN1oHu50zBrcRvDHUzGWnNtTnUKBI/62Bsk+ZrW5lA9SA6loj8zzH+jPCaZbWPEENk
 KA9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lg0wcQ9qSliL/16/yUG7yuxbY838eryV6jlA7T+y1eE=;
 b=onB68AtHwTAhpNwxFNO160KWSO9uDkRWpZn6rZVRqFRkpU18ZtouF4cRL2s2VLsgYB
 9U3DeMfmfrcEE+J0H0eoBCSIgGKLrYMM72cE4Gsb+QoUaDBm+IxOj8a8iaikNeA8+HZW
 o2DAVJ0tQI5mlgrXsUSvO/vEWzqJMk/eQjA/SBaEr8Cow8fwEcInRNr7IEBoOoKE91oE
 e8Ip6vs3gkJHyVfelnsoEj+wgIP2pHosbuJONZ5Yd6HQBLVk8ovoxo3X+M1pDSa5Fagp
 G7+0qvecah2ne0gk4QNyGWMfLRYVLqZ6hrX2XoOwAKKWcmuZTibwGSy0j7A+EVdkri/n
 PqRQ==
X-Gm-Message-State: APjAAAXfwuvGA+6cmgeWFqngmLaWt7YRX9V9TJtcv87DOjBCGfZN/M5Q
 dFEe/LXNvN7Iq2KOXafu4olI2nTPBUL792N8
X-Google-Smtp-Source: APXvYqxj2ywho1nhUq5Uk2On4PrBguqJCiZw9MgC9iN912GAC5j9Opagy8rGfie6nmkuRuZeOYonaA==
X-Received: by 2002:a5d:438c:: with SMTP id i12mr4129149wrq.196.1575465355041; 
 Wed, 04 Dec 2019 05:15:55 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id l17sm7860244wro.77.2019.12.04.05.15.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 05:15:54 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Catalin Marinas <catalin.marinas@arm.com>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <1c5e497f-4be0-e1f3-4d6d-fed9470d0406@forissier.org>
Date: Wed, 4 Dec 2019 14:15:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191204101851.GC13081@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_051556_728574_E70F4C35 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 12/4/19 11:18 AM, Catalin Marinas wrote:
> On Tue, Dec 03, 2019 at 04:43:22PM +0100, Jerome Forissier wrote:
>> Has anyone successfully run kernel v5.2 or later on a HiKey960 board?
>>
>> For some reason, anything past v5.1 doesn't work for me and I could not
>> figure out why. The symptom is it never gets to the login prompt. The
>> root FS is a Buildroot-generated one, and prior to reaching the kernel
>> the board runs TF-A, OP-TEE, UEFI (edk2) and Grub.
>>
>> I tried replacing /init with a shell, in which case I can type a command
>> but whatever it is (even a simple "ls"), the command hangs on exit and I
>> never get back to the prompt.
>>
>> Then I started bisecting, that was quite painful but I found several
>> problematic commits. I ended up reverting the following (in this order)
>> to be able to boot v5.4:
>>
>> 1. "arm64: vdso: Substitute gettimeofday() with C implementation"
> 
> Commit 28b1a824a4f4, merged in 5.3
> 
>> 2. "arm64: vdso: Explicitly add build-id option"
> 
> Commit 7a0a93c51799, merged in 5.2
> 
>> 3. "arm64: arch_timer: Ensure counter register reads occur with seqlock
>>     held"
> 
> Commit 75a19a0202db, merged in 5.2.
> 
>> 4. "arm64: vdso: Remove stale files from old assembly implementation"
> 
> Commit 37a5076098c1, merged in 5.4.
> 
> The above is a pretty random set of reverts that doesn't really help
> pinpoint the issue.
> 
> Since 5.2 was the first kernel where the regression was noticed, could
> you try reverting commit 75a19a0202db in 5.2 and try that specific
> kernel version?

Ends up with a kernel panic [1].

> If this doesn't solve the issue, it may be simpler to
> bisect only between 5.1 and 5.2 rather than across multiple kernel
> versions.

75a19a0202db is the first bad commit. Its parent: commit 2f1d4e24d91b
("firmware: arm_sdei: Prohibit probing in '_sdei_handler'") boots fine
[2]. Since reverting 75a19a0202db in v5.2 does not work, I suspect we're
dealing with multiple problems. As I said, the set of reverts above is
the best I could figure out, and believe me I spent several days trying
to troubleshoot this :-/ (that being said, I know nothing about the VDSO
or the arch timer so I could not try anything meaningful other than
reverting some commits).

[1] https://pastebin.com/U4iHLrc8
[2] https://pastebin.com/bLgzJYwE

-- 
Jerome

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
