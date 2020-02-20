Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F200E166371
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:50:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qd2mlCux+cicXeWYvYO8llFI3A0gg5MEBvDwxVKGcq4=; b=U11k9bnT6pc3D3AL3H4V72JlR
	RjrZIqQNQsemwENyjXKoTT7xV7YdtJvM/IdFqjmZqXLXfQcYwAOMxToh2yFGF9lJFHLjdT2/kwG7m
	JCK3zGkehQgNJULKq8h9M0PQwzQov/Lr0sP2b4iLW5byjJnex/kRdXXpHKewQXM92tEfd/NHHtpZZ
	JVxBkVWD50v5IjXDB4nPIDX/qhcnW6fPPjSFwUZteMB6V5pumux5fwM8HUzTPI2FNb74qen1U0XGM
	OuIMWgQGpeKQ9OxRmygXz6BK2RrqpGaIWHosPgbhr0I/uE3ZZSRi0pwp4sMNu7linagiYDiF46ozY
	A9ItQdGLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4p1O-0001i5-TY; Thu, 20 Feb 2020 16:49:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4p1E-0001hg-N3
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:49:46 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24399207FD;
 Thu, 20 Feb 2020 16:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582217384;
 bh=7rYxqANQCf7hTl3tzhws3Y+kLKCxf80ReHi8QZQDs10=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TDwNjp21PuyTCYCua7hWSYoYD18e5SPNajumHDnNM286oKqCbkom/Z1svBBC8JJWQ
 vCSSOxBgnAxu3PeSsQz00Rzbtfqtdf6CKAkgey1Oskxextr9dGhUn/SIEP4jrQQCUC
 evHDOpyHD53SRuXW+m02mRFK8jGya4c4YPmySofA=
Date: Thu, 20 Feb 2020 11:49:43 -0500
From: Sasha Levin <sashal@kernel.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH AUTOSEL 5.5 219/542] ARM: OMAP2+: use separate IOMMU
 pdata to fix DRA7 IPU1 boot
Message-ID: <20200220164943.GF1734@sasha-vm>
References: <20200214154854.6746-1-sashal@kernel.org>
 <20200214154854.6746-219-sashal@kernel.org>
 <a7666322-f931-63f1-a4c5-d44c2ba4ed0c@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7666322-f931-63f1-a4c5-d44c2ba4ed0c@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_084944_772129_66CBF408 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 12:34:58PM -0600, Suman Anna wrote:
>Hi Sasha,
>
>On 2/14/20 9:43 AM, Sasha Levin wrote:
>> From: Suman Anna <s-anna@ti.com>
>>
>> [ Upstream commit 4601832f40501efc3c2fd264a5a69bd1ac17d520 ]
>>
>> The IPU1 MMU has been using common IOMMU pdata quirks defined and
>> used by all IPU IOMMU devices on OMAP4 and beyond. Separate out the
>> pdata for IPU1 MMU with the additional .set_pwrdm_constraint ops
>> plugged in, so that the IPU1 power domain can be restricted to ON
>> state during the boot and active period of the IPU1 remote processor.
>> This eliminates the pre-conditions for the IPU1 boot issue as
>> described in commit afe518400bdb ("iommu/omap: fix boot issue on
>> remoteprocs with AMMU/Unicache").
>>
>> NOTE:
>> 1. RET is not a valid target power domain state on DRA7 platforms,
>>    and IPU power domain is normally programmed for OFF. The IPU1
>>    still fails to boot though, and an unclearable l3_noc error is
>>    thrown currently on 4.14 kernel without this fix. This behavior
>>    is slightly different from previous 4.9 LTS kernel.
>> 2. The fix is currently applied only to IPU1 on DRA7xx SoC, as the
>>    other affected processors on OMAP4/OMAP5/DRA7 are in domains
>>    that are not entering RET. IPU2 on DRA7 is in CORE power domain
>>    which is only programmed for ON power state. The fix can be easily
>>    scaled if these domains do hit RET in the future.
>> 3. The issue was not seen on current DRA7 platforms if any of the
>>    DSP remote processors were booted and using one of the GPTimers
>>    5, 6, 7 or 8 on previous 4.9 LTS kernel. This was due to the
>>    errata fix for i874 implemented in commit 1cbabcb9807e ("ARM:
>>    DRA7: clockdomain: Implement timer workaround for errata i874")
>>    which keeps the IPU1 power domain from entering RET when the
>>    timers are active. But the timer workaround did not make any
>>    difference on 4.14 kernel, and an l3_noc error was seen still
>>    without this fix.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> Signed-off-by: Tony Lindgren <tony@atomide.com>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>
>And drop this one as well, since mainline doesn't yet boot
>the processors, so this is not needed for stable queue.

Now dropped, thank you.

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
