Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6703E112DDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:59:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7J5fsSLg7chYWgZ2wESqYq4XfE/66E8/5DECP+xlXys=; b=UTmmCMh4rnm/V/
	N5qK4tPsMT8eJxUSlIjaEtCtRRWXFz0FpGdkz5TrPGfCMg1955/zHARuyAT3EAUzoJjtd4Vbuuo/l
	G5Kkybu47PZ1SyuS62+5Xt/zmMHFA/GRPXUqZ4vnDpDt/nb6c2p9IKlyatiERk5XxVreduvgBniDG
	XtiaRtRVPL7Th1W4QG16seHKryEqbEkvzd9SIlwXRiR3K+X/bfj45YRo2UGmEoPtLo721T24NQ/D3
	83v81ZDM2gXzMlm4zA193mLO7o6l7168Mj0NtY9mwcRAH4t7vKIeAjH6R+Vgsph1pqWTZCAYK9xRW
	wd3cZJALVpukFIlhil3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icW7R-0000fA-3V; Wed, 04 Dec 2019 14:59:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icW7J-0000eG-VK
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:59:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so8969807wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 06:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=n4ltZbj+HsRg67Z0gIwGN4pC+1B80rPpdVtNg3HKMmM=;
 b=D4mPCz7DxgtLmZoH4Bi32hW9gICiP3haBfA8oqDul4QORE7KEXmuxM1zzZIgktWD3b
 KaCghZhM2HFLdSQmtEjzEM8lt1sxoby7yXQQV+YSkgTOoLDWFDC+2bFc1LeR0A8gz8BQ
 UA4g4zg5ZAEnf5M6X3BSJHk+AcF4xfgfO4E7Oslcr5r5BFvUleoYlNQv+3H+wnBihqsc
 rYP3ldHtzJ93RsIdT3qjyGFSWS85KAWIfMzxsDiSQKgiUvojWy/BdTg3AoO5r7g0rLlX
 yxTsHOHaKIj/nWfZnDEDMGF7BI7oDiLBGR8cKMDiLekB7+4qWp90Qr76j5krhGMrvS6R
 xXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=n4ltZbj+HsRg67Z0gIwGN4pC+1B80rPpdVtNg3HKMmM=;
 b=hKg1ech02Zop+5KKHhqY2JqJFem8StrPq7HWmeXrtH09g11yuXzvVrUrBgvMRe8Et5
 4rKm313dmkQvf6qogjeZ37tzGMlyYzcBHXUWE6/neMngUIkMxArXdMs7dT1344pm5CTM
 NRANiEUfSN7kWN/Wlw4XkSSEFyqopgVgfVWSPtmFaJnnwlQjehlWvx6PLwkNnfSFHbac
 lUn6b/FSXomioVwi4v5L7lisKX9bbrEvDZ04m9uF/NPQAIs4BlrsSBrMchQp+9LwCS/z
 im32PfLZ/2IOcwET5EEHiKX6iFsrbGHpu93hm/+YTyGfn2Z7qrWk01Ss4sLMnWsJ+Kri
 nT/Q==
X-Gm-Message-State: APjAAAX6qYMl/f8YTcccRKcxOSp3fHL8sG8GO8mQTbbiBlCmknjhgW0X
 HX/he2WQzLFRrx5HvY0zLDGGaSFE6ITi3E7g
X-Google-Smtp-Source: APXvYqymRdTeXTPQi+uHw3/Otmf26KolFmtE6bo/PudHtVMmLk7lNx2TutykdDGokD5oyl/rykOdJg==
X-Received: by 2002:adf:eb89:: with SMTP id t9mr4576194wrn.5.1575471540151;
 Wed, 04 Dec 2019 06:59:00 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id y139sm7352216wmd.24.2019.12.04.06.58.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 06:58:59 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Catalin Marinas <catalin.marinas@arm.com>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
 <1c5e497f-4be0-e1f3-4d6d-fed9470d0406@forissier.org>
 <20191204142824.GB26730@arrakis.emea.arm.com>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <226a53f8-9404-1aa0-ed44-22e2157e4521@forissier.org>
Date: Wed, 4 Dec 2019 15:58:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191204142824.GB26730@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_065902_152075_76D8A531 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/4/19 3:28 PM, Catalin Marinas wrote:
> On Wed, Dec 04, 2019 at 02:15:48PM +0100, Jerome Forissier wrote:
>> On 12/4/19 11:18 AM, Catalin Marinas wrote:
>>> On Tue, Dec 03, 2019 at 04:43:22PM +0100, Jerome Forissier wrote:
>>>> Has anyone successfully run kernel v5.2 or later on a HiKey960 board?
>>>>
>>>> For some reason, anything past v5.1 doesn't work for me and I could not
>>>> figure out why. The symptom is it never gets to the login prompt. The
>>>> root FS is a Buildroot-generated one, and prior to reaching the kernel
>>>> the board runs TF-A, OP-TEE, UEFI (edk2) and Grub.
>>>>
>>>> I tried replacing /init with a shell, in which case I can type a command
>>>> but whatever it is (even a simple "ls"), the command hangs on exit and I
>>>> never get back to the prompt.
>>>>
>>>> Then I started bisecting, that was quite painful but I found several
>>>> problematic commits. I ended up reverting the following (in this order)
>>>> to be able to boot v5.4:
> [...]
>> 75a19a0202db is the first bad commit. Its parent: commit 2f1d4e24d91b
>> ("firmware: arm_sdei: Prohibit probing in '_sdei_handler'") boots fine
>> [2]. Since reverting 75a19a0202db in v5.2 does not work, I suspect we're
>> dealing with multiple problems. As I said, the set of reverts above is
>> the best I could figure out, and believe me I spent several days trying
>> to troubleshoot this :-/ (that being said, I know nothing about the VDSO
>> or the arch timer so I could not try anything meaningful other than
>> reverting some commits).
> 
> Thanks. There could as well be multiple issues. Since commit
> 75a19a0202db is cc stable, could you please apply it on top of 5.1 and
> see if it fails? I don't have a HiKey960 at hand to try this.
> 

Fails indeed (panic): https://pastebin.com/F0jpktii

-- 
Jerome

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
