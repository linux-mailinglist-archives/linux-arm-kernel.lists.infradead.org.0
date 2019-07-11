Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACEA657E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 15:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxUrnah/3CoYd3RyPOeAwLwTctdATjdkT5Q70lZUM38=; b=moHRRGYiyaYJpT
	NonQOfjh8WUBkpwQk1yDRHjPzoSnnvRbHdhYkDD0leL1S1gqXnTYl0fbs0SwQLq4QDN3ENiwF2nOd
	4EH+ZZ8SbY1DMHHievXeq22OrIqwH0RygoByDLXhnPxYm3RTS4d0Mw+M9d0rF9q+uxpjv3HGuvc0l
	QphZnQZqQGt+wRxcVbRjDNsh7qFcLQYzOIteztXRKRIWRhGFia0ljcmacb7NAlUttfz9cPcNwXLQJ
	NCDB9xXa2nms21bBEzvJhgZdg1UlyH6M7SU7mfDFfqt2vGP0SPOdvdWGqX93gURrYre7/vQeNeglN
	aeYWtQH5pKWaChcJ9UZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlZCD-0004I3-MX; Thu, 11 Jul 2019 13:33:13 +0000
Received: from mx07-00252a01.pphosted.com ([62.209.51.214])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlZC3-0004HV-VM
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 13:33:07 +0000
Received: from pps.filterd (m0102628.ppops.net [127.0.0.1])
 by mx07-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x6BDS51L018488
 for <linux-arm-kernel@lists.infradead.org>; Thu, 11 Jul 2019 14:32:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=subject : to :
 cc : references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=2hTTEXVuXONlNhCNxuAzZoOouQQ5UNAC2JI0+sNuKCY=;
 b=XF3P2zjTEvpiqTmGMDA3NwcFDThMiiju0vWpGiK9zEh9pN/DoF+ev8WnZDoubefgIb0E
 GbCexZlBYHQ1nAsgjWoecQEv2NStzZber4PUSahBg9y5JAcvdBvoCTlJaTXJCb7/W7l8
 vTo30GRnvJSeIHlZMa66NiSCZCqBXtunhy+GBQPR2BRHgJzik1SJ+H1ILLrk0k/3kdzP
 fQ+J5EnJRs1ks7i5qDRGQ9uBn9sLTpH2SxonfoHmMdlyBv218JmZRcpTTGCaNuJZvjWC
 qt24aX9iwOHT1s9IdXbbSxxDlaXsRdVh0w1chvI3VvuWOfIrdbFfrPVVTe4+DIw43kLq 1A== 
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70])
 by mx07-00252a01.pphosted.com with ESMTP id 2tmd5fschf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 11 Jul 2019 14:32:58 +0100
Received: by mail-wm1-f70.google.com with SMTP id r9so1796294wme.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 06:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2hTTEXVuXONlNhCNxuAzZoOouQQ5UNAC2JI0+sNuKCY=;
 b=QT/YEwMyumuvfFyFkS3smiC4VHAA7GZ8vd++9KyXPaO0HZLOep6Q0Stl6EW/Ps7Wzd
 5HzBvFyE4ElRDDWH/od6kjFzwSASm2U46t4WQWYTCDCGjMAe29ErKMthIOD62ujeQ/6x
 5OwQzBvXxG3lNyyEKxs1d15TSJntvk2dyXqoHAeOTJ32SBjp4cLmcedbiTFxIj0GYHZx
 7nKxX05z0H7EoGPDYQcgcZH4UaYdrenQq7k4HoBGDQZXHrs6wFaCofF7gCW/jFXcbXRA
 l8VX+nrccok0NRuAbgqyILIpkoCYrouyCRmK/KpVapTRTwlDUPafGGeNrSx6wc2V9taO
 wKiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2hTTEXVuXONlNhCNxuAzZoOouQQ5UNAC2JI0+sNuKCY=;
 b=oNvVF3n4irhsib7sqwU/G1zdWwYFz+cdNf3qSEjp6GaMQnlGOrtbHH7/6Hvu3mmrFD
 0ehiFVtEtI/WzGGXBBwkwV9+WNIA34HwDFq+MhzQrWOp8d8PLhVUX1MLOT5XVXondR5W
 5zS9XrAV2XV50gJqiTpzdg8jaTkyMjvEF0n6G0sOSDDkVHLsGrmyTILWaZkM/TRY2RIG
 EzfGklaPGd+bcNC8J2GbR/mpS0rvKk1uK8EDlpAuj+VjpWcf/GheFHPvRMPvJZGWH3kn
 FytoBncyeJBGsRclhbqwLnlaMA4KtZcOnLIQZXqc4RpRT8/YHsf9cuLcH/NTojoU2H6D
 4Fdg==
X-Gm-Message-State: APjAAAUc++aDHIj/VZRAz9n8qnZyX/5cm1MS4A0EtSwK5oXCuJE1ZPTG
 TbFEYrTTw9YVTm8GX2yiiKxSnJiSSTRA3CERx2AvJeUFU16kNnVAxqQkeS5tvH5gzvcgUI/jPMA
 /otqBh82YyP21pq3iMFvSGFYRB2elGzFgdPI=
