Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36CA1985F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 23:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0wiYRLyUZfzN2R+Pl7mapyYZ3EKqslugay1Dlm3cxU=; b=NJZ/C4CccKMWAB
	ZUskX3c/eilcWBbZ25pT4YVJQTARzbLw/lNPdMPudFZaW4jyB+pjjcX4wptXl+iGfLNEla0JlwAmP
	r+n3nh2PAPpdDygaLKt383zr/w46qGEykegTv30l/qcvnDrkfimS02noqjM4AjpVFeB8pfSknbBHF
	lkJoreG5zOHceqi07u7B6YUxjkOOPdlKrD6qz8SGqEtOwwJpn+4voxrJ2bfwArGXxGyXf72Br2xET
	mXkoRhzNYwLfhD+50u4z/BFo+/e7MNBIXQg4H2xlDvpHjncqb7sn3yjsujylVS1LIT15FHlRadt+n
	GovsuXIknmIkS4vXNF8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ1Wo-0006Xj-05; Mon, 30 Mar 2020 21:01:02 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ1Wc-0006Wt-DX
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 21:00:51 +0000
Received: by mail-wr1-x42f.google.com with SMTP id s1so23372611wrv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 14:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lRXDrc8yk8/cTnl4GE+dWkv/WfQDixzLmIjjoLV8IQ4=;
 b=VySQOXBqv/Gd/uRlxTVHiLM/B2JeQ8t1KNLzCBpCzn5uaNzfQBCwXjsvR/0wRjyj+5
 qU/6hF3ooVlyiqqrKiMYJtoqSUrQS+oNq855ugEbXtab7/ZEhZG7hZ4/bEKQvY0M+CE9
 M78P6VeT+iXpWeI/qaoi2rsVctqu7lk+o9NVI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=lRXDrc8yk8/cTnl4GE+dWkv/WfQDixzLmIjjoLV8IQ4=;
 b=gzQpxJzR7D2SXQoa/yZT8UpKUSGJCf3bzOGmKZ4Bfhr6KATXdI/ZfLld+OhRmhDAQn
 HbJ4Ke5W+lW2gkGk3WWIhXD5mzTE29W5fn0w8ggTx248oRPxv9PL0JWoqGHWbODAcFDn
 AhfMTSc7N6NdkJzjpNGFUaHSd7XHZZ8Db4GfHJ+JOWKWLmUBtkl7oqRNEr3nX3w7PbP8
 ZFW8/H5zZYJakppbQ5Ns8S05EwfgDiphnGrBvQE/TcFMv81joxUoLwZueguHGWB8HFHK
 ZwXVUQPyXLvO838InrTiV5BfVClNW1VYUhjqTJOJGK4AMqnSzpLZ7Ro86tvd3my4Gozy
 PbMA==
X-Gm-Message-State: ANhLgQ2wRgryNwlptgI7r1ZLtqjzVwjNgsozd00/knIO3lud8J8fB2Km
 eu5PDDY+tAI1mOKLTsjU9Z9kZA==
X-Google-Smtp-Source: ADFU+vvKyNU3h9F+BDiEcoH56NpVcSlKlwK+zAqvq+29Iwnj9u5ps8s21YJHZ2omDtnXmP9gboI6/Q==
X-Received: by 2002:adf:de90:: with SMTP id w16mr17824855wrl.292.1585602048365; 
 Mon, 30 Mar 2020 14:00:48 -0700 (PDT)
