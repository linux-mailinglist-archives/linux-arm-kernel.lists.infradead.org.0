Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FBB1A0A64
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 11:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LvDyq39WBdWDwP6gZeKmu4kjrPAJmIc0UgmByEzjLqE=; b=ktXElhm/k1X1VimOr+ER9Kmb3
	xRdPWkaIRe4YRMF2NtvtqeqdATrr0qjjMEFckvzQ1s+zFyUEeSONLASVOmr3VhXuowHdC2Ib3VTQr
	w/BFrVxa4fWkslEJd2k2I2AtyuDaekb0dj3RBTc6Vo6F30oS4m6G5lRlaNAyKaKnrQqcAJ/4pKwKQ
	+Y8s1Xe1AX4vl1OiZBAB5vEo5Nf+3/Lf/YbwL27lhCv2BIFmJoi1jnga60ZYlGRdh+nzP0/ApFx5r
	8INhhlYm89Ba7/qeKBwCF8PylH4kYhMtHuXtlHjNAbwiReww3lYqJ1BGWb5GWKmPXP2B2mwcmqCtx
	jvsNoPvew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLkoj-0007I5-CD; Tue, 07 Apr 2020 09:46:49 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkoY-0007FU-HY
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 09:46:40 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586252796; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Ul3YhDd1rPscgFpO4CCJ18JVqPLmuQ5bBOiQ1R8owsk=;
 b=V9j7NvrkmWPKQd6ECIQqP6Xxc/2RryYtFG1ePOcuHNZLYkwuTRldCtKTQ3Xl9YXSUCiD4S4I
 G2/Bng8yf9b6aIPm78wqmYi/pdRSdsxBK5TFZKn2mokBSh5ZkEGgUVHy9DihsKow+nH6w6Z0
 KIyvCj0lMHpcFY5hng3BMj0UaPc=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8c4bfb.7fab43027ca8-smtp-out-n01;
 Tue, 07 Apr 2020 09:46:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B7050C43637; Tue,  7 Apr 2020 09:46:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 38318C433F2;
 Tue,  7 Apr 2020 09:46:35 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 07 Apr 2020 15:16:35 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
In-Reply-To: <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
Message-ID: <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_024638_648741_DDD399CC 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

Thanks for taking a look.

On 2020-04-06 16:25, Mike Leach wrote:
> Hi,
> 
> The programmable replicator hardware by design enables trace through
> both ports on reset. (see 1, section 4.4, 9.11)  The replicator driver
> overrides this functionality to disable output, until the Coresight
> infrastructure chooses a path from source to sink.
> Now given that the hardware design is such that we must be able to
> allow trace to be sent to both ports, a generic patch to prevent this
> does not seem appropriate here.
> 
> I think this needs further investigation - to determine why this
> appears to be failing in this particular instance.
> 

Yes, this probably needs further investigation, but CPU hardlock stack
trace doesnt help much. I could always trigger this hard lockup without
this patch on SC7180 SoC and this is only seen when ETR is used as the 
sink.

The only difference I could see between non working case (on SC7180 [1]) 
and
the working case (on SDM845 [2]) is the path from source to sink.

SC7180 source to sink path(Not working):
----------------------------------------

       etm0_out
	 |
   apss_funnel_in0
          |
  apss_merge_funnel_in
          |
      funnel1_in4
	 |
   merge_funnel_in1
	 |
    swao_funnel_in
          |
        etf_in
	 |
  swao_replicator_in
          |
   replicator_in
	 |
        etr_in


SDM845 source to sink path(Working):
------------------------------------

       etm0_out
          |
    apss_funnel_in0
          |
  apss_merge_funnel_in
          |
     funnel2_in5
	 |
   merge_funnel_in2
          |
       etf_in
	 |
   replicator_in
	 |
        etr_in


[1] - https://lore.kernel.org/patchwork/patch/1212946/
[2] - 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/qcom/sdm845.dtsi?h=v5.6#n1910


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
