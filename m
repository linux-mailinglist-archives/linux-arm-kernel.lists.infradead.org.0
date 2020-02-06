Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5478153D2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 04:06:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wTcp+IFYSInCtXIQXpjZHrLIGFYO+fy050bQOi/DHVQ=; b=UlKb8nSzX8ooOM1tO3nEXhPDa
	/oLNF1rNEx5VANw6+ixJPeqXsjpLpuO7NQSqYKA3v89menRAl8DXam0wp6dWixacAzmfcOY8ZA5qu
	xwrCnSxcy4qRWTNyA45rVUtWFXSOgUxnxvdXs5I0aIaNXftEXeDty7OzVcC6dEFkopg723ZIrB1p+
	ai2nt7B9qJgCcBeh2F2LV+2eXlRfaLjskE7SL4fSdqcIjV7TBvUIJxEo08PZjE4t+iPOPLiPwex5I
	rkKYJdbEle+YCQUVya6vreJjCB594scN9rhaXYEqHv4ZVX4bEtH9iIhcoInpV/8bCLxYxpUUPu47b
	HQ+bToNlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izXUb-0007Nv-P5; Thu, 06 Feb 2020 03:06:13 +0000
Received: from gateway21.websitewelcome.com ([192.185.45.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izXUT-0007MX-Rf
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 03:06:07 +0000
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway21.websitewelcome.com (Postfix) with ESMTP id 9FF05400C80D6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  5 Feb 2020 21:05:52 -0600 (CST)
Received: from e36.ehosts.com ([192.185.128.17]) by cmsmtp with SMTP
 id zXUGiZFbeYX9kzXUGiHETt; Wed, 05 Feb 2020 21:05:52 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=singleboardsolutions.com; s=default; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=buOrf6jVhdx2KD8QwEGJ/RfFJAHXbgJqH6I1U7ttgNA=; b=ZgbRtcSxYgiBFcUZzTaFWQXCC
 v0tl637EkGjodVkDfxC7vQya3MQOPGEVy8xxgDssfUbzP1Ms0gZy7KTChD5ptywQLSsukCs2UmDfl
 ZUPwS2vZuumT4C+q1UAeDRjJHHJ0FfuzKP/YYg7SQAHRSJzZZ3ECytE12Zrds+p2Bx53oV4xyrgr3
 bTCvOqCTsDH1k7/p5V/8kTDvZ/XwAp4w69TRd5yv3RC1RGKugVm6Hmzv2YkZQ1om5+6a9Hfk4E7X4
 dDveJ47uAH+5sj8uvx8E3dPzgvzOUBN+mdiQRR5To+Jkk0q2O5jR71lt66iMl+OhwbSioB4JonQwr
 xQ05Km3rQ==;
Received: from 23-126-112-120.lightspeed.livnmi.sbcglobal.net
 ([23.126.112.120]:61634 helo=[10.0.0.33])
 by e36.ehosts.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <tmckahan@singleboardsolutions.com>)
 id 1izXUG-003bJx-Cr; Wed, 05 Feb 2020 20:05:52 -0700
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Robin Murphy <robin.murphy@arm.com>, Peter Geis <pgwipeout@gmail.com>,
 Adam Van Ymeren <adam@vany.ca>
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
 <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
 <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
 <CAMdYzYp_dVjn18-6gy5MVpuGcOpf26eaPitfNZhARCixfrtYCA@mail.gmail.com>
 <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
 <CAMdYzYopKjRpVnyq2k84XZK0kmR_ZBH8KNjVyPz3upQjx0rLJQ@mail.gmail.com>
 <382b4bd5-279d-b227-5d0c-774d9c164168@arm.com>
From: Thomas McKahan <tmckahan@singleboardsolutions.com>
Message-ID: <477af575-d43f-fab8-36a4-0a75a4272667@singleboardsolutions.com>
Date: Wed, 5 Feb 2020 22:05:50 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <382b4bd5-279d-b227-5d0c-774d9c164168@arm.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - e36.ehosts.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - singleboardsolutions.com
X-BWhitelist: no
X-Source-IP: 23.126.112.120
X-Source-L: No
X-Exim-ID: 1izXUG-003bJx-Cr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 23-126-112-120.lightspeed.livnmi.sbcglobal.net ([10.0.0.33])
 [23.126.112.120]:61634
X-Source-Auth: tmckahan@singleboardsolutions.com
X-Email-Count: 6
X-Source-Cap: ZWxlY3RyaTk7ZWxlY3RyaTk7ZTM2LmVob3N0cy5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_190605_982007_8C4E9B0B 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 3.3 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.45.133 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2/5/2020 2:02 PM, Robin Murphy wrote:
> On 05/02/2020 6:43 pm, Peter Geis wrote:
> [...]
>>> One thing I did notice, though, is that GPIO_MUTE seems to have some
>>> inherent coupling to the analog codec, as the value automatically goes
>>> high when starting to play audio, and low again when stopping (but can
>>> still be manually toggled in between). Thus unless there's some secret
>>> to disabling that behaviour then it might not be safe to enable analog
>>> audio on these ROC-CC boards for fear of messing up peoples' SD cards.
>>
>> Robin,
>> Do you know if that is the SOC doing that or the drivers?
>
> Ha, once again I hastily jump to a conclusion without fully 
> investigating... I'm really not doing too well in this thread :)
>
> You're absolutely right; on closer inspection rk3328_analog_output() 
> in the codec driver is poking GRF_SOC_CON10 directly. That should be 
> straightforward enough to sort out, phew!
>
> Cheers,
> Robin.
>
I've had random reports of SD problems from people using our mainline 
images with Armbian on RK3328, I recently enabled the audio codec since 
it looked like all the pieces were in place. I'll take a look at the 
GPIO_MUTE patchset I saw just landed.

-Tony

> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
