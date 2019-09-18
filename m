Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D73B60E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 11:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvAgR38+A9Bu8pBZFCBQxcN/EGQcid7bLuI/gVVu2GE=; b=mWFwZ8hbX+wG+f
	bt0nIRXnDM1RH6WLMQMeIZxcEpwA2FwuNjB6nhFqP2UDgSU61wZx7h/sTwhDza30GwgfR0bv88w9E
	yQ9A1uLqXaWwApu1fRWyKf4tszvc4AahtYELGWq4dKHsGS7G1xSzsPxrUkGotq6PS3XXKjpwLv+wP
	tYStl+7Bnh2sq5R0lXipdOC+o7G2cS/v9ecRCq4fZIZLk2Q7dyUymwWLuJQBFiiJMHwz56zYtXYD6
	WiaD0O1mVUwTweputwOqR03Xw947lJchmx/zsxh/MSqJUKWC8ajx5PToISqSNWd1ce22h71S5b3N+
	pvVL8wO6o840dnCcJRaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWjI-0007WU-GE; Wed, 18 Sep 2019 09:58:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWj7-0007W8-09
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 09:58:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E111337;
 Wed, 18 Sep 2019 02:58:18 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 878863F59C; Wed, 18 Sep 2019 02:58:17 -0700 (PDT)
Subject: Re: [Question-GIC-v4.1] Plan on GIC-v4.1 driver development
From: Marc Zyngier <maz@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
References: <40d7276c-54a3-0cca-a207-217459850c21@hisilicon.com>
 <0501c049-67a6-9a63-e0d9-e043573e1211@kernel.org>
Openpgp: preference=signencrypt
Autocrypt: addr=maz@kernel.org; prefer-encrypt=mutual; keydata=
 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
 2Y3aFlL+gnr1zUMjlFzD
Organization: Approximate
Message-ID: <c9bdf5bc-4787-2f09-9e8b-60d69aa8754b@kernel.org>
Date: Wed, 18 Sep 2019 10:58:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0501c049-67a6-9a63-e0d9-e043573e1211@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_025821_134716_59706789 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: "Tangnianyao \(ICT\)" <tangnianyao@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/09/2019 10:23, Marc Zyngier wrote:
> On 17/09/2019 03:15, Shaokun Zhang wrote:
>> Hi Marc,
>>
>> This is from Nianyao Tang.
>>
>> I'm planning to do some verification on our GIC-v4.1 implement. I would like some
>> information about linux GIC-v4.1 driver. When will linux support GIC-v4.1 or what's
>> the plan on developing GIC-v4.1 driver?
> 
> The easy answer is that yes, there is a plan. There is some code, even,
> just not quite in a usable state yet. I'll try to push something out
> once I get a chance.

FWIW, I've pushed out a branch containing the current state of this work
at [1]. It doesn't really work at the moment (Doorbells and SGIs are
unreliable), but hopefully that will give you an idea of what is going on.

Being a work in progress, it is unstable, subject to being changed,
rebased and deleted without warning.

Thanks,

	M.

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/log/?h=irq/gic-v4.1-devel
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