Received: from [10.230.186.223] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l4sm22343673wru.1.2020.03.30.14.00.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 14:00:47 -0700 (PDT)
Subject: Re: SError handling vs. SIGSEGV
To: James Morse <james.morse@arm.com>
References: <3da89354-78f7-5f48-9eec-75c74270fa3e@gmail.com>
 <20200328164316.GZ3819@lunn.ch>
 <ccb24fd4-b96a-3c02-80f3-4fea3dc2a989@broadcom.com>
 <d5390eef-edd1-360b-5a26-ff100cafc056@arm.com>
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 mQENBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAG0MEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPokB
 xAQQAQgArgUCXnQoOxcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFrZXktdXNh
 Z2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2RpbmdAcGdw
 LmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29tLmNvbQUb
 AwAAAAMWAgEFHgEAAAAEFQgJCgAKCRCBMbXEKbxmoHaNB/4p5GXw2Xlk4r2J0MsUAZE4Gnfc
 C4DtilufOGVR1K0/WhROYemyCAP+xuBj8bnQDBtZwB5ED37q4/p8DSmCnkEBjM5Cz12EZQzs
 utQgCV1UIgzryoiDZSF2XLslzF9LOSaOiNzpBvwEYNTZ+koEW+AOHEAgS6SbV2Hob8Zc32xF
 oQdKGwbSwcV8hS2YLL37VxKr2h8ZTtuTmhDNqxuKPzZuoAL61/4i8+BTyVZC4gUL/EUu7pG2
 rbwhg/s8TyQWWeBz18Xiw5K148TXT0LeErmTsJSPQFMqZ6AR/nuJDQzhIUiLeq/hvBs1BIQf
 REqNMShEnnMJfHjd8RFnGpdPk+hKuQENBFPAG8EBCACsa+9aKnvtPjGAnO1mn1hHKUBxVML2
 C3HQaDp5iT8Q8A0ab1OS4akj75P8iXYfZOMVA0Lt65taiFtiPT7pOZ/yc/5WbKhsPE9dwysr
 vHjHL2gP4q5vZV/RJduwzx8v9KrMZsVZlKbvcvUvgZmjG9gjPSLssTFhJfa7lhUtowFof0fA
 q3Zy+vsy5OtEe1xs5kiahdPb2DZSegXW7DFg15GFlj+VG9WSRjSUOKk+4PCDdKl8cy0LJs+r
 W4CzBB2ARsfNGwRfAJHU4Xeki4a3gje1ISEf+TVxqqLQGWqNsZQ6SS7jjELaB/VlTbrsUEGR
 1XfIn/sqeskSeQwJiFLeQgj3ABEBAAGJAkEEGAECASsFAlPAG8IFGwwAAADAXSAEGQEIAAYF
 AlPAG8EACgkQk2AGqJgvD1UNFQgAlpN5/qGxQARKeUYOkL7KYvZFl3MAnH2VeNTiGFoVzKHO
 e7LIwmp3eZ6GYvGyoNG8cOKrIPvXDYGdzzfwxVnDSnAE92dv+H05yanSUv/2HBIZa/LhrPmV
 hXKgD27XhQjOHRg0a7qOvSKx38skBsderAnBZazfLw9OukSnrxXqW/5pe3mBHTeUkQC8hHUD
 Cngkn95nnLXaBAhKnRfzFqX1iGENYRH3Zgtis7ZvodzZLfWUC6nN8LDyWZmw/U9HPUaYX8qY
 MP0n039vwh6GFZCqsFCMyOfYrZeS83vkecAwcoVh8dlHdke0rnZk/VytXtMe1u2uc9dUOr68
 7hA+Z0L5IQAKCRCBMbXEKbxmoLoHCACXeRGHuijOmOkbyOk7x6fkIG1OXcb46kokr2ptDLN0
 Ky4nQrWp7XBk9ls/9j5W2apKCcTEHONK2312uMUEryWI9BlqWnawyVL1LtyxLLpwwsXVq5m5
 sBkSqma2ldqBu2BHXZg6jntF5vzcXkqG3DCJZ2hOldFPH+czRwe2OOsiY42E/w7NUyaN6b8H
 rw1j77+q3QXldOw/bON361EusWHdbhcRwu3WWFiY2ZslH+Xr69VtYAoMC1xtDxIvZ96ps9ZX
 pUPJUqHJr8QSrTG1/zioQH7j/4iMJ07MMPeQNkmj4kGQOdTcsFfDhYLDdCE5dj5WeE6fYRxE
 Q3up0ArDSP1L
Message-ID: <2b4daad5-7dcd-e1df-44d7-06296833231f@broadcom.com>
Date: Mon, 30 Mar 2020 14:00:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <d5390eef-edd1-360b-5a26-ff100cafc056@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_140050_458111_6821A2B1 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Doug Berger <opendmb@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Will Deacon <will@kernel.org>, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/30/2020 4:31 AM, James Morse wrote:
> Hi guys,
> 
> On 3/28/20 7:41 PM, Florian Fainelli wrote:
>> On 3/28/2020 9:43 AM, Andrew Lunn wrote:
>>>> As it stands today, I see no way to have a self hosted test case that
>>>> exercises that our GISB bus arbiter blocking works correctly because the
>>>> whole kernel is taken down when the test is successful :/
>>>
>>> Hi Florian
>>>
>>> Isn't that just the new definition of test success :-)
>>>
>>> Yes, your testing will be slower, you have to wait for the watchdog to
>>> reboot your machine after each successful test.
> 
>> I would be fine with this behavior if the exception was taken from EL1,
>> but it is taken from EL0, killing the whole machine because of that
>> sounds like a great way to DDoS your machine without having much
>> valuable information to debug your problem if it exists.
> 
> And what if the exception was triggered by an access at EL0, but the CPU had
> switched to EL1 before the response arrived, and the exception was taken?!
> 
> 
> To 'handle' an SError you need it to be restartable at the CPU and you need to
> know what caused it, so you can fix the error instead of it remaining latent.
> Before the v8.2 RAS extensions you certainly don't have the CPU bits of this.

Good point, oh well, let's see how the HW guys can wire up their bus
better then :) Thank you
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
