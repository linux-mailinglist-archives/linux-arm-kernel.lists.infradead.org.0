Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59340153081
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 13:23:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dpp5V4xTZj+QwLE6yyYNfLG4oQq5Mu+NNkQ2TH2431s=; b=s6vxEXKjMi/qDqLUYXNCKxEDT
	dQOLaXdMilr5vPK9PJ1skwfzxs+bO8LK7ONwIP/ocWem+7Y2n+RXrYvWcP503FkR6x+w1OCJkiyF/
	L3ENS4Pqvx7tbYTmO4125BTTKlFZDiGGGPlSgXM3DiNcJiZ6mwRW3WUiH1wz6KCXYle4n2k1YiL6H
	gY7jQ28NnfRgaYV7by22G9YpgZvfjWhPupIA38OkznTM81Jf2ny+p1UiIFM6Vwfr8ozZTs9U5LHQq
	hUBdOfQvd6mSayOqLxzISrQ0uqLS/rk/H95nP2k1bqBMZe6AshV9fab450Y3lrJa7wTHOrM0m+Rcc
	LVFMWLO9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izJiD-0007Y4-FI; Wed, 05 Feb 2020 12:23:21 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izJi6-0007VU-Mi
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 12:23:16 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580905394; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=uMCCQYZszq+bmmu00qnksmPsuxhQeLZVhG8wCPSsiv4=;
 b=ey95Mwz2dHsyNWshYDbfBLL8q1LepZAA76vK59GRYO6nHoYcKGtcH8c7MA+kzC+TrHRKkDLX
 Nt+3xsUuk+ymx9HmfVSYkKUqz/nIWeDuBoyagfd38YkPpSS6qgPk4nFImR9+Q+QRtMbhhhF2
 S4FUDb0hcFIIa/VgKtqsfIUxTRI=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3ab3ad.7f81a1ef4d50-smtp-out-n02;
 Wed, 05 Feb 2020 12:23:09 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0B183C4479C; Wed,  5 Feb 2020 12:23:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.206.13.37]
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: mkshah)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3B304C433CB;
 Wed,  5 Feb 2020 12:23:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3B304C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkshah@codeaurora.org
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
To: Sudeep Holla <sudeep.holla@arm.com>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
 <1580736940-6985-6-git-send-email-mkshah@codeaurora.org>
 <20200203170832.GA38466@bogus>
 <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
 <20200204152132.GA44858@bogus>
From: Maulik Shah <mkshah@codeaurora.org>
Message-ID: <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
Date: Wed, 5 Feb 2020 17:53:00 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200204152132.GA44858@bogus>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_042314_962747_D41C5D26 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dianders@chromium.org, lsrao@codeaurora.org, Lorenzo.Pieralisi@arm.com,
 rnayak@codeaurora.org, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 swboyd@chromium.org, david.brown@linaro.org, agross@kernel.org,
 ilina@codeaurora.org, ulf.hansson@linaro.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2/4/2020 8:51 PM, Sudeep Holla wrote:
> On Tue, Feb 04, 2020 at 10:22:42AM +0530, Maulik Shah wrote:
>> On 2/3/2020 10:38 PM, Sudeep Holla wrote:
>>> On Mon, Feb 03, 2020 at 07:05:38PM +0530, Maulik Shah wrote:
>>>> From: Ulf Hansson <ulf.hansson@linaro.org>
>>>>
>>>> If the hierarchical CPU topology is used, but the OS initiated mode isn't
>>>> supported, we need to rely solely on the regular cpuidle framework to
>>>> manage the idle state selection, rather than using genpd and its
>>>> governor.
>>>>
>>>> For this reason, introduce a new PSCI DT helper function,
>>>> psci_dt_pm_domains_parse_states(), which parses and converts the
>>>> hierarchically described domain idle states from DT, into regular flattened
>>>> cpuidle states. The converted states are added to the existing cpuidle
>>>> driver's array of idle states, which make them available for cpuidle.
>>>>
>>> And what's the main motivation for this if OSI is not supported in the
>>> firmware ?
>> Hi Sudeep,
>>
>> Main motivation is to do last-man activities before the CPU cluster can
>> enter a deep idle state.
>>
> Details on those last-man activities will help the discussion. Basically
> I am wondering what they are and why they need to done in OSPM ?

Hi Sudeep,

there are cases like,

Last cpu going to deepest idle mode need to lower various resoruce 
requirements (for eg DDR freq).

This is done by calling rpmh_flush which send SLEEP values for various 
shared resources.

>>>> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
>>>> [applied to new path, resolved conflicts]
>>>> Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
>>>> ---
>>>>    drivers/cpuidle/cpuidle-psci-domain.c | 137 +++++++++++++++++++++++++++++-----
>>>>    drivers/cpuidle/cpuidle-psci.c        |  41 +++++-----
>>>>    drivers/cpuidle/cpuidle-psci.h        |  11 +++
>>>>    3 files changed, 153 insertions(+), 36 deletions(-)
>>>>
>>>> diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
>>>> index 423f03b..3c417f7 100644
>>>> --- a/drivers/cpuidle/cpuidle-psci-domain.c
>>>> +++ b/drivers/cpuidle/cpuidle-psci-domain.c
>>>> @@ -26,13 +26,17 @@ struct psci_pd_provider {
>>>>    };
>>>>
>>>>    static LIST_HEAD(psci_pd_providers);
>>>> -static bool osi_mode_enabled __initdata;
>>>> +static bool osi_mode_enabled;
>>>>
>>>>    static int psci_pd_power_off(struct generic_pm_domain *pd)
>>>>    {
>>>>    	struct genpd_power_state *state = &pd->states[pd->state_idx];
>>>>    	u32 *pd_state;
>>>>
>>>> +	/* If we have failed to enable OSI mode, then abort power off. */
>>>> +	if ((psci_has_osi_support()) && !osi_mode_enabled)
>>>> +		return -EBUSY;
>>>> +
>>> Why is this needed ? IIUC we don't create genpd domains if OSI is not
>>> enabled.
>> we do create genpd domains, for cpu domains, we just abort power off here
>> since idle states are converted into regular flattened mode.
>>
> OK, IIRC the OSI patches from Ulf didn't add the genpd or rather removed
> them in case of any failure to enable OSI. Has that been changed ? If so,
> why ?
>
>> however genpd poweroff will be used by parent domain (rsc in this case)
>> which is kept in hireachy in DTSI with cluster domain to do last man
>> activities.
>>
> I am bit confused here. Either we do OSI or PC and what you are describing
> sounds like a mix-n-match to me and I am totally against it.

we still do PC based on sc7180. there is no OSI.

can you please check v4 series, i have cleaned this change by remove 
converter part.

Thanks,

Maulik

>
> --
> Regards,
> Sudeep

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
