Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98BE118AD6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTCWcDFigbWT1sLXxGpcP10mi6tovzeY6tCYEIIQo54=; b=biNm5NQVHzOjDk
	izzKuN4aixUoEmNE6q//cupes8aqfIOembhvn3LNc4XY2bUFTog74qgKjV2t/5kNSuF3H8rl1gX7t
	dsIDRMZAudmD7HBwTk1BwfFwiWK5vsFa7uFGrmBRea1l5Utsh/6NSeughz6srnHdQ79SJnRa0MHD8
	DJEHKZpZFDbnEPWsfwibJTmMO2pjaFXtRTNEXtgzpGOYISPY9sA7xBVypdA7SZ/ZJKsbYDomTCqDB
	739se8OARGGZPMaGJpsXMI2SuL6PeMzC5MWBkww7oL2LLjCAzitA5+VOAhK3gt8BmWxRWrhdK9U6D
	CKXETdkZitHbVmhyadow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegW3-0008Va-So; Tue, 10 Dec 2019 14:29:31 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegVw-0008Uw-KU
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:29:26 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5defabae0000>; Tue, 10 Dec 2019 06:29:02 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 10 Dec 2019 06:29:23 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 10 Dec 2019 06:29:23 -0800
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 10 Dec
 2019 14:29:22 +0000
Received: from [10.21.133.51] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 10 Dec
 2019 14:29:21 +0000
Subject: Re: [PATCH] ARM: tegra: Fix restoration of PLLM when exiting suspend
To: Thierry Reding <thierry.reding@gmail.com>
References: <20191210103708.7023-1-jonathanh@nvidia.com>
 <20191210120909.GA2703785@ulmo>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <8bf12fcd-02c7-4dc0-90e6-30009ab9f8e7@nvidia.com>
Date: Tue, 10 Dec 2019 14:29:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210120909.GA2703785@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1575988142; bh=IRe6MY+3DRGHo5Au+IrCebqeGNCPq72U22T59CMWvmg=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Nl8S70F0mXaZ/CbV+Ygw2fr71GH0T0vxiO8SmFa2ke0bEnQ6bXvXRxVTo41WRnATI
 rPorag22QIrrmoqdSGKYWgQXlxfxtPAwlUZwxVqr0UFdDCmRb1SJvJiC6cEktUXQ7w
 AqAdYL8faUWE2w3eheHYtIWuXl9NjHdDtiLd6/uhSgh1Oy9zTp5qMru7EqCNH1I3du
 lEE63+PY3zOtzTySEARFWzxZEK9o85+S5CHxn7kRZ8anlcSsx6+FWRClUUVynojuEd
 +XZqNY9j4zi+znojryHdOF5LbxD34DMSIl41NrUWLUfqKfesSrHe3vTjXNy9pgH6st
 kRFBg8385xzWw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_062924_681463_F6340711 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/12/2019 12:09, Thierry Reding wrote:
> On Tue, Dec 10, 2019 at 10:37:08AM +0000, Jon Hunter wrote:
>> The suspend entry and exit code for 32-bit Tegra devices assumes that
>> the PLLM (which is used to provide the clock for external memory)
>> is always enabled on entry to suspend. Hence, the current code always
>> disables the PLLM on entry to suspend and re-enables the PLLM on exit
>> from suspend.
>>
>> Since the introduction of the Tegra124 EMC driver by commit 73a7f0a90641
>> ("memory: tegra: Add EMC (external memory controller) driver"), which is
>> used to scale the EMC frequency, PLLM may not be the current clock
>> source for the EMC on entry to suspend and hence may not be enabled.
>> Always enabling the PLLM on exit from suspend can cause the actual
>> status on the PLL to be different from that reported by the common clock
>> framework.
>>
>> On kernels prior to v4.5, the code to set the rate of the PLLM had a
>> test to verify if the PLL was enabled and if the PLL was enabled,
>> setting the rate would fail. Since commit 267b62a96951
>> ("clk: tegra: pll: Update PLLM handling") the test to see if PLLM is
>> enabled was removed.
>>
>> With these earlier kernels, if the PLLM is disabled on entering suspend
>> and the EMC driver attempts to set the parent of the EMC clock to the
>> PLLM on exiting suspend, then the set rate for the PLLM will fail and in
>> turn cause the resume to fail.
>>
>> We should not be re-enabling the PLLM on resume from suspend unless it
>> was enabled on entry to suspend. Therefore, fix this by saving the state
>> of PLLM on entry to suspend and only re-enable it, if it was already
>> enabled.
>>
>> Fixes: 73a7f0a90641 ("memory: tegra: Add EMC (external memory controller) driver")
>> Cc: stable@vger.kernel.org
>>
>> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
>> ---
>>  arch/arm/mach-tegra/sleep-tegra30.S | 33 +++++++++++++++++++++++------
>>  1 file changed, 27 insertions(+), 6 deletions(-)
> 
> Looks good to me. If I understand correctly we really only need this on
> v4.4 and earlier because the issue doesn't happen on later kernels
> because of that PLLM handling update change that you mentioned, right?

Yes.

> At the same time, this is the correct thing to do even on more recent
> kernels because we currently rely on the PLLM status check being absent
> for this to work.

Yes exactly.

> So it seems like the safest option going forward is to apply this patch
> to all versions, so that we don't rely on any assumptions.
> 
> Do you agree?

Yes, my feeling is that we should apply to mainline and then it should
be picked-up for stable.

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
