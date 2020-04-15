Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4A11A9B43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AULIsBCt90EFUyiVWHazGR0yVBiWjl6edEc4VHLBMOs=; b=OpAEu9de+jW7qEyhNqx/YW7JS
	/AY4BTL1eu1fK8Qfqi+Wo41KYz7QzGfjLBc9WebMIhfsHLCsAJfVKQgdyjJCKWCJv7u+AfC3SJckR
	6TrYbTUN47XfiNF63hLwd4Wr2/gOFEuPAwrF3jtNOgNFJ3HMIDm4GgAjgpo17WXvTpN8qExQ34VvG
	y+BrW83ODqAytbF8ZVkysndvdcicfl/5SnWLzFPciS4YD/o/CubLkuPkypt3t2RfoaYF3Hbr9CPkd
	WHgek5eP/J+nVN6cRpmyUMBrxC+jobZycmt/a3FqMJ0jFw5GYorbtJ1i1wlPtaiy6UsCb9hUPOJVm
	Se8gd4sxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfYh-00045S-TS; Wed, 15 Apr 2020 10:46:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfYa-000454-C6
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:46:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 716E81063;
 Wed, 15 Apr 2020 03:46:11 -0700 (PDT)
Received: from [10.37.12.1] (unknown [10.37.12.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C5C73F68F;
 Wed, 15 Apr 2020 03:46:09 -0700 (PDT)
Subject: Re: [PATCH 7/8] arm64: cpufeature: Relax checks for AArch32 support
 at EL[0-2]
To: will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-8-will@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <714f124c-7eb7-b750-e98c-63da64ddae75@arm.com>
Date: Wed, 15 Apr 2020 11:50:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200414213114.2378-8-will@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_034612_455662_1699B526 
X-CRM114-Status: GOOD (  14.15  )
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 anshuman.khandual@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 dianders@chromium.org, catalin.marinas@arm.com, kernel-team@android.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/14/2020 10:31 PM, Will Deacon wrote:
> We don't need to be quite as strict about mismatched AArch32 support,
> which is good because the friendly hardware folks have been busy
> mismatching this to their hearts' content.
> 
>    * We don't care about EL2 or EL3 (there are silly comments concerning
>      the latter, so remove those)
> 
>    * EL1 support is gated by the ARM64_HAS_32BIT_EL1 capability and handled
>      gracefully when a mismatch occurs
> 
>    * EL1 support is gated by the ARM64_HAS_32BIT_EL0 capability and handled

s/EL1/EL0

>      gracefully when a mismatch occurs
> 
> Relax the AArch32 checks to FTR_NONSTRICT.

Agreed. We should do something similar for the features exposed by the
ELF_HWCAP, of course in a separate series.

> 
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
