Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853E41C97BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SPlVfAOz/m/4W1IM5O1HnRQ57Hqiurc+WrKa0FuVUy0=; b=s2hPM/kgVL7Df6
	oWCz7poK7db4/qlFcT0o2bEVVtoeHfVF1FzGoiGPS8nWpP3Pyg43vIciw7qjuUSEyOPBx0PSF+bZb
	EclyxWuBgdEVZ1rFdp9oogDM+iSOPGsQSY/2XdkCw+MyElDpNdbjpxKjE4q06jqnZNPR43WcRq0dN
	2ims7YSla7FuAhCuYyHtFwgb7xxJjgQXfEu2OuF/SDb2Cp30at21B/d7jdV5ZrDXRrjubOwpHTqNI
	IqzbwCMiA13JkJ4cE9K+UlNdekbLZk9DbsIj7Y2oGfIKSBsMya6ooSDTIPlEydzayhUHbEAmGYiLa
	I3dejUYgE0mHN71HNgYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkJx-0000Fy-NP; Thu, 07 May 2020 17:28:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkGw-0005pj-P5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:25:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so7372883wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 10:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kpGk+P5eEe7R6zXvOSSqEDH98WoZv2bid38oQCdH0os=;
 b=bkAQjZJXZhNMdAr3ser1cp3aKIwRBsjcWTRaO9V9kw+SPxvcWL6Xrr/Tup6DGFtg0w
 1EJtINA6/er8nFGF7gvLI6XLsiNtfKRcjuOJ6C/VBPX9W6vbrhb+VPm63bS6y1C7jcwg
 9Swib7cRdqZpWs1g1j4PdNVqCtAG1SEqFC+epD58aEuGi8N2pKq2CupML5mYG4oBqMxe
 lF8hwX+TR0RWrfPOICB7ed7zk1tMQQhhGGXPzNvu2/STtjHGo7BxJKzxMNjXNwtJQMWX
 JH2n8AP9UGfc3xalwkC0MBjT/xMteYGdJS/xTFRFtmCRoSCUaHcTgYnO4olgYuGEEHEK
 +5yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kpGk+P5eEe7R6zXvOSSqEDH98WoZv2bid38oQCdH0os=;
 b=lCfRF72/y7+xg6efOloRJE5PT6ctHM9U2yhIOCho4CRMfd1106ua+LQiPuDrh486WN
 qMl2hQ4VsFYnvQS5C6fNOfO0smWTCvWTP2c6MBLJQpNxjDcmFnWsLRgq3xS/NYQ2Zo2N
 66fYnY0wuMLj4z+9Z3XTSBjhcG0/xZsyEEqPaFzpgm3+T7UyuG/lgDTgiS14/6z8m2i8
 Mje0IEY7fhfOMYedCmn7KWpIpJ01XgbJ6BjlQ7e9lc6oluTcxO0kRWD9t2KwSm4aD+0D
 GdpKmx1Yoj+CIzwUD+v56IEKi6AhePa6Qckf/iPcEDNixVQDgRhgwwN4C6vRTygu+bPL
 TkMA==
X-Gm-Message-State: AGi0PuZ1dwCWPAGcUngX5oCJ2mbUVBceFYV+xkDcDAyHjXcssMbT5KYU
 LfXq65UpkAKSYz3Qjuu3Z5Q=
X-Google-Smtp-Source: APiQypLDQRqai7FYt1poK4LHxl6OMTCOD0M//X6sW760xUwToNZZuYV391eSkf7w9URoA2XP0Y8T6A==
X-Received: by 2002:adf:e586:: with SMTP id l6mr16475220wrm.184.1588872320610; 
 Thu, 07 May 2020 10:25:20 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v11sm9428646wrv.53.2020.05.07.10.25.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 10:25:19 -0700 (PDT)
Subject: Re: [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-2-f.fainelli@gmail.com>
 <20200507103039.GR1551@shell.armlinux.org.uk>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <3e7ee3ba-fae9-0ec3-fe1f-c076fc28aba9@gmail.com>
Date: Thu, 7 May 2020 10:25:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507103039.GR1551@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102523_043216_FCF37D92 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Mike Rapoport <rppt@linux.ibm.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/7/2020 3:30 AM, Russell King - ARM Linux admin wrote:
> On Wed, May 06, 2020 at 04:50:08PM -0700, Florian Fainelli wrote:
>> From: Kevin Cernekee <cernekee@gmail.com>
>>
>> If ARCH_SPARSEMEM_ENABLE=y and ARCH_{FLATMEM,DISCONTIGMEM}_ENABLE=n,
>> then the logic in mm/Kconfig already makes CONFIG_SPARSEMEM the only
>> choice.  This is true for all of the existing ARM users of
>> ARCH_SPARSEMEM_ENABLE.
>>
>> Forcing ARCH_SPARSEMEM_DEFAULT=y if ARCH_SPARSEMEM_ENABLE=y prevents
>> us from ever defaulting to FLATMEM, so we should remove this setting.
> 
> No explanation why that is desirable.

This was explained in the original submission out of which only the
first patch landed upstream:

https://lkml.org/lkml/2015/6/4/756

> 
>> -config ARCH_SPARSEMEM_DEFAULT
>> -	def_bool ARCH_SPARSEMEM_ENABLE
>> -
> 
> What this basically says is ARCH_SPARSEMEM_ENABLE=ARCH_SPARSEMEM_DEFAULT,
> which is exactly what we want for the non-multiplatform boards that
> select ARCH_SPARSEMEM_ENABLE - we _want_ them to default to sparsemem
> because that is what the platform requires.
> 
> For example, with RiscPC, which selects ARCH_SPARSEMEM_ENABLE, we have
> four banks of memory at 0x10000000, 0x14000000, 0x18000000 and
> 0x1c000000.  These correspond with the two memory slots - the first two
> for the first slot, and the second two for the second slot.  Each slot
> has two banks.  The size of each memory bank depends on the size of the
> module.
> 
> Flatmem is completely unable to work with this setup if all banks are
> populated, and the first bank does not contain enough memory to allocate
> the struct page array.  So, sparsemem is the only option there.
> 
> Hence, for these platforms, we want sparsemem and only sparsemem, not
> flatmem.
> 
> So, this patch which makes it possible to select flatmem is completely
> out of the question for these platforms.

OK.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
