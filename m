Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB74142D6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 15:24:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VfRhIQreXQHZl4bQRrOQBXGPxMGmuzCt/7xOVCBbCKk=; b=phLO+4GmpkzL9q65Q1UhLLrdw
	UBNaLakZmltwUaNjhdmJoqQ2S+48EsDZFHxdZ+TLP7E1NBYTI+Ng2Yaxkp3W2ZWyk79YUQbPWoPLi
	mGbTSiB3NOtce2KoU2tYPq/AIgDc3e0dEP/63tNLRKg50Xv1UwBEjm716ilpkIQ90zqfL89kjZDdK
	Bx07/Jz/+Sw9XSQLStqalGdwZDqqZIzPtMYrCYmeP8+411Y0kR4UFtHtscuxkNxvOChu2LQIffjFb
	3IcY4rRv842bJrOuuTbYPm1d+QhA3figW08FLhugZfeb0i4yR+8hvF3a8ITORkVFhKLMeO6AK6dbT
	xIKpT6TYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itXyh-0002p0-EZ; Mon, 20 Jan 2020 14:24:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itXyT-0002nS-35
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 14:24:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CBB630E;
 Mon, 20 Jan 2020 06:24:14 -0800 (PST)
Received: from [10.1.37.58] (a075563-lin.cambridge.arm.com [10.1.37.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2BE253F52E;
 Mon, 20 Jan 2020 06:24:12 -0800 (PST)
Subject: Re: [PATCH v3 13/16] arm64: kprobe: disable probe of ptrauth
 instruction
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-14-git-send-email-amit.kachhap@arm.com>
 <20200117111614.GE26090@arrakis.emea.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <1ac2f3b9-7821-b3eb-e78d-859e768b8a10@arm.com>
Date: Mon, 20 Jan 2020 14:24:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200117111614.GE26090@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_062417_177792_1283E020 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/17/20 11:16 AM, Catalin Marinas wrote:
> On Mon, Dec 16, 2019 at 02:17:15PM +0530, Amit Daniel Kachhap wrote:
>> This patch disables the probing of authenticate ptrauth
>> instruction which falls under the hint instructions region.
>> This is done to disallow probe of instruction which may lead
>> to ptrauth faults.
>>
>> The corresponding append pac ptrauth instruction is not
>> disabled as they are typically the first instruction in the
>> function so disabling them will be disabling the function
>> probe itself. Also, appending pac do not cause any exception
>> in itself.
> 
> Neither does AUTIASP in v8.3, only the subsequent dereferencing, so why
> can kprobes cope with PACIASP but not AUTIASP?

ok I will add this patch as part of FPAC in armv8.6 ptrauth.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
