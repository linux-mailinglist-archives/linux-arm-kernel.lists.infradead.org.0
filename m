Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EE7CA114
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 17:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=017bAP1ky1gfaF0rfzUsB2zkjz4V7qa8OSkzhugqs1s=; b=lyGi/v2slIqAbnLcj8AK7LugC
	lGQx+WGawGSNIcigQ/WziwA/GgZndubeO+qtFfvtLOXl2AHg1O5LTwOR+keKisgopDEQDDW72uIQA
	N+AJ3uC60BQF5z7v5En9BZto0LqDp2N7tFW9uVfr/FxtmIWIVxL66lrYnapdyIfgykjctAHGQcHD+
	q8I2eXeV7qqzoo3qbHAfE3/s73Ly2FHM4/wzZRRR9OyV+onguQyI/1tF6qzAANgGd2gJ3L9c9f6J3
	Jepl54LSgyXOLZMcdm2Lya/bDF0B/dS3PELNH5uV6Db4y4otkB/OZCD1WVe0DOhD77im/4ftS/ZQp
	iZaPl823g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG2vT-0001yu-N7; Thu, 03 Oct 2019 15:21:55 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG2vM-0001yM-UC
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 15:21:50 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 82C9D60ADE; Thu,  3 Oct 2019 15:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570116107;
 bh=wrF+mAtbKK35bIsjW1eEOP2bIDJkMLZvW9UvGD8kv0c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NiXzjB8POJq6c49Y2fnoEw68KFMNvPlQJ/7w6vTWJCoAnF5tMXprjguDaFGUlnesy
 fI2nk9BJxQLEnt7tLz7Ku5+ZKPjzVfwNHZVNlkNn6y2xWwO1ynJa7ILFftggawnfxW
 3awHwFDp69wyttHCjer7RzMQ37u6dLBrI35qN2Ik=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 8656760ADE;
 Thu,  3 Oct 2019 15:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570116106;
 bh=wrF+mAtbKK35bIsjW1eEOP2bIDJkMLZvW9UvGD8kv0c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Sg9Nov1mh/nDNVMzTBKKGarxyT2GpyPeRjsw6o1kLIrwNWXyqGGa4GG+tPttWBVZz
 lOMOaeM+kR8AVvJSOiPCASZF7YraLRX7dOCgd7kjUlBLIlVd6msmHp9ow43AfS0oCX
 /Kz0NL+3r1y8coTb8+3SXrUxk/ZMkhNcPatJ19ok=
MIME-Version: 1.0
Date: Thu, 03 Oct 2019 20:51:46 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH] arm64: dts: qcom: msm8998: Disable coresight by default
In-Reply-To: <aecbc7a2-05fd-f30f-81c7-81947dc31c9f@free.fr>
References: <20191003064449.2201-1-saiprakash.ranjan@codeaurora.org>
 <aecbc7a2-05fd-f30f-81c7-81947dc31c9f@free.fr>
Message-ID: <89f5f76ae26682e902faa1b06379cc0f@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_082148_997084_EF949428 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DT <devicetree@vger.kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, MSM <linux-arm-msm@vger.kernel.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-03 18:23, Marc Gonzalez wrote:
> On 03/10/2019 08:44, Sai Prakash Ranjan wrote:
> 
>> Boot failure has been reported on MSM8998 based laptop when
>> coresight is enabled. This is most likely due to lack of
>> firmware support for coresight on production device when
>> compared to debug device like MTP where this issue is not
>> observed. So disable coresight by default for MSM8998 and
>> enable it only for MSM8998 MTP.
>> 
>> Reported-and-tested-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
>> Fixes: 783abfa2249a ("arm64: dts: qcom: msm8998: Add Coresight 
>> support")
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>  arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi | 68 
>> +++++++++++++++++++++++
>>  arch/arm64/boot/dts/qcom/msm8998.dtsi     | 51 +++++++++++------
>>  2 files changed, 102 insertions(+), 17 deletions(-)
> 
> Just wanted to toss an alternative, based on Suzuki's suggestion
> (i.e. move the coresight nodes to a separate file)
> 
> 

I believe this is a better approach.
Initially I had coresight components in a separate file like this but 
Bjorn had some concerns about having 2 separate files. If he is OK with 
this,

Acked-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
