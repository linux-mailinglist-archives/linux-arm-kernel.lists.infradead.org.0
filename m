Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23EECB2DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 03:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBBtMXh2ZM7leT7LF0dhAry2+IMWW+VMlQPuyyt6PY4=; b=NeL4DZlMStEh1a
	r/OAltctY6nZN7wx8k0xKfqRvDOoDReRXOESrIGkOoHnjGJtjd7b7NbToL8oKz+4OronQGYYG6eMI
	n31thCzSmMOidVJQF2ijvn45gROzdO5wc69t3BLMqdDtg8UlzePcALDUuS24Mr7dmQZZvyyw44YXy
	0LMLA+5v6kHtMpIWZklfmslicEwmqY2G70SnSnrt7KYLeR/rrtMAxLAeg+c1xt/krIsqqn51qH4OS
	M3Gvdt43qVNOeRkv1GRU+fcJPOvJUuh0uXjAybCKEk7V/PtoM+STAofEMKci4qZGmttCExBLq8QVq
	Z7uDvhyRvvvFt7BotCJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGC0i-0004Ng-Iq; Fri, 04 Oct 2019 01:03:56 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGC0a-0004Mz-Ua
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 01:03:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570150984;
 bh=JTN0Ilj44RKQef7zRIqRK8zyV4uPBiX8s88kgrgIQ6E=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=f/4MRmjK1IfZXHiY1UIpIwKukgT8+/SyMf7I3gVy4mTB7gGk/q42vAUF8MLIhRnLQ
 VG/Tr4pzGkP8HyCfeM/NH0EJCrzCCKNnEaSt0qzhTeK6v8Q4nmqXFrIdHMpIK1ybq4
 8r4BN0SfrzxCV1grNLLI2bnOK9x7uyx8d7UQO92w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.116]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MZTmY-1iad4g2lmg-00WU0j; Fri, 04
 Oct 2019 03:03:04 +0200
Subject: Re: [PATCH V3 0/8] ARM: Add minimal Raspberry Pi 4 support
To: Matthias Brugger <mbrugger@suse.com>, Eric Anholt <eric@anholt.net>,
 Guillaume Gardet <Guillaume.Gardet@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <3853cd8425743b4991f5d599ec1c0fbbf4232f95.camel@suse.de>
 <d4774e5a-abc2-4c43-c97d-76600f74132d@gmx.net>
 <420c18a3-d458-8115-ef00-f1cb4febe3b0@suse.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <a49902c4-e66f-34d4-efad-a6b0b11fab58@gmx.net>
Date: Fri, 4 Oct 2019 03:03:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <420c18a3-d458-8115-ef00-f1cb4febe3b0@suse.com>
Content-Language: en-US
X-Provags-ID: V03:K1:D/CzcFZMPePatrFrXpghROyf5JWEgoewYoagTMnM7RzIdvTronB
 v1xK1VPIuExh0wByfXxbL3KwfsrhQk+h1Czz9EGJ1uf6zdCKsI/sJalt+vcph8yBrNQT3m5
 hbj8lJoscsGj8kPQYnP435qiRNRsbNM4nBXvl6t33hSfDrTok2ZCLbnzwiUbXYLEgYTXV7e
 4p+Uj5uZL2XBcvcriR8Vg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:i935t8EHEg0=:e4ZlMH/+xjvINkaw8ILfeV
 7ibTs+hRtVGhzGFaqKxbBlZwtzQV/3A0RjMCqn2PPzJJZGwPEDDyTFGgpP9Po7Gh1+KsTlafJ
 KFCN/neBebtwvoA+o76CtcOlVQuExLI2KhNFHfFnxpe6jGeoQaRF8qzHhTmhGKDeZviDnnDiq
 VKCV6U9Z6+hPqX/uun245V9TFy68h+wAySqOJzei1C5Anqa5Yy7dhyjRRXAYDyFQdZYX6I9Ok
 yTSOWdZpBgkqWGqzQJbRyvTywqN2Dsznt6y8w2LoOJKaIgkKfleygmjENnZlxV9g5oYCUgbjf
 qqoAnTLgceHhmEk/eqUduA8nQ3vrXUzfS2uORnzgrVw46c65fJmQy6+WLqy7+MeRotv+AP0zM
 r99M5FTweGTYMmTSFulZrxc6bM53ajuJdN77eE26d47OeknN0PeE+iJ4fAtQhXu3teZb7HuAQ
 WWKgef3uyE93BOm5SHVuhpNqTQOLljdCcFCkhJR67Edqv+ubud/JXwVibByn52Xq+n8c97tQz
 ZKaNNmGa7prpLm3bGeDdEhaeLSYuh9K/WKQ9W7uYxz2icMF6+YtrZO1+qdkRY63SGCTlcRAuH
 H4IdnN6seeaLdasw7PbAZP42zreCRj7r0FQHyhHkNU7Y8G3kqLRHrpmvbOSSl96PfaIPmQEdZ
 KPEieQW+mTpvrI1r7sVCYS5mgf8tlffutHys93gplojUYTnfh1NsjEKH5Tm1awiCBrHzYQbHA
 JQ5bKdG+4ZhoaTGhDJeNd4dfipDcZYm00U9jGlGOpdccrP0cA4gEZokqWDYHTaa+Tp2JXSD0w
 dy0u1caUQbU7yGtsfDFR/v08c113gQzL3rCCSsKMJT9QDt01m536QcXof2aTWWEj6pJSVNejN
 YF1+G0iIvwVW38gvnI+VcrUlaVs0sRCCtzXeCDcgWJUbgEUII2vIIBx4efDcDXrW4NyEONKpS
 fNvWOUyCKeWFzWkM9G4lsMhngQfRThHLzHRqTt0tdXVi1I36Ym2DYnpE8L+jOWD9hBLpnqx4d
 8oQHSv/WxTj7PyfgfxxkFUslaQTiUMb48tybSVdaTPZEbS9LAgPJx4nARigO5ORNUblp51b1N
 SMnHKASXuy2pBiR9zHgTVFiwPUhLYPELfJiBVcP9dS9YNRQX5u4G+1L2zv5irnrMJvpSsAHd9
 V6w08wnZY2zU9lDtSyhi7T829nTFg4I90IoYN86+G4N7W8CfPi5tZWXhHqaVpBC0mD8ENSY2V
 VY+ct3z4scjtZR+BEn0srTWsEX2r1VFEkuSYbxJlYgDnygHwHyzqiAfpiJDI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_180349_394225_34569D5A 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.20 listed in wl.mailspike.net]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am 04.10.19 um 00:42 schrieb Matthias Brugger:
