Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03E94D656
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OFeDzTYKsjXtlk0A+z9XKC8UQf8M5iaEaKaeZzj9k0Q=; b=f+h0xD2g1mouhzJJfU2eCvFz5
	gW0axUfrOdn8yKPxxRTw1981/SH0rvLTH17yiUirlNEgvS3qI3f5rwcVg5UMK/vjZCHn7NR6qaIMJ
	z4eQFnTIeCRQBO4XVUZPprXVhxVzL+FjEdmQ8kfeUper524docAj6RWARPN/LSp/kXqD3lsgHYoRj
	P1hF9eFzzaW0GNKteClyrIkN1I1e9vM9PRDXCuOQq/R3QiH1EwmOZlPtJZhIBZV+7e9RxQKhPEmuf
	vsfOeuh8l98o4dhNhbzH76YK161J70RwNR9zIsHNnaR5VQBG+vWo6WjQozB365aQ0whBIdySlfYXU
	GRVTaWLbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1To-0004iw-Nu; Thu, 20 Jun 2019 18:08:12 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1TY-0004iK-5H
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:07:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A858360C5F; Thu, 20 Jun 2019 18:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561054075;
 bh=7oF5FYVB4lfqoUS0Whfvt1/H7DjfkYY/IRM8xOGXllU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=YlqAVIiA/lKJzIFFZUt+ZrM+/+ZM1rCumypNtbH6LGaFGEA9Q8cSyP7b7n6XjfO8E
 Wt3JyOhza6IxlHDHi6IIVRr/Yi0c21NV1HgpqRn7NcCAOYGrG/DqpG9/UHEVsl+rN5
 VS/KzxwBvWmab6sEkffzjmLm0XBZfrPlFwSgNpdE=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4309760E57;
 Thu, 20 Jun 2019 18:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561054074;
 bh=7oF5FYVB4lfqoUS0Whfvt1/H7DjfkYY/IRM8xOGXllU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=agu9uSKcqLRU1u8dTJcRsoe5C4M6B+ntgNfLUgVMBz+jj2LE6WkQBaXE3SkqP0MRu
 rf/B6aRW/MyrsRTed2F2jFmJj/pBTu8sUwSSjIn4CfprmjyP0nhwACjGX/x33JPI5O
 CinIvimXEuZa97ng+wQ2GNtkrUmfHVtjjgP3ZopA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4309760E57
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCH 2/2] coresight: Abort probe for missing CPU phandle
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <d93e28fc80227f9a385130a766a24f8f39a1dcf0.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <20190620174308.GB5581@xps15>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <94bd685a-1c03-f234-7d3c-e5df0856845b@codeaurora.org>
Date: Thu, 20 Jun 2019 23:37:45 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190620174308.GB5581@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_110756_232287_E0F36C1B 
X-CRM114-Status: GOOD (  14.36  )
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

On 6/20/2019 11:13 PM, Mathieu Poirier wrote:
> On Thu, Jun 20, 2019 at 07:15:47PM +0530, Sai Prakash Ranjan wrote:
>> diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
>> index 07a1367c733f..43f32fa71ff9 100644
>> --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
>> +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
>> @@ -579,6 +579,9 @@ static int debug_probe(struct amba_device *adev, const struct amba_id *id)
>>   		return -ENOMEM;
>>   
>>   	drvdata->cpu = coresight_get_cpu(dev);
>> +	if (drvdata->cpu == -ENODEV)
>> +		return -ENODEV;
> 
> As Suzuki pointed out, simply return the error message conveyed by
> coresight_get_cpu().
> 
> Also please merge both patches together to avoid bisect nightmare.

Sure, will do it.

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
