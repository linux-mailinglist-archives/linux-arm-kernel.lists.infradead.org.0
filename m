Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F950D2167
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 09:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOLIN3BW6bJwxilmQFVXpoC4maPxlM0rc+egiP3SMO0=; b=kWGMDldEGIHMgp
	1K1W8fcQ4fRXadejbKcJ3AtnUUf2cHvh7n/ppCjnps9B3JF6PUXGUdzVibANcLF3tB/v+QmX5GnTn
	uBZqT8TFA7NBM3/5ndwhHvZZ3BNWpRaImFdmq38IAiCwhdQlTkztKGrTqKLQNUEsHEOjNsVQ6K82Y
	kUgomt1bbel2llNgLOXlG0wkwiZuddAynUTcanLGnHaTRlXZ9K+ZkPGEPQxi9KStubyLSSBITgD/x
	K5fENvrlDRI/NgtIvjwCnJs/gEhQggmdUJefiN1Gdp/jxxSsjflt9GJnwGoYT/L3VQjH3zzxWpdcx
	9REb786pBrcEMEPMO7rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISaT-0001HF-JT; Thu, 10 Oct 2019 07:10:13 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISaL-00007k-0i
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 07:10:07 +0000
Received: from [192.168.178.81] ([109.104.52.46]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MS43X-1igLEY0XON-00TU2J; Thu, 10 Oct 2019 09:09:53 +0200
Subject: Re: [PATCH] Revert "ARM: bcm283x: Switch V3D over to using the PM
 driver instead of firmware."
To: Florian Fainelli <f.fainelli@gmail.com>, Stefan Wahren
 <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 boris.brezillon@bootlin.com
References: <1567957493-4567-1-git-send-email-wahrenst@gmx.net>
 <26e101ad-8b5b-edef-4437-778bc57ae81f@gmail.com>
 <077547f9-e0ec-29a6-6264-0281dac6b8c8@gmx.net>
 <877621f0-2fbc-55d1-391e-b2ffbce186ac@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <c04a47e7-595c-84e3-fd6f-643d7ba1d0ea@i2se.com>
Date: Thu, 10 Oct 2019 09:09:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <877621f0-2fbc-55d1-391e-b2ffbce186ac@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:dFSrV1FQvE8GWsU/a/9mLHzLdpVgmO4UByoReHz1faXVC53OIqX
 1FWCfjxvLu65Gnodjy0OINHZdbE2EDJZJlPUT52eiMQbL53KZ1LbHdPh3RT1IBNHffYqd81
 SnnjPsbZHRbz+aDBEBWoECjzflrKrm6J3Gzz99sqIP4jLMKWeQbOk5I63iOiwgd7A4QvGdc
 2+zJvg40xtzJsbjFfw30A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CFT9lENnkyw=:gNNeIOF782sk/pcmwo0miO
 5MZTOer6ZI4qX/rPYUz6mngnlrHHsV7Zx+FnHGDkwYuMNldv4p+GeiCmPUFLCoIXLjmqhz+Jn
 YnzbfMKlLQ04JlWzA0PV+rG13RgGTKq27AOVRS3xFr85t6xBd0M876qTSIYNqyU5hjk4ukFfW
 sBknDentp8o6AUBOH40xIMPZFpicR3hchjXo0FpoGplzH0+VjzmmhCu1y3N5knJnF2gGqHbBe
 aIU+EIf5kzpB4KlEHjli0eq/TdmNcp0TuHHYtQxooCqfdZaXRSiJZDIzWxoApGYI8Y8E4Gnr9
 w1hT3zcp8128kMeGywIpgsr60MwgFERJ9e4d6wf8wHGb/k2zeNX3u8xw/NJVavcloC8VJatUh
 AV30+JYR5NKA7adS4yOL0vsP7JPbgrsvG7JtyNqDpDkqloyegcSKFfVnARv+dtZuPqc3Q94KJ
 vUM9LzElI5HK8XsOLvTy0hnEPCZL1EovAFE0CJUNlgnMslwTrhhwOZHmKA2Zj4146FATDDQet
 t5TD2oO22UQzdxKb0oLmx9mLG96TJSWfHvV26VinFGUCFv7VqhgD9ZXEnbhFdgHh8VcK260tb
 BkpaSODz+6bMHlOFIlJpnto/+iR3hu90bs3rKUKMlj1XNoImAR56z9uJvfQImHwUHBKvsbwkk
 mB6N0wWpYBpl65vMzROeDjFmnFneMc59LOWIUPmDttlp4ubmUlqnNYqsXzd4zskrlimkQoeEu
 M9+wl8aFTliduwPCF3e9Qi8qbVf5x+XZVSoWyOt+NRQ9K8lDPc8w+kWU/+jBzWrw6XpZSfYaH
 f7IAsmAParMn/LGo12jhhBx+m1gGT5luv+A/RdrFxVQfat2fTb9uPBOQtP3RCLq6GDJcxxbF1
 Vj1gisSCMoZMRDR91P3E1aU/bLqBlZcuz2oKgJKZA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_001005_364042_D87E1895 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09.10.19 23:42, Florian Fainelli wrote:
> On 10/9/19 2:33 PM, Stefan Wahren wrote:
>> Hi Florian,
>>
>> Am 23.09.19 um 20:56 schrieb Florian Fainelli:
>>> On 9/8/2019 8:44 AM, Stefan Wahren wrote:
>>>> Since release of the new BCM2835 PM driver there has been several reports
>>>> of V3D probing issues. This is caused by timeouts during powering-up the
>>>> GRAFX PM domain:
>>>>
>>>>   bcm2835-power: Timeout waiting for grafx power OK
>>>>
>>>> I was able to reproduce this reliable on my Raspberry Pi 3B+ after setting
>>>> force_turbo=1 in the firmware configuration. Since there are no issues
>>>> using the firmware PM driver with the same setup, there must be an issue
>>>> in the BCM2835 PM driver.
>>>>
>>>> Unfortunately there hasn't been much progress in identifying the root cause
>>>> since June (mostly in the lack of documentation), so i decided to switch
>>>> back until the issue in the BCM2835 PM driver is fixed.
>>>>
>>>> Link: https://github.com/raspberrypi/linux/issues/3046
>>>> Fixes: e1dc2b2e1bef (" ARM: bcm283x: Switch V3D over to using the PM driver instead of firmware.")
>>>> Cc: stable@vger.kernel.org
>>>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>>> Applied to devicetree/fixes, thanks!
>> i noticed that X hangs with recent Raspbian and Linux 5.4-rc2 after this
>> revert has been applied.
>>
>> Is there a chance to drop the revert?
> I have not sent anything yet as I wanted to get some testing done on
> other platforms, so yes, I can definitively drop that particular changes
> from devicetree/fixes and not send it for a 5.4-rc3 pull request. Does
> that work for you?

Yes, definitely

Thanks Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
