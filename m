Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9AE18D689
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CRgEaF1thj+Gw8qhYPhMFfoXk7PHbRmZBIJWyJTuHtA=; b=ojYN0TpLy0+qZFqja3xf1AR+6
	GjtYJ1OEIiC4/2IZvWTVZpd6P8MDZCjMTYeNlzJszj9Hk3Yq3LtWKosbBQvD+7g+OZ8Xg4JPFtPxQ
	1iizAxXZPcvAMCoQs5SRMdq1kHkH0L5e4khwcPvRlOb+DxHAdgt9LAaDvAEV2vkza4+/RstDulv0j
	mY4YOhLhZpkV738vligX75gXYstfnN0U/TL/hSMoMaMaZrFK3mJ33Z14IyAxKELY/+a8U7LmHGdsY
	4DexdkWt+Tg0IxsxuaFMzsvmy3k3ydI/hBI3nETEnFx79xtU+R5HOfT0Kq8nPscwQNqq9SDUIrXMb
	so0NHAQQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFM37-0007ew-8A; Fri, 20 Mar 2020 18:07:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFM2y-0007ea-04
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:07:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C7DE1FB;
 Fri, 20 Mar 2020 11:07:03 -0700 (PDT)
Received: from [10.37.12.158] (unknown [10.37.12.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E3B523F305;
 Fri, 20 Mar 2020 11:07:01 -0700 (PDT)
Subject: Re: [PATCH 3/6] arm64/cpufeature: Add remaining feature bits in
 ID_MMFR4 register
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-4-git-send-email-anshuman.khandual@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <54e53bb4-beb3-1a36-e8a4-2f3bda433739@arm.com>
Date: Fri, 20 Mar 2020 18:11:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1580215149-21492-4-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_110704_079551_4F004201 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, will@kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/28/2020 12:39 PM, Anshuman Khandual wrote:
> Enable all remaining feature bits like EVT, CCIDX, LSM, HPDS, CnP, XNX,
> SpecSEI in ID_MMFR4 register per ARM DDI 0487E.a.

It might be worth adding a comment here mentioning why SpecSEI is
HIGHER_SAFE, unlike the majority.

> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

With that:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
