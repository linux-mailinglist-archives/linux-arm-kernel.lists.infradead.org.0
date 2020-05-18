Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0531D7DA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFbysOfRFXa5/K/hcnICO9bsq4568JXoHtX6LdK+lR4=; b=oKEu9U8Y51SkkU
	eGA/rbzEP6dLCwZFSXV+erQimfDi7cYd2u/7h7Hn+u5dbnnIyfHuNDWHepYtNYaUJ0xzIPjYkcLkA
	kQPYO7pk4a7bHLe7H+G8poLC7T6+Da1vL3X5PnQwKPgkiN3ihRrMe3HLC1ivTXpbHd88OyEsX1762
	Z93L3bbhbg+FKf4bgKGeMfYSAo/C/bmwJJBLAWK64ypzLsDdVs1Gfhl2FzVS13pH6klDv/Y2obykp
	5aXuW5lqy9Iy4JoP+Zh+x/Rgyxq+gGgvd1N4ccR+06IAeohZ+tLRxV8VmlFwSsIb+IehIvELNpc2J
	SQdrQ94yy+5MIdngpqsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaiAF-0001fh-B3; Mon, 18 May 2020 15:58:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaiA5-0001f2-Th
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:58:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id e1so12499441wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 08:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9dQKwXsdbQCl4qDBNptps08HL9d8mLpFAW6v42L7IVE=;
 b=iW7ovOeMkIPmoGiFcRVk1DaY5MhrtIq6GaEQUMdNqV66OLa1ApRbfUVJqmKoHeDBrG
 Ekve9FOZi31MdPwATTo7MIShWCNjgTIS78r/EFNhwB1CH+erLl2dRCLRj8feWW1eqFv2
 ixPCjOkLoRN2oaIFGii1jtY8//U9WRI6wpK2Rj5RA94hTP9C1D+r2qvGAmCpjLRigXMZ
 EN2gKK1yrNwBdEl/glgs1ffzfTaImDqs7g4LhrQUoxZwr9HPzufiQ391wTiBUzKehe+A
 +n6Yo5O5LbWZhYbvKzJ1FIXOBGdWPP3Il4MJMBq98kqNlAmFQh5519VnEbhNZOJSVZ1E
 RRlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9dQKwXsdbQCl4qDBNptps08HL9d8mLpFAW6v42L7IVE=;
 b=O7pE83xZwgIoGm73AacIRyZ5xfHAs6kAeTWdAWfno5NIkR7xb9autTNp4nKcozRLDT
 fbzjrv4lD2oMLSfh+888uQdlT7YZXaaM5TSnj37KFdDzaq2bij+xTSjouSNK2/a0gG2+
 xjmfWN9o5Qvi1FT9Hk1E7HoMvZyXTpsPdLH6l2I5MbJhDt7nmfyy3q12lv9Cj3xfbRdL
 kadeOgpy90J3QX/WaPmjNgG+SCPu4/Go80JTHkHu7aeVcuKI3GaH1Gg9u649vXYIT1/2
 pRFQ9KOUIB3wOdQbQRwbbzYd6Ywz/fdc28KxUPExnhTvmsZeo3+ekCutprufV0Kr3lt6
 Ibgw==
X-Gm-Message-State: AOAM530jL3i8kR+K4brkAMsqZkzhd1OnZuKJPrZNazrVIxE+PFcCNl8X
 W5IctgPg75bqNmn4lA/39ag=
X-Google-Smtp-Source: ABdhPJz6/mluEa7pfWfPKSqmb5h2huySF/uQ8o2q6Rz5eyayk9rqr6I3kKzqXPYuoITLUge+ifPCrA==
X-Received: by 2002:a5d:43d1:: with SMTP id v17mr20078720wrr.282.1589817520191; 
 Mon, 18 May 2020 08:58:40 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 94sm17259468wrf.74.2020.05.18.08.58.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 08:58:39 -0700 (PDT)
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
From: Florian Fainelli <f.fainelli@gmail.com>
To: Mike Rapoport <rppt@linux.ibm.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
Message-ID: <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
Date: Mon, 18 May 2020 08:58:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_085841_962145_9655B863 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 rmk+kernel@armlinux.org.uk, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/7/2020 1:11 PM, Florian Fainelli wrote:
> 
> 
> On 5/7/2020 12:27 AM, Mike Rapoport wrote:
>> On Wed, May 06, 2020 at 04:50:09PM -0700, Florian Fainelli wrote:
>>> From: Gregory Fong <gregory.0xf0@gmail.com>
>>>
>>> ARMv7 chips with LPAE can often benefit from SPARSEMEM, as portions of
>>> system memory can be located deep in the 36-bit address space.  Allow
>>> FLATMEM or SPARSEMEM to be selectable at compile time; FLATMEM remains
>>> the default.
>>>
>>> This is based on Kevin's "[PATCH 3/3] ARM: Allow either FLATMEM or
>>> SPARSEMEM on the multi-v7 build" from [1] and shamelessly rips off his
>>> commit message text above.  As Arnd pointed out at [2] there doesn't
>>> seem to be any reason to tie this specifically to ARMv7, so this has
>>> been changed to apply to all multiplatform kernels.
>>>
>>> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-September/286837.html
>>> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-October/298950.html
>>>
>>> Cc: Kevin Cernekee <cernekee@gmail.com>
>>> Tested-by: Stephen Boyd <sboyd@codeaurora.org>
>>> Signed-off-by: Gregory Fong <gregory.0xf0@gmail.com>
>>> Signed-off-by: Doug Berger <opendmb@gmail.com>
>>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>>> ---
>>>  arch/arm/Kconfig | 5 +++++
>>>  1 file changed, 5 insertions(+)
>>>
>>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
>>> index 5986277296c3..7bb5264a9c3a 100644
>>> --- a/arch/arm/Kconfig
>>> +++ b/arch/arm/Kconfig
>>> @@ -312,6 +312,8 @@ choice
>>>  config ARCH_MULTIPLATFORM
>>>  	bool "Allow multiple platforms to be selected"
>>>  	depends on MMU
>>> +	select ARCH_FLATMEM_ENABLE
>>> +	select ARCH_SPARSEMEM_ENABLE
>>
>> The logic in mm/Kconfig is quite convoluted, so selecting
>> ARCH_SPARSEMEM_ENABLE will automatically make SPARSEMEM the only option.
>>
>> On top of this you would need to enable ARCH_SELECT_MEMORY_MODEL, e.g.
>> something like:
> 
> Yes indeed, thanks that does allow me to select between flatmem and
> sparsemem from menuconfig correctly now.

Mike, do you want to make a formal submission to Russell's patch
tracker? If so, feel free to add:

Tested-by: Florian Fainelli <f.fainelli@gmail.com>

Thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
