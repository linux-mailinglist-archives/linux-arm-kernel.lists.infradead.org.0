Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861271257DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 00:37:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FOGfANE1ayDrls+DtW7QHps9omHuK5EtJRZTANCHZGU=; b=ez1oR/j4MjECeB0FYOk9d1KIe
	HKUwn2prPmT01Zj61VetDOxMYva4jkzV0MeDBvQUkYbMpfX+v3+lNJY9TzL49wnOscLPcUQo0pjsc
	vdSOt+CQ3hVg6BI+ju0YwzTqpSrmj43iD8pBpnJsoazYcHPt4+ygGp9fNZNyb7LTn+NOFXJ4G6oAL
	cA7eoEM+TqGyX6dax/hQStVY/sxBCnLt5bzCxMc7rAsb2huhaBGUBz/BGN3xrvTV4tcuvLLHROFyr
	QqRWEJG4ReZSF8uZdcg4CS/2ChzylrEWZxXDgZ5lt3L0L3nQYtIOv3m7WzZtGGgMmwnrBTXBZnVHy
	ngz3IrVcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihit8-0007yk-9c; Wed, 18 Dec 2019 23:37:54 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihisp-0007kN-Uw
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 23:37:39 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576712254; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=aOyF/9vjrq0zND57ZRP80ePOcz7ZOQqlqlcaCLPEKJg=;
 b=FHHYBsNl6KiAbD48i5Ym8puVZsO4vUVXS65okw4lPTIcgk0CnA68/SBB2nhDQUD9bSpUmp7z
 KP/Lshn39Wrq7GQRYsf3y8/m8tUOhyku2FzB1A9Aktjy46WzKmw4uWUcoSHneWRfKVsItOiW
 i6162NrlKfuikBJWwuYzfkU0fA8=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfab839.7f5e987217d8-smtp-out-n01;
 Wed, 18 Dec 2019 23:37:29 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CFD12C43383; Wed, 18 Dec 2019 23:37:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.46.161.159] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 016A9C4479C;
 Wed, 18 Dec 2019 23:37:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 016A9C4479C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v1 2/2] scsi: ufs: disable interrupt during clock-gating
To: Stanley Chu <stanley.chu@mediatek.com>
References: <1575721321-8071-1-git-send-email-stanley.chu@mediatek.com>
 <1575721321-8071-3-git-send-email-stanley.chu@mediatek.com>
 <a36d111e-ef7f-9f9b-6f6a-692a9980103a@codeaurora.org>
 <1576641171.13056.16.camel@mtkswgap22>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <7756630e-adf2-47e9-4815-ba2306a9dd16@codeaurora.org>
Date: Wed, 18 Dec 2019 15:37:26 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1576641171.13056.16.camel@mtkswgap22>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_153736_132870_F26D68AA 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/17/2019 7:52 PM, Stanley Chu wrote:
> Hi Asutosh,
> 
> On Tue, 2019-12-17 at 15:25 -0800, Asutosh Das (asd) wrote:
>>>
>>
>> Hi,
>> Does this save significant power? I see that gate/ungate of clocks
>> happen far too frequently than suspend/resume.
>>
>> Have you considered how much latency this would add to the
>> gating/ungating path?
>>
>> -asd
>>
> 
> Yes, we have measured 200 times clk-gating/clk-ungating and latency data
> is showed as below,
> 
> For clk-gating with interrupt disabling toggled,
> 
> 	Average latency of each clk-gating: 55.117 us
> 	Average latency of irq-disabling during clk-gating: 4.2 us
> 
> For clk-ungating with interrupt enabling toggled,
> 	Average latency of each clk-ungating: 118.324 us
> 	Average latency of irq-enabling during clk-ungating: 2.9 us
> 
> The evaluation here is based on below Can's patch therefore the
> interrupt control (enable_irq/disable_irq) latency is much shorter than
> before (request_irq/free_irq).
> 
> scsi: ufs: Do not free irq in suspend
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/scsi/ufs/ufshcd.c?id=8709c1f68536e256668812788af5b2bb027f49c3
> 
> BTW, the main purpose of this patch is aimed to protect ufshcd register
> from accessing while host clocks are disabled to fix potential system
> hang issue. The possible scenario is mentioned in commit message of
> patch "scsi: ufs: disable irq before disabling clocks" in the same
> series.
> 
> Thanks
> Stanley
> 

Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>

Thanks for the data.
It'd be interesting to know more on the - misrouted interrupt recovery 
feature though.

-
Thanks
Asutosh

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
