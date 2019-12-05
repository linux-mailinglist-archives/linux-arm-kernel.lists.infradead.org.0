Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D47113C4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 08:27:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzm5RAZq0FY1lIrca5KT93VYJ39Sq9UwQlVrhwDatxY=; b=szVDhC1G8JCe5b
	z+NS0RPY9LW1ilbgIeVCVG1lLIvmfv+GkxeuN0rVwEGJa8wrgBR3RCG+WZ1SGUmE8zBlgAY0iTaxS
	6/mwVA3oT8W+l+5UpmFijSlPSnWHxL1RF78R6v48MQYkqWxm9bTYpUPpzSVVipQfnVeUBhNFuPnGd
	Id5ovqSSJOO7oaWdBHcD/23wv53HcZYw+Gb6fp7/dahXZTTxwQhMU2IusBIPWZF2ioScH+loUCGBN
	flN4owHiOGF4Abx8Gs+Sq8KkerEJvCAcSvKXt+qx26YwF5o9dhKSCWJuy4IN6Uuy2pa2/bNtYsVfm
	od7coZ6qFfXt6VH/OL7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iclXQ-0007GD-By; Thu, 05 Dec 2019 07:27:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iclXI-0007Fl-SR
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 07:26:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so2174422wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 23:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7GHFAgzkW+1n2wNzScTkta9rRLmZJ7I+Aa9V26HNQJk=;
 b=QhbQVjYoyOS9sL+QXpPlsM9WVJt8FjQopvp1hvX3BnvvTQgwsHN80WBhRs4lq+NA6i
 UyTW4aDvgYAjI5x8SJz0B/HPTPPrntE7FEzLYV+2WHhv3lql0V8ilFdefpQgECxEktm9
 Mj1IDJfuZvfp0EQ4lME6l9VWTGUoo8qexI8VLt3H1a/qce4aSByH/Dnen18yZZZbEtWL
 PZxWwmMMpn5kW6wDvgGxUiaj3n/SsWbuAzYrHBSe3jZiEmhL+mwoxL9SJUpxBIn3NNIq
 F6Ds+2VQs/VjXgqMORHqTvMcsMAPJB4fr8PCdm/ZTxG2Xk1e0WboNcMEmAwjJfGx+7VZ
 8JQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7GHFAgzkW+1n2wNzScTkta9rRLmZJ7I+Aa9V26HNQJk=;
 b=VGxKOV7wDcfIfXYqY/fNYJsdptb6etSr7tVC/78XCbE1DBEA10Ztgk/1tsD5fycnb0
 Ps5VmnokRvE2m5ccwVhbpo++kridQHIlr3gXXnA1WOzkpQ7j9MZtVrFw06S555PkyIqC
 C6BT3YH6f82YEktcYU+DMSc62dhZ0w+dNh7XT6qt6rgVVMbcuWI8GMKwJpBmtbW4I2yE
 ROIQ0cBrFnAznZik/aVsaOhvtQPzft5YDmqOyyddBa1v6+RDdiYv8Mu7xv4l+n8NcPyS
 +3FOPlz4gZCaIzqMev71Fm0rkUoYHksINgXNkecgLGypaoEjC/Z8iGTUNUcVYrmwFINd
 iBYQ==
X-Gm-Message-State: APjAAAU7+PwOSDnFNwsoRJHoRT8p26mQleIaNr2jyJcwF3j2EUca/GgS
 Vdd/kU4XsuJU/G9PdhPEQvCYAg==
X-Google-Smtp-Source: APXvYqxmJWLiXGsG8oScNz3zn9jlT4zqzovsKFOZVoV9Etewa1SXYjpieSm1lemlQ9NN61qo69h3Qg==
X-Received: by 2002:a05:6000:11c3:: with SMTP id
 i3mr8266643wrx.244.1575530810547; 
 Wed, 04 Dec 2019 23:26:50 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id l13sm9375022wmh.12.2019.12.04.23.26.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 23:26:49 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Will Deacon <will@kernel.org>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
 <1c5e497f-4be0-e1f3-4d6d-fed9470d0406@forissier.org>
 <20191204142824.GB26730@arrakis.emea.arm.com>
 <226a53f8-9404-1aa0-ed44-22e2157e4521@forissier.org>
 <20191204175726.GA28736@willie-the-truck>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <d7481911-9f5f-7f52-0731-0b123c384b08@forissier.org>
