Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7251A19BA63
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 04:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhUACjfVTGe3BcmwbC5MU6CviOI7+hkCGuhPGsLXhzw=; b=uDEin8xI94HleO
	NQnvX7KEGn+v662Hd0uU/ksSzBGAF7r2MPJXcfRnC/DFq+rl6oW3iasfoNWmkdQHmxaXXGvoc67Pz
	hC1xq9yA56fFLkAJBk46/4ROfiCsaOUgJmRnSIzUXmuwxSe5R9aOTKE0ZkXJweC7hxAHZ43YY9l9/
	UPV7w5Q/V4qnfaSOphv873Y3VX9MkzbiPsR0urVrj2WiRAJzUhxL+QGBudXnEpeZk5Kbjx0ODRirT
	2IsHQUY2REG3DNw2JAoqDIJNiV6D6QsaBcEGgT47dgWf9IyEFUCfYie4M1P4B4uz7/UBqF2hLNhY/
	5MHTmPNApZyfi6HIi7aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJpkx-0007c2-Sk; Thu, 02 Apr 2020 02:38:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJpko-0007an-Kv
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 02:38:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18D2D30E;
 Wed,  1 Apr 2020 19:38:50 -0700 (PDT)
Received: from [10.163.1.8] (unknown [10.163.1.8])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2D6533F71E;
 Wed,  1 Apr 2020 19:38:47 -0700 (PDT)
Subject: Re: [PATCH 3/6] arm64/cpufeature: Add remaining feature bits in
 ID_MMFR4 register
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-4-git-send-email-anshuman.khandual@arm.com>
 <54e53bb4-beb3-1a36-e8a4-2f3bda433739@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a728417c-a0b4-d1dc-5257-19e869085bd3@arm.com>
Date: Thu, 2 Apr 2020 08:08:41 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <54e53bb4-beb3-1a36-e8a4-2f3bda433739@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_193850_729058_F6162778 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, will@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/20/2020 11:41 PM, Suzuki K Poulose wrote:
> On 01/28/2020 12:39 PM, Anshuman Khandual wrote:
>> Enable all remaining feature bits like EVT, CCIDX, LSM, HPDS, CnP, XNX,
>> SpecSEI in ID_MMFR4 register per ARM DDI 0487E.a.
> 
> It might be worth adding a comment here mentioning why SpecSEI is
> HIGHER_SAFE, unlike the majority.

Sure, will do.

> 
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Cc: linux-kernel@vger.kernel.org
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> 
> With that:
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
