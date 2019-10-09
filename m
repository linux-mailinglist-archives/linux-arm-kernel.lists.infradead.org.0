Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76655D1AFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 23:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auzLH2Hsij9jY1sECYzQnsozV35qeSplieF77uWbwl4=; b=tHqMbSjnJ7QWg4
	p3Vl384+V2evO3nL7baCFkSWd5qxgRD0W843YYENlNd502ZA7bt9qJ0U3sUCEEvOgDdYH/wDuh6Yy
	S8snUBAK3dXRv39BePfX30TSa7B4d+qOTnH7eDcETCgRUsnjpy1yxDjbTAt06fqrfep5CnqRO2XB0
	BXG62zUnmBGoLexCSraKqdT9E3SI/0xIJ0w2nPCuVMj0wEPfZN8rs5VloeD5aMJszMOPa2VDbltQ1
	qVz0/gbN9536bFXm11sMOx9Mxxq7KC2N5r0bbJ4NdwdQaguLGD/dee7bto+E3CZjpGeVYMtsyZE/2
	8DH0fvu2aV+pxKFPrBiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIJaY-000735-M0; Wed, 09 Oct 2019 21:33:42 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIJaP-00072V-PF
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 21:33:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570656791;
 bh=N6lgOy6mySWA02l0xeVs/vxnnGNoWkpNhTKBfor5tx4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=PAjqOAGgdNSfmbwL4CpATg3VcDexGgoC666Qs4blwm0yhN3YfmCtnwxnwqWKkyWSD
 aOyhUV75+7JuJuatB4WmDYAWLhf0xIy/15gnKWQYfYbj5Www64AhGO7FwNrb37v/iN
 Aq3g1IHFxOPkSJRdqGxiKrMAO4ptl65zF4HCpjjg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.116]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MGhyc-1iMBCX2fVS-00DmkC; Wed, 09
 Oct 2019 23:33:11 +0200
Subject: Re: [PATCH] Revert "ARM: bcm283x: Switch V3D over to using the PM
 driver instead of firmware."
To: Florian Fainelli <f.fainelli@gmail.com>, Eric Anholt <eric@anholt.net>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 boris.brezillon@bootlin.com
References: <1567957493-4567-1-git-send-email-wahrenst@gmx.net>
 <26e101ad-8b5b-edef-4437-778bc57ae81f@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <077547f9-e0ec-29a6-6264-0281dac6b8c8@gmx.net>
Date: Wed, 9 Oct 2019 23:33:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <26e101ad-8b5b-edef-4437-778bc57ae81f@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:govPV+znmuOpD6OdXdLpDlZkMHQS/50KdDZvWzHbC5pNOX9Oytu
 L+lJFeLj1LA262nWfNlI/xYOdnB2S77+oBBkeOLzS0w1FVZsYBc+GwMJxVJZt4DdOuSDqJf
 Exni2pWqSTubW46kw2lwGjRIu4rcp9ObgL1HVfhdlgf7Q6dBeJYHXwKg8ZQAxacyJNYpD9I
 AFm2ipzALuW2J/FgxuXGw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BUhUngg8Tm8=:Q6+z5pKzRcXVpe420A6dwf
 9kNjKti++ZMv/uviufVwOXvkl/po7it5pdR8xNA6R1Tp8m1tQfHx0grSEHeMm71DS7WpjJyzw
 LRStrUU59wSWwEdfZ3IRbSEPmqsYIjt1BVRFlV0ADWyQmVUptysh2iyjPHhtA0M1XVZ8a6FIs
 BsJ0pa0qwySGei1AQw9c/67FrKW7ir/N0h7/gKngawYhv8hoTpSDEmIkJL9BEHph1GZFHOT95
 jT4X+Ff1ItCRwu4fK1mQXoC+16MpHNHMbW/6kd8dieKQXPVy66nQjJ66W1gWZNPCIjhOhMdrA
 dRf7KSHsvxZU3o+gTewBrxx+lHV9PDQdwj379MRsRE5WNY8L5OgDPe9Kk6V1zwJjSvLXinifx
 MllszqpIhkGY0KIlKJit07107OqPy0gcobEb+J1yxUGM7sZBJ0bpc8jOiHEApqffwLrJFMkvZ
 OIRkhK634F0jMM+++OFU/PTjdM8upZL+ldl5M4pUWTBRx1DN6Qp/+RNJVbrwdFgAIsZiFAPz5
 puup0fVWnFfW0S746zRJg74oZ3FtRPNqKYjZaL2BAn6yXFk51K9IXtBGP9NnVY3/2ggl+l4o2
 1HIkFLfvSDG8UN2+14qwoTo2urRmfdMXeIhJHmlHabW8gfK24FcOVMbylcrKfOmBGf9zH851u
 DsJzvhs+LqYUjAaRMcKQB0ltCmfGFpARIjiMPuOb4Eit1sfRnmQNqoG4Yn8ACQo+Tacon2pDh
 vaQ5YhHG+Gx/Hrj9uY/zhe3TNg1tp7ev8EPKfshKzw3Ik69p7NyEdTey4i4+g3uExCaM53q7G
 uibZNf/fruMx3ILGJ6EJY5X6pRN9rPBlk7i4dXLyeiJRMLuDJXOsMg+tw2K5oMWY0OQLk3Fha
 2EHcvP9jvnvLfefPB/nf7hoIsScROxmOvGLgd972b59ibxafaMuyvK3PihTIigEjW+DlT9fc8
 +22PWRaEx/y4DOjj5SEhSiDYk9bZSQf8SzMiAg/nLXMhHBJF2On3Qw7YwV6dO5aDEUlKpuwpC
 45XdjN3b8a95y30nsz9sQWvXcsTv5RfMMvnL0jATNzi7KJEY1bXgmtOCiBBXqdMOKGfXkAz/n
 U7IYEV1cPXIWCUqknDvIBwKQE3ipdAIJ4uNPiHrj0FRaaFdnvkhiSVnu1ost4TY8ZLf2b5N1E
 2LwA5sB7/EuTvC1CGe/3AJjXzd2RwL9bnHmWBeTdxnDUmIKKAPAklCUaOIb6Te9qk74RMU55Y
 OQQPRsukBhSz6DTujKZusbY7EiskSwF2qErGMwP9bhANv5siDAfFgB8Zobbg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_143334_153003_40D3C2B5 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

Am 23.09.19 um 20:56 schrieb Florian Fainelli:
>
> On 9/8/2019 8:44 AM, Stefan Wahren wrote:
>> Since release of the new BCM2835 PM driver there has been several reports
>> of V3D probing issues. This is caused by timeouts during powering-up the
>> GRAFX PM domain:
>>
>>   bcm2835-power: Timeout waiting for grafx power OK
>>
>> I was able to reproduce this reliable on my Raspberry Pi 3B+ after setting
>> force_turbo=1 in the firmware configuration. Since there are no issues
>> using the firmware PM driver with the same setup, there must be an issue
>> in the BCM2835 PM driver.
>>
>> Unfortunately there hasn't been much progress in identifying the root cause
>> since June (mostly in the lack of documentation), so i decided to switch
>> back until the issue in the BCM2835 PM driver is fixed.
>>
>> Link: https://github.com/raspberrypi/linux/issues/3046
>> Fixes: e1dc2b2e1bef (" ARM: bcm283x: Switch V3D over to using the PM driver instead of firmware.")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Applied to devicetree/fixes, thanks!

i noticed that X hangs with recent Raspbian and Linux 5.4-rc2 after this
revert has been applied.

Is there a chance to drop the revert?

Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
