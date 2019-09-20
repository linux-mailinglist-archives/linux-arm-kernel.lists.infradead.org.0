Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605D2B99DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 00:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33sZ9uaw9fZbM2HygkgWnfY+032W+YO83Y6wjs7Cr44=; b=qtBcbPpw2YBXzF
	heD3fqHIHDbpAzkGWed4hL7r/Hyd10Y5a8ZgElbftAe9a5WZuJ6OYyTUYD20sfk2PBPzLd+feTIoR
	Lk3y57yAv30WiFzbr7E1ZBkVMMHWTFQdGh6TKNd6BaWdII4HKenR2slJP9YyWbwDbJ0HfCu93fbjr
	iG/MNACxkivPOqsuyNjCB4yq7RsAWQGZemtlPBB7kB4Tgty2wtm8Bdz4nnmx6PLYA/UkmCaq2wFzd
	K0dDeor7vMFN76DxT1YqOJ1o+pJl4sQ5aRuUZvQNq9RDLO6Ac5GbyxW9aDpvJL7cZH07+AAfqEfTf
	BUMbd20nBT7rvbMeIFSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBRoZ-0004fm-E6; Fri, 20 Sep 2019 22:55:47 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBRoS-0004fM-Ex
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 22:55:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569020123;
 bh=fg+Fhu6V5VJyuACGUBLseXFjv2kSmmWXdJJcK6kyNNY=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=gKJUcSTOAUmRIRlqF0chMUVnkrHWKQcJ1D9WFftnxHSmTtH5vy+iIofPK6i8Oxw4s
 QFBEwkr9HpJlANo0lk/+Bn7LmNdiIz+meEpt5xTKVHBcTqh8fRjpYJkZ8kd2YhDpLu
 BmCgQyASHJHhZCeq4KDW/n15Q4IRATP5YyJ1Y85I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.90]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MIMbO-1iNZIV2E0C-00EKWI; Sat, 21
 Sep 2019 00:55:23 +0200
Subject: Re: [PATCH] Revert "ARM: bcm283x: Switch V3D over to using the PM
 driver instead of firmware."
To: Florian Fainelli <f.fainelli@gmail.com>, Eric Anholt <eric@anholt.net>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 boris.brezillon@bootlin.com
References: <1567957493-4567-1-git-send-email-wahrenst@gmx.net>
 <09f15af6-a849-a5eb-ac39-f4cdb07ebfb9@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <3b5db3d9-147b-6cbe-a3be-16569b5fa5b0@gmx.net>
Date: Sat, 21 Sep 2019 00:55:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <09f15af6-a849-a5eb-ac39-f4cdb07ebfb9@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:fvhcLD5NIXoijsnJbghoo73iDEDtCLM7Oh+qleIkLeb3h9niSfO
 0wsgJf0BMb1IqJfXSpk9EOsD6qIGQC/bQYWnAnWEbr8pRuCxWcj2XZg7hpovodcHsco7SGL
 PpzmESTGMs87zGwuwB2NnQ461gmxw7mfFRDDftU7fBaMogkzwtpjD51Gn14I5oQJcJaJjnm
 D5LKHnEU5mWFJ51PvyLgA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oGkxg6wEmkY=:UTTqj+UGIQ/jKVxdAI6upI
 f52frNj8xcvkOpGY2YZquOhvfG9p7CmL5pV+VmsTHYQQclc0llluyw0JRyKDmyY9UgbelUXn7
 yaN6FBb7ORlvVbe9LmjDhLEDYNuOU61hRaOW3b/7LUm1qmLq5Og+0Ml9wqvzLRMhu3bRYmbRS
 MQLRj6W+SEPQxBp/CxAIj98ShQFEWiOs3XpVCUz7EVt2zcnKz6zbMxKZRLE5KtaG/dmjmAeqb
 d1lene6LwfVLetV/29jKpEQOlbjiktJCZwi/EWzW9Y2KISKs5Tx/Oi+9Wg6jM/4NEv/vOzvKw
 ehaAVQnQLrYVxD1FMdr5PtbGhsc8r7Nm0+IXLPw1n+cPIFc4B8nvNpt/baUl9ZmIiP4NuNOJ/
 DXXp01j4UGc54lyVeCAgKPvDJYTewq58eZuthTm+eVAFGSWRNbY4IbYIL+Cm5u0Zu/oHQLrQN
 lv8ymHuJUl4+0iL6wKZme83zMfQpWvD7D0MoNQ2cBuHTv+xrN2020fGc+eIHgGkC5rcZrHkR6
 JmlgETDL5ILhdkVU4w5Cw0FxLAr5nzS3KW+rVH3iAUEVMwpNERo2MheQ5bB4rCCm183Hc2QTF
 1+RgGWXW5w/RKtS6UMIn2xiV6+bgwBFjHt2jc9tnEuF1iiFLAZwEImAlDbpisoBArXuJuWrGg
 8H8Cfz43UFJIqTarQytvu4Xzc2uOfAtzU3kVblKbzTxUibQIaKI8spaBBlK/sQJWjxyT+tDUV
 lKPLUbmOJi5A85r7fNUcU8KWo5DHVXZVRxdRAP6/r5Gqzf7IBvisIB7R5kS4GYLNOx/sm0TLh
 pIqC/lzuHhovlVX3EM05AElKuPS8kiO818jGhaPIrCf8Tm+0I0J/qz9JoR86YMl/RpCT48nVl
 NeLhQs1jdvNY6xEsbd38wq23uj/6dFfCYTLWLg9wKvj6WeUkNOF2sOHKbiSNTgxoa+SDeoAm7
 fvzu1j4Bbl1o10sVcPm6zTpUy/c9K3GcpiUZsEjjY1mkMFTtlVv4mZik20oOCGCFxXhAb51+7
 wYJULKJpqOfyo3jHuZZ1CqLFWEvp6xtH4XzSbrJW9HCfadWHCf1Z7SfJBXDeXZsyt43W/Pq44
 pIAGu8HxtI5DDTopkUegy26Luis1AjbHl+uIZSMbwKc9iZIFGBnV1XvaHPjptJ0RRjhhdl5me
 rVKeoAHKcFrGRoyX7deeYi2DM8G+XJi2FxZRPc6lT5HD/bJeUc22K9Sx6Ld2RUmzh+tSOLbWR
 xXRhWX9z6KucEV/wma4U/AMtFTEOsQGKbiJlyU9KxeUOc4XdrNnN/RiIjcJI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_155540_835143_09D9CE39 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
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
Cc: stable@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

Am 20.09.19 um 19:52 schrieb Florian Fainelli:
> On 9/8/19 8:44 AM, Stefan Wahren wrote:
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
> Do you want me to pick up this change directly, or would you want to
> issue a pull request for 5.4-rcX with other fixes?

there aren't any other fixes, please pick up this directly.

Thanks

Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
