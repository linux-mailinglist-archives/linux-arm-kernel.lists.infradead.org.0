Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C181E59C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECSsabdXPXpfkJteC4/BeQXzztRtVhHOLbBQYwiRxyo=; b=T9vA+3CwxOCCHe
	IHRfWlZ3M/o8DbdzGdOZ7bLIj+oGCtOVZdZdOhaQ4pame54olTqeg1eStt3fPRmdssleCwuwJ2K8w
	kZ/YnkoLLdSD1NBcg6u/jKBqGOCY/eO6KvFLDayWtpsNz5eQuEkokJZA4IoOp3VZP1yrTDhQb5s2e
	0PQPBXb7LaAKsCJizKA5IXOMs8wo5YdU6jBFk82XypWg+ogDycNpAUVKjRgTgIo3hN7kHwB9PKIsn
	07JN4XFH/5Vl+7ZDe7RyVIa9DwY/3o0DxNBGzcs1txn4qKtrqhPzg/0waeXLBuTuYKzC7gSDJIuBR
	+IHf24gOY1uxoCtDWT6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDGH-0007qj-2w; Thu, 28 May 2020 07:47:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDFz-0007oH-6X
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:47:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 250E731B;
 Thu, 28 May 2020 00:47:12 -0700 (PDT)
Received: from [10.163.78.176] (unknown [10.163.78.176])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A4AC53F52E;
 Thu, 28 May 2020 00:47:09 -0700 (PDT)
Subject: Re: [PATCH V3] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
To: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
References: <1590573876-19120-1-git-send-email-anshuman.khandual@arm.com>
 <159057996975.77588.7036217455816555869.b4-ty@kernel.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <398e2d07-3076-9266-ae16-1be64e221fc7@arm.com>
Date: Thu, 28 May 2020 13:16:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <159057996975.77588.7036217455816555869.b4-ty@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_004715_283541_553BF125 
X-CRM114-Status: GOOD (  11.62  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/27/2020 05:55 PM, Will Deacon wrote:
> On Wed, 27 May 2020 15:34:36 +0530, Anshuman Khandual wrote:
>> There is no way to proceed when requested register could not be searched in
>> arm64_ftr_reg[]. Requesting for a non present register would be an error as
>> well. Hence lets just WARN_ON() when search fails in get_arm64_ftr_reg()
>> rather than checking for return value and doing a BUG_ON() instead in some
>> individual callers. But there are also caller instances that dont error out
>> when register search fails. Add a new helper get_arm64_ftr_reg_nowarn() for
>> such cases.
> 
> Applied to arm64 (for-next/cpufeature), thanks!
> 
> [1/1] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
>       https://git.kernel.org/arm64/c/3577dd37c703

Thanks Will, for changing the comment per Catalin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
