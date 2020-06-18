Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1961FFA1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 19:24:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxCxUQ2nKY/LkVc5HIy3P+D2S8XBHGo/bPRL1nl6p1M=; b=LLIg+tOLWbFpaC
	fSIXo4BulOw0z2bEfZPFbz3rQeRCKfuUJT+AWD+g7t6IWAVcka/1WYUKc49tTQw5Xf3unCXdlSHw2
	W9tZ0QWJXo/NHMHXyV3RDRRdZKGGZoVI0GWnLSz46sQK/w1UH1OxR6IqEEaKDyX0kvfEZmq25Iszi
	c33CNreQBGajOMSkZXWRdIwBAbqxQGjJQbiha/Eq7sWNeaAUsGUO2fqOCvFRPnPIKeIzBd5+zW4PH
	zUfUTZKCGUVrQoMBYAOxhEHFc7cO4o8npWvwd9LES4XQHyuKZZqgMr0yF5rzEa4fqQvqer1rKC06q
	bzS3Mm9EQ6WqAlcMDI+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyHQ-0000Uw-BT; Thu, 18 Jun 2020 17:24:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyHG-0000UR-SB
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 17:24:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F334031B;
 Thu, 18 Jun 2020 10:24:37 -0700 (PDT)
Received: from e119603-lin.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 725D23F6CF;
 Thu, 18 Jun 2020 10:24:36 -0700 (PDT)
Date: Thu, 18 Jun 2020 18:24:30 +0100
From: Cristian Marussi <cristian.marussi@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v8 9/9] firmware: arm_scmi: Add Base notifications support
Message-ID: <20200618172430.GA9998@e119603-lin.cambridge.arm.com>
References: <20200520081118.54897-1-cristian.marussi@arm.com>
 <20200520081118.54897-10-cristian.marussi@arm.com>
 <20200608170239.GA13622@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608170239.GA13622@bogus>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_102438_997203_76A85605 
