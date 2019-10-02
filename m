Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B468C90D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 20:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/on1c7LmQOzTtOaJd5pPJTn0bKtvHuDXDA3cmQQWh4=; b=Ib2SdKPmSnSW+l
	Lv4XwQb84MvbEAA2hnVD01F4QX9TI0evPSpGQnUPjg485Pf9+ACc5w0yEqi2eYzHbsQq9yVBVy5YK
	TMjK9SQ55oK02cvHDjGWrFIhr4BlVdwq40CF7B+WXqigZFEGpPsz7Rzh3PAUu9ySLNh/hJAMM1lPi
	A5zi7tVdb2m9kg61YSXKPJ/okCmX1PgIe3PC1qUv9MgVDbEQCnTCTOdMNYxGP8NZcCAKSGRnSGQ6A
	FFB+1T1LNzMgsV7bjkG2fYjvnYCENqXq/ItIuGvAjBmJMLFZRmL0gQ/YD7icFZZrQWK34I1PyLos8
	m60pCKlFPZ9RoBaSxGVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFjMI-0004id-29; Wed, 02 Oct 2019 18:28:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFjMA-0004i7-JF
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 18:28:12 +0000
Received: by mail-pg1-x542.google.com with SMTP id e1so6829953pgj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 11:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=izcdKMTlTPXdg1rZpK9PkNPTeAL5ACc5p0aT6ECn+3o=;
 b=nr6ZKcXN/729CI5YvKkqVc0Bz2wyp7AqMiNJbnneIbJ2S8a6/RpgT+vQxveooa1g8o
 Tzstjrebdj0ch6CBEQIhLHedt+Meqh8poQODSN2lg0OykjXXZCvv3ItaPXFO7ZImXqcW
 RuKmutNc32nfhTfdTSE+Gn+FP0hyvVehIb12ZNHr5rdWDezRIrhU/4qCY2koq02vv9hS
 0JYsKwzPEkKLeHC0o1yMLr4lNeC7nIidqjJQlgZ17X3hwG7uMGUGlb0FYDKstybAoxSN
 PuzGKEISFL71Mt9LOzHTLH19Bi/ikZqtSvsTTAUBs/9/pSrhf3mQrJw/Bi+Y2mWPIur/
 yzHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=izcdKMTlTPXdg1rZpK9PkNPTeAL5ACc5p0aT6ECn+3o=;
 b=iePFNzIdsv5HktV2Hk1AO5i+KXWCm1E3huy3nLMy9NS2n8BNK0J5SXA4m1wzzkuLsW
 01sCF7EankP5c3dY702jMf4Nw3G6MaJqrcrdeT9UXWQ8ES8RRMcljL8guLKMhDKZbe1y
 E1j1uhNLPmWJ5pu5mV4cm/h0ZQc7KDwCpX+BxsneKXTYwPGCjvBHPJ1ojbA6GUsQKz3o
 qPGvz28JQRA5VaC6iIM1JPp5WMGKsJ/DY3MoZ5ilkm7jDLmg4NkaZfaRjqcByZVqJNhN
 hVFJrdlAZ78AfAbAGnXqLs4diTxY0XnOZpcyOSmCYsmrvAPMFAL5+KaUwmxlMHJIMIcJ
 81VQ==
X-Gm-Message-State: APjAAAV0yKXuj3WMWsEKEn0bU/EMAWpGSYa1WIFrozISuW6TSIHTzNoh
 lBeqUcOQomhQSBXiYQY3uPA=
X-Google-Smtp-Source: APXvYqwrs3FB89RH0+kgXBF3ejwmYPZLTgHaLNuUiXE1AjcShSZR76+3xPYW28RCBcE0p63294782w==
X-Received: by 2002:a17:90a:c214:: with SMTP id
 e20mr5758828pjt.81.1570040889544; 
 Wed, 02 Oct 2019 11:28:09 -0700 (PDT)
