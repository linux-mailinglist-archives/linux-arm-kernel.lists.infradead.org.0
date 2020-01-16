Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728D713D923
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:36:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKSYqEMOaCRgItbAu4NpFRigvwOZZHCszni+zdkan2o=; b=DOeVnbxxaCEMmN
	cpFauclBwp09IokMnV/o4kd1Z4txYze4cRSBWQmk9lNqq1PcFp5n1BtCRPLHmzqB19wuBIHJq9evb
	L9gnWOPoIpj4qbjcMBTIoJYA8ZevdUg32eFWP/5vCGP2eYANHzTo8BPkAJNYUfQPCy9r1GqzufGnc
	1m9cZ//vqZrwsUfsd8c7713Fpf2W/UP/vT9i4Nlydi+0CmmWA3+J8FCZd2qqBstJD8QjsFJKOdcbc
	3w7MUXNjZRneDe7s+YAzf8+H03oQZm6Qu0ffOZIgalQWicuDHVr+IBkhPU9K+USVHuAjvJp55RCyO
	YVUVmhHmX/WJfL7K2ujA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3SD-0001Wi-Ga; Thu, 16 Jan 2020 11:36:49 +0000
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3Rz-0001Vg-CL
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:36:39 +0000
Received: from [IPv6:2001:420:44c1:2577:1825:cb8:c622:6168]
 ([IPv6:2001:420:44c1:2577:1825:cb8:c622:6168])
 by smtp-cloud8.xs4all.net with ESMTPA
 id s3RjiVmMbpLtbs3RnipkFi; Thu, 16 Jan 2020 12:36:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1579174586; bh=KJTZxvoNtyNAYS48H7dDiS3wOSGu6tHpdKtGolS4OPI=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=OqmFEjX+SXw4fZdw5rPbu3khV/FJcpL4Bd7+o6GOEnlW/YW07z/lPAq7mPWjyiPtv
 AYUP5MM0OncNrwzMepx5Ugnw5ezFFkMpvepnJcqZbwzVZ1yG+kHAIdVNlcXh4nnBSc
 mYGCCEzrCC5p35eI+aXC9zAZYe0U1kGzAYKil1zhgN5aXajxsSlzyheBrhR6PxkNWc
 rHMCrWvKM0cvlFzuCkE2rPTTYm2cxmKRs4qCjKjl9FD3UelnQrjqLpjCKud2CV9IhC
 wGwo7EKX26CHoyyfN+blfJ2aTI93NgC7Fht41so2zTrP1ZG+bQ7uoIiBljHy7LKPyB
 OfoqCm2I/GZ5w==
Subject: Re: [PATCH v2] media: xilinx: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>
References: <20200110071648.15690-1-peter.ujfalusi@ti.com>
 <20200115172822.GB7139@pendragon.ideasonboard.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <fc5e4b9b-824b-67e1-90c3-fddcdb973714@xs4all.nl>
Date: Thu, 16 Jan 2020 12:36:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200115172822.GB7139@pendragon.ideasonboard.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfBoRekIT5H1+bZg7kDzHByl5/pJ+D4JLvao0qsUsmlMb4ajKa+B+yCUFPOxPPnYYySnRKst2gdx52ZwoXEUxy5+AKjcsOXNPdp0hBwajxKX695mXlPl1
 Srrgquwpbli+dHKj02HgFf84PuxP3Phqt3Hmbfw/pyGEJyNEoqTT8mw6jcjlXRy3xFAFlp+xSDjlzlb60OFjX6+ZXfnNFxKg0fme9umt2mGhB3qQMSedq/9S
 JSxo8T0b+YOJ5eA+484hQFgcU7f2TWpQiXPEZjrgreCtBMUAF/ggVPfB2pQw+TVRfyMfHiWwSomc6JHPfmbO8k74seqCwOcoSeVKPaVOnJ0tunwqMa8TV5qZ
 +dGAjm/qTdqFC10jsYBXArs1Cz22maKjJpmLx+DkQMkHgUTHpWueisgq4u9u+2MNIXc3ZMkFt6phihwBx7UL97SiD3IF+JC9j/GRTr9HkBoS4v+tUYMBsU3r
 eiMqsex7gUfFrXqP0xRl7TjZLiVYkvXHlOhf+y9/jl/QMmVZ44gUXN76ibLpVT0SPXNqCrbgYaKe4bzhkPdtcbXz/cWJtG9MC8TS8PEqPf8za1nKk/EXnZOB
 0Jg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_033635_578489_A709265D 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.21 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.21 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hyun.kwon@xilinx.com, michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/15/20 6:28 PM, Laurent Pinchart wrote:
> Hi Peter,
> 
> (CC'ing Hans)
> 
> Thank you for the patch.
> 
> On Fri, Jan 10, 2020 at 09:16:48AM +0200, Peter Ujfalusi wrote:
>> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
>> eating up the error code.
>>
>> By using dma_request_chan() directly the driver can support deferred
>> probing against DMA.
>>
>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> and taken in my tree. Hans, you asked me on IRC to review this, did you
> plan to get it merged upstream yourself ? If so I'll drop it.

Yes, I'll take it. I have similar patches as well in my upcoming PR, so
it makes sense to combine them.

Thanks for reviewing this!

	Hans

> 
>> ---
>> Hi,
>>
>> Changes since v1:
>> - Fix cleanup path when DMA request failed as suggested by Laurent
>> - Print error only in case when the error is not EPROBE_DEFER
>>
>>  drivers/media/platform/xilinx/xilinx-dma.c | 11 ++++++-----
>>  1 file changed, 6 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/media/platform/xilinx/xilinx-dma.c b/drivers/media/platform/xilinx/xilinx-dma.c
>> index b211380a11f2..3bb54a4db6a4 100644
>> --- a/drivers/media/platform/xilinx/xilinx-dma.c
>> +++ b/drivers/media/platform/xilinx/xilinx-dma.c
>> @@ -725,10 +725,11 @@ int xvip_dma_init(struct xvip_composite_device *xdev, struct xvip_dma *dma,
>>  
>>  	/* ... and the DMA channel. */
>>  	snprintf(name, sizeof(name), "port%u", port);
>> -	dma->dma = dma_request_slave_channel(dma->xdev->dev, name);
>> -	if (dma->dma == NULL) {
>> -		dev_err(dma->xdev->dev, "no VDMA channel found\n");
>> -		ret = -ENODEV;
>> +	dma->dma = dma_request_chan(dma->xdev->dev, name);
>> +	if (IS_ERR(dma->dma)) {
>> +		ret = PTR_ERR(dma->dma);
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(dma->xdev->dev, "no VDMA channel found\n");
>>  		goto error;
>>  	}
>>  
>> @@ -752,7 +753,7 @@ void xvip_dma_cleanup(struct xvip_dma *dma)
>>  	if (video_is_registered(&dma->video))
>>  		video_unregister_device(&dma->video);
>>  
>> -	if (dma->dma)
>> +	if (!IS_ERR_OR_NULL(dma->dma))
>>  		dma_release_channel(dma->dma);
>>  
>>  	media_entity_cleanup(&dma->video.entity);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
