Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07671624A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 11:34:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R5LH/DBj8MqN6YbasamM4+YyfGT3ZaCOgT4ML4KT8aw=; b=HTbMzG9FVWm1Fo/J6mxmOOk5v
	AiXKX1IGfne+tB+mkzIAyfyHm6wb1w+kF3qSqgmWP9CNFpEEmfPTftaDW+CIcB17hrUU3yOiiK2Aq
	zXQrwR7GdPe7aoqOVxWEcyS0iMRU0HkWZI1rLVbEvNxIMCZ1s61NqlCKHsnU8duBEKf6XD0TxJ9HZ
	TuhGZtinHPlTKvwbg+J3IwVlTNfBDKxwc1oKw+nzhgyAbuxCKX7ln6vICphiqM8wgQ9BqpmiudJbU
	tXd49W9g+3cetrpBsaKU+xlgUMcqSZoH/I+CGwlDEadqOqNRWvTvwcO+UmVkNaQWVwHxt1rCoX4/A
	nbCa2Vxdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j40Cj-0007lY-OI; Tue, 18 Feb 2020 10:34:13 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j40Ca-0007km-7k
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 10:34:05 +0000
Received: by mail-qt1-x842.google.com with SMTP id d9so14080077qte.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 02:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pFmbarfw22a0ByEjVL/KCmPP1KaB0hCqG9Cj/tHu1N4=;
 b=ZaWglp4m+t0n/gBn9a2cTcP3my44ZepXhqnTLd5Mr2CEmx5ZY9xeB7HhBxs1ZpQxA1
 J4vQhHgXrKXXvjOh9OVKXfZrK4RclZ5WzgS6fxyM1HsNzjKZoWhk8UVbp/N3IIiR5zcu
 TamONDhwIrl3OVziivNFJ4IvKg66PpANGsaGSCrEeq54vnjrVl7z0F6+mhmNlaR2fAr7
 2W0R61cKOzwI6X1GoshphLH82WV0L3gdv+c2bt8B+SD57QDOvkr9+n7J12yyvnlzVLpW
 q8Wx2pA0LG4LUWCjA0t9Owu4KN52bJ0z66tSEo5s0BuO6+ZI3bWoS6WbsRzXdLlK6dyp
 cziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pFmbarfw22a0ByEjVL/KCmPP1KaB0hCqG9Cj/tHu1N4=;
 b=ScQHmwcRN1+UgN5f44uKSY+x9m2QHs13N/fCN7lHuV3BuHTe4wf3+p0X3ukzoOeUbQ
 QSs/Gn29vabNH8VePc9jvZP9Iwo14HrS/vcPpb1h8sj+PhSytMxr3qxNrauUFQqXGcuH
 suAulU4dPrK82Yf0ZiJpx5wWn0ALbIOAkKHJyfado2N0h1rtybocNlpZfPqrUC7KBx/Z
 bIWZKdLz4rZJeJTvNtNs/OdofAwpM06OWeuP3/ZAJck4g4q7/IN0tzA5M24Oafb37tgO
 ckMO/2Ofb2GNqxNDldzl7e5qrxixPTqx9iC3sHMSi5/AuQvi+/11qpMpPCFwAB8phgd1
 TWqg==
X-Gm-Message-State: APjAAAVGEKbCT1MfgLBBPdysrw2YJ8fif6JLko+b3UKK2xbKxoOiKegT
 gx72w4H5hHgz7xby4vfyAlfgFWK7QLs=
X-Google-Smtp-Source: APXvYqz6wYQhFdcVCJ8yYIwi+UzSoo/Q5tHj+Js6eUx0v6J97h8z1zRChFIhsZh2jnNRehdkFLJbOw==
X-Received: by 2002:ac8:1aa6:: with SMTP id x35mr15910034qtj.32.1582022042496; 
 Tue, 18 Feb 2020 02:34:02 -0800 (PST)
Received: from [192.168.0.185] ([179.177.236.155])
 by smtp.gmail.com with ESMTPSA id n189sm1640547qke.9.2020.02.18.02.34.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 02:34:01 -0800 (PST)
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
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
From: Luis Machado <luis.machado@linaro.org>
Message-ID: <6e439023-7f09-849e-46b8-656739f133d8@linaro.org>
Date: Tue, 18 Feb 2020 07:33:58 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200218084359.GA16828@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_023404_310459_46A6F2CC 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 2/18/20 5:44 AM, Will Deacon wrote:
> On Fri, Feb 14, 2020 at 12:45:31PM -0300, Luis Machado wrote:
>> On 2/13/20 2:07 PM, Luis Machado wrote:
>>> On 2/13/20 9:01 AM, Will Deacon wrote:
>>>> Sorry for the very slow reply. I talked to Mark about this a bit but it
>>>> seems that we never followed up here.
>>>
>>> No worries.
>>>
>>>>
>>>> On Tue, Dec 10, 2019 at 05:00:18PM -0300, Luis Machado wrote:
>>>>> Do you have any input regarding this particular situation?
>>>>>
>>>>> It would be nice to get this fixed before the release of another GDB
>>>>> version, if the fix is to live in GDB itself.
>>>>
>>>> Basically, I'm very nervous about fixing this in the kernel because
>>>> whatever we do will be visible to userspace. On the other hand, this
>>>> part of the ptrace interface is only seriously used by GDB and we should
>>>> make sure that it works well.
>>>>
>>>> Does the diff below solve the problem? If so, can you confirm that it
>>>> doesn't appear to regress anything else for GDB?
>>>
>>> Thanks for the patch. I'll exercise this in various ways to see if
>>> anything breaks.
>>>
>>
>> I gave this a try with the particular test in GDB's testsuite that exposed
>> the problem. It is working as expected now, so we're single-stepping past
>> the instruction correctly instead of getting a spurious SIGTRAP.
>>
>> I managed to run a few other tests related to syscalls and signals and they
>> also executed as expected. But this was inside QEMU.
>>
>> Do you see any potential scenarios where this change may break things? Other
>> things i should try to exercise?
> 
> Could you run the entire testsuite please and check there aren't any
> regressions? Hardware would be best, but QEMU is still useful.
> 

I'll try to get a hold of hardware to do this. QEMU will be too slow and 
we'll likely see some failures due to running things in QEMU as well.

I'll let you know.

>> Given we need to be careful with a kernel patch at this stage, i just want
>> to make sure I covered all/most the possible cases.
>>
>> Otherwise, I'm happy with this change. Thanks for putting it together!
> 
> I'll add your Tested-by, but I'd still like review from Mark.
> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
