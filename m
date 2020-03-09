Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B1017E3D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 16:41:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAdssSzaXDzl+hsG/H0RUnx+1mwAm1hrlUv5GIfPtfY=; b=XxsDo2J8RLKmEA
	hAL06krN1K735Vzm7xnoandOtX6PKG9blQ4SkaQMSf/Tj4UHAhG57jlOk1pLmHPUWx8aam+Evw3Nf
	fNAWuzw6UO0w4T8ILVW+w0bFv/9YWMZjOdE/3UO01WH15ICaqqDlbjh/2+f6yiy32925kE25iK4G+
	P1iFkx5Rdrk1YSmcpO3TkTkMotN+BGohiRI02JRdZj4Fl27B4YxaLBkVmH7HD1w6LeMYYrERJGy6J
	DmXZr/h2ys/kkguKhkg1jUAHqbUOsirghysXsmZiDrWdPkl5ixsOOTdATV+yat4PbMUvB/hVI4wAp
	vQzjxv1k4WjqC/Sychhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBKWz-0002XA-LJ; Mon, 09 Mar 2020 15:41:25 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBKWr-0002WR-PH; Mon, 09 Mar 2020 15:41:19 +0000
Received: from [192.168.178.72] ([109.104.48.84]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MKbXu-1ium9B35Dg-00Kyek; Mon, 09 Mar 2020 16:41:09 +0100
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
 <736f0c59-352b-03b2-f77f-bfc22171b3fb@i2se.com>
 <03fcb1e2bc7f3ff389b6dfbf3964e159a93ae835.camel@suse.de>
 <d3d40174-9c08-f42f-e088-08e23c2dc029@i2se.com>
 <f2ec22160ac86aec8d252ade7d6eb8789777cc42.camel@suse.de>
 <01ceb60e-a791-b6ca-352e-ad2e79f264e3@i2se.com>
Message-ID: <ddcb8fd5-9e35-454c-b38d-d36e7b41ef07@i2se.com>
Date: Mon, 9 Mar 2020 16:41:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <01ceb60e-a791-b6ca-352e-ad2e79f264e3@i2se.com>
Content-Language: en-US
X-Provags-ID: V03:K1:bO13uPSY3dmn10K0yyew7rJcTEabzPG7iig+bLHIqMdpoENbY+b
 i5HPjy0tu/jYA0LrpGE+k0GsKdKtgwqmRIj9y1ptLNcbLmd9N+F9KEFtjZGij4I37XblbUq
 fqQ9peqnPWdyim6yKiTK7tFw2kP8moAwNhgBKv4YRUmkoVKcXCSVJOt2Luvm0g26hOIMQIV
 NLsBaNij49eW2oy8Oes0A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:x2sZWdZtJyo=:I/UXkQxEboRRIvWWiPhTa0
 VMx+4afGgdfVE7WafXkNF9ptPv3Ds9xntQBroxJRda+hEKq19GQxZ4iLEiT6P1eaWkc+8gxE6
 I/4azArlMrE8SO8Kr97+j0xAS+lZ7TyFoUtjw40Vl/JptNfNjZTx/gEVMiuXar3qTXPFoy5fC
 w4drlHOMVBo4nST9iA2cAOTO0MrWHT8IQSt8NY/0ESe8lervSYyr5B6+iZ88X7gs5MMDQnwm0
 F/xmt4Rs4tN6xHN5u3WDF3P4uijVgswW+LIIClb6xrdr4iaAtJnEoHA7hIDmcYzm2xi3nXqHS
 w3ZzTdaLbPqjrU88ATC2htvx1WXcX4vLly8+pk9IYtGY6ugUui47lqGGxrdQp826YEf5n9Gdg
 cLpWITFvZScth3CGKANFdcCb5iwr86D024EzDIyioXO87pW2loOedI2sR8APOzbUkySsUmBfp
 z3nzZd9a6Zsl25bhfwPlee67S0AL/PAj0dHftkZjYbt+Ej/qC1YdRg86KAV1P8/E9opufkKXZ
 yUJmRcph+DYgMJbBTJkzPq86wWLmvCZtACs1I0ypq4w8FtJKBiSAtht2Y8kiKSct3JDPDJk87
 0YepSuA9fHWuzB7tTJxS4tmm+9yZ8OuP//2cg1Jrtlh+YYe2z2HnfVkhviyNbd1xP0cIG2xYG
 2MoYu9IE89vaDn1cNl4iS+jSUK1ktzsIVDQRy88mWLKW0fwJl4AEAaVFayaLfeywknATWUhhg
 i2FvWKMqHWdtYJlgOp18OsR79VSww0K4QQLkKWsyRlcVT9xG6InshXOYiMJlERrw8frm7X0oJ
 xz4GcfbDOOZXkqa4d35peC4wd2ecz5UicCRzKeKd499dIH+CoJwM4v+g06yUPzL+wgx+OX+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_084118_112998_72824873 
X-CRM114-Status: GOOD (  19.36  )
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
Cc: devicetree@vger.kernel.org, wahrenst@gmx.net,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 06.03.20 21:33, Stefan Wahren wrote:
> Hi Nicolas,
>
> Am 05.03.20 um 11:44 schrieb Nicolas Saenz Julienne:
>> Hi Stefan,
>>
>> On Tue, 2020-03-03 at 20:24 +0100, Stefan Wahren wrote:
>>>>>> Note: I tested this on RPi3b, RPi3a+ and RPi2b.
>>>>> as i already wrote this prevent X to start on current Raspbian on my
>>>>> Raspberry Pi 3A+ (multi_v7_defconfig, no u-boot). We must be careful here.
>>>>>
>>>>> I will take a look at the debug UART. Maybe there are more helpful
>>>>> information.
>>>> It seems we're seeing different things, I tested this on raspbian
>>>> (multi_v7_defconfig) and on arm64. I'll try again from scratch tomorrow.
>>> My modifications to the Raspbian image (from 13.2.2020) are little:
>>>
>>> - specify devicetree to config.txt
>>> - change console to ttyS1 and remove "silent" in cmdline.txt
>>> - rename all original kernel7*.img
>>> - copy dtb and kernel7.img to boot partition
>>> - copy kernel modules to root partition
>> Would you mind retesting with the latest linux-next? I validated an image based
>> on 5.6.0-rc4-next-20200305-00001-g285a7a64cd56 and a fresh raspbian download on
>> RPi3a+ without X issues.
> i retested with todays linux-next and the issue persists on my RPi 3A+ /
> HP ZR2440w with this patch applied.

I tested my display with a RPI 3B, 3B+ and a Zero W. All of them had the
same issue. Btw i used this display the last years for testing the
Raspberry Pi.

After that i connected the RPI 3B to my TV screen and it works with the
patch applied.

>
> I will try more hardware combinations tomorrow to see, this issue is
> more board or display related.
>
> Best regards
> Stefan
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
