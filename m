Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D186D15DAF8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:29:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3sqS4yH8RdwCa0u0DKSLEFHos1R33MpftQhlSQQR2o=; b=GXkD4tbeOgWHv8
	wHnQ0nBm34AYvHTAcbbHsftXMmFqnJpsyk3xPLa7iR6CmATngowx4kpcfUkhrv34iENvFEGDRX3y8
	U9D/+ZLKp1dC8TouA8vlo1Nt2FvADLHYld3SFsEUfBJNP3V/lec1MGw+1f8QH1eAVFR2Lo3i4ntPd
	UCaNHgvjGf/vfAM2KJ1fQJo865sCKJiVsK01KYY/tQoYow9GHscEsRLaHZFhio9YStNEAm1SshAIM
	dsTtgi7AlKovKnGni/qsSkvkFPoLq3H/i3+R6wiW2GRxCGKlhVtmi5msUgKL3TYC2K+P1OjSq+Jnk
	MXKewVYrjntonv/U+peg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ctm-0006Et-5C; Fri, 14 Feb 2020 15:28:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cte-0006EO-BC
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:28:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A64E6328;
 Fri, 14 Feb 2020 07:28:49 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAC3F3F68E;
 Fri, 14 Feb 2020 07:28:48 -0800 (PST)
Subject: Re: [RFC PATCH 03/11] firmware: arm_scmi: Add support for
 notifications message processing
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
References: <20200120122333.46217-1-cristian.marussi@arm.com>
 <20200120122333.46217-4-cristian.marussi@arm.com>
 <20200127173232.000045ac@Huawei.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <5a5096b6-5716-f786-4f53-88425531e2e6@arm.com>
