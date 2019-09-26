Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DDFBFA88
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 22:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qc9IcRHr6hovOLkcqaLoc5WChL8gkxPGheawu/pDzBo=; b=KidhU6zIt13c/f
	2TN9dFeXSgqBe/xFPtFB3RieaT7sx3udAkoC5sKcK7tTm+2YAHrue9laecJ1160kUBs1Sarqtfyje
	oy/aQPE3MbnILcTR0IMn5yXXBVG9G6tl7grTSbVY4YUBaoH0ErrZ8U8JgcZSTMAJftRaMQH3Jb/yq
	kp9h2I0itM2Rq0Q79DxOHm8nswHp+Ae2Yw20UIuUVePQQt38mnR2XQVfvq90YxiLfVE5UD3Obdtse
	MU1HdsjiCQzybDcvAlu5S9/VA6Wvc/LghHu8jdOgEeJdh6GvljjRwF5voGtbvnTdzRgNo6o5cxnRG
	wy4tOqMcZOyoF0PyVBgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDaDH-0003LB-ME; Thu, 26 Sep 2019 20:18:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDaD1-0003KR-RX
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 20:17:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 405EF142F;
 Thu, 26 Sep 2019 13:17:50 -0700 (PDT)
Received: from [172.23.27.158] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E485D3F67D;
 Thu, 26 Sep 2019 13:17:45 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] arm64: vdso32: Detect binutils support for dmb
 ishld
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190926133805.52348-1-vincenzo.frascino@arm.com>
 <20190926133805.52348-3-vincenzo.frascino@arm.com>
 <20190926142642.GF9689@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <88d1b318-5c20-b3f4-6c24-60917c673f91@arm.com>
Date: Thu, 26 Sep 2019 21:19:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926142642.GF9689@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_131751_930367_ED88F61F 
X-CRM114-Status: GOOD (  13.63  )
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

On 9/26/19 3:26 PM, Catalin Marinas wrote:
> On Thu, Sep 26, 2019 at 02:38:03PM +0100, Vincenzo Frascino wrote:
>> diff --git a/arch/arm64/Kbuild b/arch/arm64/Kbuild
>> index d6465823b281..75cf8c796d0e 100644
>> --- a/arch/arm64/Kbuild
>> +++ b/arch/arm64/Kbuild
>> @@ -4,3 +4,9 @@ obj-$(CONFIG_NET)	+= net/
>>  obj-$(CONFIG_KVM)	+= kvm/
>>  obj-$(CONFIG_XEN)	+= xen/
>>  obj-$(CONFIG_CRYPTO)	+= crypto/
>> +
>> +# as-instr-compat
>> +# Usage: cflags-y += $(call as-instr-compat,instr,option1,option2)
>> +
>> +as-instr-compat = $(call try-run,\
>> +	printf "%b\n" "$(1)" | $(COMPATCC) $(KBUILD_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
> 
> This doesn't seem to be used anywhere. Was it meant to be replaced by
> cc32-as-instr?
> 

Forgot to squash a stash here. Will fix in v3. This is not used anymore was just
an experiment.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
