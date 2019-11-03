Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36090ED2BD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 10:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjkaggvVDYk/SstBRzDxkEctqjHQ1y/S0rm1xLEi5Pw=; b=GkPn18VJuHzz+6
	kNcR24KaR4H5ebsYlqhLmq7ONsJsTFNpDS3cjYycTTkzU1TP3ipSCDeZjJ1If+qCVHvu6iQj20KnG
	SsTMoznIUQm81seBvHpbUEKxlDR5TW/2HTtPmyZ6KTCzqZ7IITt4fU58bUdk00mgnFAqochRwf/1H
	O4139qdPj7e63VaJN/uqi8IvKADScRcXai9eGNZOsYVz5p2XqiGsHGdhNve7GH58rqW3cn6b/VWYL
	KXQcASfCbN1b5IgN5QPS4uuQuVi7tGWB28UPeEvpADJWu83cvKQxJU205+zXAN5yzcr8Id50ut6r7
	nNkWTOyq0i/lWtLNGPsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRCJn-0001yZ-Ew; Sun, 03 Nov 2019 09:37:07 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRCJe-0001xx-SQ
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 09:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572773801;
 bh=TA237as3MkBMt+PvwCKcVcJOsWdyK8OPmU07tKyOyn0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=FVzT/B3m9lNlbmFkRm4TbIGivPYcotkQrhmf2wLmI0urE435A0kpL5ijebUenc8dd
 wdFi9DfMD8wcwghqIqItEl3gySpNuvyIcYN08lNy4PMDwuJ9wN0XSPb3Rgz5wB8Hei
 4M6GTKBztAv/ps4cuYvan18EZ4zSHxX/p8eABPeg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MIdeX-1iDBXx3PrJ-00EbP9; Sun, 03
 Nov 2019 10:36:40 +0100
Subject: Re: [PATCH RFC V2 2/6] net: bcmgenet: Avoid touching non-existent
 interrupt
To: Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>, "David S . Miller"
 <davem@davemloft.net>
References: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
 <1572702093-18261-3-git-send-email-wahrenst@gmx.net>
 <4c88389b-7aad-7a87-8443-3a368690edd7@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <cbf6593a-c455-3e51-6e3e-d45752e4a6a1@gmx.net>
Date: Sun, 3 Nov 2019 10:36:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4c88389b-7aad-7a87-8443-3a368690edd7@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:djwRaN4u4Lqh5MkbBJrR1HlFa0l3kKBD7sqslIPt4AZGUkKjsMw
 NUNtGGi6LShga171+MIdBnGw0UAcKppP/F3mQTMZrwDKugX+UT1VWTpo5Poy1to6//XPTSW
 MbixxjJS2NRj0GfPNVbfL0MBhKBtaTK5fJZyVO9GcZ3AyMo0xO162AP6r+YuA7AAxalkr6j
 +D/pAewA2fB2JHkHCOyAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Dlmr4RIN578=:AYyLOjRcjKcgULSIryBxMC
 nFGM7jefgUYZHOMbYriOMi8RzeWPP0WU9aTFzkR1cmF2TBpmizCSG/aAwEZBRh8lx45/Fu73f
 XbcptMQk6/Od4pS9dyopGY5vDkJ3xV+8KkukM+0rU+GKFPhn0lwyAYFwTGoJpzyqaJG87UOUK
 BuCxeOFWbwMDjiyXSDNSC1tcj1217T1yaxWLWh734BCLKj4GTBPJkd8W/WFAo6E20/+Webfsk
 MOxkVLo6LhZkx2QqHt2P8/fYti1qmHxQkbrWraU5zCsWCVL0prFvV3QxKDPKGCWZtsYuuxWmt
 voIhMRXrnIEyar3/WqwJhsdMXvz4U2GONThqAjJ0wMOFwgyhxpgyduZ378/prHgQAFAyLrtD6
 507nNcuG2iEXgdasgMr4OMoyZ/MpSkgqvZ7NZZAgQv0LIAqUkt5lJ4ygAV+hzWhg7c9hFqCTe
 0E2AQAgAKXYvJJlbaImQEJZ+UOocR8T5Lgs8Lx/tY2EMWMo0MQ4prtYqLo5E1fZc4PtHlvW7x
 THW43RbuZhMAvf32EiEGGjPppXPLETUWuuq2u/bm7iOhZigCSAlSKTnHoJUQs5KTIeMZgVB7W
 g6P9h0BhIfj+9t87tddnPAJAnK/5V+ibLONzdnx71dHflQBsclipDBvDmsFHTL4Rt7E91TI+o
 NsRcgaYfE+n02ar+IJ5Sv4JLvvpEBk4wJW8tMaeySMBZubExjIL1VdtME24GpuzQetdlI49yP
 ZgF5Z+j8kHCEXaARM5kBlheCwkgDfyEESwP5YDeU/cBTdg3K/mHImi/QB7ndtF33KW41O66Gi
 GqlTBI3lttjNPzfV5r5xFH0mZN2GI60oosWr34QFJ7sS1SmoMJ4yvUoh/kTEsNg6YoFTdvZuh
 fbe1lYdGYPPInWMiqedzj9ZP5HG2u1ZAClmYoRzp92rcp9030JzHvWQD/LRUo05bJ06T0OZTH
 JRXZSGolpPUFn8wzfkUtOEkLFTUgVJkjVBHytcFyyF/PBgooHA9Yx94DIJ7aRuPSusyWL6YwU
 SuT2rraZ1IQGbmkxzKkkVUxuBnP9DOBAZXQDHUYo5Ajf0zEMl7EeD7j1HawcUJ95y+jtRY5zn
 BvQrjUtyCd9ksNqO8kCbwVq9/uXxvk7cLAJST5attZZejRcbL9rGmUHQynrSi7F1KbVEesm/e
 GV6449qXPbVk+VR27ug0gHjS+c+ktlI65JY74KSPHBBcCuQ1oT9TLZR8GDjSgvzSlhVOGCOAL
 FGRIFgRoutqT5+DV6Ya1MkP5l4A7yW0qsW6q1EHEXsomZ/LGK96eUFf3D4MM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_013659_215400_B00DB923 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 02.11.19 um 20:34 schrieb Florian Fainelli:
> On 11/2/2019 6:41 AM, Stefan Wahren wrote:
>> As platform_get_irq() now prints an error when the interrupt does not
>> exist, we are getting a confusing error message in case the optional
>> WOL IRQ is not defined:
>>
>>   bcmgenet fd58000.ethernet: IRQ index 2 not found
>>
>> Fix this by using the platform_irq_count() helper to avoid touching a
>> non-existent interrupt.
>>
>> Fixes: 7723f4c5ecdb8d83 ("driver core: platform: Add an error message to platform_get_irq*()")
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>> ---
>>  drivers/net/ethernet/broadcom/genet/bcmgenet.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
>> index 105b3be..ac554a6 100644
>> --- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
>> +++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
>> @@ -3473,7 +3473,8 @@ static int bcmgenet_probe(struct platform_device *pdev)
>>  		err = priv->irq1;
>>  		goto err;
>>  	}
>> -	priv->wol_irq = platform_get_irq(pdev, 2);
>> +	if (platform_irq_count(pdev) > 2)
>> +		priv->wol_irq = platform_get_irq(pdev, 2);
> Or you could use platform_get_irq_optional() for the WoL IRQ line?
Yes, this would be better.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
