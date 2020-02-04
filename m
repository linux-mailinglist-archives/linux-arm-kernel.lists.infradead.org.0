Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E509A151BD5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 15:05:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83fIfQTP30rhWj3W7JSnAiLF/AfnngwOlQA2uf4Vwbk=; b=Y7EfjXBhqzlMrw
	55WgmTLLcT6LqtoqyCSWrYHoffnWVjDKFoCgsI/smMVWW7Oj1sbsocFncV72A5naPGavZGRNE9hob
	ffwE7ZtbRi93DUXm/52XKoeGFxmOvV7moyzcoEswwin4EdDWFSWMwYrNyCqJ2V/f5jVOyYJGAyrL5
	qXw8d0b42JgUu/KoSgeg5CYKlCafl7H51fx5QqRiM/tKOsRKJ0KeFjO3kdaxCbfK/il5VB1HjT+xv
	/4dyiEZZoc9lZudcuHWHOD6Ag3iRbONcGLT69iWPTtzYBlcj6pGVIynLQ2eZK6hjXrwAq9JtgTpNj
	rMy7dzGQFglzab6bzWTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyyp1-0006Ow-H1; Tue, 04 Feb 2020 14:04:59 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyyor-0006OP-S4
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 14:04:52 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580825090; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: References: Cc: To: From:
 Subject: Sender; bh=AYVm5lWqfJDQUHSM0JeCo9evaNtbla9UOu0fjh+4k6g=;
 b=f2gqNzU+2sMHaTQElkrzJWqb/suBCFQC6iA59Gb1K/Qulzq+s6ktdR57u2GLQk/PO8gInp6A
 QT95BDn9Qgaaip3nPs8lWez3KOICS4QmIuLgEYSoc951AKIw3GHeXzxqCcj41Tgpa7FxGrCR
 EzYcfRCDO84xjrdy1Ih2RLrNRqA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3979f9.7fbbe14f5bc8-smtp-out-n01;
 Tue, 04 Feb 2020 14:04:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 97EE8C447A0; Tue,  4 Feb 2020 14:04:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.1.5] (unknown [122.164.174.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1AD5AC433CB;
 Tue,  4 Feb 2020 14:04:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1AD5AC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH V6 1/5] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
From: Sricharan R <sricharan@codeaurora.org>
To: Rob Herring <robh@kernel.org>
References: <1579439601-14810-1-git-send-email-sricharan@codeaurora.org>
 <1579439601-14810-2-git-send-email-sricharan@codeaurora.org>
 <20200127154113.GA6904@bogus>
 <422e31d0-f67f-3b10-5d8f-ccc9d6f7dc70@codeaurora.org>
Message-ID: <9acb9b69-fd44-57db-e974-9fee5a1d871f@codeaurora.org>
Date: Tue, 4 Feb 2020 19:34:32 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <422e31d0-f67f-3b10-5d8f-ccc9d6f7dc70@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_060450_793302_D8DC76DE 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Rajkumar Ayyasamy <arajkuma@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org,
 sivaprak@codeaurora.org, linux-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 1/28/2020 10:07 AM, Sricharan R wrote:
> Hi,
> 
> On 1/27/2020 9:11 PM, Rob Herring wrote:
>> On Sun, 19 Jan 2020 18:43:17 +0530, Sricharan R wrote:
>>> Add device tree binding Documentation details for ipq6018
>>> pinctrl driver.
>>>
>>> Co-developed-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
>>> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
>>> Co-developed-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
>>> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
>>> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
>>> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
>>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>>> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
>>> ---
>>> [V6] 
>>>   * Addressed review comments form Rob.
>>>  .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     | 153 +++++++++++++++++++++
>>>  1 file changed, 153 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
>>>
>>
>> Reviewed-by: Rob Herring <robh@kernel.org>
> Thanks Rob.
> 
> Hi Linus,
>    The pinctrl driver can now be pulled in.

Any chance this can be taken for 5.6 ?

Regards,
 Sricharan

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
