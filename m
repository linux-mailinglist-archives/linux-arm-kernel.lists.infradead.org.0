Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8671F5034
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUP3H9cFapHL+3dc8udPA80gyIcQcIa2rIOdQ9FEUy0=; b=gtFeNITiLp/W2a
	Q1LKnHmktKBTTWXe2ZSk0usD2eAT7XG3ASvD0epl9AFX3a9Jsqlh0JOaPZIhzjI2WSYPhKzpKc9iH
	xZOFhUwbTP40KbmLDnERiFgLBwtDRumNUeKbv3d2lqJ3k4zbuKxeOjpEgA84/bF1RX58HpPeLxT5S
	ZuFgRDyHSmCBiljetGU626l3wNcaMAqr50wVdJJeXL4c+cyTHi6Sxj/tslMR/9dFgEsx2yGXE76R4
	0lv+j04krouLCGVE4kLO0CJtJCewni41OnF1pXNuFaIq3GdLduAsgw8lp8/u4t/ilgBYi4luovBBR
	8HlCbYO/GGITZ4ekYSNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiw1G-00053w-Gi; Wed, 10 Jun 2020 08:23:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiw17-00053L-9D
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:23:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA28E1F1;
 Wed, 10 Jun 2020 01:23:23 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 014D63F6CF;
 Wed, 10 Jun 2020 01:23:18 -0700 (PDT)
Date: Wed, 10 Jun 2020 09:23:15 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: jassisinghbrar@gmail.com
Subject: Re: [PATCH] firmware: arm_scmi: fix timeout value for send_message
Message-ID: <20200610082315.GB2689@bogus>
References: <20200607193023.52344-1-jassisinghbrar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200607193023.52344-1-jassisinghbrar@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_012325_365246_49BEED7F 
X-CRM114-Status: GOOD (  22.07  )
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
Cc: robh@kernel.org, arnd@arndb.de, viresh.kumar@linaro.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 Jassi Brar <jaswinder.singh@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 frowand.list@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 07, 2020 at 02:30:23PM -0500, jassisinghbrar@gmail.com wrote:
> From: Jassi Brar <jaswinder.singh@linaro.org>
>
> Currently scmi_do_xfer() submits a message to mailbox api and waits
> for an apparently very short time. This works if there are not many
> messages in the queue already. However, if many clients share a
> channel and/or each client submits many messages in a row, the

The recommendation in such scenarios is to use multiple channel.

> timeout value becomes too short and returns error even if the mailbox
> is working fine according to the load. The timeout occurs when the
> message is still in the api/queue awaiting its turn to ride the bus.
>
>  Fix this by increasing the timeout value enough (500ms?) so that it
> fails only if there is an actual problem in the transmission (like a
> lockup or crash).
>
> [If we want to capture a situation when the remote didn't
> respond within expected latency, then the timeout should not
> start here, but from tx_prepare callback ... just before the
> message physically gets on the channel]
>

The bottle neck may not be in the remote. It may be mailbox serialising
the requests even when it can parallelise.

> Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
> ---
>  drivers/firmware/arm_scmi/driver.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index dbec767222e9..46ddafe7ffc0 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -303,7 +303,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
>  	}
>
>  	if (xfer->hdr.poll_completion) {
> -		ktime_t stop = ktime_add_ns(ktime_get(), SCMI_MAX_POLL_TO_NS);
> +		ktime_t stop = ktime_add_ns(ktime_get(), 500 * 1000 * NSEC_PER_USEC);
>

This is unacceptable delay for schedutil fast_switch. So no for this one.

>  		spin_until_cond(scmi_xfer_done_no_timeout(cinfo, xfer, stop));
>
> @@ -313,7 +313,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
>  			ret = -ETIMEDOUT;
>  	} else {
>  		/* And we wait for the response. */
> -		timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms);
> +		timeout = msecs_to_jiffies(500);

In general, this hides issues in the remote. We are trying to move towards
tops 1ms for a request and with MBOX_QUEUE at 20, I see 20ms is more that
big enough. We have it set to 30ms now. 500ms is way too large and not
required IMO.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
