Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D03587C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 18:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGakgZKfm0dpLIlb5rNXl91VvtimwKf20skORWriPBw=; b=Xa9DHG+gto3z7T
	l1rRcqnjqXw+fl/cNKUnxTFOQa1NnC6X0KOyTvEmVY8RWblWBqEDeeZozSa/C7S8gGKImQ26nv6FT
	CrgKNWWHjkotEivXqXLdM1C8dT/hoHxmXZBPSbfWppzGLXxGDZQmOyHr+cIUwx3iS7iA9iQ+YTB22
	t+xnAdBg/z06DPgCdh0atmhORkSvqLjaAxK2wss59VXvAxg9KncYnYR+O9OwTLIk5FMjSNtDR9O0t
	H/qO+KYbyGuF5Ne3rk+bmGoEVMDphJ7SMW4QKmDUtdFgyqNh1qbJgmtSdq7CJ13WkhSEC863Rgen2
	zAIV+yEvLorkC27ZzuVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXgl-0002W5-Bv; Thu, 27 Jun 2019 16:55:59 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXgP-0002V3-HG
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 16:55:46 +0000
Received: from [192.168.1.162] ([37.4.249.111]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MRTEp-1hspKc0A8z-00NSkY; Thu, 27 Jun 2019 18:55:27 +0200
Subject: Re: [PATCH v5 04/12] PCI: brcmstb: add dma-range mapping for inbound
 traffic
To: Jim Quinlan <jim2101024@gmail.com>
References: <1537367527-20773-1-git-send-email-jim2101024@gmail.com>
 <1537367527-20773-5-git-send-email-jim2101024@gmail.com>
 <CAKv+Gu_d-r0ubyqZcDzERYd5FVTSpjBk++iACHqVgtHrOK0F7A@mail.gmail.com>
 <7fa897cf-4d58-c63f-afdd-a3ec5a6a56bf@gmail.com>
 <CAKv+Gu8aJRV4nqq1e-5HRLvbrANQsYuMf-pwWB53BhxLgX7iWg@mail.gmail.com>
 <b74d3c16-a512-73dc-c94a-ef6adde5f757@gmail.com>
 <CAKv+Gu8ZbN3BDRyuFzt4o--SSUmhuOh+jnpq8ZR-Ay13DJrAqg@mail.gmail.com>
 <fa285694-c3e1-adf8-032a-202e7598de41@gmail.com>
 <CANCKTBsypcVS_iC1+sbW5fMKfj+tTsxbQv9CvDwcO8GV3a8_Yg@mail.gmail.com>
 <CAKv+Gu-+OjJi8zGLqvnsOJQ9ygMot-O0EbyMKO-yyG-+k-274A@mail.gmail.com>
 <CANCKTBtbwSqfSU0b_d6Yi7TV3R_ijEpPE8a4bpgpkcOxJOa_zQ@mail.gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <cd1a967d-2088-c644-6b50-547b14cd3357@i2se.com>
Date: Thu, 27 Jun 2019 18:55:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CANCKTBtbwSqfSU0b_d6Yi7TV3R_ijEpPE8a4bpgpkcOxJOa_zQ@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:l0xqY3UsxG8WEbzy1MkAb9rzx+/CW3Sl86OkU9r+x4PXh3NDpHY
 1fwSKXJXdqciEj2c2bsPwifFf8+/31Gek/e6wGpwtSJqPM+76aw6uGipn+WSViX7bpUjccb
 9zPy89bXBT9oPQCwtOulXmsYEP6wsu+5J3kc0qetQHJHRlDsDoCwRdHPrudpPnmS3C4UQXb
 74x2o4zcoNmEV0yL/aemw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:klzKvQL7Mbc=:b++CW595MCjhCMXg9C4h31
 RtO/vAve4myjETFhYIxsF5oFo5fRpCpdJH2139LBmLFuxAJgnmtH6Pr0u5ZHeThJKVKz2Ejpk
 jDcvjod4IGE+4yJyitnP/HoEIxcxHOTRiJVkuUa8x+b+vRAP3P795AwCT1Q5LCkkD0LLb2B1W
 vcUHjwpnmZoSMvU565P1Ms2Glmw/qjV5HXVk1miUwZfvzv3eqTe1uogzQr8OBbAGLEowVRhhU
 CP/GqAj5pUjo3BvhA311IgmmBAA5fUIRsdOzdV2xIRAdSpqUlL+GkajB5Q6ISAHYS4X1l5W5q
 PjZOMdCeBoolYEgp6hm9UM/+plE2lo/Asq8G2k7g3TMaXfJvkT7M+AXV4oA0B3AxKqhWJIJFo
 DwdTB3N/mog32B9umoVLSeyozBsVgQyb05MjqKBO4+sw2EI0wd2D0RCbVZLiBUM/WvxRXyO+K
 lvtVY0fkO4KJ9uuPTgmkhVbVOh01k+3MiVVcWeX1iCnJhucYno1VHzorRnI1qmnyr/ygGdGkl
 NVCFxrtaux/gGO10Af4qijoAjDjuQVOH92ZuGuuJiwkjOEnGZSNUUQ2UlhgNbP/yX7L+lDUBD
 JWFw68rIATVEm1HFgoCbniN/tVXYlIsiAGlOWS5YIndUfXdN+DZy6T1EJwo0R34AqX0pSirMS
 FX72uEEHggC8IaBDbfz5bXSIWxJ9gh1oTvJTHxikDpAlTxEMzLAppcMblW2z5qCTySFFvIMAF
 /PMQkbheeqzQANXwVlQy4KiZuAVut5luUMrvdtR41GmGRRMLS2BhQkOTPu8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_095545_256869_8DA2B572 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, ard.biesheuvel@linaro.org,
 linux-pci <linux-pci@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Gregory Fong <gregory.0xf0@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Brian Norris <computersforpeace@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jim,

Am 24.09.18 um 17:01 schrieb Jim Quinlan:
> On Mon, Sep 24, 2018 at 4:25 AM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
>> On Fri, 21 Sep 2018 at 19:41, Jim Quinlan <jim2101024@gmail.com> wrote:
>>> On Thu, Sep 20, 2018 at 5:39 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>>>> On 09/20/2018 02:33 PM, Ard Biesheuvel wrote:
>>>>> On 20 September 2018 at 14:31, Florian Fainelli <f.fainelli@gmail.com> wrote:
>>>>>> On 09/20/2018 02:04 PM, Ard Biesheuvel wrote:
>>>>>>> On 20 September 2018 at 13:55, Florian Fainelli <f.fainelli@gmail.com> wrote:
>>>>>>>> On 09/19/2018 07:19 PM, Ard Biesheuvel wrote:
>>>>>>>>> On 19 September 2018 at 07:31, Jim Quinlan <jim2101024@gmail.com> wrote:
>>>>>>>>>> The Broadcom STB PCIe host controller is intimately related to the
>>>>>>>>>> memory subsystem.  This close relationship adds complexity to how cpu
>>>>>>>>>> system memory is mapped to PCIe memory.  Ideally, this mapping is an
>>>>>>>>>> identity mapping, or an identity mapping off by a constant.  Not so in
>>>>>>>>>> this case.

are there any plans to release a new version of this series?

The Raspberry Pi 4 uses a similiar PCIe controller, so it would be nice
to get this upstream. Unfortunately i have no clue about PCI, so i the
only thing i can do is testing.

Regards
Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
