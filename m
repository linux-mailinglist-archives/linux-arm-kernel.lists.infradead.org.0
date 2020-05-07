Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9952D1C90EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+Pe9/59ilGOCh1Gz6fmKnkr39s9QDlQcbUbO0i4YWyg=; b=QAIlTmRCX1A7Ai0uP5EszYZ9F
	WlR/3CqEUgiYJgFd2s4pY6KoVNxif1mMlN9mqukNnWCh2Cx94Bv2K5pRf0OFTEH78MoNSy+Ef3wk7
	L73E7e+uBev/Az+E9JU1WV61jvu7WxYnZS0R0+RW58GIHXNaGcJBDhkOFQFbci1pOlA+xN1K0n1T9
	3hhqptieF00BLiAHRoFxzbloo7yf56c7euzoW+zW7B8aORNWR6Ipb5Dot9D9+Kq4WBOORbai6xbMT
	x8NSExDE0ErI2UBTmV1BsVV6tPJ4sF899HBi18ksH7AMGyVg14n6WpbJiXL55ZpKZ7zkmIzFHTqiw
	E4vk5PdDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhwy-00089y-Vz; Thu, 07 May 2020 14:56:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhwt-00089b-LV
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:56:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75A1C1FB;
 Thu,  7 May 2020 07:56:30 -0700 (PDT)
Received: from [10.57.36.85] (unknown [10.57.36.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1D63D3F68F;
 Thu,  7 May 2020 07:56:28 -0700 (PDT)
Subject: Re: [PATCH] iomm/arm-smmu: Add stall implementation hook
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rob Clark <robdclark@gmail.com>
References: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
 <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
 <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
 <fad5dc096a2bd9404341ba8738ba8fc9@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <80a3b07d-f3a7-07c4-4e8f-76e28563027c@arm.com>
Date: Thu, 7 May 2020 15:56:28 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <fad5dc096a2bd9404341ba8738ba8fc9@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_075631_746075_D5C72F03 
X-CRM114-Status: GOOD (  14.24  )
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Jordan Crouse <jcrouse@codeaurora.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-07 1:06 pm, Sai Prakash Ranjan wrote:
[...]
> We could have our own context fault handler in QCOM implementation,
> but that would just be duplicating things from arm-smmu context fault
> handler. So I did not think it makes much sense to have our own
> fault handler in qcom impl just for enabling stall model.

Hmm, it's probably worth thinking ahead a bit here, to the "actually 
doing things with stalls" plan. I don't have a clear picture off-hand of 
how well the new device fault handler API might fit into arm-smmu - at 
the very least trying to make it truly generic implies having to play 
nasty tricks with disable_irq() for the general case given the "IRQ may 
remain asserted while SS is active" possibility, and that isn't 
particularly inviting. Not to mention tying it into the 
pretend-auxdomain stuff that *is* rather dependent on the qcom impl. If 
it turns out that you'll eventually have to reimplement the IRQ handler 
anyway for all that, then starting off down that route *might* work out 
cleaner and less hassle overall.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
