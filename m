Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6999714FB8A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 06:07:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5apzcJHojjXenZeTsxYJODRHSlNzH1XyM/2nqyc3iJg=; b=mWa+TybP85em1t0QSDCkz8SN2
	+oLgCch6fn2KIC5Pcwv86FR/E/zIgtgOkrpL7h9DiBMtOPkt35HCtf3xwYFWgN2KKIssyBeA3giyp
	2WblNTrq9Cn4H5sSSM467C9pMP4WmPVUZmSc17UdwW1EylCBssWifxnWQeNEbTmZdS0TyYH38LRaG
	uAl/t2tecKvh1x1F9vI92i9erm3OJY0FdqE1Zr+9QIVcXTalp5FX3ggUP+z4Aqoc46yBMo09nWRYY
	a+qWxU1qFItE2CuwhaAH/AoA9gSG9EW3fNvZ9pkH9Jd64Xm5uBbLmav0YJOBNIDpJbRbQuZXiazFm
	chBJQGwNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iy7U7-0007HV-Jz; Sun, 02 Feb 2020 05:07:51 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iy7Tz-0007HC-Ur
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 05:07:45 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580620061; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=a3q2yNezV9J75HysFSuPYt/Ll9TEKYNx0uEo7VSRjw8=;
 b=iVvPUMSIiSSXaVu6kEWOUxo5guhZQCKwJboJUHOEtNCxdFFjvSGZd7JDEp4dnV2tk2HBp8nV
 8o0p8rfFg6iFBYZlXz44uVhP7H2RnQy4KL5VeWu9uZpRmNgadM8T3ikaa9th1X0wWqpfM8NC
 MaALT7slPpwDJQaydmhBieFWMxY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e365914.7ffa0ef6f688-smtp-out-n02;
 Sun, 02 Feb 2020 05:07:32 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 31BCBC4479F; Sun,  2 Feb 2020 05:07:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 90505C433CB;
 Sun,  2 Feb 2020 05:07:30 +0000 (UTC)
MIME-Version: 1.0
Date: Sun, 02 Feb 2020 10:37:30 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCHv2 1/2] dt-bindings: watchdog: Convert QCOM watchdog timer
 bindings to YAML
In-Reply-To: <5e36535e.1c69fb81.510f6.ba36@mx.google.com>
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <2edca4b54ee6b33493e0427c17de983d3ce3012f.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <5e36535e.1c69fb81.510f6.ba36@mx.google.com>
Message-ID: <a50468262ed81ca927214db39a0306a3@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_210744_055670_A9106059 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <linux@roeck-us.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-02 10:13, Stephen Boyd wrote:
> Quoting Sai Prakash Ranjan (2020-02-01 07:29:48)
>> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml 
>> b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
>> new file mode 100644
>> index 000000000000..5448cc537a03
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
>> @@ -0,0 +1,44 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/watchdog/qcom-wdt.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm Krait Processor Sub-system (KPSS) Watchdog timer
>> +
>> +maintainers:
>> +  - Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> +
>> +allOf:
>> +  - $ref: watchdog.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,kpss-timer
>> +      - qcom,kpss-wdt
>> +      - qcom,kpss-wdt-apq8064
>> +      - qcom,kpss-wdt-ipq4019
>> +      - qcom,kpss-wdt-ipq8064
>> +      - qcom,kpss-wdt-msm8960
>> +      - qcom,scss-timer
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
> 
> By the way, I would expect the watchdog to have an interrupt property.
> Not sure why it isn't described in the existing binding.
> 

Yes it should be an optional property now that bark interrupt support 
has been added. I will add that in a separate patch.

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
