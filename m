Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0ECBFA82
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 22:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+rubGXbQroihaHf+ZsFzRXBuqIEZiQbS6iq/rvisdE=; b=nIhTGrRvsJXHQ0
	OqdhIjxi3wikwgrFAiMs2wVdKBJmZsiVu1h/x27z9wtKsvFOKnsQBZR68MY10S6Tg92xpC4tUrvh+
	gdpXzl4vRfAHOYo6w0BJACxKCNjB2FD64F5vvMrmTRNRWaa15RO/ACB0HTu0hLj8pe4IckCgMktIW
	RNzyz4B4QguX3RwoXCxphXX4w9TbC6yK46u56+b880sI5xsoVTNMzGPCNTr1w+bXO2nZmTsgl20cT
	ZjkpBsePgSLHlu3F1rI9Htn/BjkkvLHXrH5ElQ+wQjS1PJkV+shvEO/kDmrN8DivCCdjgpRiI86Od
	bJ6pebZ8c1dhcEKeYfHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDaBt-00033T-QL; Thu, 26 Sep 2019 20:16:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDaBd-00032h-1T
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 20:16:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D2B9142F;
 Thu, 26 Sep 2019 13:16:21 -0700 (PDT)
Received: from [172.23.27.158] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 877923F67D;
 Thu, 26 Sep 2019 13:16:18 -0700 (PDT)
Subject: Re: [PATCH 1/4] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926060353.54894-1-vincenzo.frascino@arm.com>
 <20190926060353.54894-2-vincenzo.frascino@arm.com>
 <20190926080616.GB26802@iMac.local>
 <0ff3d5f4-11c9-4207-c6ab-2f8e9ee7de5e@arm.com>
 <ad90f9bb-aa39-615c-3ae5-bea394bd787c@arm.com>
 <20190926151704.GH9689@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <4a25b76b-0d17-778d-aff5-88f8fbae2819@arm.com>
Date: Thu, 26 Sep 2019 21:17:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926151704.GH9689@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_131625_131283_8FF8541E 
X-CRM114-Status: GOOD (  13.55  )
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/26/19 4:17 PM, Catalin Marinas wrote:
> On Thu, Sep 26, 2019 at 01:22:01PM +0100, Vincenzo Frascino wrote:
>> On 9/26/19 11:56 AM, Vincenzo Frascino wrote:
>>> On 9/26/19 9:06 AM, Catalin Marinas wrote:
>>>> Now, could we not generate a COMPATCC in the Makefile and use
>>>> $(COMPATCC) here instead of $(CROSS_COMPILE_COMPAT)gcc? It really
>>>> doesn't make sense to check that gcc is gcc.
>>>>
>>>
>>> All right, COMPATCC is already in the makefile, I will use it in here.
>>
>> What you are proposing seems not possible because Kconfig runs first and then
>> the arch Makefile, hence compatcc does not take effect on the Kconfig. I will
>> post v2 with what I proposed, please feel free to comment if you have a better idea.
> 
> I think it works as long as you export COMPATCC from the
> arch/arm64/Makefile. The arch Makefile is used in the config step
> AFAICT. See the diff I posted in my reply to your v2.
> 

All right I will retry and repost v3 if I can get it working.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
