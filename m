Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98D513C9EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rk+uOghkNya9YgWlW5JYHaSEsoG/ke8IhYmFvh6xozM=; b=HtPnYtAnXWOAWdPOMD2VGohYB
	vFOLXVjIdzPo/YCjSXDihMg/bzLMlD9hBiN53DJ94PxHP4K9qktnLtBivDYzim/VdJkX7fDE1hc7t
	EGDwtWlV2OjDIwWSuisDip+DbD2V2mHswFzW75lXu1hsXdqsyE4gfhiuptBDv8j/XLWFZq0cGKfzv
	MxiLfoC19C5YwjR8k79nG7gfPnmWzFx8WgwkMMuLV/k9yz6Q0915gSmAoC/mwIbQLQBs+d7QJ214I
	+yy+EAqyFFZdB6Fu+F9Z6awPJilT7Ynw1c4shWFoOJ7yWtcy7vLDyK91yf9DAC8KoAr1lfabAwZuV
	C4bH3sGNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irlpl-0005kZ-4h; Wed, 15 Jan 2020 16:47:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irlpZ-0005k4-Al
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 16:47:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF82E328;
 Wed, 15 Jan 2020 08:47:44 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E41683F6C4;
 Wed, 15 Jan 2020 08:47:43 -0800 (PST)
Subject: Re: [PATCH 0/2] A couple of cleanups on top of for-next/e0pd
To: Will Deacon <will@kernel.org>, broonie@kernel.org
References: <20200115142900.28976-1-will@kernel.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <0550689a-72b2-fe13-044c-a671eda8bb96@arm.com>
Date: Wed, 15 Jan 2020 16:47:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200115142900.28976-1-will@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_084745_408606_4F8FF5C3 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/01/2020 14:28, Will Deacon wrote:
> Hi Mark,
> 
> I've queued the E0PD patches for 5.6 (thanks!), but in reading them a
> final time I noticed a couple of cleanups that I think we can make to
> kaslr_requires_kpti(). I don't have a TX1 to test them on, but I think
> the logic is sound.
> 
> Please take a look, as I'd like to queue these on top.
> 
> Thanks.
> 
> Will
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>

Looks good to me.

Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
