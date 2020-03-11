Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE021814D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0UnOx5/2q5CwM5guEe41Bl2zSn+H2cVueNTngON6tpk=; b=MF6IUq1u0aGz6QcaGOGsD10NA
	QJ/0K+CDQayKY8sx/W2muuhDnAqeuJRAsHpWcfbBoX7e4eTnMXV2TQ3rCS4WM4RzsFO/jSanE6yub
	V4I6gHUr+gjyNI6T9sHWpPVJ5WibuhThaEejAlr78e6QS1TiaxT+suLTAkKfKU6E3XWgfpXYINh3p
	hL23OVUVTgrzMTHkyrRLQFOjKWOFN3C2cqNWkE4uFRRs3o4+YwJdX3XWudvvXT2Ok15nUoVgl2dTL
	n5pqzgymoC8zbmbrFjElejUFTTwHh2XVhYsD6hEwv15d19dCXpS0LI58Jo/fwIwnZq1zNgAXV8ssD
	M9yjTxiaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxfV-00007I-0U; Wed, 11 Mar 2020 09:28:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxf4-0008R4-Fi
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 09:28:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6A7231B;
 Wed, 11 Mar 2020 02:28:21 -0700 (PDT)
Received: from [10.163.1.234] (unknown [10.163.1.234])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E49DC3F67D;
 Wed, 11 Mar 2020 02:28:17 -0700 (PDT)
Subject: Re: [PATCH v6 06/18] arm64: ptrauth: Add bootup/runtime flags for
 __cpu_setup
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-7-git-send-email-amit.kachhap@arm.com>
 <e09af428-bd14-8755-6e16-bbf268040d17@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <5e339fd0-8434-10bb-e6a0-417bc1c0dc09@arm.com>
Date: Wed, 11 Mar 2020 14:58:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e09af428-bd14-8755-6e16-bbf268040d17@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_022822_607321_3290423C 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 3/10/20 5:44 PM, Vincenzo Frascino wrote:
> Hi Amit,
> 
> On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
>> This patch allows __cpu_setup to be invoked with one of these flags,
>> ARM64_CPU_BOOT_PRIMARY, ARM64_CPU_BOOT_SECONDARY or ARM64_CPU_RUNTIME.
>> This is required as some cpufeatures need different handling during
>> different scenarios.
>>
> 
> I could not find any explanation in this patch on what these flags stand for.
> Could you please add it? Maybe near where you define them.

I will add in my V7 version.
> 
> With this:
> 
> Reviewed-by: Vincenzo Frascino <Vincenzo.Frascino@arm.com>

Thanks.
> 
>> The input parameter in x0 is preserved till the end to be used inside
>> this function.
>>
>> There should be no functional change with this patch and is useful
>> for the subsequent ptrauth patch which utilizes it. Some upcoming
>> arm cpufeatures can also utilize these flags.
>>
>> Suggested-by: James Morse <james.morse@arm.com>
>> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
