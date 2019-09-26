Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F692BFA99
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 22:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1a45vKEbKOtdj9u9L/c2m/HPSGB1Fb2YZl0+yrvBZ08=; b=Qukwr29JIjEgFc
	xCJzmX+EHa+mSQoA6B0VCfarg7FPdhz+NVTqmM3/BHZT/jzYHPyF+S1uQGcc5JEo8XlfeM0BWERNW
	xNvwL4up3Fsfej6or9BNLWHw2QqVYtrVkxrZn+y+UoqLrhgmexKrMAFiPHW6Rz2ObyqYIrAblzrqQ
	a6i/+B+Uxzads/IwckI7v4cdVvP08LYKAQ1QV0pkD9gjUeWbSLqh3hK/VR+rsadVZj6q3P2xEuc7A
	qyild3wWCpMnp1OGKFzcoY7U1Pihadx84zdLKT1mQbYiYWtAlvyXRCOnh/2ps/b5m01C2gpRUO2hK
	4CTvaSpVT/nYcPSg0VrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDaNV-0006TD-6e; Thu, 26 Sep 2019 20:28:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDaNE-0006Sn-Qy
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 20:28:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3709F142F;
 Thu, 26 Sep 2019 13:28:20 -0700 (PDT)
Received: from [172.23.27.158] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E0CCE3F67D;
 Thu, 26 Sep 2019 13:28:17 -0700 (PDT)
Subject: Re: [PATCH v2 0/4] arm64: vdso32: Address various issues
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190926133805.52348-1-vincenzo.frascino@arm.com>
 <20190926153123.GK9689@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <fbc2efbd-b354-7f05-7d4e-600b21fcfff6@arm.com>
Date: Thu, 26 Sep 2019 21:29:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926153123.GK9689@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_132824_919951_37086398 
X-CRM114-Status: GOOD (  17.22  )
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

On 9/26/19 4:31 PM, Catalin Marinas wrote:
> On Thu, Sep 26, 2019 at 02:38:01PM +0100, Vincenzo Frascino wrote:
>> this patch series is meant to address the various compilation issues you
>> reported about arm64 vdso32. (This time for real I hope ;))
>>
>> Please let me know if there is still something missing.
> 
> Apart from the diff I posted and some nitpicks, the series looks fine to
> me. If you post an update, I'll ack it (and a tested-by).
> 
> In addition to this series I'd still prefer to have my Kconfig option to
> disable the compat vDSO if something else fails in the future (at least
> until we complete the headers clean-up). But I'm fine with a default y
> and removing EXPERT.
>

It is fine by me, but may I ask to state in the commit message that the patch
can be reverted once the we fix the headers issue? I would like to have symmetry
in enabling vDSOs in between arm64 and compat once everything is fixed.

> Thanks for the quick turnaround.
> 

No problem, it is my responsibility to fix the vDSOs on arm64 and compat if
something breaks ;)

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
