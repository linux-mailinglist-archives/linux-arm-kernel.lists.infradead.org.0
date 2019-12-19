Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C89F125B93
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 07:50:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OHnC2XUZhC2xUJSaGET3urU/CFY3dKniHFk9TPa7BV0=; b=qjBfkjJuhxydukJuymucAWHAq
	j9IfEIDNGlXA02w5emPwPFRjKO005m/YidvAysl0BY4I+i4PH66zZt+OlRX2sbo9RW2UoU4ConS6e
	emRqb6b7SxQHs9e5gS+qmTDZcEZJfvnAx4Nk5j/fA+CMDc2IaU/Z1zYzFSWzHBrEGQMnnpkvb78dT
	GYMCxkQj8xw45wQUiLCJ9wYDlG6ODtbjWnbxj1davWfCv79fmFftL6ElcLorb2Qaz7unYKnPsGDlw
	oas4JyfLfwasvIQOYQmuWLlVPrq92z4QYHgNBox8v5kOMIlg/+AQcqnDpUEMnxhaLqxu/1iQEv305
	e3EiRJXjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihpdz-0003lN-CW; Thu, 19 Dec 2019 06:50:43 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihpdp-0003kd-Dd
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 06:50:35 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576738232; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=xFqqnNZlkXdgS0NnusZ7Jx8AbXtVSYn7KtW5NLzf9ok=;
 b=LRl0BU220CsWbYqXRKrI8ep70hPn/cHzfYseBjzGuZtzwCqu32ZYfT6lierM9vF1oaaoej3C
 nWzUXFgKuvbDgJT6AABzuTOvYADSUbVj+Xl4Bw1DUFA9CwUu1eWwM5GJZwoyjtIrIabG1w4C
 kXVMoJvlFQZ9jISYvP/CVA9U6P4=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfb1db6.7f716160e378-smtp-out-n03;
 Thu, 19 Dec 2019 06:50:30 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0B732C494B4; Thu, 19 Dec 2019 06:50:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 10D61C48B03;
 Thu, 19 Dec 2019 06:50:28 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 19 Dec 2019 12:20:27 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: edac: Add DT bindings for Kryo EDAC
In-Reply-To: <20191218233714.GA30302@bogus>
References: <cover.1575529553.git.saiprakash.ranjan@codeaurora.org>
 <0101016ed57a3259-eee09e9e-e99a-40f1-ab1c-63e58a42615c-000000@us-west-2.amazonses.com>
 <20191218233714.GA30302@bogus>
Message-ID: <7469b239edd4beed3e8fefdf02f10ada@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_225033_522725_D6FD32A5 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robert Richter <rrichter@marvell.com>, Andy Gross <agross@kernel.org>,
 Borislav Petkov <bp@alien8.de>, James Morse <james.morse@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 2019-12-19 05:07, Rob Herring wrote:
> On Thu, Dec 05, 2019 at 09:53:05AM +0000, Sai Prakash Ranjan wrote:
>> This adds DT bindings for Kryo EDAC implemented with RAS
>> extensions on KRYO{3,4}XX CPU cores for reporting of cache
>> errors.
>> 
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>  .../bindings/edac/qcom-kryo-edac.yaml         | 67 
>> +++++++++++++++++++
>>  1 file changed, 67 insertions(+)
>>  create mode 100644 
>> Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
>> 
>> diff --git 
>> a/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml 
>> b/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
>> new file mode 100644
>> index 000000000000..1a39429a73b4
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
>> @@ -0,0 +1,67 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/edac/qcom-kryo-edac.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Kryo Error Detection and Correction(EDAC)
>> +
>> +maintainers:
>> +  - Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> +
>> +description: |
>> +  Kryo EDAC is defined to describe on-chip error detection and 
>> correction
>> +  for the Kryo CPU cores which implement RAS extensions. It will 
>> report
>> +  all Single Bit Errors and Double Bit Errors found in L1/L2 caches 
>> in
>> +  in two registers ERXSTATUS_EL1 and ERXMISC0_EL1. L3-SCU cache 
>> errors
>> +  are reported in ERR1STATUS and ERR1MISC0 registers.
>> +    ERXSTATUS_EL1 - Selected Error Record Primary Status Register, 
>> EL1
>> +    ERXMISC0_EL1 - Selected Error Record Miscellaneous Register 0, 
>> EL1
>> +    ERR1STATUS - Error Record Primary Status Register
>> +    ERR1MISC0 - Error Record Miscellaneous Register 0
>> +  Current implementation of Kryo ECC(Error Correcting Code) mechanism 
>> is
>> +  based on interrupts.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,kryo-edac
>> +
>> +  interrupts:
>> +    minItems: 1
>> +    maxItems: 4
>> +    items:
>> +      - description: l1-l2 cache faultirq interrupt
>> +      - description: l1-l2 cache errirq interrupt
>> +      - description: l3-scu cache errirq interrupt
>> +      - description: l3-scu cache faultirq interrupt
>> +
>> +  interrupt-names:
>> +    minItems: 1
>> +    maxItems: 4
> 
> You are saying only these combinations are valid:
> 
> l1-l2-faultirq
> 
> l1-l2-faultirq
> l1-l2-errirq
> 
> l1-l2-faultirq
> l1-l2-errirq
> l3-scu-errirq
> 
> l1-l2-faultirq
> l1-l2-errirq
> l3-scu-errirq
> l3-scu-faultirq
> 
> Is that your intent?
> 

No, I want any combination of interrupts to be valid with atleast one 
interrupt as mandatory.
I thought specifying minItems as 1 and maxItems as 4 will take care of 
this,  am I doing something wrong?

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
