Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B90FACBB47
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UocurVYzjzPHBJ1jfwskU1cON/q6MNb5776hyDwEs0=; b=KtSnYBpQQIUsQR
	nG4RB84Q0zhTg2sNFS5n4p3V1GDah4DpiFMK5d2uvdINbdIPfel/oviL0YsTz4AzdvGIVY+tJsd4q
	g4+q6ectuQJJxEaVtJtwV0Rj7SWIJYSXHB75pxXXwsmO+X4b+SKb6CVKSVHo/PFOL0Gs+iv9KAJE5
	Lyvq2fyn1wrhmQdZdVWjAQfHzt2IIDjiSUlhqPkxqp9SdL6aDorX4EkxhL/lSo07pzRm8mPhRkZ4O
	DpIl8ZsudIgv00EMiT2ReTM2sbU2ObYClHxrbYO2edgOZWJxPFKZSRdG2ukSBYW855EpPgSOtrs4k
	9Qv1wJHFEc3gMVgfkq6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNJl-00044y-V5; Fri, 04 Oct 2019 13:08:21 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNJb-00043x-Rt
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:08:13 +0000
Received: from [192.168.1.162] ([37.4.249.116]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N4eOd-1i5kly1aQJ-011mpf; Fri, 04 Oct 2019 15:07:53 +0200
Subject: Re: [PATCH] mmc: sdhci-iproc: fix spurious interrupts on Multiblock
 reads with bcm2711
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Adrian Hunter <adrian.hunter@intel.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
References: <20191004125226.27037-1-nsaenzjulienne@suse.de>
 <0b544f5bc31857fef2d13bd16275cf09ace58b89.camel@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <aacf6c56-e156-41b4-40b9-e8228ab63fcd@i2se.com>
Date: Fri, 4 Oct 2019 15:07:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0b544f5bc31857fef2d13bd16275cf09ace58b89.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:pR/2ExagJgkml9EmxezFDGY8zJHDHHGM39AFWHqtz3zhwcgM2Dw
 WyRU7QbbVx/0+eDddrnfK5On9VfcwMyIPI2/cfWt6jnTnA1Xj75dSz5GJ4UM+zOBrnMNx5Y
 Ynr1cLHNfa6vPmJKQ6UvtlCUt2zy53MedbbIt1x4aFzyajmafYfP3TiZIU3vJKBzrGzlPBW
 w5tQ23qth0Ou2+uoR7e0w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NRsH2DW6qo4=:q7TkvBteAnM+ASESva2mwt
 1vBVwQlQApmrUnNlkC/9nYnp+DPFibxn1dLCgZspN3KXZSA/EfdsCvbamGFDidKyWS53kRZLx
 89UOv6FgvEt6iRWtbglFezbA6rEDdl9W7dz/5msSmZ5aSPeASip4uxw/oxIj3sUwMegbwEDwk
 cZViMVjcXJu/W7d3z89ItlMqE6QZXqaroqmoxcBJFSnW1eI71GczmjetLRH102B4rx1OzRyEz
 U96Q4za82pjkgi4T9O5WZzd9n41cpGdJMRFrcIfJsGaZoJI9LbY7wTmNJOJgZ/u5OsRBRWzmv
 nqNSC/NQQ9Lc/GHk7HmbDI5M71RzvOTsdxJpJUVOxhml0xaKsPqw4jkq8uG3q1VLUIPeBccXA
 FQKpErj1MGPVvmHNT5/H6QqjkrzDhC3C13rf8oeBQY8BWcMeMXPXmJN9tfVygpe92cCQw8wPv
 7Jmp83UZzCfHLAcsRh5blg7aCkSzX/oLcL6NJiGOXyOH5DYmZ7O/ieALDYQF3/JxV9J0rC2iA
 y0QpC1mI8Rx8oR3DhOdrneHrVf1T3R8wCbYJllV4NUuTZ13lxR8gTv9bhmE4tM/mPy2/LBwS7
 6zXeC3SNRQIOOdXzL8HihgvUSCtSXu1xhuYnp57Y8gxjoBjvG69ZKWlfhhKSj+Eo6yccXypP/
 WdZWevlFw2ue4ZTA2pcZLzNL29E2ewDgslH6qG5zfphOKKBftGqa6+U5n9gg2T4jaD4U4Htnj
 Iz4C7y4A5Dyi2pCqz4GYJDsrhvDdn8sAocYIrXyBAh0lOpsUhHwKhxVRc3Fhw63CA5RNgWb62
 mKGChj7/M/PZTVdmlhR/ANq21roXy1jflBVYFQ5wfVkieGaSX7Q5Rv7ZIIx974dtuvgdRYlS3
 mFsI1OAqFwy3JR38nzFFYkP/+FENz1Ah+4h7huLWOwLZOvMIuHV09bgn8jjV8vZ0ou7bmd1+T
 W92tUOHxHgSY2wXWkTSBMfFTgxBsEseB5vjC2doujRnQs+9cTsaDX2J72Q4D/pYeGvhWr3X+c
 F0XBLapaI/xQFoafTh2XjkLTw5SG4PMloa/x6vE02Q0SIpfh1uGUQmWStw15gqPGtA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_060812_196896_B4B7ECDD 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Matthias Brugger <mbrugger@suse.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, wahrenst@gmx.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 04.10.19 um 14:59 schrieb Nicolas Saenz Julienne:
> On Fri, 2019-10-04 at 14:52 +0200, Nicolas Saenz Julienne wrote:
>> The Raspberry Pi 4 SDHCI hardware seems to automatically issue CMD12
>> after multiblock reads even when ACMD12 is disabled. This triggers
>> spurious interrupts after the data transfer is done with the following
>> message:
>>
>>   mmc1: Got data interrupt 0x00000002 even though no data operation was in
>> progress.
>>   mmc1: sdhci: ============ SDHCI REGISTER DUMP ===========
>>   mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
>>   mmc1: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
>>   mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000033
>>   mmc1: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000017
>>   mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000080
>>   mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x00000107
>>   mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00000000
>>   mmc1: sdhci: Int enab:  0x03ff100b | Sig enab: 0x03ff100b
>>   mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
>>   mmc1: sdhci: Caps:      0x45ee6432 | Caps_1:   0x0000a525
>>   mmc1: sdhci: Cmd:       0x00000c1a | Max curr: 0x00080008
>>   mmc1: sdhci: Resp[0]:   0x00000b00 | Resp[1]:  0x00edc87f
>>   mmc1: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
>>   mmc1: sdhci: Host ctl2: 0x00000001
>>   mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf3025208
>>   mmc1: sdhci: ============================================
>>
>> Enable SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 to enable ACMD12 on multiblock
>> reads and suppress the spurious interrupts.
>>
>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>> Tested-by: Matthias Brugger <mbrugger@suse.com>
> Forgot to add:
>
> Fixes: f84e411c85be ("mmc: sdhci-iproc: Add support for emmc2 of the BCM2711")
>
> I'll resend if needed.

Yes, please and you can add my:

Acked-by: Stefan Wahren <wahrenst@gmx.net>

>
> Regards,
> Nicolas
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
