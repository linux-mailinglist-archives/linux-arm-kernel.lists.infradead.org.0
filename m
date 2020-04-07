Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1501A098C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 10:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUSaXOx2mx49s+eRxpRElf0Bq/tPc63/E1M5gA+CxXY=; b=IFzQsEmhnr5FM/
	s8ocarcqOzAsYpVanWuwMFmwqYn/h+JdpAS+DVvImj0i1oZUwJsJ74ccrLlUzOtc4H5SMft3AVR9a
	ERIZUhpPbS6whq2tebH0HhOUxwqwWX77bmh1nl4pysTXAJocraMNvADxg7PqkEJWvrquYrhLuwgxN
	2bv2btVJJo/mMLpe9wgwmKA2V4puHk+k317j42YIJQUgj1Wo5Fs1lNi4zD+zx0+gnQ8OZxarzB6gD
	nWS1jzzZ3e8mmtRq2p5Iy+IiGT3uMo0ak9VBqnYo5JdsfgPGO8QSUqwVsKn0GToZaui+/I0tJPIkK
	wGeY0fAa0EL2IWNHtzuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLjwe-0007Dt-UN; Tue, 07 Apr 2020 08:50:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLjwX-0007DE-1r
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 08:50:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2CAA430E;
 Tue,  7 Apr 2020 01:50:46 -0700 (PDT)
Received: from [10.163.1.2] (unknown [10.163.1.2])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D21EE3F73D;
 Tue,  7 Apr 2020 01:50:36 -0700 (PDT)
Subject: Re: [PATCH 0/6] Introduce ID_PFR2 and other CPU feature changes
To: Will Deacon <will@kernel.org>
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <20200406170911.GA7446@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <05f6eb1e-a82c-bd02-1871-e44ea00683d8@arm.com>
Date: Tue, 7 Apr 2020 14:20:20 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200406170911.GA7446@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_015049_137447_2AD06E34 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/06/2020 10:39 PM, Will Deacon wrote:
> On Tue, Jan 28, 2020 at 06:09:03PM +0530, Anshuman Khandual wrote:
>> This series is primarily motivated from an adhoc list from Mark Rutland
>> during our ID_ISAR6 discussion [1]. Besides, it also includes a patch
>> which does macro replacement for various open bits shift encodings in
>> various CPU ID registers. This series is based on linux-next 20200124.
>>
>> [1] https://patchwork.kernel.org/patch/11287805/
>>
>> Is there anything else apart from these changes which can be accommodated
>> in this series, please do let me know. Thank you.
> 
> The latest Arm ARM also talks about DFR1 and MMFR5. Please can you include

Sure, will do.

> those too? Might also be worth checking to see if anything is missing on
> the 64-bit side as well (I didn't look).

Yeah. Now there some missing ones, will add those as well.

> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
