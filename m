Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE737B3B1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vaM5tJayesEh+KK3yz6NCNZf3CGrxfLwh08LVvDjYWA=; b=UCqNzi89Jy3jdpyWViM+ocLXC
	fQA6m6WVH9k/93r4JsNFI0+kg+j47hePouZ4BjGx/CeKJ8NdOWEAHONJms2TcI2eI+zUL56GgoJVA
	DswZO0OK7axu8QHBX90MkZ7G2ruxXbqusZhdTvcaAULIVo/iwb/YrcCzR9koSMq6Q1aGnF+zVi+IQ
	pDUR6XaOfsWDPNz+GrgLldiJbZaNtIPcYxdDYYykcr6tl3TtHcePEQS8qOPGzAEuPjTednM7v5oR8
	/rJYhNbt4xyF9dyuX8XwTZusfAkSyljvbV0HDWIOsyGEDed5TnrQ2xnGHFsvSGllm772+eKwYex2c
	/X3gdVE+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qsY-0006lY-Tk; Mon, 16 Sep 2019 13:17:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qsK-0006lA-UW
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 13:17:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id x127so22986185pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 06:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MjQNGhXyoaNi7Ay7kNVBn/RrtRO16elkvB5c9bQH3Ng=;
 b=SYLsH1zdYx57s482sWVsKSF+XeD7VvoNkey5U1eVajFgPK8kmYPyn3f5gFcvLHHk6p
 Hlp/7O6ReChutEM4UnVYdCn2Bu0A6fkvud3HWeOnZ9GIcdDT7d74yANT1TS7HCDU5dUF
 gfCVY0klDO1nG8E+b9beCtvCPTI3ujkQIexdKXh3oPbxNCrBnxHQEO5x6yhwtuOpQ9Rw
 TyomXjmEkMLihQMJSpVktAcRmFbnMfd69cfA0PiBEiTFh7kRyDJ6u31swjN0DPTHmc6/
 2A5etCKnUhuNqeKQ2uDTXkibkWD2wpD1xm3XwsN2gqy6zjegAojKbuDihzqMIjnC1Ov5
 /yNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MjQNGhXyoaNi7Ay7kNVBn/RrtRO16elkvB5c9bQH3Ng=;
 b=CTj8atwS9ccWP3a/hQ7hlYFN2Sph4k0YwlKsRPFdSCBcyiwH/88UoC3KExxc4JxhVH
 Ku8EyVh+Q7Jbozm9f5udPsAhWqxFcwsfK9iETAbRDGMAFAyTyCWbjAGJ43IzIcYZGtc0
 tL9uzo8EdhKZon3xNx9HiL86aBeLvRogMC3ZMcC3bsdzSbRWgz1sh+IxzUjrTxtyvpf/
 VPLaeDQAqTyuRQ7hdLf5yZ1q82RRazC29pQjlyc/v6YIfq+/afTz75IjWg+7Kr2Bc8j9
 dk3lLy11J3MJVUOahfNbyxm8hQ1zy5yBCYnKxMBjjUPkH5XVWfDODxqjvp64Ej/NC06z
 OQ5g==
X-Gm-Message-State: APjAAAVeTKcUAdmR9I1MmFWbELqHoukVBPnGuRXOWRKkAMSs+FMn02hB
 r3rDCHfzWb5UXmILb0ZcJZRSyEdJ
X-Google-Smtp-Source: APXvYqwckFq6sIHAg9OHkleNo4ZFt8VL66JtMi1tyaXaSMHw+Aii21E3b+iAqnfcYHfZEFGZXFdG2w==
X-Received: by 2002:a17:90a:9ab:: with SMTP id
 40mr20663608pjo.38.1568639823740; 
 Mon, 16 Sep 2019 06:17:03 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 v43sm13446903pjb.1.2019.09.16.06.17.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Sep 2019 06:17:02 -0700 (PDT)
Subject: Re: [PATCH 0/6] ARM, arm64: Remove arm_pm_restart()
To: Arnd Bergmann <arnd@arndb.de>
References: <20170130110512.6943-1-thierry.reding@gmail.com>
 <20190914152544.GA17499@roeck-us.net>
 <CAK8P3a3G_9EeK-Xp7ZeA0EN7WNzrL7AxoQcNZ8z-oe5NsTYW6g@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <056ccf5c-6c6c-090b-6ca1-ab666021db48@roeck-us.net>
Date: Mon, 16 Sep 2019 06:17:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3G_9EeK-Xp7ZeA0EN7WNzrL7AxoQcNZ8z-oe5NsTYW6g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_061704_984197_EFEC281F 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Thierry Reding <thierry.reding@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/16/19 12:49 AM, Arnd Bergmann wrote:
> On Sat, Sep 14, 2019 at 5:26 PM Guenter Roeck <linux@roeck-us.net> wrote:
>> On Mon, Jan 30, 2017 at 12:05:06PM +0100, Thierry Reding wrote:
>>> From: Thierry Reding <treding@nvidia.com>
>>>
>>> Hi everyone,
>>>
>>> This small series is preparatory work for a series that I'm working on
>>> which attempts to establish a formal framework for system restart and
>>> power off.
>>>
>>> Guenter has done a lot of good work in this area, but it never got
>>> merged. I think this set is a valuable addition to the kernel because
>>> it converts all odd providers to the established mechanism for restart.
>>>
>>> Since this is stretched across both 32-bit and 64-bit ARM, as well as
>>> PSCI, and given the SoC/board level of functionality, I think it might
>>> make sense to take this through the ARM SoC tree in order to simplify
>>> the interdependencies. But it should also be possible to take patches
>>> 1-4 via their respective trees this cycle and patches 5-6 through the
>>> ARM and arm64 trees for the next cycle, if that's preferred.
>>>
>>
>> We tried this twice now, and it seems to go nowhere. What does it take
>> to get it applied ?
> 
> Can you send a pull request to soc@kernel.org after the merge window,
> with everyone else on Cc? If nobody objects, I'll merge it through
> the soc tree.
> 

Sure, I'll rebase and do that.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
