Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB478754D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zXf8v/gb5UotCJScRc0Iux3X4BAUtPZeUIh0H3swOMY=; b=A7Y06gYNInOPAxc6NNOiaRrAY
	Zb27z00+itZdZJ10ZdfNYf7+ezBtLMDJGBR7AKFen9MQD8J49IfytEHG/r0RJiVDChO79Fd6oXkA9
	A1Nsdy/bbqT6zUrtNdhyriVfgaiZXQ3GarmLgLIbAY44ogsXt9NzJMR66DSNG9i94RQhmtplqMGN1
	tEYcZCQavJdjPw19LLXhHCXeKr2hHurGxDFdKk24qagZUZNT7Y4G+v3j2zuOnlrEPZu0xQAEhlPJo
	fYpkSnsmiRhoPhwYdnOpG76iGNmZ0vvmvvRzDLYkhBEUEltZgbrhLabcYS6IsrcK2IUr2BYzzF0gO
	/AdUcgq+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqh4r-0004pr-R0; Thu, 25 Jul 2019 16:58:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqh4b-0004oj-O7
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:58:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C98E919BF;
 Thu, 25 Jul 2019 09:58:31 -0700 (PDT)
Received: from [10.1.194.48] (e123572-lin.cambridge.arm.com [10.1.194.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6FF8F3F71A;
 Thu, 25 Jul 2019 09:58:30 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: fast models: Increase clcd's
 max-memory-bandwidth
To: Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20190725145040.42182-1-kevin.brodsky@arm.com>
 <042d5c3d-96fe-5466-3869-a0a3a08b964d@arm.com>
From: Kevin Brodsky <kevin.brodsky@arm.com>
Message-ID: <1d7929a2-273e-e695-6700-36aacf38f61a@arm.com>
Date: Thu, 25 Jul 2019 17:58:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <042d5c3d-96fe-5466-3869-a0a3a08b964d@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_095833_828569_FE2965E9 
X-CRM114-Status: GOOD (  16.84  )
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
Cc: devicetree@vger.kernel.org, Pawel Moll <pawel.moll@arm.com>,
 Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Sudeep Holla <sudeep.holla@arm.com>,
 Brian Starkey <brian.starkey@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/07/2019 16:15, Robin Murphy wrote:
> Hi Kevin,

Hi Robin,

> On 25/07/2019 15:50, Kevin Brodsky wrote:
>> It may be desirable on certain platforms, such as Android, to
>> use 32bpp buffers. Since there is no clear bandwidth limit for the
>> CLCD component on the fast model, let's increase
>> max-memory-bandwidth to allow using 32bpp buffers.
> Given that the property is optional anyway, would it hurt to just remove
> it? After trying to dig up any relevant internal email history, it's
> still far from clear how and why it got here in the first place.

Very good point, I hadn't realised it was an optional property. Removing it 
completely seems to work fine. I'll send a v2 removing it from both fvp-base-revc.dts 
and rtsm_ve-motherboard.dtsi. Thanks!

Kevin

> Robin.
>
>> Reported-by: Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
>> Signed-off-by: Kevin Brodsky <kevin.brodsky@arm.com>
>> ---
>>    arch/arm64/boot/dts/arm/fvp-base-revc.dts | 2 +-
>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
>> index 687707020ec1..3aee49ed6d88 100644
>> --- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
>> +++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
>> @@ -269,7 +269,7 @@
>>    		motherboard {
>>    			iofpga@3,00000000 {
>>    				clcd@1f0000 {
>> -					max-memory-bandwidth = <130000000>; /* 16bpp @ 63.5MHz */
>> +					max-memory-bandwidth = <260000000>; /* 32bpp @ 63.5MHz */
>>    				};
>>    			};
>>    		};
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
