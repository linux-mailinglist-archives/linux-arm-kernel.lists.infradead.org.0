Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00793151C4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 15:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6/FYQ7o8rFBK8RkgLNf+s1Psfdp8BqQdmpIVTEHxBk=; b=pWiX/f+/TdFVaL
	xAxsJZaa/UmKX5gODJtnd2q+jTkOK0LM9rF1zIV5PGi8pF6XLz7lDiExBtMG+OLK8lCF2tauOD/WJ
	hTtGSPv6+bP4VBA/kLiVDMHuRKcDCJrSY/TlengwNZd7CnMQhVAhJ512NTlAdj5vQvICbo7YMhcIt
	iMtogd+QAQDl5yOmkYnKpAKpe99/oj72ssP0f0IjXLgeFmG7JIe1xm5THIBmcy+oLYN0x5L+k89eo
	/mCHsWp4FPGeToZdxYG70nnuT9G27UEh34KQM/xNWrbYWqZa2Ui46oRahnTEcp6qLWHvnb43bhJ8F
	Ag3xWC4dHSh/JAgwOKfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyzHP-0008Mv-Ja; Tue, 04 Feb 2020 14:34:19 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyzHH-0008MI-CZ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 14:34:12 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580826848; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: References: Cc: To: From:
 Subject: Sender; bh=LOayz92CiS3mJzv9h9nepoJ7jN0NsDcY/StZV7GTdyM=;
 b=vSqzoSLylmy4ZWb/VAt3Af3v+ct2aaWX1D8nZZvUe6x7qBiq5wHJZEY2mx2XAgPcz6SQAcXE
 m08Z40ZgzwYBodPSO8A/nA5aMHhftOU04M50kQVdfjlIdj0pjqguVoYLOktvDki7R2HTRGgL
 jGAav2tiCu5RamfMJgDZrsYpLlI=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3980de.7f5080f6eea0-smtp-out-n03;
 Tue, 04 Feb 2020 14:34:06 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D88F9C43383; Tue,  4 Feb 2020 14:34:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.1.5] (unknown [122.164.174.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7EBEEC447A2;
 Tue,  4 Feb 2020 14:34:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7EBEEC447A2
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
 <9acb9b69-fd44-57db-e974-9fee5a1d871f@codeaurora.org>
Message-ID: <11ad212e-5c6a-968b-33ca-977c8596ef6a@codeaurora.org>
Date: Tue, 4 Feb 2020 20:03:57 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <9acb9b69-fd44-57db-e974-9fee5a1d871f@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_063411_490327_878F4D10 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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

Hi Linus,

On 2/4/2020 7:34 PM, Sricharan R wrote:
> Hi Rob,
> 
> On 1/28/2020 10:07 AM, Sricharan R wrote:
>> Hi,
>>
>> On 1/27/2020 9:11 PM, Rob Herring wrote:
>>> On Sun, 19 Jan 2020 18:43:17 +0530, Sricharan R wrote:
>>>> Add device tree binding Documentation details for ipq6018
>>>> pinctrl driver.
>>>>
>>>> Co-developed-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
>>>> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
>>>> Co-developed-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
>>>> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
>>>> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
>>>> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
>>>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>>>> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
>>>> ---
>>>> [V6] 
>>>>   * Addressed review comments form Rob.
>>>>  .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     | 153 +++++++++++++++++++++
>>>>  1 file changed, 153 insertions(+)
>>>>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
>>>>
>>>
>>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Thanks Rob.
>>
>> Hi Linus,
>>    The pinctrl driver can now be pulled in.
> 
> Any chance this can be taken for 5.6 ?
> 

Can the pinctrl driver be taken for 5.6 by any chance ?

Regards,
 Sricharan

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