X-Received: by 2002:adf:e843:: with SMTP id d3mr5484216wrn.249.1562851977745; 
 Thu, 11 Jul 2019 06:32:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyzlXiUq0/nvIHEumgp1iSASMSdpZp/OhpIdiXeevxhTEsUd2b6QZ9zciHRHRZvb3UqXJlt1w==
X-Received: by 2002:adf:e843:: with SMTP id d3mr5484196wrn.249.1562851977499; 
 Thu, 11 Jul 2019 06:32:57 -0700 (PDT)
Received: from ?IPv6:2a00:1098:3142:14:3df0:c4c3:bb86:e0f3?
 ([2a00:1098:3142:14:3df0:c4c3:bb86:e0f3])
 by smtp.gmail.com with ESMTPSA id e5sm5632399wro.41.2019.07.11.06.32.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 06:32:56 -0700 (PDT)
Subject: Re: Limiting the DMA zone in arm64
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Will Deacon <will@kernel.org>
References: <0439cc08532849b1d0adb44a7b2cbc9ce5dceaf7.camel@suse.de>
 <20190711101717.meoyqu5h2zdptypf@willie-the-truck>
 <ba2796eab34eb4ec4a25e7c137faac851776c778.camel@suse.de>
From: Phil Elwell <phil@raspberrypi.org>
Message-ID: <331744ab-5c65-4379-42a6-68e1a077e72f@raspberrypi.org>
Date: Thu, 11 Jul 2019 14:32:57 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <ba2796eab34eb4ec4a25e7c137faac851776c778.camel@suse.de>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-07-11_02:2019-07-11,2019-07-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_063304_369939_ADD8350E 
X-CRM114-Status: GOOD (  26.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.214 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, marc.zyngier@arm.com,
 andre.przywara@arm.com, Matthias Brugger <mbrugger@suse.com>,
 Catalin Marinas <catalin.marinas@arm.com>, robin.murphy@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas et al.

On 11/07/2019 12:10, Nicolas Saenz Julienne wrote:
> Hi Will, thanks for your response.
> 
> [+ Matthias and Phill who might be interested ]
> 
> On Thu, 2019-07-11 at 11:17 +0100, Will Deacon wrote:
>> Hi Nicolas,
>>
>> [+Robin, Andrew and Marc since we've been playing with getting arm64 Linux
>>  up and running too]
>>
>> On Thu, Jul 11, 2019 at 11:51:57AM +0200, Nicolas Saenz Julienne wrote:
>>> I'm trying to bring up the new RPi4 on arm64, and running into issues with
>>> DMA
>>> allocations. The device has up to 4GB of ram, but AFAIK only the first GB of
>>> ram can be used for DMA: the DMA address range is 0xc0000000-0xffffffff
>>> which
>>> is aliased to the first GB of memory 0x00000000-0x40000000.
>>
>> Do you know for sure that these aliases are equivalant and so it's
>> inconsequential if we use the lower addresses for DMA?
> 
> No, they are not exactly equivalent, see the 'dma-ranges' I posted on my other
> reply. I was being overly generic to make the explanation simpler. The actual
> size of the aliasing is smaller.
> 
> That said, I don't think using the lower addresses would work for DMA. I tested
> some transfers and the offset is clearly being taken into account.
> 
>> Also, does this
>> limitation apply to all DMA-capable peripherals, or just some of them?
> 
> I infer from '.dma_zone_size = SZ_1G' and dma-ranges that it's a device wide
> limitation. Maybe Phill can contradict me.

It is a limitation for one of the internal buses used by many of the peripherals.
Newer components including the ARM cores, PCIe(*), GENET, and the 40-bit DMA
channels, have a different view of the address space where RAM starts at 0, and
peripherals etc. are positioned above 0x4_00000000.

>>> This is solved in arm32 using a board file with '.dma_zone_size = SZ_1G'.
>>> But I
>>> haven't found any similar mechanism for arm64. Any suggestions?
>>>
>>> Just it case it helps understand the issue, I managed to get things going by
>>> doing the following:
>>>
>>> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
>>> index f3c795278def..ec3cb7b76a76 100644
>>> --- a/arch/arm64/mm/init.c
>>> +++ b/arch/arm64/mm/init.c
>>> @@ -407,7 +407,8 @@ void __init arm64_memblock_init(void)
>>>  
>>>         /* 4GB maximum for 32-bit only capable devices */
>>>         if (IS_ENABLED(CONFIG_ZONE_DMA32))
>>> -               arm64_dma_phys_limit = max_zone_dma_phys();
>>> +               arm64_dma_phys_limit = 0x40000000;
>>>         else
>>>                 arm64_dma_phys_limit = PHYS_MASK + 1;
>>
>> My superficial understanding (mainly from talking to Robin, who actually
>> knows how this works), is that we'd need to extend our support for
>> dma-ranges in order to limit ZONE_DMA32 as you're proposing above.
> 
> Noted.
> 
>> However, this may not help for streaming DMA, where we need to force
> everything
>> above 1G through a bounce buffer and likely requires something weird like
>> a 30-bit DMA mask.
>>
>> Do you know how streaming DMA is handled in the 32-bit port for rpi4?
> 
> Not really, I'll have a look and come back to you.

Phil

(*) The wrapper around the PCIe block has a bug preventing it from accessing beyond
the first 3GB of RAM.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
