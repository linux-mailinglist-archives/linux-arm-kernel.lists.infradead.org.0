Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F821F3D74
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZT41C2JggPAA+t9tfYikv+btZ9h5bF9Xg4DJ2IC3EPo=; b=ts0Ktjjrs6sQsEUI0FV7Ezg3B
	9FDjXP6ww+3nGRhPc92Su9lx+PL9M9hHu9oLg13wPT+4/P3wGQ8qTsl/D4yuC1DR/16Q8phDz6NsL
	Mf+tbU3yDkH2/NehY3Q7ysU7hGVDYrfoXbR3zjW2V1AJ45QDKOgJFEaq2sn1oKFlBOzFaYXr15hW+
	4yhjaiQv4Bd9ADRWdddztRDsLcsZ0A4j7awl1ONWsug7cmCVqJ/Q0ViHAaJXhLoSKzEhv+oTMb/Cu
	6XcaJszJqAQ0WQ+EuspUtPlTYD6O8M7NMhUmQFRhn4alnb+6ilbAtA7n9Q9EeOHEn+jQorYVKvAJ7
	QPsjzHEZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieni-0005lE-5v; Tue, 09 Jun 2020 14:00:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiena-0005ko-DR
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:00:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A541A1FB;
 Tue,  9 Jun 2020 07:00:13 -0700 (PDT)
Received: from [10.37.12.95] (unknown [10.37.12.95])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E48C13F66F;
 Tue,  9 Jun 2020 07:00:08 -0700 (PDT)
Subject: Re: [PATCH] firmware: arm_scmi: Use signed integer to report transfer
 status
To: Sudeep Holla <sudeep.holla@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200609134503.55860-1-sudeep.holla@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <d2aaadd1-d988-2978-f5e8-06b131c61b94@arm.com>
Date: Tue, 9 Jun 2020 15:00:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200609134503.55860-1-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_070018_499881_B841EDFE 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Jim Quinlan <james.quinlan@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/20 2:45 PM, Sudeep Holla wrote:
> Currently the trace event 'scmi_xfer_end' reports the status of the
> transfer using the unsigned status field read from the firmware. This
> may not be easy to interpret and also may miss to present any timeouts
> that happen in the driver.
> 
> Let us use signed integer so that error values are emitted out after
> they are mapped from firmware errors to standard linux error codes.
> While at this, let us also include any timeouts in the driver itself.
> 
> Cc: Jim Quinlan <james.quinlan@broadcom.com>
> Cc: Lukasz Luba <lukasz.luba@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>   drivers/firmware/arm_scmi/driver.c | 3 +--
>   include/trace/events/scmi.h        | 6 +++---
>   2 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index 7483cacf63f9..136acbe2f4a1 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -392,8 +392,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
>   		info->desc->ops->mark_txdone(cinfo, ret);
>   
>   	trace_scmi_xfer_end(xfer->transfer_id, xfer->hdr.id,
> -			    xfer->hdr.protocol_id, xfer->hdr.seq,
> -			    xfer->hdr.status);
> +			    xfer->hdr.protocol_id, xfer->hdr.seq, ret);
>   
>   	return ret;
>   }
> diff --git a/include/trace/events/scmi.h b/include/trace/events/scmi.h
> index f076c430d243..f3a4b4d60714 100644
> --- a/include/trace/events/scmi.h
> +++ b/include/trace/events/scmi.h
> @@ -35,7 +35,7 @@ TRACE_EVENT(scmi_xfer_begin,
>   
>   TRACE_EVENT(scmi_xfer_end,
>   	TP_PROTO(int transfer_id, u8 msg_id, u8 protocol_id, u16 seq,
> -		 u32 status),
> +		 int status),
>   	TP_ARGS(transfer_id, msg_id, protocol_id, seq, status),
>   
>   	TP_STRUCT__entry(
> @@ -43,7 +43,7 @@ TRACE_EVENT(scmi_xfer_end,
>   		__field(u8, msg_id)
>   		__field(u8, protocol_id)
>   		__field(u16, seq)
> -		__field(u32, status)
> +		__field(int, status)
>   	),
>   
>   	TP_fast_assign(
> @@ -54,7 +54,7 @@ TRACE_EVENT(scmi_xfer_end,
>   		__entry->status = status;
>   	),
>   
> -	TP_printk("transfer_id=%d msg_id=%u protocol_id=%u seq=%u status=%u",
> +	TP_printk("transfer_id=%d msg_id=%u protocol_id=%u seq=%u status=%d",
>   		__entry->transfer_id, __entry->msg_id, __entry->protocol_id,
>   		__entry->seq, __entry->status)
>   );
> 

Indeed looks better with the Linux like ret status

Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
