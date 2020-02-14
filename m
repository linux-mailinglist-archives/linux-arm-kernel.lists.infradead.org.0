Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DEB15DADB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:26:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKQkrqsTl3EiL5tZRM2FKYgmtPOFupp53sm1LOBdcq4=; b=C9EIG9lWfi0uw3
	pVCi1qZeGVHBVGjGbLRkVD5bbJgebAMJVqSNZA/sisclCTMKVHIK2L8GXJhjHLk2B6R3cPkclCT6P
	XQXscIeO/8afqA339z2I5ojf+Fgd3LWag4mWD2hQ5wICGNw7zzCtWPf/KPWPa+2FyWZXU2lpL/Qxv
	HCQSTK1zJ3WFWmlf45j8n1V4FIUpfM51++/34xQml5KxmZZMKmZiH5U1YIQ8+gEHWwE9bpE7PxTcY
	VOft/PzqWr43UOuyqe1RGU8tdVXR60dIY/djCDRnv+HVfJlX73fotKdV9NhQ7Cfjs1DbWE70sxNNZ
	R0e/wU6ezQqtnK3wP7Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cr6-0005pY-CR; Fri, 14 Feb 2020 15:26:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cqv-0005o5-NY
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:26:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80B7E328;
 Fri, 14 Feb 2020 07:25:59 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9F58A3F68E;
 Fri, 14 Feb 2020 07:25:58 -0800 (PST)
Subject: Re: [RFC PATCH 01/11] firmware: arm_scmi: Add receive buffer support
 for notifications
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
References: <20200120122333.46217-1-cristian.marussi@arm.com>
 <20200120122333.46217-2-cristian.marussi@arm.com>
 <20200127170713.000013ee@Huawei.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <97365c4e-3672-64ec-50c7-28dc839a2d35@arm.com>
Date: Fri, 14 Feb 2020 15:25:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200127170713.000013ee@Huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_072601_955817_DD738D8C 
X-CRM114-Status: GOOD (  19.55  )
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

On 27/01/2020 17:07, Jonathan Cameron wrote:
> On Mon, 20 Jan 2020 12:23:23 +0000
> Cristian Marussi <cristian.marussi@arm.com> wrote:
> 
>> From: Sudeep Holla <sudeep.holla@arm.com>
>>
>> With all the plumbing in place, let's just add the separate dedicated
>> receive buffers to handle notifications that can arrive asynchronously
>> from the platform firmware to OS.
>>
>> Also add check to see if the platform supports any receive channels
>> before allocating the receive buffers.
> 
> Perhaps hand hold the reader a tiny bit more by saying that we need
> to move the initialization later so that we can know *if* the receive
> channels are supported.  Took me a moment to figure out why you did that ;)
> 

Addressed in v2.

> One minor suggestion inline.
> 
>>
>> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>> ---
>>  drivers/firmware/arm_scmi/driver.c | 24 ++++++++++++++++++------
>>  1 file changed, 18 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
>> index 2c96f6b5a7d8..9611e8037d77 100644
>> --- a/drivers/firmware/arm_scmi/driver.c
>> +++ b/drivers/firmware/arm_scmi/driver.c
>> @@ -123,6 +123,7 @@ struct scmi_chan_info {
>>   * @version: SCMI revision information containing protocol version,
>>   *	implementation version and (sub-)vendor identification.
>>   * @tx_minfo: Universal Transmit Message management info
>> + * @rx_minfo: Universal Receive Message management info
>>   * @tx_idr: IDR object to map protocol id to Tx channel info pointer
>>   * @rx_idr: IDR object to map protocol id to Rx channel info pointer
>>   * @protocols_imp: List of protocols implemented, currently maximum of
>> @@ -136,6 +137,7 @@ struct scmi_info {
>>  	struct scmi_revision_info version;
>>  	struct scmi_handle handle;
>>  	struct scmi_xfers_info tx_minfo;
>> +	struct scmi_xfers_info rx_minfo;
>>  	struct idr tx_idr;
>>  	struct idr rx_idr;
>>  	u8 *protocols_imp;
>> @@ -690,13 +692,13 @@ int scmi_handle_put(const struct scmi_handle *handle)
>>  	return 0;
>>  }
>>  
>> -static int scmi_xfer_info_init(struct scmi_info *sinfo)
>> +static int __scmi_xfer_info_init(struct scmi_info *sinfo, bool tx)
>>  {
>>  	int i;
>>  	struct scmi_xfer *xfer;
>>  	struct device *dev = sinfo->dev;
>>  	const struct scmi_desc *desc = sinfo->desc;
>> -	struct scmi_xfers_info *info = &sinfo->tx_minfo;
>> +	struct scmi_xfers_info *info = tx ? &sinfo->tx_minfo : &sinfo->rx_minfo;
> 
> Perhaps cleaner to just pass in the relevant info structure rather than a boolean
> to pick it.  Saves people having to check if the boolean is saying it's
> tx or rx when reading the call sites.
> 

Done in the upcoming v2.

Regards

Cristian

>>  
>>  	/* Pre-allocated messages, no more than what hdr.seq can support */
>>  	if (WARN_ON(desc->max_msg >= MSG_TOKEN_MAX)) {
>> @@ -731,6 +733,16 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
>>  	return 0;
>>  }
>>  
>> +static int scmi_xfer_info_init(struct scmi_info *sinfo)
>> +{
>> +	int ret = __scmi_xfer_info_init(sinfo, true);
>> +
>> +	if (!ret && idr_find(&sinfo->rx_idr, SCMI_PROTOCOL_BASE))
>> +		ret = __scmi_xfer_info_init(sinfo, false);
>> +
>> +	return ret;
>> +}
>> +
>>  static int scmi_mailbox_check(struct device_node *np, int idx)
>>  {
>>  	return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells",
>> @@ -908,10 +920,6 @@ static int scmi_probe(struct platform_device *pdev)
>>  	info->desc = desc;
>>  	INIT_LIST_HEAD(&info->node);
>>  
>> -	ret = scmi_xfer_info_init(info);
>> -	if (ret)
>> -		return ret;
>> -
>>  	platform_set_drvdata(pdev, info);
>>  	idr_init(&info->tx_idr);
>>  	idr_init(&info->rx_idr);
>> @@ -924,6 +932,10 @@ static int scmi_probe(struct platform_device *pdev)
>>  	if (ret)
>>  		return ret;
>>  
>> +	ret = scmi_xfer_info_init(info);
>> +	if (ret)
>> +		return ret;
>> +
>>  	ret = scmi_base_protocol_init(handle);
>>  	if (ret) {
>>  		dev_err(dev, "unable to communicate with SCMI(%d)\n", ret);
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
