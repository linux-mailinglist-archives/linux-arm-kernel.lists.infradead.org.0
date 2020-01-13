Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F10138B28
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:47:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D5ixl/nz8jz/PWP6ijweDL3sDiz2eC/yTRUl3hDlXKI=; b=SEQgo7jhvWTemdDt5pzr1pPZE
	1NTY7lMHZzRtbYy5FgboeLn9Hc1y9BhZSRuYOCaS5/wMAKj7Z+zi0nMdbvmDLhCHIWjMC9JhdUzFF
	0x95lEliQ9c1LjPxm8RcsMjoddPUpM6Zuaxt3l1gZgDQjMGHTZPmHvjTf0ucrygiJUuE0OzoJ/X4F
	3wcveuHCzNEl0Gea8s9Bqz3OK+mgJdoBE66BTXjRl5UvEcX70Y7NOgJOUd0Dli9R470png/6vRmyZ
	bsNnleGQStfrKmRH6GiYPiUTrs+DGmtEVE3tYQ4A9wP2dgL9pgJ5GmCpTLovE+18AS5gYUJnBLjUP
	AUB5MCKZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqsZL-0008DR-6c; Mon, 13 Jan 2020 05:47:19 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqsZD-0008CN-BT
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:47:12 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578894431; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=XoJh0IwkIfbUz6r+FYTpWq3eCJJHoLDTCx+9uGqjfVQ=;
 b=qZ2LGerh9iQjJxxQKcT//RIRiRiOcliKIIzX3whK2yTaeGb0H0ztsPEM7UAWXYIbBNm8STv3
 zSWuJZ229F6j7GVqrR34dQG62mOxJ+PSKM7wAASWcA2P3TP1NUOdQHdRUXfirqyKEv8Jt7qQ
 hlMsYyJfYYsiZseukjdOH6ffxCA=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e1c045c.7fa4a4ed1490-smtp-out-n03;
 Mon, 13 Jan 2020 05:47:08 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2A8EDC447A2; Mon, 13 Jan 2020 05:47:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D2397C43383;
 Mon, 13 Jan 2020 05:47:05 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 11:17:05 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: watchdog: Add compatible for QCS404,
 SC7180, SDM845, SM8150
In-Reply-To: <20191219232842.GB22811@bogus>
References: <cover.1576211720.git.saiprakash.ranjan@codeaurora.org>
 <3f871ae3818b46423430074689e33bc34b28aa1c.1576211720.git.saiprakash.ranjan@codeaurora.org>
 <20191219232842.GB22811@bogus>
Message-ID: <e06b96fdaa79c7c02b76c788c04fcf7d@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_214711_527599_AC93811A 
X-CRM114-Status: GOOD (  13.41  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <linux@roeck-us.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 2019-12-20 04:58, Rob Herring wrote:
> On Fri, Dec 13, 2019 at 10:23:19AM +0530, Sai Prakash Ranjan wrote:
>> Add missing compatible for watchdog timer on QCS404,
>> SC7180, SDM845 and SM8150 SoCs.
>> 
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>  .../devicetree/bindings/watchdog/qcom-wdt.yaml       | 12 
>> ++++++++++++
>>  1 file changed, 12 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml 
>> b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
>> index 4a42f4261322..ec25ce1c9e2e 100644
>> --- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
>> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
>> @@ -12,6 +12,18 @@ maintainers:
>>  properties:
>>    compatible:
>>      oneOf:
>> +      - items:
>> +          - const: qcom,apss-wdt-sc7180
>> +          - const: qcom,kpss-wdt
>> +      - items:
>> +          - const: qcom,apss-wdt-sdm845
>> +          - const: qcom,kpss-wdt
>> +      - items:
>> +          - const: qcom,apss-wdt-sm8150
>> +          - const: qcom,kpss-wdt
>> +      - items:
>> +          - const: qcom,apss-wdt-qcs404
>> +          - const: qcom,kpss-wdt
> 
> This can be one entry:
> 
> - items:
>     - enum:
>         - ...
>     - const: qcom,kpss-wdt
> 

Will change in next version.

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
