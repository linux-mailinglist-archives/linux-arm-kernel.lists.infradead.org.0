Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848864D641
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zr0ZYBvcGd6moCaCzfga8Uw/iwpzXMHCgch3nnhTh2Y=; b=CfBKrkzKX/uUexomt3vn14H/e
	QvGEXRP870EaAwxCtw8/0FMZSB7RC9lSfrhB4VX3zkQ56g8zH+MDkOjcTO1CCfShHyzAycDHP6DYU
	wW5THRD3C7Tkoj/L5T/KJZlZOMvbCp8UCKQZZ9VhCfv1vZlFY0qQP5aeqFfzLFa6Gxw9+U+9lV0zR
	fpyzK2GqL6ZfVoJiyO5I+u1LW0/SLC19BrTBnGZAFwLGnyt1cPZIjZbxMECal0qjHuUIROTRf5Smg
	Qb0Xk2haEtisyxcIUxATqmClCIzQHyDO5VjAiUkCwn/sKOoymB6LyzCMplTbyCb+4juv9UK0CmJih
	fuX2vtgHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1S2-000450-Bf; Thu, 20 Jun 2019 18:06:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1Rn-00044Y-Ih
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:06:08 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 211F860F3E; Thu, 20 Jun 2019 18:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561053966;
 bh=xqFrw2iEUDGfrGwNGjX8WKf97VfRNbSs18+LFwCkO+4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=X0U61+dCRIEZ4e3yrvA8matSW+ki2E0nLRtV+V7WB65nATw3FSN9LBt0LhuJ/cyko
 5ex740qhgIUYou7qbgV4vRNInyrmyhI8ud9gNhxctEVCtKb7A6NoPKoENDhmsynu3b
 Ew8lPX38M7Qasa/hxqZpBVpjiRioE++j1G45grNU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [192.168.1.100] (unknown [157.45.245.98])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CAD5860ACE;
 Thu, 20 Jun 2019 18:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561053963;
 bh=xqFrw2iEUDGfrGwNGjX8WKf97VfRNbSs18+LFwCkO+4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=fyIrHi0kTh7H+/xl5q7YA4c1k1jZjRQbz+F2RzehTRGhfvuQ2drjAd1ngvj+nt4k2
 9PulOeBcArJzpAwwS3mNYhND6rZcuzHwtvppHvqqyto41vw29dwJnOKsKt02AD6Yla
 kgVpN1slAGcfy/IPYu7CbVk2waSwQJ0fdxDVVoy4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CAD5860ACE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCH 1/2] coresight: Set affinity to invalid for missing CPU
 phandle
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <49d6554536047b9f5526c4ea33990b7c904673d3.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <20190620173908.GA5581@xps15>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <64f67948-3b7f-422b-0ab7-2393b6083514@codeaurora.org>
Date: Thu, 20 Jun 2019 23:35:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190620173908.GA5581@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_110607_660670_AF3909B7 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Brown <david.brown@linaro.org>, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 Andy Gross <andy.gross@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

Thanks for the review comments.

On 6/20/2019 11:09 PM, Mathieu Poirier wrote:
> Hi Sai,
> 
> On Thu, Jun 20, 2019 at 07:15:46PM +0530, Sai Prakash Ranjan wrote:
>> Affinity defaults to CPU0 in case of missing CPU phandle
>> and this leads to crashes in some cases because of such
>> wrong assumption. Fix this by returning -ENODEV in
>> coresight platform for such cases and then handle it
>> in the coresight drivers.
>>
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>   drivers/hwtracing/coresight/coresight-platform.c | 10 ++++++----
>>   1 file changed, 6 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
>> index 3c5ceda8db24..b1ea60c210e1 100644
>> --- a/drivers/hwtracing/coresight/coresight-platform.c
>> +++ b/drivers/hwtracing/coresight/coresight-platform.c
>> @@ -160,15 +160,17 @@ static int of_coresight_get_cpu(struct device *dev)
>>   
>>   	if (!dev->of_node)
>>   		return 0;
> 
> An error should be returned if the above condition is true.
> 

Will do it, thanks.

>> +
> 
> Spurious newline
> 

This was on purpose, the code looks much cleaner.

-Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
