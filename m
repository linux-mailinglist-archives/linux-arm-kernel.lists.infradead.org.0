Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5D89EB1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 16:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9F7n6xr3M+fJbMGiGfEejYJZixsr8CG4riQmlNM9ZM=; b=d42Gf2PVO3EeSp
	sdj6r0cjXJJ1Fmw0mQaC0t2qvPytz/5UoJfERz21NlGndhjA31NUIFkxgGtko8GabHa3OYdXAJyz4
	82NUTJtj/6Jkthjs8U1g9sq/mLYYNNIQDpOUWjIMzIvvanBqgkK+Az7ZJpNjC+hvdggmz1KHW2Xjy
	AhcQcX/FW9x+32b0aCbKBRW+y0KoZNoblHTY0XjG2Xav4TgKDk3NxCNSu+7UAd4djsjJIgtj5A6YD
	/894TKxAlwas7wplT3xzels27rMVECzFaedHD8iNa47ui067X2BDDsumSaU6+4s1812tDy29ZZcTE
	S2pJwn8L/gW0K1cdY7Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cYD-0000vt-NN; Tue, 27 Aug 2019 14:34:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cY1-0000uo-B7
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 14:34:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5732D337;
 Tue, 27 Aug 2019 07:34:11 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7AF13F59C;
 Tue, 27 Aug 2019 07:34:09 -0700 (PDT)
Subject: Re: [RFC PATCH 5/7] arm64: smp: use generic SMP stop common code
To: Thomas Gleixner <tglx@linutronix.de>
References: <20190823115720.605-1-cristian.marussi@arm.com>
 <20190823115720.605-6-cristian.marussi@arm.com>
 <20190826153236.GA9591@infradead.org>
 <c6a86709-6faf-bf84-08aa-c41dab61c58f@arm.com>
 <alpine.DEB.2.21.1908270025340.1939@nanos.tec.linutronix.de>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <2f1b7e1f-5ba2-37b4-193b-133a93a3f6ea@arm.com>
Date: Tue, 27 Aug 2019 15:34:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1908270025340.1939@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_073413_426557_3A3D59E6 
X-CRM114-Status: GOOD (  10.06  )
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, peterz@infradead.org,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, takahiro.akashi@linaro.org,
 james.morse@arm.com, hidehiro.kawai.ez@hitachi.com, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 26/08/2019 23:26, Thomas Gleixner wrote:
> On Mon, 26 Aug 2019, Cristian Marussi wrote:
>> On 8/26/19 4:32 PM, Christoph Hellwig wrote:
>>>> +config ARCH_USE_COMMON_SMP_STOP
>>>> +	def_bool y if SMP
>>>
>>> The option belongs into common code and the arch code shoud only
>>> select it.
>>>
>>
>> In fact that was my first approach, but then I noticed that in kernel/ topdir
>> there was no generic Kconfig but only subsystem specific ones:
>>
>> Kconfig.freezer  Kconfig.hz       Kconfig.locks    Kconfig.preempt
> 
> arch/Kconfig
> 

Ok I'll move it there in v2.

Thanks for the review.

Cristian

> Thanks,
> 
> 	tglx
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
