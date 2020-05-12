Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732D31CEF72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 10:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xIm2ayWkeF2kLLxko8wKBeEsu8nUYpSjTFb4iMSAkTU=; b=tanj0L8VW9+MqFQJvzrr19d+H
	I+7FbeTIg191DT3OQZI+ugj3sVcbycsh0CoIkSAG1rwXkb6RWYtV9cn6n5suHCDb9Y+Ag+XQgwxvr
	hyH49XRCBQnsrn7oJ7pfJJPgG3IrqodxUZ4YHj7zFaAsfjpank/NpvPWcaOX/94MIvIFr0WuOr77M
	oxFlDZfwfIE5Sh8TQR/aTpmjNT/lQuIvausFCvCTjx5R2AOoI1d4cX1rbbY+ArTT3t/CRO98u01Ma
	19An8gFixfY8i8zsbfpPVgPVFK/Il9LyXc6f4ohffDACXEVDJ8WarP1tvuQ1xcpXdwzIuTfoMwhZe
	bgzr7G/DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQZa-0008NX-RG; Tue, 12 May 2020 08:47:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQZS-0008MU-NI
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 08:47:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B14F21FB;
 Tue, 12 May 2020 01:47:23 -0700 (PDT)
Received: from [10.37.12.83] (unknown [10.37.12.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A066F3F305;
 Tue, 12 May 2020 01:47:21 -0700 (PDT)
Subject: Re: [PATCH] memory/samsung: reduce unnecessary mutex lock area
To: Krzysztof Kozlowski <krzk@kernel.org>, Bernard Zhao <bernard@vivo.com>
References: <20200508131338.32956-1-bernard@vivo.com>
 <20200512065023.GA10741@kozik-lap>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <e762ce12-eff0-d3a5-f083-2b592921de59@arm.com>
Date: Tue, 12 May 2020 09:47:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200512065023.GA10741@kozik-lap>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_014726_808106_B3ED87A0 
X-CRM114-Status: GOOD (  17.84  )
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
Cc: opensource.kernel@vivo.com, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

I am sorry, I was a bit busy recently.

On 5/12/20 7:50 AM, Krzysztof Kozlowski wrote:
> On Fri, May 08, 2020 at 06:13:38AM -0700, Bernard Zhao wrote:
>> Maybe dmc->df->lock is unnecessary to protect function
>> exynos5_dmc_perf_events_check(dmc). If we have to protect,
>> dmc->lock is more better and more effective.
>> Also, it seems not needed to protect "if (ret) & dev_warn"
>> branch.
>>
>> Signed-off-by: Bernard Zhao <bernard@vivo.com>
>> ---
>>   drivers/memory/samsung/exynos5422-dmc.c | 6 ++----
>>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> I checked the concurrent accesses and it looks correct.
> 
> Lukasz, any review from your side?

The lock from devfreq lock protects from a scenario when
concurrent access from devfreq framework uses internal dmc fields 'load' 
and 'total' (which are set to 'busy_time', 'total_time').
The .get_dev_status can be called at any time (even due to thermal
devfreq cooling action) and reads above fields.
That's why the calculation of the new values inside dmc is protected.

This patch should not be taken IMO. Maybe we can release lock before the
if statement, just to speed-up.

Regards,
Lukasz


> 
> Best regards,
> Krzysztof
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