>
> On 03/10/2019 19:24, Stefan Wahren wrote:
>> Hi Nicolas,
>>
>> Am 03.10.19 um 19:09 schrieb Nicolas Saenz Julienne:
>>> On Sat, 2019-09-28 at 14:07 +0200, Stefan Wahren wrote:
>>>> This series adds minimal support for the new Raspberry Pi 4, so we are able
>>>> to login via debug UART.
>>>>
>>>> Patch 1-2:   Fix some DT schema warnings
>>>> Patch 3-4:   Prepare DTS for the new SoC BMC2711
>>>> Patch 5-7:   Add Raspberry Pi 4 DTS support
>>>> Patch 8:     Update MAINTAINERS
>>>>
>>>> Unfortunately the Raspberry Pi Foundation didn't released a
>>>> peripheral documentation for the new SoC yet. So we only have a preliminary
>>>> datasheet [1] and reduced schematics [2].
>>>>
>>>> Known issues:
>>>> Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
>>>> Nicolas Saenz Julienne investigates on that issue. As a temporary workaround
>>>> i reverted the following patch to test this series:
>>>>
>>>> 79a98672 "dma-mapping: remove dma_max_pfn"
>>>> 7559d612 "mmc: core: let the dma map ops handle bouncing"
>>> [ adding Matthias and Guillaume who first saw this ]
>>> [ also adding Adrian Hunter just in case ]
>>>
>>> Hi,
>>> we stubled upon a bug in RPi's sdhci-iproc while testing this series.
>>>
>>> It only shows-up on slow SD cards, the class 4 ones. On each SD operation we
>>> get the following warning:
>>>
>>> [    2.093328] mmc1: Got data interrupt 0x00000002 even though no data operation was in progress.
>>> [    2.102072] mmc1: sdhci: ============ SDHCI REGISTER DUMP ===========
>>> [    2.108603] mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
>>> [    2.115134] mmc1: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
>>> [    2.121664] mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000033
>>> [    2.128195] mmc1: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000017
>>> [    2.134725] mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000080
>>> [    2.141255] mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x00000107
>>> [    2.147785] mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00000000
>>> [    2.154314] mmc1: sdhci: Int enab:  0x03ff100b | Sig enab: 0x03ff100b
>>> [    2.160843] mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
>>> [    2.167373] mmc1: sdhci: Caps:      0x45ee6432 | Caps_1:   0x0000a525
>>> [    2.173902] mmc1: sdhci: Cmd:       0x00000c1a | Max curr: 0x00080008
>>> [    2.180432] mmc1: sdhci: Resp[0]:   0x00000b00 | Resp[1]:  0x00edc87f
>>> [    2.186961] mmc1: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
>>> [    2.193490] mmc1: sdhci: Host ctl2: 0x00000001
>>> [    2.197992] mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xec040208
>>> [    2.204521] mmc1: sdhci: ============================================
>>>
>>> Aside from the serial console noise the RPi still boots alright. But as it's
>>> printing one of these per SD operation which is a lot...
>>>
>>> I've been able to reproduce this both with arm and arn64 on multiple SD cards.
>>> Just copying the contents of a class 4 card into a class 10 one fixes the
>>> issue.
>>>
>>> Any ideas?
>> i saw this once during testing. AFAIR there has been some changes to
>> sdhci in the downstream tree, maybe they was related to this issue.
> I did a diff against drivers/mmc/host/sdhci-iproc.c of v5.4-rc1 and haven't
> found any significant changes:
> - compatible in the upstream driver is only bcm2711-emmc2 and not bcm2838-sdhci,
> but DTS uses the former one.
> - Upstream driver support probing via ACPI.
> - pltfm_host->clk gets only set if we probe via DTS
> - get_max_clock() is set to sdhci_iproc_get_max_clock() but this checks if
> pltfm_host->clk is set and in that case invokes sdhci_pltfm_clk_get_max_clock()
> (same function as the downstream driver).
>
> So AFAIKS nothing relevant here.

as i wrote about sdhci, i literally meant this driver [1]. But this
looks like a workaround only.

[1] -
https://github.com/raspberrypi/linux/commit/88b35d4338e238519bf4e6f73837b4ce44bfe4d6

>
> Regards,
> Matthias
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
