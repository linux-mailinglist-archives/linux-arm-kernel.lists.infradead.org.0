Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD461FCDF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 14:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JmyUBqE69dnK3B/Ov/bKb2dxmpZsZBNUOktp0RiCQM=; b=geefFtYvRu63Mq
	UHi5vo13CaQ4+ftkE3Cr6/tF8q1Juw29wlHQRoZIKPJZHxpcFtWSYmdSEM7PzZ1b8EXZTsU0+SyZH
	izl4fKIdvtjfo2MZArD82oz2knNcj65F+/MzsbFIyFHc6TIK10Q3deE9jqLdmFTT7kNt5jsUnjv01
	C9A1w/nlNUDB9GKvGL7ct1lVh8PxmhKfGIQtilUNRPz4LBWZ082Hsl6OBmq+h9G01ZFVnUXZKylW8
	lfppRsZklMAwNkcoDYZM0e0rLfgYTdxxOVq6R6oGOoU+fcwHUgIK5hYrrcgQu6pJpQ5UTg/a8rNsM
	OSoNgmEW3plDxgCwNEPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXdd-0003VS-LE; Wed, 17 Jun 2020 12:57:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXdU-0003V1-Fl
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 12:57:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACF301045;
 Wed, 17 Jun 2020 05:57:47 -0700 (PDT)
Received: from [10.37.8.7] (unknown [10.37.8.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B62F53F73C;
 Wed, 17 Jun 2020 05:57:44 -0700 (PDT)
Subject: Re: [PATCH v2 01/17] KVM: arm64: Factor out stage 2 page table data
 from struct kvm
To: Marc Zyngier <maz@kernel.org>
References: <20200615132719.1932408-1-maz@kernel.org>
 <20200615132719.1932408-2-maz@kernel.org>
 <17d37bde-2fc8-d165-ee02-7640fc561167@arm.com>
 <9c0044564885d3356f76b55f35426987@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <42103fc0-fc87-960f-a83a-25e555613295@arm.com>
Date: Wed, 17 Jun 2020 13:58:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <9c0044564885d3356f76b55f35426987@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_055748_573855_F8906405 
X-CRM114-Status: GOOD (  14.12  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>,
 James Morse <james.morse@arm.com>, Andrew Scull <ascull@google.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, kernel-team@android.com,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 6/16/20 5:18 PM, Marc Zyngier wrote:
> Hi Alexandru,
>
> On 2020-06-16 16:59, Alexandru Elisei wrote:
>> Hi,
>>
>> IMO, this patch does two different things: adds a new structure, kvm_s2_mmu, and
>> converts the memory management code to use the 4 level page table API. I realize
>> it's painful to convert the MMU code to use the p4d functions, and then modify
>> everything to use kvm_s2_mmu in a separate patch, but I believe
>> splitting it into
>> 2 would be better in the long run. The resulting patches will be
>> smaller and both
>> will have a better chance of being reviewed by the right people.
>
> I'm not sure how you want me to do this. The whole p4d mess is already in
> mainline (went via akpm directly to Linus), and I can't really revert it.

Silly me, I thought that *this* patch adds the p4d functions, but in fact they
were added in commit e9f6376858b9 ("arm64: add support for folded p4d page
tables"). Sorry for the noise, will pay more attention next time.

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
