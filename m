Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0D8112D2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:04:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YF6g0tvXRSI94NdpESTwH6CVJjKYOsXI2sg9+qhDiqI=; b=hGmXIydx5dcPXw
	ByWWXkbNJpDUBtgxj3lOo9lUdgKOCEWd4xFyfs6GsrkQs8ubQr95CByCxdEsxEkXXeQ7/bM4dtWRZ
	fWSOZm8TB8zRJ1Ls3Q1mKkOIep3MjMxnHPHSh5T3MMxrDzxmtRtwWP81zzJ7SMKuPCYGaY7T4NdBd
	jxaA4a0FI2MdoiIsyQpsodgCFuXLLNbBMq9qrGrVBb+rqTvWv2Y6YzrpYvnyQq3TT2WuP3NPPypol
	uJiJySan1ojRy9tQz3/zfdXgImZh5kDtGjUel4e9wxUqjgy16IFR+iv41FHxcA6UYSmlr6LEAGaLZ
	lZqBwCrs8EIncu7dFJoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVG9-0004CQ-VX; Wed, 04 Dec 2019 14:04:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVG3-0004C6-31
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:04:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so7138129wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 06:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HzijHT9r/Ct9notXYYXgARGqSZH3oXbt7Q7WOaz7rdk=;
 b=WXQgkifjomLeNe3RwBKfv+FIeOt4jHNe3SXCchp28EjcSAhs5Jr4FHMe5/VG+dQUmx
 BAwUXY5/B2yYt+JjxqLMpKzVXyiOpZc+0rvOiqqeJ/IFG0BaKNNT9aSkdhSgbgZfucvB
 U2YIUHmHfc/2jPxR9sf2ic5osZLG+9XXO+1RdBHP+8SGJRcyfi7Xxt2wS7dQL/7eBNTq
 +vQv4AgIjEPK4DVoNk/aL1UUCQvpNj6Uk8T2xCAl82DIOPx2wFOxRNVCS7S4EBKG3cTg
 a+7fhO0YtVi9CGNVfX+GG/O5GZ/6B0OmcK9cDYqd18rV+hBZeYa0yRIO3eYGbYFpbCtV
 gfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HzijHT9r/Ct9notXYYXgARGqSZH3oXbt7Q7WOaz7rdk=;
 b=leZwuxODb+mYF25zZ59fa+5ceJsVUtHHlimughkI4nVGKSMSFb3O85eDFsa3nBxdD5
 SXyAISBSnOL1ZusSx8P97SvHunz/J99fMYg2xvWWb6l7XxGpmPrEQ0j3FD8erspbici3
 Jv97mOAfkytmYwff1dm4gxIGHiYeBm8haNaxkz0zTJQ6MLx+H/OkwJMF/MhEIUSlP5l1
 yHLKbEIUCPtZH4+wquqcOPZmTAyQ9jjSsIKTwToTO3cmyfP4xQYtfN8GLmvhmZaEdMXE
 eP4XJjOBXA/u8lnxEGQffsr3lbyanZgVExIq5fvodWvuWSGDZbOm1HXqfX/3XP/2/xxL
 k43g==
X-Gm-Message-State: APjAAAWJASOtzwhwjXllMpKVAd5g6NgXgWeqWPQ5tZFDuBcNJQSdX11E
 56XgZzGljRyo9gOV3t1DgAuQr4UnzrheiAvM
X-Google-Smtp-Source: APXvYqxRPXMYMFVhmUGmlonN3plY/zkM7qevKyBIemQNkTSsu79GsNrDdx+co7DAp1NC0obsz4oljQ==
X-Received: by 2002:a1c:6485:: with SMTP id y127mr39475996wmb.19.1575468236850; 
 Wed, 04 Dec 2019 06:03:56 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id a14sm8711990wrx.81.2019.12.04.06.03.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 06:03:56 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
 <a24f817e-86dc-ae32-417d-08eadc96d0eb@arm.com>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <63c92257-1915-7374-64de-0e73804167e0@forissier.org>
Date: Wed, 4 Dec 2019 15:03:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <a24f817e-86dc-ae32-417d-08eadc96d0eb@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_060359_130484_ED42DBA7 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/4/19 1:55 PM, Vincenzo Frascino wrote:
> On 12/4/19 10:18 AM, Catalin Marinas wrote:
>>> 1. "arm64: vdso: Substitute gettimeofday() with C implementation"
>> Commit 28b1a824a4f4, merged in 5.3
>>
>>> 2. "arm64: vdso: Explicitly add build-id option"
>> Commit 7a0a93c51799, merged in 5.2
>>
>>> 3. "arm64: arch_timer: Ensure counter register reads occur with seqlock
>>>     held"
>> Commit 75a19a0202db, merged in 5.2.
>>
>>> 4. "arm64: vdso: Remove stale files from old assembly implementation"
>> Commit 37a5076098c1, merged in 5.4.
>>
>> The above is a pretty random set of reverts that doesn't really help
>> pinpoint the issue.
>>
>> Since 5.2 was the first kernel where the regression was noticed, could
>> you try reverting commit 75a19a0202db in 5.2 and try that specific
>> kernel version? If this doesn't solve the issue, it may be simpler to
>> bisect only between 5.1 and 5.2 rather than across multiple kernel
>> versions.
> 
> I agree with Catalin here. The unified vDSO change is a 5.3+ change, should not
> impact what you are seeing in 5.2.
> 
> Could you please as well provide some guidelines to reproduce your scenario
> exactly? This would help in the debugging.
> 

Do you have a HiKey960 board at your disposal? Well, you can build the
whole stuff I'm using by following the OP-TEE build instructions [1],
just use 'hikey960' for ${TARGET} in the description.

The scenario is simple: build, flash, power-cycle the board. That's it.
Default version boots fine (it's based on a v5.1 kernel), but checkout
Linux v5.4 instead and the login prompt never shows up on the UART console.

Note, if you just want to build the kernel Image you may simply run
"make linux" instead of "make".

[1]
https://optee.readthedocs.io/en/latest/building/gits/build.html#get-and-build-the-solution


Thanks,
-- 
Jerome

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
