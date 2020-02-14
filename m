Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D05A815DB61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EQrEbK7w/R9COZJ6S5Feq/FEMNZts8lZYRGt9IG0wDA=; b=aJ474nCoXv7opj47U+9gtE7Ql
	0hm9/vwhjDzv/IklDMx3rrrxeW5Id6xxgojpx8S6fKYqlgICzFsCy7zkRIvlwYLtTD5IfMxQeVGPy
	2r/hmIeJbWZ444ZC3oBkg0Z4Oh3dv0lejuoOxchsPO+9kguSjuv2pGRv9mm19wb58GIW4s5CjU5Uh
	rjYlmXA04T3BZIyuN3JGnjqQ57J9UuTv7OI6Yz3sqzCUkcHJCMBm5CcfTKx1ZeG0YNOA6TIiV9D+x
	+hgPwHEOU0JDiV+lfZloHe+5hmuq9PAsQO8L1F6I8H7Lhl9PeK1PbRGeXxnCgVE1Z3wndE9AdH2NH
	c7Y2PRfaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dA6-0000Qi-KH; Fri, 14 Feb 2020 15:45:50 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2d9u-0000M4-Gf
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:45:40 +0000
Received: by mail-qv1-xf41.google.com with SMTP id y8so4469159qvk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 07:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vqqrjWtgUXu/aUZkcdCKcPP3tDkK54zNyKD1IFKENHw=;
 b=vjEgGCCl5WpSIxHhiLQxvIzjkbSrELd1BDobEdNJAoFWPU4QUkwP9A0jBBfPuGv02h
 qmZs4n//zLbJy5w58zgj9PxAhUTpBYzqvxlUC3CgKSxGJDp1pazKFbgHSCYhfED6Rwi6
 sTmWlIsN5SEcsUaxqiTXEiDnjVMlmSOQB7A25z8YQ8RLw8QHI5w9P2jO1bMwztA2UMmC
 6CqNLFM2ylE6kGha+lwHtU6ZJF1ifusWH1HZ+ZE9QEdzBrlvuJ1O1V8cWwngSjGUzZn0
 jqC2S3uuhDCsH14ag2wnUWqgRLD6WiuX/faNYv7VGH6CH5+de42J7YWel1WeUepo9p0i
 2S3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vqqrjWtgUXu/aUZkcdCKcPP3tDkK54zNyKD1IFKENHw=;
 b=hknu0jxCwnShM1YmQPmU35N49DkqOOwEKnW2O8eB2I8aAyvTmkuZAMy5KEYulCt30C
 gzSt9zRCm+cmbKNGhnS03e7qfND0xUVsrohi8/7kId11S7Fl4Za9qb4dbdrRbiwZ5Mfj
 rkUTzYM72miu+fjRTlkevgEVq6auF5e4ua7y8DGsdObnVAaS/QH+Tsq5N5qfOR+Sfivd
 cmIB7crX2jZCSejKfFWJK7OlTVnGijE50PZ36s3h3zTovokW/y+zA7XYQfW/zk3SRAtt
 85+tmmH0a6d1nGKSh2/tzNDpDYtc5JH53kSIvhgBP1atmeyzQ45f92CZk3M4VGQ6da4+
 AOKw==
X-Gm-Message-State: APjAAAUDpjMvxC0rJbiOb4+a7Ny2R9PSFdtBB6j+vi0BUfsWwSAfcgfY
 LbrqtRWEvjKExzh+clBRnqc+fg==
X-Google-Smtp-Source: APXvYqwrfiQIR2itEW8Zy2V1EpokrYNo8vVcgLgCH606BWBarGRAMIovn+WGJWU5MVnEfX6Uwak25g==
X-Received: by 2002:a0c:f7c3:: with SMTP id f3mr2749095qvo.52.1581695136721;
 Fri, 14 Feb 2020 07:45:36 -0800 (PST)
Received: from [192.168.0.185] ([191.34.221.109])
 by smtp.gmail.com with ESMTPSA id q6sm3366082qkm.46.2020.02.14.07.45.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Feb 2020 07:45:35 -0800 (PST)
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
Message-ID: <5028f457-5b7d-1a88-912f-3fa97b567985@linaro.org>
Date: Fri, 14 Feb 2020 12:45:31 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <ae8c0cd4-f072-deaf-f30e-46e2265d6392@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_074538_592628_2279AD79 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Will,

On 2/13/20 2:07 PM, Luis Machado wrote:
> Hi Will,
> 
> On 2/13/20 9:01 AM, Will Deacon wrote:
>> Hi Luis,
>>
>> Sorry for the very slow reply. I talked to Mark about this a bit but it
>> seems that we never followed up here.
> 
> No worries.
> 
>>
>> On Tue, Dec 10, 2019 at 05:00:18PM -0300, Luis Machado wrote:
>>> Do you have any input regarding this particular situation?
>>>
>>> It would be nice to get this fixed before the release of another GDB
>>> version, if the fix is to live in GDB itself.
>>
>> Basically, I'm very nervous about fixing this in the kernel because
>> whatever we do will be visible to userspace. On the other hand, this
>> part of the ptrace interface is only seriously used by GDB and we should
>> make sure that it works well.
>>
>> Does the diff below solve the problem? If so, can you confirm that it
>> doesn't appear to regress anything else for GDB?
> 
> Thanks for the patch. I'll exercise this in various ways to see if 
> anything breaks.
> 

I gave this a try with the particular test in GDB's testsuite that 
exposed the problem. It is working as expected now, so we're 
single-stepping past the instruction correctly instead of getting a 
spurious SIGTRAP.

I managed to run a few other tests related to syscalls and signals and 
they also executed as expected. But this was inside QEMU.

Do you see any potential scenarios where this change may break things? 
Other things i should try to exercise?

Given we need to be careful with a kernel patch at this stage, i just 
want to make sure I covered all/most the possible cases.

Otherwise, I'm happy with this change. Thanks for putting it together!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
