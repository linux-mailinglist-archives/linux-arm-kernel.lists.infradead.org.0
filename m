Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C601BD870
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 11:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EePjYMBpejpZ1Kp7GNR2VrAedQUCG/uEMdgVV7C5w3Y=; b=kUfeRBOZ5WC+f2
	aT0qs/ww165JPjXpPIE97CSyFO39Ul4SfhKUgEluncNq2cJpfM4b2TdiDrUmJ9iOQZyqUpSwGzmba
	DIqborXOSm9nqdzZTcxPBBNbZfSc2Wuo+vvmjAWaUK0DRYUJGV52T/rs2HsVBz7vGPpYQyUc1sjW9
	NVmehVB3NcjsRMPnJb2/+O3WEo3ZlqQgBN+H1b+ync+iegTE4QCwkraB88DZc0XTWDuKmVuhxo1bF
	nSSfWSHhVs1x8quN3UNRU2e/DqAlmwwBBFl7APMjOTYr/E8a6Frs2myDp+HrCqhnY3Ze3fJAeFxLq
	30H/oh43WO8dvHlBuW6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjAI-0007o0-0z; Wed, 29 Apr 2020 09:38:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjA5-0007mY-Jd
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 09:37:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4676C14;
 Wed, 29 Apr 2020 02:37:46 -0700 (PDT)
Received: from [10.163.71.39] (unknown [10.163.71.39])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 463A83F73D;
 Wed, 29 Apr 2020 02:37:44 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 00/16] arm64/cpufeature: Introduce ID_PFR2, ID_DFR1,
 ID_MMFR5 and other changes
To: linux-arm-kernel@lists.infradead.org
References: <1586857710-17154-1-git-send-email-anshuman.khandual@arm.com>
Message-ID: <6749304e-8a4d-f4b9-eb40-91f0dd13166e@arm.com>
Date: Wed, 29 Apr 2020 15:07:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1586857710-17154-1-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_023749_690356_E21EBD87 
X-CRM114-Status: GOOD (  15.91  )
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 maz@kernel.org, will@kernel.org, kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/14/2020 03:18 PM, Anshuman Khandual wrote:
> This series is primarily motivated from an adhoc list from Mark Rutland
> during our previous ID_ISAR6 discussion [1]. The current proposal also
> accommodates some more suggestions from Will and Suzuki.
> 
> This series adds missing 32 bit system registers (ID_PFR2, ID_DFR1 and
> ID_MMFR5), adds missing features bits on all existing system registers
> (32 and 64 bit) and some other miscellaneous changes. While here it also
> includes a patch which does macro replacement for various open bits shift
> encodings for various CPU ID registers. There is a slight re-order of the
> patches here as compared to the previous version (V1).
> 
> This series is based on v5.7-rc1. All feature bits enabled here can be
> referred in ARM DDI 0487F.a specification. Though I have tried to select
> appropriate values for each new feature being added here, there might be
> some inconsistencies (or mistakes). In which case, please do let me know
> if anything needs to change. Thank you.
> 
> [1] https://patchwork.kernel.org/patch/11287805/
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com> 
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: James Morse <james.morse@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: kvmarm@lists.cs.columbia.edu
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Changes in V2:
> 
> - Added Suggested-by tag from Mark Rutland for all changes he had proposed
> - Added comment for SpecSEI feature on why it is HIGHER_SAFE per Suzuki
> - Added a patch which makes ID_AA64DFR0_DOUBLELOCK a signed feature per Suzuki
> - Added ID_DFR1 and ID_MMFR5 system register definitions per Will
> - Added remaining features bits for relevant 64 bit system registers per Will
> - Changed commit message on [PATCH 5/7] regarding TraceFilt feature per Suzuki
> - Changed ID_PFR2.CSV3 (FTR_STRICT -> FTR_NONSTRICT) as 64 bit registers per Will
> - Changed ID_PFR0.CSV2 (FTR_STRICT -> FTR_NONSTRICT) as 64 bit registers per Will 
> - Changed some commit messages

Hello Will,

Just a gentle ping. I am wondering if you had a chance to glance
through this updated series.

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