Date: Fri, 14 Feb 2020 15:28:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200127173232.000045ac@Huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_072850_473223_EB29535E 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: james.quinlan@broadcom.com, lukasz.luba@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 27/01/2020 17:32, Jonathan Cameron wrote:
> On Mon, 20 Jan 2020 12:23:25 +0000
> Cristian Marussi <cristian.marussi@arm.com> wrote:
> 
>> From: Sudeep Holla <sudeep.holla@arm.com>
>>
>> Add the mechanisms to distinguish notifications from delayed responses and
>> to properly fetch notification messages upon reception: notifications
>> processing does not continue further after the fetch phase.
>>
>> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> 
> Couple of bits that seem more interesting than expected inline...
> 
>> ---
>>  drivers/firmware/arm_scmi/driver.c | 92 +++++++++++++++++++++---------
>>  1 file changed, 65 insertions(+), 27 deletions(-)
>>
>> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
>> index 9611e8037d77..28ed1f0cb417 100644
>> --- a/drivers/firmware/arm_scmi/driver.c
>> +++ b/drivers/firmware/arm_scmi/driver.c
>> @@ -212,6 +212,15 @@ static void scmi_fetch_response(struct scmi_xfer *xfer,
>>  	memcpy_fromio(xfer->rx.buf, mem->msg_payload + 4, xfer->rx.len);
>>  }
>>  
>> +static void scmi_fetch_notification(struct scmi_xfer *xfer, size_t max_len,
>> +				    struct scmi_shared_mem __iomem *mem)
>> +{
>> +	/* Skip only length of header in payload area i.e 4 bytes */
>> +	xfer->rx.len = min_t(size_t, max_len, ioread32(&mem->length) - 4);
>> +
>> +	memcpy_fromio(xfer->rx.buf, mem->msg_payload, xfer->rx.len);
>> +}
>> +
>>  /**
>>   * pack_scmi_header() - packs and returns 32-bit header
>>   *
>> @@ -339,6 +348,58 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
>>  	spin_unlock_irqrestore(&minfo->xfer_lock, flags);
>>  }
>>  
>> +static void scmi_handle_notification(struct scmi_chan_info *cinfo, u32 msg_hdr)
>> +{
>> +	struct scmi_xfer *xfer;
>> +	struct device *dev = cinfo->dev;
>> +	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
>> +	struct scmi_xfers_info *minfo = &info->rx_minfo;
>> +	struct scmi_shared_mem __iomem *mem = cinfo->payload;
>> +
>> +	xfer = scmi_xfer_get(cinfo->handle, minfo);
>> +	if (IS_ERR(xfer)) {
>> +		dev_err(dev, "failed to get free message slot (%ld)\n",
>> +			PTR_ERR(xfer));
>> +		iowrite32(SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE,
>> +			  &mem->channel_status);
>> +		return;
>> +	}
>> +
>> +	unpack_scmi_header(msg_hdr, &xfer->hdr);
>> +	scmi_dump_header_dbg(dev, &xfer->hdr);
>> +	scmi_fetch_notification(xfer, info->desc->max_msg_size, mem);
>> +	__scmi_xfer_put(minfo, xfer);
>> +
>> +	iowrite32(SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE, &mem->channel_status);
>> +}
>> +
>> +static void scmi_handle_xfer_delayed_resp(struct scmi_chan_info *cinfo,
>> +					  u16 xfer_id, bool delayed_resp)
> 
> Hmm. A function called *_delayed_resp that takes a boolean to say if
> it is a delayed_resp is in the category of non obvious....  Needs a rename
> at the very least.
> 

Changed logic and naming in v2, also because now v2 is on top of Viresh series
which makes transport layer independent. (in fact an additional dedicated patch
is dedicated to extend the transport layer for notifications too)


>> +{
>> +	struct scmi_xfer *xfer;
>> +	struct device *dev = cinfo->dev;
>> +	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
>> +	struct scmi_xfers_info *minfo = &info->tx_minfo;
>> +	struct scmi_shared_mem __iomem *mem = cinfo->payload;
>> +
>> +	/* Are we even expecting this? */
>> +	if (!test_bit(xfer_id, minfo->xfer_alloc_table)) {
>> +		dev_err(dev, "message for %d is not expected!\n", xfer_id);
>> +		return;
>> +	}
>> +
>> +	xfer = &minfo->xfer_block[xfer_id];
>> +
>> +	scmi_dump_header_dbg(dev, &xfer->hdr);
>> +
>> +	scmi_fetch_response(xfer, mem);
>> +
>> +	if (delayed_resp)
>> +		complete(xfer->async_done);
>> +	else
>> +		complete(&xfer->done);
>> +}
>> +
>>  /**
>>   * scmi_rx_callback() - mailbox client callback for receive messages
>>   *
>> @@ -355,41 +416,18 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
>>  {
>>  	u8 msg_type;
>>  	u32 msg_hdr;
>> -	u16 xfer_id;
>> -	struct scmi_xfer *xfer;
>>  	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
>> -	struct device *dev = cinfo->dev;
>> -	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
>> -	struct scmi_xfers_info *minfo = &info->tx_minfo;
>>  	struct scmi_shared_mem __iomem *mem = cinfo->payload;
>>  
>>  	msg_hdr = ioread32(&mem->msg_header);
>>  	msg_type = MSG_XTRACT_TYPE(msg_hdr);
>> -	xfer_id = MSG_XTRACT_TOKEN(msg_hdr);
>>  
>>  	if (msg_type == MSG_TYPE_NOTIFICATION)
>> -		return; /* Notifications not yet supported */
>> -
>> -	/* Are we even expecting this? */
>> -	if (!test_bit(xfer_id, minfo->xfer_alloc_table)) {
>> -		dev_err(dev, "message for %d is not expected!\n", xfer_id);
>> -		return;
>> -	}
>> -
>> -	xfer = &minfo->xfer_block[xfer_id];
>> -
>> -	scmi_dump_header_dbg(dev, &xfer->hdr);
>> -
>> -	scmi_fetch_response(xfer, mem);
>> -
>> -	trace_scmi_rx_done(xfer->transfer_id, xfer->hdr.id,
>> -			   xfer->hdr.protocol_id, xfer->hdr.seq,
>> -			   msg_type);
>> -
>> -	if (msg_type == MSG_TYPE_DELAYED_RESP)
>> -		complete(xfer->async_done);
>> +		scmi_handle_notification(cinfo, msg_hdr);
>>  	else
>> -		complete(&xfer->done);
>> +		scmi_handle_xfer_delayed_resp(cinfo, MSG_XTRACT_TOKEN(msg_hdr),
>> +					      msg_type);
> First I wondered why this wasn't a switch which would make a clear distinction
> between notification path and delayed response... 
> 
> However, it seems delayed_resp path also handles other values of msg_type,
> though only 0 which is a command I think...
> 
> Passing a enum that I think can take 4 values, only 3 of which are defined
> into a function as a boolean is 'interesting'. Don't do that.
> 

Reworked the logic in v2

Thanks

Regards

Cristian
> 
>> +
>>  }
>>  
>>  /**
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
