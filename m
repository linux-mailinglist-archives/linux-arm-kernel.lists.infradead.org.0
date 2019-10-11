Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B92D5D3D68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nCADl3vu61kJTtlWb7jSa5rVnBPUGWCl3k6ESuEO4Pc=; b=We1FLRbHwgPiL7DqQJ5YnJK0u
	pcKG5A9lODxErd9jaQM6WuZuwRn62G4h7MVE0QXOXCnYB7PSqdM2AWbPGR7VIVqCnevS2uBEiuNBt
	K7Pel77n/3uorByYf0ZDUUb/bzWdVqzPPrBlphmBSMxvl4Od0fFBhc6odWx0Y32XbFAYEjpNfQIlt
	lIZnsUQbytaLGv4lpIDD1iQj/RJ40on5KKMV3Q1LKPqiqXe5KJcgT53OtZ1ZW81KQ9WkhUo/gq9c6
	6/8fbYRseDVP8KrDZhg6tZzqaLjTGmG0kZA9ZasFJ/82JZYVERHv18JFkAQou306iVYDPA21JZ0ZQ
	9EuiPYxxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsD2-0000Tk-Lx; Fri, 11 Oct 2019 10:31:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsCv-0000T7-BY
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:31:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8837F28;
 Fri, 11 Oct 2019 03:31:32 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7F1E3F703;
 Fri, 11 Oct 2019 03:31:31 -0700 (PDT)
Subject: Re: [PATCH] arm64: cpufeature: Fix truncating a feature value
To: Greg KH <gregkh@linuxfoundation.org>
References: <20191010122922.GA720144@kroah.com>
 <20191010131943.26822-1-suzuki.poulose@arm.com>
 <20191011045538.GA977916@kroah.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <433563f1-1aad-f43b-a294-08cb39ba4818@arm.com>
Date: Fri, 11 Oct 2019 11:31:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191011045538.GA977916@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_033137_439280_6A013D01 
X-CRM114-Status: GOOD (  14.56  )
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

Hi Greg,

On 11/10/2019 05:55, Greg KH wrote:
> On Thu, Oct 10, 2019 at 02:19:43PM +0100, Suzuki K Poulose wrote:
>> A signed feature value is truncated to turn to an unsigned value
>> causing bad state in the system wide infrastructure. This affects
>> the discovery of FP/ASIMD support on arm64. Fix this by making sure
>> we cast it properly.
>>
>> This was inadvertently fixed upstream in v4.6 onwards with the following :
>> commit 28c5dcb22f90113dea ("arm64: Rename cpuid_feature field extract routines")
> 
> What prevents us from just taking that commit instead?  You did not
> document that here at all, which I thought I asked for.

Sorry, I missed that part. So, that change introduces helpers to
extract feature fields based on the sign. And it also depends on

commit ff96f7bc7bf6 ("arm64: capabilities: Handle sign of the feature bit")

which introduces "sign" bit for the "capability" list and modifies
the generic capability->matches() helpers to use the hint to switch to the
appropriate helpers.

I could backport parts of the commit 28c5dcb22f90 dropping the bits
that affect the changes mentioned above.

> 
> Also, you only need 12 digits for a sha1, 28c5dcb22f90 ("arm64: Rename
> cpuid_feature field extract routines") would be just fine :)

Yea, I understand. Its simply a pain to count the numbers, so I make sure
to pickup something that looks larger than the 12 ;-). I will try to stick
to that :-)

Cheers
Suzuki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
