Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D5FD29E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 14:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kD2IBOukKpkMdaPD0KNhUWnPI0UhuYq93gHhh9zEN00=; b=GTv9Jk1pNcjRXEYiykaF1TFWv
	gmjpUns6GFo/IJ4LsVHS/5mk9c5Mu5UhRKxXwA/HXgSZBTUT6D7Lwnq5ujUCnMhy05nFKVVlpLVW+
	oQ5Ep/ajr4to15Cf4fmSyoHtlOb5/QesUODh1KYJKLgUsEggXkbaaBUYvo/KIluESH/KipTUDtl5H
	NYUaKZOI1v38gXIJcpr8VdDk/zr0fJWwnN5ZfRAv32xFdqj0CznTIqhx+f7ayA8jeYcPVF903BH9m
	YhHdP8aQZagpevvqYR+LVu71cizFjuPjbBCaN99r1XrEYdcTOnnibu+pmKJsk50mrE2MKStaqiFRs
	X78TZrU+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIXpz-0004h6-Qq; Thu, 10 Oct 2019 12:46:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIXps-0004fn-G1
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 12:46:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6795128;
 Thu, 10 Oct 2019 05:46:23 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 936CF3F68E;
 Thu, 10 Oct 2019 05:46:22 -0700 (PDT)
Subject: Re: [PATCH] arm64: cpufeature: Fix truncating a feature value
To: Greg KH <gregkh@linuxfoundation.org>
References: <20191010110856.4376-1-suzuki.poulose@arm.com>
 <ca77dec7-b29b-5a3b-0c01-047a06d1854d@arm.com>
 <20191010122922.GA720144@kroah.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <295cfb9e-ac7b-73e7-bc80-8b9150f4a626@arm.com>
Date: Thu, 10 Oct 2019 13:46:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191010122922.GA720144@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_054628_576968_D2CA7836 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/10/2019 13:29, Greg KH wrote:
> On Thu, Oct 10, 2019 at 12:12:01PM +0100, Suzuki K Poulose wrote:
>> All,
>>
>> On 10/10/2019 12:08, Suzuki K Poulose wrote:
>>> A signed feature value is truncated to turn to an unsigned value
>>> causing bad state in the system wide infrastructure. This affects
>>> the discovery of FP/ASIMD support on arm64. Fix this by making sure
>>> we cast it properly.
>>>
>>> Fixes: 4f0a606bce5ec ("arm64: cpufeature: Track unsigned fields")
>>> Cc: stable@vger.kernel.org # v4.4
>>
>> Please note that this patch is only applicable for stable 4.4 tree.
>> I should have removed the Fixes tag.
> 
> Why is it only for 4.4?  That needs to be documented really really

This was fixed later in v4.6 onwards with commit 28c5dcb22f90113dea
("arm64: Rename cpuid_feature field extract routines") rather inadvertently.

> really well in the changelog as to why this is a one-off patch, and why
> we can't just take the relevant patches that are in Linus's tree
> instead.
> 
> Please fix up and resend.

I can resend the patch with the above information included if you like.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
