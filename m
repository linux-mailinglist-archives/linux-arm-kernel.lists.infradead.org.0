Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7557135599
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:22:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhqLjjC6yHpuUerP4pAWJ8VoNMxhqALyPlllRIqhanM=; b=QnpWl6JnZaBevf
	CA2p55VsFRTEGUvelQZlyqplzUaqIDtVgybDbbuR40yZ5ziucVaMIkgHQfxlKwlVJcDP+jKz07fdw
	/WUGpQmFookxLyp3NK0r+9wHkuzNkqHajL6RA2MX50tIFOTo3RcjJn4r+KbbKK+k7npFeqc4alOnu
	h22NRQR/+wwl+O4yAo5zECM9sm7Vo62Yv2uovv+6HeILtAmF+2AboBRZ/9+SjvjvLZguuMSfOG1kc
	n7be8SxVLsha1AbVZXOdv/nDM9whQ1dynpTWdCPNY8sRcfH2PFHr9NvxprocpApzaKGAo7N+6Taxi
	ye+pgFdye1h8jEZQN+Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipU0n-0005eK-NE; Thu, 09 Jan 2020 09:21:53 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipU0X-0002j4-9r
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:21:39 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578561697; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=HENFk0Bwme4xX25T8XYjrsnqX3dO66gOl56uwR9piXs=;
 b=S1Slievj2qko2Fc//+wVOdtjw7S77e/95jqfZOszrHklliuX9EJxqxOnkAXPQ+ZSHWW2sBXY
 WKERJj3ZH7+3X8JtOukuF6jo/WqFZLK89DWg8yT4j6gTugrhggRyIvgfqBwCi9zwqMCfMefi
 MGjaJ8hDNXTxaLsUaA6NbR3hkPE=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e16f09e.7fb71d5ba7d8-smtp-out-n02;
 Thu, 09 Jan 2020 09:21:34 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C6716C4479C; Thu,  9 Jan 2020 09:21:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.201.2.161]
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0A050C433A2;
 Thu,  9 Jan 2020 09:21:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0A050C433A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH V3 1/5] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
To: Linus Walleij <linus.walleij@linaro.org>
References: <1578052177-6778-1-git-send-email-sricharan@codeaurora.org>
 <1578052177-6778-2-git-send-email-sricharan@codeaurora.org>
 <CACRpkdbjjzwdEgsDV2tGea0t3AMM_FRSd-Um3+2BrYDTGKoNxw@mail.gmail.com>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <ca9baad3-8065-4647-c6c5-7449b96f4f71@codeaurora.org>
Date: Thu, 9 Jan 2020 14:51:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CACRpkdbjjzwdEgsDV2tGea0t3AMM_FRSd-Um3+2BrYDTGKoNxw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_012138_100549_49D7D8B4 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 MSM <linux-arm-msm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Gross <agross@kernel.org>, sivaprak@codeaurora.org,
 "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On 1/7/2020 5:25 PM, Linus Walleij wrote:
> On Fri, Jan 3, 2020 at 12:49 PM Sricharan R <sricharan@codeaurora.org> wrote:
> 
>> Add device tree binding Documentation details for ipq6018
>> pinctrl driver.
>>
>> Co-developed-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
>> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
>> Co-developed-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
>> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
>> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
>> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
>> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
>> ---
>>  [v3] Fixed the example dt node, inherited properties
> 
> Once you are done with patches 1 & 2, can I merge these
> separately to the pinctrl tree?

Yeah, that should be fine. Posted a V4 and waiting for approval
from Rob on the pinctrl bindings for Patch 1.

Regards,
 Sricharan

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
