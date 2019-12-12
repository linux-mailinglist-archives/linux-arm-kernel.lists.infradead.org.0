Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5549211D0EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q82lHGV6rGzYSHXDI28XatxSJzccHzVCA3YoE+jZIec=; b=Xe3KarsVy1ayEd
	rhrNDMzRZeWafgo2FQPWaKncBxh18hhGq1BHZsSmMVIItot6Gm7fL4ml1wltSKVMbAtr77xD4Hi5Q
	eEHyq7pMCtzOTiunL9I9RsDd01xKp/82/tL9AyYTrm21cnFqsOOHQgpjTKCjqoLCgA6QvhUloaUeM
	NSt58T8qk+phjQERADlx4JO+59kFWwEcwF8pGDW4ZvwFaMeSnJvG+VkTAS2j58M6VnXyl3GxqTMMV
	DZJLeCdPdZ7wEo9PW+CjqzJ0omCr3nTygrl724U/MmdITzGNTxx1xxoVUTm4iSTOu/AUm3aanrjgg
	0af/NqA1pkGYyMdMx79w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQKD-0001hw-GO; Thu, 12 Dec 2019 15:24:21 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQK5-0001hC-0W
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:24:14 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBCFNn84021959;
 Thu, 12 Dec 2019 09:23:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576164229;
 bh=zKejihoVsLJbSDUoNLfSVBjgCiRTXioTD56RAq4akOM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=nmaWENfPc5dbg0B9xy72IObillB02keaPclsIovcsml6a6VnwOGPaPoMoqfswnf8x
 5IgD/EG3LzbpPkVUMWo4i3ml5Xa4lUngKlYDouamyNETUicS4QzpgsaxM9syol+Fw9
 vt/DixI19gQ7Ie+5lomGmEMYL7VMntdx8bGjDYl0=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCFNnTY127450;
 Thu, 12 Dec 2019 09:23:49 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 09:23:49 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 09:23:49 -0600
Received: from [10.250.79.55] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCFNlqe127046;
 Thu, 12 Dec 2019 09:23:48 -0600
Subject: Re: arm_smccc_smc as generic smc interface?
To: Mark Rutland <mark.rutland@arm.com>, Tony Lindgren <tony@atomide.com>
References: <20191209180752.GJ35479@atomide.com>
 <CAHUa44EJAjL+MGqgKd6YvQAg0z4hRYXb9MeTqsTYhAe-RBZt+g@mail.gmail.com>
 <20191210153840.GL35479@atomide.com>
 <20191212142305.GD46910@lakrids.cambridge.arm.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <622404c8-8ca7-11bb-64fe-14d280827cd2@ti.com>
Date: Thu, 12 Dec 2019 10:23:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191212142305.GD46910@lakrids.cambridge.arm.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_072413_179272_10256960 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Volodymyr Babchuk <vlad.babchuk@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Olof Johansson <olof@lixom.net>,
 Russell King <rmk+kernel@armlinux.org.uk>, Marc Zyngier <maz@kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Colin Ian King <colin.king@canonical.com>,
 Will Deacon <will@kernel.org>, Jens Wiklander <jens.wiklander@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/12/19 9:23 AM, Mark Rutland wrote:
> Hi,
> 
> On Tue, Dec 10, 2019 at 07:38:40AM -0800, Tony Lindgren wrote:
>> * Jens Wiklander <jens.wiklander@linaro.org> [191210 08:10]:
>>> On Mon, Dec 9, 2019 at 7:07 PM Tony Lindgren <tony@atomide.com> wrote:
>>> In <arm-smccc.h> there's already been made room for some Qualcomm
>>> quirks, perhaps it's possible to use or extend it to cover the TI
>>> cases you have in mind.
>>
>> Yeah that's my thinking too as long as there are no issues using
>> arm_smccc_smc() for non-optee cases.
> 
> I don't think that we wan't to turn the SMCCC code itself into a generic
> SMC interface, and this boils down to how divergent the TI calling
> convention is from SMCCC. What are the differences?
> 


There are three levels of differences based on the the type of legacy
SMC call we make, first type omap_smc1():

 * r2-r12 are clobbered vs SMCCC only saving r4-r7
 * r12 used as command ID vs SMCCC using r0

omap_smc2(), in addition to the above incompatibilities:

 * r6 must contain #0xff
 * r12 used as command ID again

omap_smc3(), in addition to the above incompatibilities:

 * Uses SMC #1 vs #0

My personal opinion would be to leave arm_smccc_smc() alone and only
allow SMCCC complaint callers to use it (even QCOM's quark should not
have gone in if the plan was not to allow the same exceptions for
others). I believe what Tony might really want is a separate generic
arm_smc() that can handle the above cases based on parameters so that we
don't have to drop into custom assembly in mach-omap2.

Andrew


> If the conventions differ too much I think having a parallel interface
> is preferable. We're going to be extending the SMCCC code for SMCCCv1.2,
> and I'd rather not complicat the common code or the 64-bit code for
> this.
> 
> Thanks,
> Mark.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
