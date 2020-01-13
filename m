Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED5A138B2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:49:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FpsbJT/vcNIt4nyZtpstmnCzSW4PKM0KAnJhhgV/R5k=; b=DCeKRyXjwCeF1CiTOJSsW4zDl
	GoBdE3Tkimk7VNoOMgalTHzBEBCbhPTf8rt+dPGODFRaSctrDneEFo81/wPNg5GTyv3dGDdOaisli
	V5bYWLo47U92PAISJJTNMivg9Rp7lv+aHC92zAHv71OfImp0AmlEJ+dCNTS1FO763ugVSAO72txjN
	MpBLEDO2FusHaj1JS6/hoTTV9G/jt8cUQ4rJt3bRR8++eQLGhxuDUt+ZbRs2Wd4YeTqe5g3BcqS7J
	bxC8I3hTCIqrIgBD9jUPZOkceu0ClAE3/Kqv/gTQD3l7dXzQJYJ1P24u9YLF1/eP4Ry+ajZ28pJnN
	08u8qvEgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqsbN-00006H-Ln; Mon, 13 Jan 2020 05:49:25 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqsbG-0008CN-1I
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:49:20 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578894557; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Y6MzJykOUHgXTHH7mFFwvvjU0SWSAQVmVXjDkrqruY8=;
 b=GWV5fF2BhHfRyxqgQxogZW027ppQ3mdAl637spLP9tOUMWluVXgGq5YGs9wVX1ovyyzFusBO
 nW4shx23y3bApT6t/eDwAcfJ/R+PkMfhgQSR7zHB+SiPCsyzJ3oPJPrYx9ZMHpatv/dYrZuA
 l0sVGmegTjNAHCmhz/auKYfkVxI=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e1c04dd.7f3c70871998-smtp-out-n03;
 Mon, 13 Jan 2020 05:49:17 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 420B3C4479C; Mon, 13 Jan 2020 05:49:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 99864C43383;
 Mon, 13 Jan 2020 05:49:16 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 11:19:16 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: watchdog: Convert QCOM watchdog timer
 bindings to YAML
In-Reply-To: <20191219232615.GA22811@bogus>
References: <cover.1576211720.git.saiprakash.ranjan@codeaurora.org>
 <0b095b65496073a2ddf9de120f7809619b42cd1c.1576211720.git.saiprakash.ranjan@codeaurora.org>
 <20191219232615.GA22811@bogus>
Message-ID: <1602b7831356274792ce5a84fb44d701@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_214918_862878_365FAE02 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-arm-msm-owner@vger.kernel.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <linux@roeck-us.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-20 04:56, Rob Herring wrote:
> On Fri, Dec 13, 2019 at 10:23:18AM +0530, Sai Prakash Ranjan wrote:
>> Convert QCOM watchdog timer bindings to DT schema format using
>> json-schema.
>> 
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>  .../devicetree/bindings/watchdog/qcom-wdt.txt | 28 -----------
>>  .../bindings/watchdog/qcom-wdt.yaml           | 47 
>> +++++++++++++++++++
>>  2 files changed, 47 insertions(+), 28 deletions(-)
>>  delete mode 100644 
>> Documentation/devicetree/bindings/watchdog/qcom-wdt.txt
>>  create mode 100644 
>> Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> 
> 
>> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml 
>> b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
>> new file mode 100644
>> index 000000000000..4a42f4261322
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
>> @@ -0,0 +1,47 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: "http://devicetree.org/schemas/watchdog/qcom-wdt.yaml#"
>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>> +
>> +title: Qualcomm Krait Processor Sub-system (KPSS) Watchdog timer
>> +
>> +maintainers:
>> +  - Andy Gross <agross@kernel.org>
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - const: qcom,kpss-timer
>> +      - const: qcom,kpss-wdt
>> +      - const: qcom,kpss-wdt-apq8064
>> +      - const: qcom,kpss-wdt-ipq4019
>> +      - const: qcom,kpss-wdt-ipq8064
>> +      - const: qcom,kpss-wdt-msm8960
>> +      - const: qcom,scss-timer
> 
> An 'enum' is better than oneOf+const.
> 

Will change.

>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  timeout-sec:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description:
>> +      Contains the watchdog timeout in seconds. If unset, the
>> +      default timeout is 30 seconds.
> 
> Include watchdog.yaml and don't redefine this.
> 

Ok

>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +
>> +examples:
>> +  - |
>> +    watchdog@208a038 {
>> +      compatible = "qcom,kpss-wdt-ipq8064";
>> +      reg = <0x0208a038 0x40>;
>> +      clocks = <&sleep_clk>;
>> +      timeout-sec = <10>;
>> +    };
>> ---
>> 
>> I have added Andy as the maintainer here since the get_maintainer 
>> script
>> showed him. If he is not happy, then I can change it to Bjorn probably 
>> and
>> again if he is not happy ;-) then I will add myself or whoever they 
>> suggest.
> 
> Add yourself.
> 

Sure will add myself.


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
