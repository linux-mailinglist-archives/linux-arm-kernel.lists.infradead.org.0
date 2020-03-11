Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75540181443
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:13:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HutkyN32u3mVourezRTQxN6rxc2x5VsDpwpWQl1IRTM=; b=oBbHphmQ4fxAX++JDC0a+hhzF
	b/XarumTUUHw100gV2Go0kQMmo9/iD9eYbNPLwPNMowNKbsN6Oqx7YYubeMi931c6tdBLG6VKTNzq
	4QVyAX9jVyfIBYM3u1Ah+w558giusvv2HaBsBDyGN46vBNxWvXv8P1ye6N6UmaiAcHRNK6bpto2WL
	U+o/L2BhuEor+VtvTu2SQd2El2ZzAX2uabZeImu11e8lX1VYd50/O21qV4On/Ki4ZGTXvm3MUvWt7
	x8uGrnfpyHB2+LEtKpf0O+ScbOCTJ9Q6JWwP9eypIwbho3/rANw0W5j+7WnaE8xL4+wh2OhwQWVzO
	CEXqI7L4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxQI-0000WT-LW; Wed, 11 Mar 2020 09:13:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxQA-0000UR-0D
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 09:12:59 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CB812146E;
 Wed, 11 Mar 2020 09:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583917976;
 bh=JmnH83cEqMuYqwzSAJmmIggEZjH2zaw0Mir9SbgqzBg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ILo3w++eSM5mDVtsHN7CfbOR+uFkOP8FGJV4g+jMwBHXf7Gp1Oq+92oifNxxhL+rA
 yGwUU0UbGeQwBbvp1Q38b4ryrd9AdHkucGojc6tgmNRWfgs46M7A/Cyb3wJUGk6Z8Y
 lVUKVDQ56EDE59d8xVIZCG7rSZjnK0cvMv158vw0=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jBxQ6-00BrX3-KP; Wed, 11 Mar 2020 09:12:54 +0000
MIME-Version: 1.0
Date: Wed, 11 Mar 2020 09:12:54 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [RFC PATCH v1 0/3] arm64: tlb: add support for TTL field
In-Reply-To: <20200311025309.1743-1-yezhenyu2@huawei.com>
References: <20200311025309.1743-1-yezhenyu2@huawei.com>
Message-ID: <247ad619edf17eb266f856d937dac826@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yezhenyu2@huawei.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will@kernel.org, aneesh.kumar@linux.ibm.com,
 steven.price@arm.com, broonie@kernel.org, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-mm@kvack.org, arm@kernel.org,
 xiexiangyou@huawei.com, prime.zeng@hisilicon.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_021258_066266_63907C10 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, linux-arch@vger.kernel.org, arm@kernel.org,
 catalin.marinas@arm.com, guohanjun@huawei.com, linux-kernel@vger.kernel.org,
 xiexiangyou@huawei.com, steven.price@arm.com, linux-mm@kvack.org,
 broonie@kernel.org, prime.zeng@hisilicon.com, aneesh.kumar@linux.ibm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Zhenyu,

On 2020-03-11 02:53, Zhenyu Ye wrote:
> ARMv8.4-TTL provides the TTL field in tlbi instruction to indicate
> the level of translation table walk holding the leaf entry for the
> address that is being invalidated. Hardware can use this information
> to determine if there was a risk of splintering.
> 
> This set of patches adds TTL field to __TLBI_ADDR, and uses
> Architecture-specific MM context to pass the TTL value to tlb 
> interface.
> 
> The default value of TTL is 0, which will not have any impact on the
> TLB maintenance instructions. The last patch trys to use TTL field in
> some obviously tlb-flush interface.

I have already posted some support for ARMv8.4-TTL as part of my NV 
series [1],
patches 62, 67, 68 and 69. This only deals with Stage-2 translation so 
far.
If you intend to add Stage-1, please build on top of what I have already 
posted
(I can extract the patches on a separate branch if you want).

Thanks,

         M.

[1] 
https://lore.kernel.org/linux-arm-kernel/20200211174938.27809-1-maz@kernel.org/
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