Date: Thu, 5 Dec 2019 08:26:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191204175726.GA28736@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_232652_945099_8084D6C3 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/4/19 6:57 PM, Will Deacon wrote:
> On Wed, Dec 04, 2019 at 03:58:57PM +0100, Jerome Forissier wrote:
>> On 12/4/19 3:28 PM, Catalin Marinas wrote:
>>> On Wed, Dec 04, 2019 at 02:15:48PM +0100, Jerome Forissier wrote:
>>>> On 12/4/19 11:18 AM, Catalin Marinas wrote:
>>>>> On Tue, Dec 03, 2019 at 04:43:22PM +0100, Jerome Forissier wrote:
>>>>>> Has anyone successfully run kernel v5.2 or later on a HiKey960 board?
>>>>>>
>>>>>> For some reason, anything past v5.1 doesn't work for me and I could not
>>>>>> figure out why. The symptom is it never gets to the login prompt. The
>>>>>> root FS is a Buildroot-generated one, and prior to reaching the kernel
>>>>>> the board runs TF-A, OP-TEE, UEFI (edk2) and Grub.
>>>>>>
>>>>>> I tried replacing /init with a shell, in which case I can type a command
>>>>>> but whatever it is (even a simple "ls"), the command hangs on exit and I
>>>>>> never get back to the prompt.
>>>>>>
>>>>>> Then I started bisecting, that was quite painful but I found several
>>>>>> problematic commits. I ended up reverting the following (in this order)
>>>>>> to be able to boot v5.4:
>>> [...]
>>>> 75a19a0202db is the first bad commit. Its parent: commit 2f1d4e24d91b
>>>> ("firmware: arm_sdei: Prohibit probing in '_sdei_handler'") boots fine
>>>> [2]. Since reverting 75a19a0202db in v5.2 does not work, I suspect we're
>>>> dealing with multiple problems. As I said, the set of reverts above is
>>>> the best I could figure out, and believe me I spent several days trying
>>>> to troubleshoot this :-/ (that being said, I know nothing about the VDSO
>>>> or the arch timer so I could not try anything meaningful other than
>>>> reverting some commits).
>>>
>>> Thanks. There could as well be multiple issues. Since commit
>>> 75a19a0202db is cc stable, could you please apply it on top of 5.1 and
>>> see if it fails? I don't have a HiKey960 at hand to try this.
>>>
>>
>> Fails indeed (panic): https://pastebin.com/F0jpktii
> 
> Interesting. I followed your instructions and my board boots fine even
> after applying that patch, but then I see the following on shutdown:
> 
> [   83.022955] WARNING: CPU: 0 PID: 1995 at kernel/time/tick-broadcast.c:647 tick_handle_oneshot_broadcast+0x1c8/0x1e8
> [   83.033392] Modules linked in:
> [   83.036447] CPU: 0 PID: 1995 Comm: init Tainted: G S                5.1.0-253105-g2b41f6584d59 #3

That is not v5.1 plus one commit, is it?

> [   83.045319] Hardware name: HiKey960 (DT)
> [   83.049238] pstate: 00000085 (nzcv daIf -PAN -UAO)
> [   83.054026] pc : tick_handle_oneshot_broadcast+0x1c8/0x1e8
> [   83.059509] lr : tick_handle_oneshot_broadcast+0x15c/0x1e8
> [   83.064990] sp : ffff000010003b40
> [   83.068298] x29: ffff000010003b40 x28: ffff0000116de0e4 
> [   83.073607] x27: ffff0000118e85c0 x26: ffff0000116d7a00 
> [   83.078916] x25: 0000001342080d5f x24: ffff00001198e2f0 
> [   83.084225] x23: ffff0000116ddf40 x22: ffff00001198e2c0 
> [   83.089533] x21: 0000000000000000 x20: 7fffffffffffffff 
> [   83.094842] x19: ffff00001198e280 x18: 0000000000000010 
> [   83.100151] x17: 0000000000000000 x16: 0000000000000000 
> [   83.105459] x15: 0000000000000000 x14: 0000000000000000 
> [   83.110768] x13: ffff000010e544d0 x12: ffff000010e544c8 
> [   83.116077] x11: 0720072007200720 x10: 0000000000000040 
> [   83.121384] x9 : ffff000011705bd0 x8 : ffff000011705bc8 
> [   83.126693] x7 : ffff8000bf0002a0 x6 : 0000000000000004 
> [   83.132002] x5 : 0000000000000000 x4 : 0000000000000001 
> [   83.137310] x3 : 0000000000000000 x2 : 0000000000000100 
> [   83.142619] x1 : ffff0000116ddf40 x0 : 0000000000000000 
> [   83.147929] Call trace:
> [   83.150372]  tick_handle_oneshot_broadcast+0x1c8/0x1e8
> [   83.155512]  sp804_timer_interrupt+0x3c/0x50
> [   83.159782]  __handle_irq_event_percpu+0x78/0x2c8
> [   83.164482]  handle_irq_event_percpu+0x40/0x98
> [   83.168922]  handle_irq_event+0x50/0x80
> [   83.172755]  handle_fasteoi_irq+0xc0/0x178
> [   83.176847]  generic_handle_irq+0x34/0x50
> [   83.180852]  __handle_domain_irq+0x6c/0xc0
> [   83.184947]  gic_handle_irq+0x58/0xa8
> [   83.188605]  el1_irq+0xb8/0x180
> [   83.191740]  __do_softirq+0xa8/0x3a0
> [   83.195314]  irq_exit+0xc0/0xd0
> [   83.198450]  __handle_domain_irq+0x70/0xc0
> [   83.202541]  gic_handle_irq+0x58/0xa8
> [   83.206198]  el1_irq+0xb8/0x180
> [   83.209339]  _raw_spin_unlock_irq+0x28/0x60
> [   83.213520]  do_exit+0xf0/0xa28
> [   83.216661]  __se_sys_reboot+0x16c/0x248
> [   83.220581]  __arm64_sys_reboot+0x24/0x30
> [   83.224590]  el0_svc_common.constprop.0+0x88/0xf8
> [   83.229290]  el0_svc_handler+0x34/0x90
> [   83.233035]  el0_svc+0x8/0xc
> [   83.235909] ---[ end trace 70f495d614c1efd2 ]---
> 
> which is unexpected.
> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
