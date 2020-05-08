Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD2B1CB5D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 19:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lu51SpPyVdlYBXCqoaaG7EbnAxn1HLyc1cX447TA5L8=; b=WS2b/KeXSaQ4z8ALgG4vnQaYL
	yURSonpkzmGjjUQ6yN9fKplqIjCeV09J5lT2R7GXZ9lIt6CXnv2aSxU8yodTTkLAUjjIFXpZxEmLV
	d/KhBjALqVH5ltn5D+o6p4+CCQuz9delatFJurYP9TH4k2+qs53cu8OYXuHXJv9WYL4atW8G6k8Va
	VBCmZO8KRF6eK4dIMQToNsBhhQpA4+gGP02yD6Un+6IGYBE9bjA9Cs/+IyPZ2QpjX/QIlezUSzeHM
	dKW1SPBEYWEWIJ4S4nNfompvTUWSn7kt4gxTlmiS+JN95/p5bI94Kamiy+tKVyn99eKtqQLqBGKqy
	Kxefmep1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX6j3-00064l-FE; Fri, 08 May 2020 17:23:53 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6ir-00064E-On
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 17:23:45 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588958622; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=/ShlGgt8pBZ07QCqgaBqW3lEITDpUemdyZJbqV+iVnw=;
 b=K3vcLJQOllsixRUAX9WUUNnuTH/Rvgj9L9YrX7JeNl0TnmiXJkmint6kAGb8bG+w8R9ekLrD
 ifvTOvnkPZWwAuEKPTsDXuz35yV2RbenMa5hk0pYR7XpHnuUBrwroL7eCd+j8gI7uakCZGmT
 4dP9HPXoNlJA6KEGylOGvzjHB4I=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb59589.7fb6b4051a78-smtp-out-n01;
 Fri, 08 May 2020 17:23:21 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id F1917C4478F; Fri,  8 May 2020 17:23:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.79.43.230]
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sibis)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5F3C0C433F2;
 Fri,  8 May 2020 17:23:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5F3C0C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sibis@codeaurora.org
Subject: Re: [PATCH v5] iommu/arm-smmu-qcom: Request direct mapping for modem
 device
To: Stephen Boyd <swboyd@chromium.org>, joro@8bytes.org,
 robin.murphy@arm.com, will@kernel.org
References: <20200507192157.6831-1-sibis@codeaurora.org>
 <158888607765.26370.18078298627976225073@swboyd.mtv.corp.google.com>
From: Sibi Sankar <sibis@codeaurora.org>
Message-ID: <f22f0988-a965-d07b-1830-3f5eae42f299@codeaurora.org>
Date: Fri, 8 May 2020 22:53:06 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <158888607765.26370.18078298627976225073@swboyd.mtv.corp.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_102343_069321_51AE20F5 
X-CRM114-Status: GOOD (  25.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, dianders@chromium.org, evgreen@chromium.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 mka@chromium.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Stephen,
Thanks for taking time to review the patch.

On 5/8/20 2:44 AM, Stephen Boyd wrote:
> Quoting Sibi Sankar (2020-05-07 12:21:57)
>> The modem remote processor has two modes of access to the DDR, a direct
>> mode and through a SMMU which requires direct mapping. The configuration
>> of the modem SIDs is handled in TrustZone.
> 
> Is it "The configuration of the modem SIDs is typically handled by
> code running in the ARM CPU's secure mode, i.e. secure EL1"? And is that
> even true? I though it was programmed by EL2.
What I meant to say was qcom implementation of TZ or qcom
proprietary bootloaders. I should have been more specific
and mentioned that the configuration is done at EL2 by QHEE
(Qualcomm's Hypervisor Execution Environment) before we enter
the kernel.

> 
>> On platforms where TrustZone
> 
> TrustZone is always there.
> 
>> is absent this needs to be explicitly done from kernel. Add compatibles
>> for modem to opt in for direct mapping on such platforms.
>>
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> 
> Is Sai the author? Or does this need a co-developed-by tag?

I decided to include Sai's S-b just to show I took back
ownership of the patch from his patch series. I'll drop
it in the next re-spin.

> 
>> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
>> ---
>>
>> V5
>>   * Reword commit message and drop unnecessary details
> 
> I don't see any improvement! Probably because I don't understand _why_
> the modem needs a direct mapping. The commit text basically says "we
> need to do it because it isn't done in secure world sometimes". This is
> probably wrong what I wrote below, but I'd like to clarify to confirm my
> understanding. Maybe the commit text should say:

Thanks for taking time to reword the commit message will use
the same with a few corrections.

> 
> The modem remote processor has two access paths to DDR. One path is
> directly connected to DDR and another path goes through an SMMU. The
> SMMU path is configured to be a direct mapping because it's used by
> various peripherals in the modem subsystem. 

I'll use ^^ as is.

> Typically this direct
> mapping is configured by programming modem SIDs into the SMMU when EL2
> responds to a hyp call from the code that loads the modem binary in the
> secure world.

Typically this direct mapping is configured statically at EL2
by QHEE (Qualcomm's Hypervisor Execution Environment) before
the kernel is entered.

> 
> In certain firmware configurations, especially when the kernel is
> entered at EL2, we don't want secure mode to make hyp calls to program
> the SMMU because the kernel is in full control of the SMMU. Let's add
> compatibles here so that we can have the kernel program the SIDs for the
> modem in these cases.

In certain firmware configuration, especially when the kernel is already 
in full control of the SMMU, defer programming the modem SIDs to the
kernel. Let's add compatibles here so that we can have the kernel
program the SIDs for the modem in these cases.

Will/Stephen,
Let me know if the above changes are okay? I'll re-spin the patch
based on your feedback.

> 

-- 
Qualcomm Innovation Center, Inc.
Qualcomm Innovation Center, Inc, is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