X-CRM114-Status: GOOD (  32.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: cristian.marussi@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 Jonathan.Cameron@Huawei.com, dave.martin@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 06:02:39PM +0100, Sudeep Holla wrote:
> On Wed, May 20, 2020 at 09:11:18AM +0100, Cristian Marussi wrote:
> > Make SCMI Base protocol register with the notification core.
> >
> > Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> > Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> > ---
> > V6 --> V7
> > - fixed report.timestamp type
> > - fix max_payld_sz initialization
> > - fix report layout and initialization
> > - expose SCMI_EVENT_ in linux/scmi_protocol.h
> > V5 --> V6
> > - added handle argument to fill_custom_report()
> > V4 --> V5
> > - fixed unsual return construct
> > V3 --> V4
> > - scmi_event field renamed
> > V2 --> V3
> > - added handle awareness
> > V1 --> V2
> > - simplified .set_notify_enabled() implementation moving the ALL_SRCIDs
> >   logic out of protocol. ALL_SRCIDs logic is now in charge of the
> >   notification core, together with proper reference counting of enables
> > - switched to devres protocol-registration
> > ---
> >  drivers/firmware/arm_scmi/base.c | 118 +++++++++++++++++++++++++++++--
> >  include/linux/scmi_protocol.h    |   9 +++
> >  2 files changed, 123 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
> > index ce7d9203e41b..dcb098d8d823 100644
> > --- a/drivers/firmware/arm_scmi/base.c
> > +++ b/drivers/firmware/arm_scmi/base.c
> > @@ -5,7 +5,13 @@
> >   * Copyright (C) 2018 ARM Ltd.
> >   */
> >
> > +#include <linux/scmi_protocol.h>
> > +
> >  #include "common.h"
> > +#include "notify.h"
> > +
> > +#define SCMI_BASE_NUM_SOURCES		1
> > +#define SCMI_BASE_MAX_CMD_ERR_COUNT	1024
> >
> 
> I am not sure of this, see below.
> 
Ok

> >  enum scmi_base_protocol_cmd {
> >  	BASE_DISCOVER_VENDOR = 0x3,
> > @@ -19,16 +25,25 @@ enum scmi_base_protocol_cmd {
> >  	BASE_RESET_AGENT_CONFIGURATION = 0xb,
> >  };
> >
> > -enum scmi_base_protocol_notify {
> > -	BASE_ERROR_EVENT = 0x0,
> > -};
> > -
> >  struct scmi_msg_resp_base_attributes {
> >  	u8 num_protocols;
> >  	u8 num_agents;
> >  	__le16 reserved;
> >  };
> >
> > +struct scmi_msg_base_error_notify {
> > +	__le32 event_control;
> > +#define BASE_TP_NOTIFY_ALL	BIT(0)
> > +};
> > +
> > +struct scmi_base_error_notify_payld {
> > +	__le32 agent_id;
> > +	__le32 error_status;
> > +#define IS_FATAL_ERROR(x)	((x) & BIT(31))
> > +#define ERROR_CMD_COUNT(x)	FIELD_GET(GENMASK(9, 0), (x))
> > +	__le64 msg_reports[SCMI_BASE_MAX_CMD_ERR_COUNT];
> 
> This entire payload needs to fit in shmem and having huge shmem just
> for this sounds not so good to me. If this can be large, it needs to
> be iterated multiple times to get the full log.
> 

I think it's a good point, if a platform implementation would generate
such jumbo payloads for this events no matter what the actual trasport
message size was, we're definitely going to receive corrupted packets.

Spec says about BASE_ERROR_EVENT:

Bits[9:0]	Command count, number of commands in the
		command list. A value of zero is possible if the
		error cannot be attributed.

I'll ask Souvik if it's not the case to amend the spec to highlight this
possibility. (being errors notifications I suppose platform could simply
chunk the big packet in multiple pieces to fit into the current transport)

Anyway reviewing this implementation this payld struct here is defined as
to be big enough to contain the maximum allowed size by the current spec,
it is not that I am expecting to strictly receive packets sized exacly as
that; it's the same appproach I use thorughout the notifications: I reserve
an area big enough to hold any possible packet (.max_payld_sz) and then I
just check that I received a packets that fits (sizeof(*p) < payld_sz), in
case I received a variable length payload event packet as this, or check,
for other fixed-size payload events, that the received packet is of the
exact specified length.

It's just that I'm trying to pre-allocate spare areas that can fit any
possible packet length (if variable) for any possible transport.

> > +};
> > +
> >  /**
> >   * scmi_base_attributes_get() - gets the implementation details
> >   *	that are associated with the base protocol.
> > @@ -222,6 +237,95 @@ static int scmi_base_discover_agent_get(const struct scmi_handle *handle,
> >  	return ret;
> >  }
> >
> > +static int scmi_base_error_notify(const struct scmi_handle *handle, bool enable)
> > +{
> > +	int ret;
> > +	u32 evt_cntl = enable ? BASE_TP_NOTIFY_ALL : 0;
> > +	struct scmi_xfer *t;
> > +	struct scmi_msg_base_error_notify *cfg;
> > +
> > +	ret = scmi_xfer_get_init(handle, BASE_NOTIFY_ERRORS,
> > +				 SCMI_PROTOCOL_BASE, sizeof(*cfg), 0, &t);
> > +	if (ret)
> > +		return ret;
> > +
> > +	cfg = t->tx.buf;
> > +	cfg->event_control = cpu_to_le32(evt_cntl);
> > +
> > +	ret = scmi_do_xfer(handle, t);
> > +
> > +	scmi_xfer_put(handle, t);
> > +	return ret;
> > +}
> > +
> > +static bool scmi_base_set_notify_enabled(const struct scmi_handle *handle,
> > +					 u8 evt_id, u32 src_id, bool enable)
> > +{
> > +	int ret;
> > +
> > +	ret = scmi_base_error_notify(handle, enable);
> > +	if (ret)
> > +		pr_warn("SCMI Notifications - Proto:%X - FAIL_ENABLED - evt[%X] ret:%d\n",
> > +			SCMI_PROTOCOL_BASE, evt_id, ret);
> > +
> 
> I would make all these debug as they are not fatal. The users can decide
> if they are fatal and log it appropriately.
> 

Ok.

> > +	return !ret;
> > +}
> > +
> > +static void *scmi_base_fill_custom_report(const struct scmi_handle *handle,
> > +					  u8 evt_id, u64 timestamp,
> > +					  const void *payld, size_t payld_sz,
> > +					  void *report, u32 *src_id)
> > +{
> > +	void *rep = NULL;
> > +
> > +	switch (evt_id) {
> > +	case SCMI_EVENT_BASE_ERROR_EVENT:
> 
> Drop switch for now, just check for evt_id to be SCMI_EVENT_BASE_ERROR_EVENT.
> 

Ok
> > +	{
> > +		int i;
> > +		const struct scmi_base_error_notify_payld *p = payld;
> > +		struct scmi_base_error_report *r = report;
> > +
> > +		/*
> > +		 * BaseError notification payload is variable in size but
> > +		 * up to a maximum length determined by the struct ponted by p.
> > +		 * Instead payld_sz is the effective length of this notification
> > +		 * payload so cannot be greater of the maximum allowed size as
> > +		 * pointed by p.
> > +		 */
> > +		if (sizeof(*p) < payld_sz)
> > +			break;
> > +
> > +		r->timestamp = timestamp;
> > +		r->agent_id = le32_to_cpu(p->agent_id);
> > +		r->fatal = IS_FATAL_ERROR(le32_to_cpu(p->error_status));
> > +		r->cmd_count = ERROR_CMD_COUNT(le32_to_cpu(p->error_status));
> > +		for (i = 0; i < r->cmd_count; i++)
> > +			r->reports[i] = le64_to_cpu(p->msg_reports[i]);
> > +		*src_id = 0;
> > +		rep = r;
> > +		break;
> > +	}
> > +	default:
> > +		break;
> > +	}
> > +
> > +	return rep;
> > +}
> > +
> > +static const struct scmi_event base_events[] = {
> > +	{
> > +		.id = SCMI_EVENT_BASE_ERROR_EVENT,
> > +		.max_payld_sz = sizeof(struct scmi_base_error_notify_payld),
> > +		.max_report_sz = sizeof(struct scmi_base_error_report) +
> > +				  SCMI_BASE_MAX_CMD_ERR_COUNT * sizeof(u64),
> > +	},
> > +};
> > +
> > +static const struct scmi_protocol_event_ops base_event_ops = {
> > +	.set_notify_enabled = scmi_base_set_notify_enabled,
> > +	.fill_custom_report = scmi_base_fill_custom_report,
> > +};
> > +
> >  int scmi_base_protocol_init(struct scmi_handle *h)
> >  {
> >  	int id, ret;
> > @@ -256,6 +360,12 @@ int scmi_base_protocol_init(struct scmi_handle *h)
> >  	dev_dbg(dev, "Found %d protocol(s) %d agent(s)\n", rev->num_protocols,
> >  		rev->num_agents);
> >
> > +	scmi_register_protocol_events(handle,
> > +				      SCMI_PROTOCOL_BASE, (4 * PAGE_SIZE),
> 
> The size 4 * PAGE_SZ is not clear. For me this can't be more that
> max_msg_size.

This is the size required by this protocol for the per-protocol kfifo queue
allocation: it is anyway wrong as my aim was to default to 4k (or 16k for this
possibly jumbo sized packet), but this way is needlessly bound to the configured
PAGE_SIZE.

I'll introduce a define for a base 4k proto queue size and use that.

> 
> The comments in this patch applies to last 5 patches(all protocols basically)
> 

Ok I'll do.


Thanks

Cristian

> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
