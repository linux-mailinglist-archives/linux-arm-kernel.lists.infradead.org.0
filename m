Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A907C16FF6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 14:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iGHqpkjKfXgYSOLOlrK+VYn6UtuV75SGAMmRumxMUxo=; b=FqacR/jH7EY61fM5nOJEhw3pC
	QUcwpcFtFflUlZKmSA+7kgfbuK77D0TTC/E1XtAdTDebnkSkWd21xDNxN3umWAY0sxBJTNcKjXp/3
	hu4QR8IeedI2Lwl06nwXxoxZlVdXKFh3/bo3nIfzggofTdInv+MPwdvsCTE5Aj/+D8AoU3Hn6++3z
	xWzO9dSaAlK5Mqqs9LUd1FxXxJycAF7Us4juzsvXCI6GsdBIzRyVXRnLMzkFq/9JrmxU0+8GpuffA
	p+lbVbRK3bKKU0CvNO/4puVupcXpa6hBWsupotpEBfdUkfV5o5ZCieGoiD8+obHpCdGo/kgA9DFrd
	BspQPCv/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6wK4-00018o-Pt; Wed, 26 Feb 2020 13:01:56 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6wJv-00018H-2k
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 13:01:48 +0000
Received: by mail-qv1-xf44.google.com with SMTP id ek2so1252472qvb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 05:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UKIpnLvXKCXC0vrvP5RaA88jNAUp8VOzC2YXSxLysdk=;
 b=XldhgloKGW6JP71Kj3jf+AvEOhYnoCnBTQwL5sVoW6DeoiCmcLHSGl1IlPyuZxYlfI
 WdwSZDG6RKhUjuvkqm6XBqtRqWwOnFbR0D+qqSqdYhYGBQBPWuAstU5DRMdKWWFmEkba
 OAMwURHinREhdcDYy9C7iYpoeOiMdNp8viBADMOkaGz4m7kGwb5jL8GC0GZzh3vkc3zh
 2Md5W4THTNacP63TfyTwQbIQIifaa+x+OUxHqB0xbSkmmEfPudN4errEjvw3mhcx047n
 Y/RXVLH4aO1ADkr7ySaBe0/Szy/V4gD3MoJKao9i7hYpmUYf8Vf6FMRHUSzx1woKZ9B2
 Uz3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UKIpnLvXKCXC0vrvP5RaA88jNAUp8VOzC2YXSxLysdk=;
 b=jDaUGxJexD9JQ13HFsQmZCnUgzNPKivvogy6Y/rE7vQ2DrQvRWRHyivo3R+VGHmQqz
 Vz0L7+pCriVhsJgJlCc7Vl9kdIEyVE+bpV8lYkQNaU+CfInzdidNJ03MgYatGpkQwTqO
 EohNTF3mw6A55kbGKSR0WnyPyYFAsrNqHUej+ZA3SVyXkQPNXkhfrtCShKt2DsR5LCp9
 sCszi1Qm4qjimJCAxhBUjB2XDU7T3etCbqlBgrQOVV27UyuEWfOGWfoUIOM2i2trCi45
 F0+Hryz85I3f2nIv6X9OaR2SIKi4gs24yRVT/OpQ4K90Lr6db1dpUxDCToVPgVgJICtX
 wgEg==
X-Gm-Message-State: APjAAAXCmMECKTr8zkDu4NDnfTAiuIL6WpUJvqPE043focvjEdNITvXQ
 +GKxnkGB0FuUQfWP+V5Lxhc621wGKSw=
X-Google-Smtp-Source: APXvYqybiolRyAY1NXIKLE3ZO6jOMyD2djGvERhJrHMuekUsuWoM1dAYrBykhHM5s8oxBXfZLWPnYg==
X-Received: by 2002:a0c:e0d4:: with SMTP id x20mr2697954qvk.50.1582722105101; 
 Wed, 26 Feb 2020 05:01:45 -0800 (PST)
Received: from [192.168.0.185] ([191.34.86.53])
 by smtp.gmail.com with ESMTPSA id i4sm1085647qkf.111.2020.02.26.05.01.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Feb 2020 05:01:43 -0800 (PST)
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
From: Luis Machado <luis.machado@linaro.org>
To: Will Deacon <will@kernel.org>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
 <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
 <82cb3dea-db82-1c71-3b08-957102b85c93@linaro.org>
 <20200213120115.GD1405@willie-the-truck>
 <ae8c0cd4-f072-deaf-f30e-46e2265d6392@linaro.org>
 <5028f457-5b7d-1a88-912f-3fa97b567985@linaro.org>
 <20200218084359.GA16828@willie-the-truck>
 <6e439023-7f09-849e-46b8-656739f133d8@linaro.org>
Message-ID: <7f1fa73e-9308-5f8e-fc55-266dcac65ece@linaro.org>
Date: Wed, 26 Feb 2020 10:01:39 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <6e439023-7f09-849e-46b8-656739f133d8@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_050147_123817_4D1A7F3F 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 2/18/20 7:33 AM, Luis Machado wrote:
> On 2/18/20 5:44 AM, Will Deacon wrote:
>> On Fri, Feb 14, 2020 at 12:45:31PM -0300, Luis Machado wrote:
>>> On 2/13/20 2:07 PM, Luis Machado wrote:
>>>> On 2/13/20 9:01 AM, Will Deacon wrote:
>>>>> Sorry for the very slow reply. I talked to Mark about this a bit 
>>>>> but it
>>>>> seems that we never followed up here.
>>>>
>>>> No worries.
>>>>
>>>>>
>>>>> On Tue, Dec 10, 2019 at 05:00:18PM -0300, Luis Machado wrote:
>>>>>> Do you have any input regarding this particular situation?
>>>>>>
>>>>>> It would be nice to get this fixed before the release of another GDB
>>>>>> version, if the fix is to live in GDB itself.
>>>>>
>>>>> Basically, I'm very nervous about fixing this in the kernel because
>>>>> whatever we do will be visible to userspace. On the other hand, this
>>>>> part of the ptrace interface is only seriously used by GDB and we 
>>>>> should
>>>>> make sure that it works well.
>>>>>
>>>>> Does the diff below solve the problem? If so, can you confirm that it
>>>>> doesn't appear to regress anything else for GDB?
>>>>
>>>> Thanks for the patch. I'll exercise this in various ways to see if
>>>> anything breaks.
>>>>
>>>
>>> I gave this a try with the particular test in GDB's testsuite that 
>>> exposed
>>> the problem. It is working as expected now, so we're single-stepping 
>>> past
>>> the instruction correctly instead of getting a spurious SIGTRAP.
>>>
>>> I managed to run a few other tests related to syscalls and signals 
>>> and they
>>> also executed as expected. But this was inside QEMU.
>>>
>>> Do you see any potential scenarios where this change may break 
>>> things? Other
>>> things i should try to exercise?
>>
>> Could you run the entire testsuite please and check there aren't any
>> regressions? Hardware would be best, but QEMU is still useful.
>>
> 
> I'll try to get a hold of hardware to do this. QEMU will be too slow and 
> we'll likely see some failures due to running things in QEMU as well.
> 
> I'll let you know.

So i managed to do a complete GDB testsuite run inside a system mode 
QEMU, with both the patched and unpatched kernel.

I did not see any regressions. I also noticed the particular testcase 
where we were having the single-stepping hiccup is running as it should now.

So, from GDB's perspective, this patch looks good.

Let me know if there are any corner cases i should exercise (maybe by hand).

Thanks,
Luis

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