Received: from [10.69.78.41] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b14sm162486pfi.95.2019.10.02.11.28.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 11:28:08 -0700 (PDT)
Subject: Re: [PATCH 00/11] of: Fix DMA configuration for non-DT masters
To: Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
 <CAL_Jsq+v+svTyna7UzQdRVqfNc5Z_bgWzxNRXv7-Wqv3NwDu2g@mail.gmail.com>
 <d1a31a2ec8eb2f226b1fb41f6c24ffb47c3bf7c7.camel@suse.de>
 <e404c65b-5a66-6f91-5b38-8bf89a7697b2@arm.com>
 <43fb5fe1de317d65a4edf592f88ea150c6e3b8cc.camel@suse.de>
 <CAL_JsqLhx500cx3YLoC7HL1ux3bBpV+fEA2Qnk7D5RFGgiGzSw@mail.gmail.com>
 <aa4c8d62-7990-e385-2bb1-cec55148f0a8@arm.com>
 <CAL_JsqKKYcHPnA80ZwLY=Sk3e5MqrimedUhWQ5+iuPZXQxYHdA@mail.gmail.com>
 <307b988d0c67fb1c42166eca12742bcfda09d92d.camel@suse.de>
 <c27a51e1-1adf-ae6a-dc67-ae76222a1163@arm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <fbae48ca-fbd4-e32b-e874-92b5bba5df4d@gmail.com>
Date: Wed, 2 Oct 2019 11:28:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <c27a51e1-1adf-ae6a-dc67-ae76222a1163@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_112810_633605_1A9B9EB4 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, etnaviv@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 xen-devel@lists.xenproject.org, Dan Williams <dan.j.williams@intel.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/26/2019 4:20 AM, Robin Murphy wrote:
> On 2019-09-26 11:44 am, Nicolas Saenz Julienne wrote:
>>>>>> Robin, have you looked into supporting multiple dma-ranges? It's the
>>>>>> next thing
>>>>>> we need for BCM STB's PCIe. I'll have a go at it myself if nothing
>>>>>> is in
>>>>>> the
>>>>>> works already.
>>>>>
>>>>> Multiple dma-ranges as far as configuring inbound windows should work
>>>>> already other than the bug when there's any parent translation. But if
>>>>> you mean supporting multiple DMA offsets and masks per device in the
>>>>> DMA API, there's nothing in the works yet.
>>
>> Sorry, I meant supporting multiple DMA offsets[1]. I think I could
>> still make
>> it with a single DMA mask though.
> 
> The main problem for supporting that case in general is the disgusting
> carving up of the physical memory map you may have to do to guarantee
> that a single buffer allocation cannot ever span two windows with
> different offsets. I don't think we ever reached a conclusion on whether
> that was even achievable in practice.

It is with the Broadcom STB SoCs which have between 1 and 3 memory
controllers depending on the SoC, and multiple dma-ranges cells for PCIe
as a consequence.

Each memory controller has a different physical address aperture in the
CPU's physical address map (e.g.: MEMC0 is 0x0 - 0x3fff_ffff, MEMC1
0x4000_0000 - 0x7ffff_ffff and MEMC2 0x8000_0000 - 0xbfff_ffff, not
counting the extension regions above 4GB), and while the CPU is
scheduled and arbitrated the same way across all memory controllers
(thus making it virtually UMA, almost) having a buffer span two memory
controllers would be problematic because the memory controllers do not
know how to guarantee the transaction ordering and buffer data
consistency in both DRAM itself and for other memory controller clients,
like PCIe.

We historically had to reserve the last 4KB of each memory controller to
avoid problematic controllers like EHCI to prefetch beyond the end of a
memory controller's populated memory and that also incidentally takes
care of never having a buffer cross a controller boundary. Either you
can allocate the entire buffer on a given memory controller, or you
cannot allocate memory at all on that zone/region and another one must
be found (or there is no more memory and there is a genuine OOM).

The way we reserve memory right now is based on the first patch
submitted by Jim:

https://lore.kernel.org/patchwork/patch/988469/

whereby we read the memory node's "reg" property and we map the physical
addresses to the memory controller configuration read from the specific
registers in the CPU's Bus Interface Unit (where the memory controller
apertures are architecturally defined) and then we use that to call
memblock_reserve() (not part of that patch, it should be though).
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
