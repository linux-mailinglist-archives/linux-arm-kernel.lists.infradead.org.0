Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FD972EF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dmM+4l5aD2qteNeFe26Fkt4chtMk5VI5+iXaP1KBT4=; b=V4NmHdAfeZkbEh
	Ku2iUjZNxgSMdaVA7JhvM+3+Wv/EEr419ALbTgR9hqiKZ82FbrZMsVMQIMcGFrR318nuGdK7mL52e
	IL0deRmDKMUAokwr1AkbxD5xrLxHpypHjy1qb8iXd1Ng9Yjtpm3s5xMEg6zPDrmftSBltsq+8uANV
	D+UQY9GnuMGKJZjf8GB7B9/H/6Sx4z73P+eKSdm0jcUiKgZYisPmdfD/2xEmCV/UtGZtS/D0H81Hq
	JcbEntLVrpcR7V8g3J+Ty43mbFlKsZy9N4HB7ZvMRM2ZmPRJFk61jAQDlSNMyxjFXD5QeSWtn3Heg
	9Tm9VoB3/tqbOi4au0yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGVS-0001l4-Kh; Wed, 24 Jul 2019 12:36:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGVD-0001kD-Fd; Wed, 24 Jul 2019 12:36:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7162428;
 Wed, 24 Jul 2019 05:36:14 -0700 (PDT)
Received: from [10.1.27.173] (unknown [10.1.27.173])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E48793F71A;
 Wed, 24 Jul 2019 05:36:11 -0700 (PDT)
Subject: Re: [PATCH RFC 18/18] ARM: dts: Add minimal Raspberry Pi 4 support
To: Marc Zyngier <marc.zyngier@arm.com>, Stefan Wahren <wahrenst@gmx.net>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
 <20190723191326.3afdff83@why> <34b2b928-c078-8898-842b-908a90593932@arm.com>
 <27de7618-57a7-5069-1c22-b45e93999b8c@arm.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <b5d5e7e5-34dd-e1df-ace0-269bbc12ec05@arm.com>
Date: Wed, 24 Jul 2019 13:36:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <27de7618-57a7-5069-1c22-b45e93999b8c@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_053616_190338_18BC70F2 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Mark Brown <broonie@kernel.org>, linux-rpi-kernel@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 7/24/19 11:41 AM, Marc Zyngier wrote:
> Hi Vladimir,
> 
> On 24/07/2019 10:51, Vladimir Murzin wrote:
>> On 7/23/19 7:13 PM, Marc Zyngier wrote:
>>>> +	arm-pmu {
>>>> +		/*
>>>> +		 * N.B. the A72 PMU support only exists in arch/arm64, hence
>>>> +		 * the fallback to the A53 version.
>>>> +		 */
>>>> +		compatible = "arm,cortex-a72-pmu", "arm,cortex-a53-pmu";
>>> You're thus guaranteed to count the wrong events... And you could at
>>> least have "arm,armv8-pmuv3".
>>>
>>
>> Isn't "arm,armv8-pmuv3" still "only exists in arch/arm64" (along with "arm,cortex-a53-pmu")?
> 
> Absolutely. And yet this is describing the HW, not the shortcomings of
> the kernel. I want to be able to take the same DT and run it on the
> 64bit kernel.
> 

Agreed. I was confused by comment block which describes software side of things rather than hardware.

@Stefan, can you, please, update compatible per Marc suggestion, i.e

compatible = "arm,cortex-a72-pmu", "arm,armv8-pmuv3";

and remove that comment block?

>> P.S.
>> Yes, I remember you posted some related patches in a past yet they never hit mainline :(
> 
> Will wanted me to repaint the whole of the 32bit perf code. I may end-up
> doing that in the future if I get some idle time (but don't hold your
> breath).
> 

:)

Thanks
Vladimir

> 	M.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
