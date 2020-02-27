Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 719B1170D67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 01:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmkwyxGjhJCUASmBxWCCyWhm9s0N24wDAsj2/g4KB6c=; b=MGuCTn9zYphBy9
	D6YJEXw33uHLZLnBMKoEwWm9g2qaBx/AMH96rwMpwJFit4gGQO1kKuo/GQXioNG0tAcNzTWoe2RIq
	eJiN2ErQLqy1x3bdXAs3Ky3ZaO0LykYU55IBPG9zLK7mGvolAp1OWnNO0ZpxUvX7StCCLgtCarwaw
	98Fe27AUHQ399mUKT237WpvPi94uapHJB9KDqoaExvGAEmGtPg7/XkduKqa9YlalD3XPt/JXULTW+
	iZOg8tI51/z4/re7m8OH1lbO9qWYkDbNLU7+AL3SzwuTrUgzFG3TjVsd6t29swVzcR9nvBf+tD+h+
	1tMqcPTg42JxknfSfR4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j77Hr-0000vL-H1; Thu, 27 Feb 2020 00:44:23 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j77Hf-0000um-MC
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 00:44:16 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582764254; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=JcRs9mZiMthRLxtoA2Yryvm9oBuTfwKq6aDUtbfP5vU=;
 b=Wekr7/JLIEQYR6DoUoc3wN98SDS/emeOi2sDQWSmRt0ytbMQHKD+dubESGxwdJoOiJeD7FMp
 M9hb5v/Zv6Wh5H2TlOopHYx9f/VZk52BtMM8OZSzSaWf0ERaFgGdaK3S1hPr2ir03jOWar2v
 wOnBs5ko6RfLFr6066cCXc4J924=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e5710d2.7f63ed40bc00-smtp-out-n01;
 Thu, 27 Feb 2020 00:44:02 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A0C5DC4479F; Thu, 27 Feb 2020 00:44:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.134.65.5] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: eberman)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5982CC43383;
 Thu, 27 Feb 2020 00:44:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5982CC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=eberman@codeaurora.org
Subject: Re: [PATCH v2 1/3] dt: psci: Add arm,psci-sys-reset2-type property
To: Mark Rutland <mark.rutland@arm.com>
References: <1582577858-12410-1-git-send-email-eberman@codeaurora.org>
 <1582577858-12410-2-git-send-email-eberman@codeaurora.org>
 <20200226120918.GA21897@lakrids.cambridge.arm.com>
From: Elliot Berman <eberman@codeaurora.org>
Message-ID: <edcf310c-8808-f210-1044-cfd2191e9e3d@codeaurora.org>
Date: Wed, 26 Feb 2020 16:44:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200226120918.GA21897@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_164414_715215_2A6D1C8C 
X-CRM114-Status: GOOD (  23.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Trilok Soni <tsoni@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 David Collins <collinsd@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Prasad Sodagudi <psodagud@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/26/2020 4:09 AM, Mark Rutland wrote:
> On Mon, Feb 24, 2020 at 12:57:36PM -0800, Elliot Berman wrote:
>> Some implementors of PSCI may relax the requirements of the PSCI
>> architectural warm reset. In order to comply with PSCI specification, a
>> different reset_type value must be used.
> 
> This reads as-if you're saying the firmware isn't spec compliant, and
> this is a workaround in order to get the expected behaviour.
> 
> Can you please elaborate on what you mean by "relax the requirements"
> here? What's your firmware doing or not doing that you want to avoid?
> 
>> The alternate PSCI SYSTEM_RESET2 may be used in all warm/soft reboot
>> scenarios, replacing the architectural warm reset.
> 
> I assume you mean SYSTEM_REET2's SYSTEM_WARM_RESET reset? Please call
> that out explicitly by name -- it makes this easier to look up, and
> if/when more architectural resets are added the commit message won't
> become ambiguous.

I can reword to:

Some implementors of PSCI may wish to generally use a different reset type
than SYSTEM_WARM_RESET. For instance, Qualcomm SoCs support an alternate
reset_type which may be used in more warm reboot scenarios than
SYSTEM_WARM_RESET permits (e.g. to reboot into recovery mode).

> 
>>
>> Signed-off-by: Elliot Berman <eberman@codeaurora.org>
>> ---
>>  Documentation/devicetree/bindings/arm/psci.yaml | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
>> index 8ef8542..469256a2 100644
>> --- a/Documentation/devicetree/bindings/arm/psci.yaml
>> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
>> @@ -102,6 +102,11 @@ properties:
>>        [1] Kernel documentation - ARM idle states bindings
>>          Documentation/devicetree/bindings/arm/idle-states.txt
>>  
>> +  arm,psci-sys-reset2-param:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: |
>> +        reset_param value to use during a warm or soft reboot.
> 
> A "soft" reboot isn't a PSCI concept, so I'm worried this is just
> hooking up magic values for Linux internals.> 
> I'd like to better understand what you're trying to achieve here.

In Qualcomm use cases, we do not always want to preserve memory to caller's
(i.e. Linux) exception level. For instance, crash recovery mode runs in
higher exception level and would not continue booting into Linux except
through a hard reset. Also, this early firmware doesn't have the ability to
understand device tree or ACPI tables to know what memory to preserve.

Per discussion with Sudeep and Charles, this use case violates PSCI
specification for SYSTEM_WARM_RESET reset type, but would be appropriate
for a vendor-specific reset type. Thus, Qualcomm firmware supports a
vendor-specific reset type which does not have the requirement to preserve
memory to caller's EL or to describe what memory is to be preserved in DT
or ACPI. If this vendor-specific reset type is used, then firmware checks
various registers (e.g. download mode [1]) to alter the restart flow (e.g.
to enter recovery mode). If no alternate flow is requested, then firmware
would boot back into Linux, preserving memory.

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/firmware/qcom_scm.c?h=v5.6-rc3#n1120

Thanks,
Elliot

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
