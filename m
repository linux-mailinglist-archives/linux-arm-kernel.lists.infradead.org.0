Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A631FCB06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Agj81PeRhYb7yj0FRTHLDeVZW7j8o+JePprIywO1eho=; b=PjAWKP3VKDZbenlkQGJQF983+
	ZFjwp6SHmiEfMI81jG1oy4CqhzomW2Xk10qT0fS2uCETIx/icC5m4HRNDejpManb3lltJKeV1mtq6
	Ozd8IHVXXFY9daiuURUHnrIgv1Eh1gsD77BIJUpJttd6Q8X1A+XoUXAbEfmQTBs7GC4SgUJgmAdjo
	i7eSVj74xK/hyEvVKhgI5iIWWnRK4wI1xpfg6TPOp61uvfLCqEg4Pd9bTT/cePb/jobgwnG2AxyYK
	mI/Zf+RCfr0iA0oecylIbRfhq04hiB5b2fgpFghiBf1gvdU5Hs4jOCzH+WX+cUMqaODLHBkavKz6C
	iHE7su6ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVV3-00064c-Ab; Wed, 17 Jun 2020 10:40:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVUu-00063z-2N
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:40:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC958C0A;
 Wed, 17 Jun 2020 03:40:46 -0700 (PDT)
Received: from [10.37.12.67] (unknown [10.37.12.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9D923F71F;
 Wed, 17 Jun 2020 03:40:44 -0700 (PDT)
Subject: Re: [PATCH 0/4] Restore big.LITTLE cpuidle driver for Exynos
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Anand Moon <linux.amoon@gmail.com>
References: <CGME20200616081248eucas1p168faa343ce333a28c8fd3cf9a6a58b3c@eucas1p1.samsung.com>
 <20200616081230.31198-1-m.szyprowski@samsung.com>
 <CANAwSgStsYP5fBB7z7-Reo2BP4ZQPT6RN4s8QdLGVGhKCDA_Ng@mail.gmail.com>
 <3e6b5dbb-a8a2-e3db-d740-53e13676455c@samsung.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <6b2ac503-62e1-35a6-6dc7-232597367396@arm.com>
Date: Wed, 17 Jun 2020 11:40:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3e6b5dbb-a8a2-e3db-d740-53e13676455c@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_034048_153524_64B814C8 
X-CRM114-Status: GOOD (  19.81  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/17/20 10:48 AM, Marek Szyprowski wrote:
> Hi Anand,
> 
> On 16.06.2020 22:58, Anand Moon wrote:
>> On Tue, 16 Jun 2020 at 13:44, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>>> The ARM big.LITTLE cpuidle driver has been enabled and tested on Samsung
>>> Exynos 5420/5800 based Peach Pit/Pi Chromebooks and in fact it worked
>>> only on those boards.
>>>
>>> However, support for it was broken by the commit 833b5794e330 ("ARM:
>>> EXYNOS: reset Little cores when cpu is up") and then never enabled in the
>>> exynos_defconfig. This patchset provides the needed fix to the common
>>> code and restores support for it. Thanks to Lukasz Luba who motivated me
>>> to take a look into this issue.
>>>
>> Thanks for this updates.
>>
>> But I feel some DTS changes are missing for example
>> d2e5c871ed8a drivers: cpuidle: initialize big.LITTLE driver through DT
> 
> This is not strictly needed. The bl-cpuidle matches also to the A7/A15
> CPU product ids and it is properly instantiated on the Peach Pit/Pi
> Chromebooks. Those CPU DT properties were added as a future-proof
> generic solution. I won't hurt to add them though.

> 
>> But I feel that this feature is not working as desired since
>> still some missing code changes for cluster idle states are missing.
>> like clock  PWR_CTR and PWR_CTRL2.
> 
> I cannot judge now. All I can test now is a that the boards enters those
> idle states and system works stable. I cannot measure power consumption,
> because currently I have only remote access to the boards.

I agree with Marek. This can be done incrementally. The series fixes the
code path which was working. After the investigation with a power
meter, a proper set of new patches might come if needed.

As a hint to measure this power consumption difference, because it
might be tricky, I would suggest to heat up the SoC. The main
difference between wfi and deeper idle which cut the power
to some components (like caches) should be seen at higher voltage
OPP and higher temperature. It's due to the fact that static power
(leakage) is related to Vdd and temperature -
higher voltage -> higher leakage
higher temp -> higher leakage
This difference (idle state 0 vs 1) should be amplified in the
above scenario and easier to measure.

I am going to review this series after finishing hotplug tests.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
