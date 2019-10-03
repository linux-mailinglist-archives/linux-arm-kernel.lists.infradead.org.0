Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C54CB279
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 01:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pa+XEm8HJQTplJ2B2PVCfRKpeYCl5pYDeNhUwP6+/Pg=; b=uT9yPaoH6mHHNP
	W1plQDu57L4J3uBtX4HISUibRk78tCv2b7Hihp9ABt/Bm4J5Qqfn8Tof/Pdg23cRjMpyW725iPXlx
	cFjdj6CAvxvI8WBJwsYBLYhnVq77bqCunkoaCpu0+8fQWMyFMNGwBud4izY78AQyjK4plflGr4Mk5
	SJ3x8CvQsPJdozhemaP2JG223t4jVqTdGoAUek5wpCyTzGbXlsxZV4Z2ygUd49Qu5F1ma74dsPSux
	jqyW2W5NaO4NH2IQIvdHSiNzF6uXOTOwac3OCN0p2DdtLFtu3xC/39B5D7kXfa4sHkPBV/zVkJtoW
	LyL7y2RpP8pvKW44XEQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGAp5-0003dB-MY; Thu, 03 Oct 2019 23:47:51 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGAoy-0003cN-13
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 23:47:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id x127so2728004pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 16:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mft6EgHtAUQaGflrAXvIiQDDohNzb47yHFwrN0vf2iY=;
 b=IucAmyc0VvQXXPGo+T+D2yy0koqbRj5GLnbIicEJ2iAyK0rbQYtK0DASYxKvOXTuck
 QBpPto3WSiNm0j9nRA+bspY/B6Cfi2TJBwut6z9lZpzrD0wDDT9GYs45vb6YIRtkbfbj
 myGCfSDH6T9XP3S5BkkJzY1MDA2/KHKVdRXSYYAbEZvoySgv3aKHGwlcXbVpJz7KEcVT
 fxrubfH4Wad0BT/cGlUSz9KeQcu9/4lnpKV+jvw7eJXl8SJHyHalmgNCUseI3smOsNpR
 nHjaJwHuwVlXyqRqKc3micP2THBGYixA48mc326RYI7/ufYABonPeq6r38G3hkR9etXV
 atRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=mft6EgHtAUQaGflrAXvIiQDDohNzb47yHFwrN0vf2iY=;
 b=R9VjQOw07vNFC7AtsIvlwevsEDOXxkEX66gAHTWlCevyNRGQLoBmvYr3zjLRZ2qldz
 apJPTer4uqsHznsY/Wx2q9HFPG6BnEP3dKf1YMyT0PRyHT+Hbg9zDViCa2k97xTTuhPq
 181y1AVqZ8SoBa6ME0tf662qX+2X5gk7W8GDHGoawFJ9fzv97g4sDRZ104AvhLemGwrf
 ebii+QtoHPAJ4yOoEOx7DdE7YCJFOpMrmhyKloHlta8bfOM16bXlzFZLuTjteOshzhRS
 zL5l26NZ95+37Si2/kT9I5FSX1fKIc4y7e+UhOyuP1uT7JIC5QA3MOGAn/kSA5MYMd+W
 LmFQ==
X-Gm-Message-State: APjAAAXy/fM1ofwBoEAwUdaOuM1nPJt6AQStBB1tfupmQc8rNHBrJPBJ
 JMHFMhzqFHrqM7hmQQUNvCE=
X-Google-Smtp-Source: APXvYqwskNR5LjTmmnbgcORupJGOY3I+CUo3KDw73YonQr8RKuQ4Lh9Kg31B+jZ7yonlx9Y+OaR3UQ==
X-Received: by 2002:a17:90a:8001:: with SMTP id
 b1mr13992924pjn.56.1570146462394; 
 Thu, 03 Oct 2019 16:47:42 -0700 (PDT)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id 22sm4011968pfo.131.2019.10.03.16.47.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Oct 2019 16:47:41 -0700 (PDT)
Subject: Re: [PATCH] ARM: dt: check MPIDR on MP devices built without SMP
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20191002114508.1089-1-nsaenzjulienne@suse.de>
 <17976e82-04da-d22d-5779-f50db63f98a2@gmail.com>
 <2af0a5ad604064d8fcf9febce72f0c23f1a1a1db.camel@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <0be9b704-4cc6-7b23-4435-256372e90ffd@gmail.com>
Date: Thu, 3 Oct 2019 16:47:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2af0a5ad604064d8fcf9febce72f0c23f1a1a1db.camel@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_164744_071051_3D6B2802 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kernelci.org bot" <bot@kernelci.org>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/3/19 12:39 PM, Nicolas Saenz Julienne wrote:
> On Thu, 2019-10-03 at 11:08 -0700, Florian Fainelli wrote:
>> On 10/2/19 4:45 AM, Nicolas Saenz Julienne wrote:
>>> Currently, in arm_dt_init_cpu_maps(), the hwid of the boot CPU is read
>>> from MPIDR on SMP devices and set to 0 for non SMP. This value is then
>>> matched with the DT cpu nodes' reg property in order to find the boot
>>> CPU in DT.
>>
>> The code you change is about the "mpidr" variable, yet in your commit
>> message you refer to "hwid", that is a tad confusing for the reader.
> 
> Sorry, it's indeed pretty confusing. I'll send a new version with a fixed
> description if there is no major push back.
> 
>>> On MP devices build without SMP the cpu DT node contains the expected
>>> MPIDR yet the hwid is set to 0. With this the function fails to match
>>> the cpus and uses the default CPU logical map. Making it impossible to
>>> get the CPU's DT node further down the line. This causes issues with
>>> cpufreq-dt, as it triggers warnings when not finding a suitable DT node
>>> on CPU0.
>>>
>>> Change the way we choose whether to get MPIDR or not. Instead of
>>> depending on SMP check the number of CPUs defined in DT. Anything > 1
>>> means MPIDR will be available.
>>
>> Except if someone accidentally wrote their Device Tree such as to have >
>> 1 CPU nodes, yet the CPU is not MP capable and reading the MPIDR
>> register does return the expected value, but that is wrong anyway.
> 
> An UP device will most likely not have a MPIDR. That said I'm not sure this is
> always true. As per ARM1176JZ's TRM[1], the RPi1 CPU, if one was to get the
> MPIDR it would raise an undefined exception.
> 
> The way I see it's an acceptable outcome as the DT is clearly wrong.

It is, although you probably want to use of_get_available_child_count()
instead of of_get_child_count() since we could imagine that a boot
loader or some other boot program mangling the DT could intentionally
put a 'status = "disabled"' property on the non-boot CPU node for
whatever reason.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
