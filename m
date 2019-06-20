Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 085DA4C9E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xdGgYcVxfp7zvMJnixIhGc+eL+ni3eKbBAL8Z6MWBJQ=; b=BTPlQGq0oFCGQB8j9TBBBIhxp
	oAiLE5sWmyug3J6lE3m5J4ukT3HeGUOydtq26L81f0eMyiHZWL5soB0bvnMvPhjptagCtTFmReEfz
	+dso9oo2sziKAj2mvAPAO6OlLi8QnQy4AbxgBI6yQRyVQofO2uQbi9r7mQtS0cvFaWp3vyPvQ5+0O
	bRHVmHXKivg0Feqwp46eSiUOVv97TYQsDbiS2H1qQPzwXCo87/meiAg6wlfrY7OUPG7TVg8Ma+6Up
	tan+plfePGiffC+v9QxJheoQMOTZcrjTXj0Cm9HplaL36LohgbpM7V2A1g0ZLA8uCzHmaNXsZTNoU
	KfDz1Km9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdspI-0006P6-IL; Thu, 20 Jun 2019 08:53:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsp4-0006Ok-HS
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 08:53:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39FAC344;
 Thu, 20 Jun 2019 01:53:32 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 618D33F246;
 Thu, 20 Jun 2019 01:53:31 -0700 (PDT)
Subject: Re: Coresight causes synchronous external abort on msm8916
To: mathieu.poirier@linaro.org, stephan@gerhold.net
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
 <CANLsYkxaX2=Bp_BWWUFimC-UmP3L5g=CU7tqjd+xoFVcWG38tA@mail.gmail.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <6bb74dcc-62e4-5310-5884-9c4b82ce5be9@arm.com>
Date: Thu, 20 Jun 2019 09:53:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CANLsYkxaX2=Bp_BWWUFimC-UmP3L5g=CU7tqjd+xoFVcWG38tA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_015334_628255_8788E6A0 
X-CRM114-Status: GOOD (  26.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: david.brown@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 19/06/2019 21:16, Mathieu Poirier wrote:
> On Wed, 19 Jun 2019 at 12:39, Stephan Gerhold <stephan@gerhold.net> wrote:

>> In this case I'm wondering how it works on the Dragonboard 410c.
> 
> There can be two problems:
> 
> 1) CPUidle is enabled on your platform and as I pointed out before,
> that won't work.  There are patches circulating[1] to fix that problem
> but it still needs a little bit of work.
> 
> 2) As Suzuki pointed out the debug power domain may not be enabled by
> default on your platform, something I would understand if it is a
> production device.  There is nothing I can do on that front.
> 
> [1]. https://www.spinics.net/lists/arm-kernel/msg735707.html
> 
>> Does it enable these power domains in the firmware?
>>    (Assuming it boots without this error...)
> 
> The debug power domain is enabled by default on the 410c and the board
> boots without error.
> 
>>
>> If coresight is not working properly on all/most msm8916 devices,
>> shouldn't coresight be disabled by default in msm8916.dtsi?
> 
> It is in the defconfig for arm64, as such it shouldn't bother you.
> 
>> At least until those power domains can be set up by the kernel.
>>
>> If this is a device-specific issue, what would be an acceptable solution
>> for mainline?
>> Can I turn on these power domains from the kernel?
> 
> Yes, if you have the SoC's TRM.
> 
>> Or is it fine to disable coresight for this device with the snippet above?
>>
>> I'm not actually trying to use coresight, I just want the device to boot :)
>> And since I am considering submitting my device tree for inclusion in
>> mainline, I want to ask in advance how I should tackle this problem.
> 
> Simply don't enable coresight in the kernel config if the code isn't
> mature enough to properly handle the relevant power domains using the
> PM runtime API.

I don't think disabling the Coresight in kernel config will hide it.
Since the coresight components have the AMBA compatible, the AMBA bus
driver will definitely try to probe the PIDs via amba_device_try_add(),
as shown by the backtrace. I assume that is causing the problem.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
