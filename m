Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541171ABB79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RY8j7gAYkJBG67vm+8kHrL8p8F5ET8obDBL1XkUm7FE=; b=dH8RtKUmYvKQD7SjqfnN8n/BH
	VCHrfrTXzsnrqHDgpm1ojQJmY8y5j02AW0A81EhDfZKeWG2U3krzgS7mbk5zxwrNzDeubG8yjCVQC
	w3gI/z6NNhpfBvhecxJVsD6IKthpy7an/YCDvb5m5hJAI0xkOeqn3YL3TEhNA9pqyfsNK1uh9rRB7
	uGlIcdW8yryg8y2HILx9TTzN+CCobRcNX7+tGo4RK1T3oYlYz4PZgJOvPS3xgHIBNTk9/pBC+Dn7A
	BxbhWTT2VLF3KPsWHI+l+cSFzb77ezXWgZ7PqF2Zto51U/pWfq1I9wF96J2yrUpNxh4jo2yxHP8z2
	g4JVTfLvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP03s-0008Lp-JE; Thu, 16 Apr 2020 08:39:52 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP03k-0008L6-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:39:46 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587026385; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=uYTomwNJ7JVKnSJj43lc2hrUMA3IdsRKM3uaYsQJc+A=;
 b=NVzHH5QZoPKcUJdbVhOOgcAGXZ4pf0oVl3ptv6LkxaCxjXFFNJjau739kCLaXRysx99dXci4
 1Vl5JsleXYNxoW5guKKxQwJ5an84OeEl0u4jwemtmYw9Ay14zyXYWauH8SwaDaLq8sywsbrS
 Ue6zNA5DBzvdWGUtKfPy1xWR5GA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9819c3.7f02262a8928-smtp-out-n03;
 Thu, 16 Apr 2020 08:39:31 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 39981C44788; Thu, 16 Apr 2020 08:39:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 94779C433F2;
 Thu, 16 Apr 2020 08:39:30 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 16 Apr 2020 14:09:30 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/8] Relax sanity checking for mismatched AArch32 EL1
In-Reply-To: <20200414213114.2378-1-will@kernel.org>
References: <20200414213114.2378-1-will@kernel.org>
Message-ID: <a86108a91975cacf94adc2a2101fba1b@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_013945_607744_8CF7B2DC 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Anshuman Khandual <anshuman.khandual@arm.com>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Doug Anderson <dianders@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-15 03:01, Will Deacon wrote:
> Hi all,
> 
> For better or worse, there are SoCs in production where some, but not
> all of the CPUs, support AArch32 at EL1 and above. Right now, that
> results in "SANITY CHECK" warnings during boot and an unconditional
> kernel taint.
> 
> This patch series tries to do a bit better: the only time we care about
> AArch32 at EL1 is for KVM, so rather than throw our toys out of the
> pram, we can instead just disable support for 32-bit guests on these
> systems. In the unlikely scenario of a late CPU hotplug being the first
> time we notice that AArch32 is not available, then we fail the hotplug
> (right now we let the thing come online, which leads to hilarious
> results for any pre-existing 32-bit guests).
> 
> Feedback welcome,
> 
> Will
> 

Thanks Will, tested this series on QCOM SC7180 and SM8150 SoCs.

For the entire series,

Tested-by: saiprakash.ranjan@codeaurora.org

-Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
