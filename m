Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5761ECFB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g+IGkkmDA19QVftXK0eaNxUYUueD8AmA+QLhRwV9uUQ=; b=kvwgkS8bnHjI1wbTeXiBeMr1d
	J//N1R9cMqHNojMm9rhH7ZkH+xUEwXVhXZLcmSxbKhCvDf3fHpxSLQd3GN02bo/Irnx9p8a2JHsCA
	RaI/kRoTv/BsaE3q8+pxeeZWR/zvgqLBRob+hA3Zobik6jiUN4nKirpnEaRf6hmJLrnTfuAp/XENo
	68N/DVuZrLF+yO4OB6gOJyd5DYZtDFfbv7bMxWAg4rB8K0UKTzRn7lLIEWzRchcxAt3vfmtAB7wP2
	ajVsyrQMvoYe7UiFTCUnW4AjONGL9rjJynEt5B410G5nscbUB8zn/uBwDPINTEprH5RbUJNpBNPi/
	XuSOywTDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSTW-0002G3-Vh; Wed, 03 Jun 2020 12:26:30 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSTP-0002FY-9A
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:26:24 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591187183; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=KfYEbXwoX+aABDlZlOKRx/sTdh4324Te4XRf5exbMGw=;
 b=C0ILPLNJhSvX+1hvAyySJzBtX2yYUU5e0MIePEEYvecD/UFNXZcN8iVmLAW5pE8ax2i2SC9o
 iER7e3aWU0WMl/3N8H/6ikD84BNZB0j0D/S0Xk2J/v0+KP3OjvQB8sgnCibe/7QwtP3QC78P
 28lXjNwuLP6AMM0O3eM8odzxh4Q=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 5ed796ee4c2ebead1368ba8e (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 03 Jun 2020 12:26:22
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4A18DC43395; Wed,  3 Jun 2020 12:26:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BD91BC433C6;
 Wed,  3 Jun 2020 12:26:21 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 17:56:21 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
In-Reply-To: <6c1a4fbd-98cb-a49c-0ced-1318d5d5e7c8@arm.com>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <bf7e8ac2-51b2-d9cb-9c4f-c311297accac@arm.com>
 <1549935cf69ac3a006f32eb278821027@codeaurora.org>
 <6c1a4fbd-98cb-a49c-0ced-1318d5d5e7c8@arm.com>
Message-ID: <7fe5762b5cb8f87e988232922d06c55d@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_052623_387149_52B9A434 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
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

On 2020-06-03 17:51, Robin Murphy wrote:
> On 2020-06-03 13:00, Sai Prakash Ranjan wrote:
>> Hi Robin, Mathieu
>> 
>> On 2020-06-03 17:07, Robin Murphy wrote:
>>> On 2020-06-01 22:28, Mathieu Poirier wrote:
>>>> That being said I'm sure that dependencies on an IOMMU isn't a 
>>>> problem confined
>>>> to coresight. I am adding Robin Murphy, who added this commit [1], 
>>>> to the thread
>>>> in the hope that he can provide guidance on the right way to do 
>>>> this.
>>> 
>>> Right, it's not specific to CoreSight, and it's not even specific to
>>> IOMMUs really. In short, blame kexec ;)
>>> 
>> 
>> Yes it is not specific to coresight, we are targeting this for all
>> consumers/clients of SMMU(atleast on SC7180 SoC). We have display 
>> throwing
>> NoC/interconnect errors[1] during reboot after SMMU is disabled.
>> This is also not specific to kexec either as you explained here [2] 
>> about
>> a case with display which is exacly what is happening in our system 
>> [1].
> 
> Sure, but those instances are begging the question of why the SMMU is
> disabled at reboot in the first place ;)
> 

That is what happens in SMMU shutdown callback right? It is the 
reboot/shutdown
flow.

    arm_smmu_device_shutdown()
     platform_drv_shutdown()
      device_shutdown()
       kernel_restart_prepare()
        kernel_restart()

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
