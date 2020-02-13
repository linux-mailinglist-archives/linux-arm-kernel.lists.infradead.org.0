Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7938815BC54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:05:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=reFweagFwbpQ2FhL5Dlhk72ixow7ePk24qf9ekYgdXI=; b=pykeskKqdsm81ErdqhXGq3bP+B
	gICRoteQdwY/ymUDHEfsGH5QRtDKPfjtACE4ZMfZ9jlAAd34f3CF513+W3kw5rpg97+4x4i2qLXiQ
	PUziS4cK3ke6WkSBHImj0oqDQB5+zZUJAOYoWSXl+Hsht92xqZQPovLI8YrASsl33UAlliSmEoI7H
	Qg4A9v0Kk9tDp14xJ53Zds4++PRia4oDfXu1vsGbfUspDYpH2NtqKkAwYcyrdL0vQwALVypYkPPwb
	GLBIzOYTEYbRoXsO466BPYHZ10hdNvy/MpBvps7snvXCstiVJYo5fRzi+F3ic1QefqeY1d+8j4r4u
	KsGv7wAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BN8-0000Kb-4w; Thu, 13 Feb 2020 10:05:26 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BN0-00007r-3T
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:05:19 +0000
Received: from [192.168.178.45] ([109.104.45.70]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MGyl3-1jFfgV0HC7-00E8DN; Thu, 13 Feb 2020 10:59:48 +0100
Subject: Re: [PATCH] ARM: bcm2835_defconfig: add minimal support for Raspberry
 Pi4
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <CGME20200212102022eucas1p1c49daf15d3e63eda9a56124bc4eafb57@eucas1p1.samsung.com>
 <20200212102009.17428-1-m.szyprowski@samsung.com>
 <a1d66025baa13b2276b12405544fc7107aac8d6c.camel@suse.de>
 <5adcb2de-3570-9c4d-5e5b-726b94fb2029@samsung.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <916c0113-9910-26cd-3720-15399fde507b@i2se.com>
Date: Thu, 13 Feb 2020 10:59:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5adcb2de-3570-9c4d-5e5b-726b94fb2029@samsung.com>
Content-Language: en-US
X-Provags-ID: V03:K1:rqjER1Wpxcp48iehpHocS30UWq5iynTkVomtysQANDNAsxQUZBr
 dpG3OaBTB/7yXyaPOULjiyFytd/2r48rtEt52nhmdVwrYdmJOoirHVd7MchHYtFRr7Y00gi
 5ErUxFr/yw4yv3YsuIMklWSjllbk5ohw+Sv8VeE5QsRBC4kDpp/Ck4JXGluZY0StD5xyV7P
 LaZo/d6mNLiZZuX8hNVkg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z+QugU5XmDU=:AMwpCj3sY65NbC4De41XvA
 DqAZ5X59nak2sBfAWDVEdl1hTs9t8RjbWX5zsezLQ8n5OF3a25CwQX+lbU4/4DRdN6U99/rPJ
 LU5RZwxh73eOs/XRUtl+TVSjgUWXRxrupZMwLWK5x05KOW3kpRcjlImgYn9DT6QrOhcVFZOjt
 XAaTGpm+KaUsLvFt43GikBvOaQNRfc/7wQpxsEDGDv2SjX0+DWvxyMPeKkk+jTmd8zGEdCJcM
 Y6LAM1xeA7xa0HzYnUADi2I888UOKOaz2MBUKhSaU7rVkxuI5EhV//SJOfgtukpX4EG1JTwYS
 Pe/hRiSd5vJczfNU04LAkzQhr0eBVq9uK8wVzmcz5LWad1hhE4GfxjpOzwWaVsFZFtQl58dIs
 DtBkS9xAT5JeTJ//p3T4aazPHtn6YfkLwlswSwN0qhA6m5Z93YeudR7BdEegDus1AQHHJBcR/
 +G6b172OaCcGd2SYdd4ahmWgXmyfPawO7X0bYCtzlE0cit5IkNTF1X9NnPFDY1SQAduQExALv
 pkOOcJJTCSyiMpKNUE8YYgkhHnlw5YTYYq2noHpB6qlDDSFvOf+wN2UVVpqm9vKwxgaE+O3sp
 /TFNCP0TiGGARnLfsMd3wZVhMLOeD7pBb/9C8/3SjY3/X7cC9anEJEBi9pA81Bnfm6BOzuMmP
 siEX2EFc+4xySNuOvxy8kPGSBgjUnkv5RXM0zEYadEc+NtjZPqlp+Mc+eRLMxuGPO6njL+vH2
 sPRiPSfXPo2ilFPuyz4urr+xKTsOWivurmiLhRur8IwPg0wN0Nlllyqdi6miGDxQ2mIDbRr5T
 lYHeTtdWzsg8rrKq44SQyfsw2WcRG9LGxv5Cx9qCoGI1tPb9SDaiZqrHNscWu8p8xEy69Hp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_020518_442997_92F42749 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On 13.02.20 08:35, Marek Szyprowski wrote:
> Hi Nicolas
>
> On 12.02.2020 19:31, Nicolas Saenz Julienne wrote:
>> Hi Marek,
>> On Wed, 2020-02-12 at 11:20 +0100, Marek Szyprowski wrote:
>>> Add drivers for the minimal set of devices needed to boot Raspberry Pi4
>>> board.
>>>
>>> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> Just so you know, the amount of support on the RPi4 you might be able to get
>> updating bcm2835_defconfig's config is very limited. Only 1GB of ram and no
>> PCIe (so no USBs).
> Yes, I know. A lots of core features is missing: SMP, HIGHMEM, LPAE, PCI 
> and so on, but having a possibility to boot RPi4 with this defconfig 
> increases the test coverage.

in case you want to increase test coverage, we better enable all
Raspberry Pi 4 relevant hardware parts (hwrng, thermal, PCI ...). This
is what we did for older Pi boards.

SMP, HIGHMEM, LPAE are different and shouldn't be enabled in
bcm2835_defconfig from my PoV.

Best regards
Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
