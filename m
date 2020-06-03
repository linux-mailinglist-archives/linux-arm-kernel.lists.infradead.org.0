Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE671ED183
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 15:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5lF7f6kI3FzDdYynIvLiYcqhAIbqBKbqbeiB2nTmFqQ=; b=GO3Dq7pgInAvyBIwuz7P/IShk
	f8+MfcZNJLUUhjzSrNJjgCc1m/to6gnGBJ/4Jw6WaUic+HDwX1PDJjY2ED0i4DQU7vBQwZxobcNEs
	cFTBGP8JnykPmAk6gNsOkQk3dSLfeCLz+EAs80qWEaaexrnIWO9TsLgMCV9MJ6/VJ6wYdfR6sODJV
	TfUHzCXmC5qK1naRGS74iguymkc7qXhEp1HcdOV7MUnf8hsPE/ujF367TlIvEvhvQLbMSsUAp0TiU
	YbJezNHXP4AmFs0d1uHWsJgS7gHZIctzqoRLfz1Ye9av6vPVCYUDyhI9xNkzaVBSMkpVstkb7ZT/W
	9UiAWhJpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTqN-00084D-1K; Wed, 03 Jun 2020 13:54:11 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTnP-0005W2-GO
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 13:51:12 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591192267; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=4th+09S0iCW1XVvsnSYykoMMaed1cUFlHMRPNaY08ZY=;
 b=X9qylzOLWrT73u99ne/3J4GXEMKtlmJyTRhkNNOOpPeffuhnUNI/vuQAoxX53RTsmx77MbNb
 8Udm8ohxWvD969inqVGyX5Kj+XSaRFKc7oPx4tKrAf+G7nnY2/HD5tPbPIvJp+nIB8qNHUgK
 EJdczI/FrfF8TnkvPH9/SFR+5/A=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 5ed7aac946d39fc0a23a68fc (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 03 Jun 2020 13:51:05
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6C117C433CB; Wed,  3 Jun 2020 13:51:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CD2FEC433C6;
 Wed,  3 Jun 2020 13:51:04 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 19:21:04 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
In-Reply-To: <68444180-3ebe-8988-493a-fdd1dff994b6@arm.com>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <bf7e8ac2-51b2-d9cb-9c4f-c311297accac@arm.com>
 <1549935cf69ac3a006f32eb278821027@codeaurora.org>
 <6c1a4fbd-98cb-a49c-0ced-1318d5d5e7c8@arm.com>
 <7fe5762b5cb8f87e988232922d06c55d@codeaurora.org>
 <68444180-3ebe-8988-493a-fdd1dff994b6@arm.com>
Message-ID: <c3b17c472783faa6f153bccc157ad8c4@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_065108_641991_2F64B549 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On 2020-06-03 19:10, Robin Murphy wrote:
> On 2020-06-03 13:26, Sai Prakash Ranjan wrote:
>> Hi Robin,
>> 
>> On 2020-06-03 17:51, Robin Murphy wrote:
>>> On 2020-06-03 13:00, Sai Prakash Ranjan wrote:
>>>> Hi Robin, Mathieu
>>>> 
>>>> On 2020-06-03 17:07, Robin Murphy wrote:
>>>>> On 2020-06-01 22:28, Mathieu Poirier wrote:
>>>>>> That being said I'm sure that dependencies on an IOMMU isn't a 
>>>>>> problem confined
>>>>>> to coresight. I am adding Robin Murphy, who added this commit [1], 
>>>>>> to the thread
>>>>>> in the hope that he can provide guidance on the right way to do 
>>>>>> this.
>>>>> 
>>>>> Right, it's not specific to CoreSight, and it's not even specific 
>>>>> to
>>>>> IOMMUs really. In short, blame kexec ;)
>>>>> 
>>>> 
>>>> Yes it is not specific to coresight, we are targeting this for all
>>>> consumers/clients of SMMU(atleast on SC7180 SoC). We have display 
>>>> throwing
>>>> NoC/interconnect errors[1] during reboot after SMMU is disabled.
>>>> This is also not specific to kexec either as you explained here [2] 
>>>> about
>>>> a case with display which is exacly what is happening in our system 
>>>> [1].
>>> 
>>> Sure, but those instances are begging the question of why the SMMU is
>>> disabled at reboot in the first place ;)
>>> 
>> 
>> That is what happens in SMMU shutdown callback right? It is the 
>> reboot/shutdown flow.
> 
> Yes, that's where it happens, but my point is *why* it happens at all.
> 
> hint: `git log --grep=shutdown drivers/iommu/`
> 

Ah my change :)

> If we could assume the system is always about to be powered off or
> reset, we wouldn't need to do anything to the SMMU either ;)
> 

Are you hinting at removing SMMU shutdown callback altogether ;)

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
