Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B0C148687
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JVaq95yBIITc4/KQsVW3YmiC5KPwESnj+IVNG8EyEP8=; b=CfxhHssc6dFBCA1MEJYUuaPQF
	Qwwy/UmrJwM36cCApDngDE0UBP7pw3FBi+twIh7mr1MYIpNa4eHMcYjJ7m32cRCpX1gIhdWcPSOl3
	meHQwlx/cinJlGQkj6Rv447bqRqHSYSrOaOpV2ylzcjxfnwBJ0oG4US/X8mhhUkwoGd5UfWu8RWVV
	P0RdBhp5f7yi9pelC2463ZQJbRKOtiPNkQEzc3oQFM0JnySExBUQn0L4B/24rvCTLwGWxXq6VrqK6
	xEkDxnOARSGwDEPt80WSA8tdhOiFiZon+FO2uCvHI8iT/qTmyNZF1+flTSDidUFSF57EhahYsgfGz
	TYtkqEgpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzaH-0002rm-4t; Fri, 24 Jan 2020 14:05:17 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuzZy-0002rG-8i
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:05:00 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579874698; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=ajqMb8UmIys1+mfIKmm/Eull7lVgeNOgev7uRgfOCXQ=;
 b=lYVL/LeGNygUdqUmI+HgN4LPv/fdmcsucoEFVrzNoUZXh/2FP4ADrgs+FWyY9dVBSYc/MGVu
 lNRlGqbYaLf9FPq+DYN4Mpfo6S+WiYfSlbvTFX+RTKQG2PNWTSJY6ziPSAujdWHs/CAn2Cow
 6Zy/q1x0gFeBUyLW/VHqyij1cnI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2af983.7fe991e3e810-smtp-out-n01;
 Fri, 24 Jan 2020 14:04:51 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C1D8DC447A1; Fri, 24 Jan 2020 14:04:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0E961C43383;
 Fri, 24 Jan 2020 14:04:51 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 24 Jan 2020 19:34:51 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 0/2] Add EDAC support for Kryo CPU core caches
In-Reply-To: <0769b7cb-4e01-eb83-8ad4-b29b4fafafd4@arm.com>
References: <0101016ed57a10a8-bd8fbdb9-a5cd-4460-bae6-c5c35f0eed88-000000@us-west-2.amazonses.com>
 <0769b7cb-4e01-eb83-8ad4-b29b4fafafd4@arm.com>
Message-ID: <4bd9d0f34ff06aa0185616066158349a@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_060458_813463_361981B7 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, psodagud@codeaurora.org,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 tsoni@codeaurora.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Evan Green <evgreen@chromium.org>, Robert Richter <rrichter@marvell.com>,
 baicar@os.amperecomputing.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello James,

On 2020-01-16 00:16, James Morse wrote:
> Hi Sai,
> 
> (CC: +Tyler)
> 
> On 05/12/2019 09:52, Sai Prakash Ranjan wrote:
>> This series implements EDAC support for error reporting on
>> Kryo{3,4}XX CPU caches L1,L2, L3-SCU. All the cores(big.LITTLE)
>> in Kryo{3,4}XX CPUs implement RAS extensions and use interrupt
>> based ECC mechanism to report errors.
>> 
>> This series has been tested on SC7180, SDM845, SM8150 SoCs with
>> Kryo{3,4}XX CPU cores based on ARM Cortex-A55, Cortex-A75 and
>> Cortex-A76.
>> 
>> This implementation is platform specific in contrast to the
>> patch posted last time for generic error reporting on arm cortex
>> implementations with RAS extensions by Kyle Yan.
>>  - https://patchwork.kernel.org/patch/10161955/
> 
> I think that series was dropped because it was too soc-specific and
> overlaps with the v8.2
> kernel first support. That series was superseded by:
> lore.kernel.org/r/1562086280-5351-1-git-send-email-baicar@os.amperecomputing.com
> 
> Can you work with Tyler on a combined series? The combined support may
> need to look quite
> different. (DT and big/little being the obvious differences).
> 
> I'm afraid this is the tip of the kernel-first-RAS iceberg.
> 

Sorry for the delayed response. Sure, I will take a look at the series 
posted by Tyler.
It might take some time to come up with that but should be doable with 
your review :)

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
