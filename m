Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED9417E042
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgwwM0Lh0rlDYgE0mYfgUJ55ewMAqyG5HyDQIgoW050=; b=ucGXtau9DEAmnR
	9Jg3+ixBAKo/eEVZSO+UcJtNswnjTLBwihG9ekuSj5S4Vs0AdwcAwl2AhAoQRPWyS+uQCprIruNd2
	OnFwUST8RQY09uHp6FDL1BlPEMuYwHAXP8fmzIWtRkN0Bc/H2RTtok8AuIdn6MXU2olG/kn2d681l
	PYC8U/pP8m98xYlY+VS43gbZfI0tSTxVz4/vD5Vz+lOIOxwCZtZgGZSmJjne+4p2fbqFtKyS68NPD
	fRaFQZn0saCGJjzYNQ4IkLJCClwLOzBN0BYU5FJ/Nw1UiswqAO44YaJTnLNopj3eWdZzAhndmMeC3
	NLn1QbIpMgfzT9Pw3vDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHX7-0007iV-3C; Mon, 09 Mar 2020 12:29:21 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHWm-0007bR-O3
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:29:02 +0000
Received: from lhreml702-cah.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 25BE655240FDB99D9C3C;
 Mon,  9 Mar 2020 12:28:56 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml702-cah.china.huawei.com (10.201.108.43) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 9 Mar 2020 12:28:55 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Mon, 9 Mar 2020
 12:28:55 +0000
Date: Mon, 9 Mar 2020 12:28:53 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v4 09/13] firmware: arm_scmi: Add Power notifications
 support
Message-ID: <20200309122853.000019b0@Huawei.com>
In-Reply-To: <20200304162558.48836-10-cristian.marussi@arm.com>
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-10-cristian.marussi@arm.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml706-chm.china.huawei.com (10.201.108.55) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_052900_953143_8C8FA9EC 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Wed, 4 Mar 2020 16:25:54 +0000
Cristian Marussi <cristian.marussi@arm.com> wrote:

> Make SCMI Power protocol register with the notification core.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>

One comment inline on an unusual code construct, otherwise fine.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
> V3 --> V4
> - scmi_event field renamed
> V2 --> V3
> - added handle awareness
> V1 --> V2
> - simplified .set_notify_enabled() implementation moving the ALL_SRCIDs
>   logic out of protocol. ALL_SRCIDs logic is now in charge of the
>   notification core, together with proper reference counting of enables
> - switched to devres protocol-registration
> ---
>  drivers/firmware/arm_scmi/power.c | 123 ++++++++++++++++++++++++++++++
>  include/linux/scmi_protocol.h     |  15 ++++
>  2 files changed, 138 insertions(+)
> 
> diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
> index cf7f0312381b..281da7e7e33a 100644
> --- a/drivers/firmware/arm_scmi/power.c
> +++ b/drivers/firmware/arm_scmi/power.c
> @@ -6,6 +6,7 @@
>   */
>  
>  #include "common.h"
> +#include "notify.h"
>  
>  enum scmi_power_protocol_cmd {
>  	POWER_DOMAIN_ATTRIBUTES = 0x3,
> @@ -48,6 +49,12 @@ struct scmi_power_state_notify {
>  	__le32 notify_enable;
>  };
>  
> +struct scmi_power_state_notify_payld {
> +	__le32 agent_id;
> +	__le32 domain_id;
> +	__le32 power_state;
> +};
> +
>  struct power_dom_info {
>  	bool state_set_sync;
>  	bool state_set_async;
> @@ -63,6 +70,11 @@ struct scmi_power_info {
>  	struct power_dom_info *dom_info;
>  };
>  
> +static enum scmi_power_protocol_cmd evt_2_cmd[] = {
> +	POWER_STATE_NOTIFY,
> +	POWER_STATE_CHANGE_REQUESTED_NOTIFY,
> +};
> +
>  static int scmi_power_attributes_get(const struct scmi_handle *handle,
>  				     struct scmi_power_info *pi)
>  {
> @@ -186,6 +198,111 @@ static struct scmi_power_ops power_ops = {
>  	.state_get = scmi_power_state_get,
>  };
>  
> +static int scmi_power_request_notify(const struct scmi_handle *handle,
> +				     u32 domain, int message_id, bool enable)
> +{
> +	int ret;
> +	struct scmi_xfer *t;
> +	struct scmi_power_state_notify *notify;
> +
> +	ret = scmi_xfer_get_init(handle, message_id, SCMI_PROTOCOL_POWER,
> +				 sizeof(*notify), 0, &t);
> +	if (ret)
> +		return ret;
> +
> +	notify = t->tx.buf;
> +	notify->domain = cpu_to_le32(domain);
> +	notify->notify_enable = enable ? cpu_to_le32(BIT(0)) : 0;
> +
> +	ret = scmi_do_xfer(handle, t);
> +
> +	scmi_xfer_put(handle, t);
> +	return ret;
> +}
> +
> +static bool scmi_power_set_notify_enabled(const struct scmi_handle *handle,
> +					  u8 evt_id, u32 src_id, bool enable)
> +{
> +	int ret, cmd_id;
> +
> +	cmd_id = MAP_EVT_TO_ENABLE_CMD(evt_id, evt_2_cmd);
> +	if (cmd_id < 0)
> +		return false;
> +
> +	ret = scmi_power_request_notify(handle, src_id, cmd_id, enable);
> +	if (ret)
> +		pr_warn("SCMI Notifications - Proto:%X - FAIL_ENABLE - evt[%X] dom[%d] - ret:%d\n",
> +				SCMI_PROTOCOL_POWER, evt_id, src_id, ret);
> +
> +	return !ret ? true : false;

	return !ret;

	Is the same thing...

> +}
> +
> +static void *scmi_power_fill_custom_report(u8 evt_id, u64 timestamp,
> +					   const void *payld, size_t payld_sz,
> +					   void *report, u32 *src_id)
> +{
> +	void *rep = NULL;
> +
> +	switch (evt_id) {
> +	case POWER_STATE_CHANGED:
> +	{
> +		const struct scmi_power_state_notify_payld *p = payld;
> +		struct scmi_power_state_changed_report *r = report;
> +
> +		if (sizeof(*p) != payld_sz)
> +			break;
> +
> +		r->timestamp = timestamp;
> +		r->agent_id = le32_to_cpu(p->agent_id);
> +		r->domain_id = le32_to_cpu(p->domain_id);
> +		r->power_state = le32_to_cpu(p->power_state);
> +		*src_id = r->domain_id;
> +		rep = r;
> +		break;
> +	}
> +	case POWER_STATE_CHANGE_REQUESTED:
> +	{
> +		const struct scmi_power_state_notify_payld *p = payld;
> +		struct scmi_power_state_change_requested_report *r = report;
> +
> +		if (sizeof(*p) != payld_sz)
> +			break;
> +
> +		r->timestamp = timestamp;
> +		r->agent_id = le32_to_cpu(p->agent_id);
> +		r->domain_id = le32_to_cpu(p->domain_id);
> +		r->power_state = le32_to_cpu(p->power_state);
> +		*src_id = r->domain_id;
> +		rep = r;
> +		break;
> +	}
> +	default:
> +		break;
> +	}
> +
> +	return rep;
> +}
> +
> +static const struct scmi_event power_events[] = {
> +	{
> +		.id = POWER_STATE_CHANGED,
> +		.max_payld_sz = 12,
> +		.max_report_sz =
> +			sizeof(struct scmi_power_state_changed_report),
> +	},
> +	{
> +		.id = POWER_STATE_CHANGE_REQUESTED,
> +		.max_payld_sz = 12,
> +		.max_report_sz =
> +			sizeof(struct scmi_power_state_change_requested_report),
> +	},
> +};
> +
> +static const struct scmi_protocol_event_ops power_event_ops = {
> +	.set_notify_enabled = scmi_power_set_notify_enabled,
> +	.fill_custom_report = scmi_power_fill_custom_report,
> +};
> +
>  static int scmi_power_protocol_init(struct scmi_handle *handle)
>  {
>  	int domain;
> @@ -214,6 +331,12 @@ static int scmi_power_protocol_init(struct scmi_handle *handle)
>  		scmi_power_domain_attributes_get(handle, domain, dom);
>  	}
>  
> +	scmi_register_protocol_events(handle,
> +				      SCMI_PROTOCOL_POWER, PAGE_SIZE,
> +				      &power_event_ops, power_events,
> +				      ARRAY_SIZE(power_events),
> +				      pinfo->num_domains);
> +
>  	pinfo->version = version;
>  	handle->power_ops = &power_ops;
>  	handle->power_priv = pinfo;
> diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
> index 797e1e03ae52..baa117f9eda3 100644
> --- a/include/linux/scmi_protocol.h
> +++ b/include/linux/scmi_protocol.h
> @@ -377,4 +377,19 @@ typedef int (*scmi_prot_init_fn_t)(struct scmi_handle *);
>  int scmi_protocol_register(int protocol_id, scmi_prot_init_fn_t fn);
>  void scmi_protocol_unregister(int protocol_id);
>  
> +/* SCMI Notification API - Custom Event Reports */
> +struct scmi_power_state_changed_report {
> +	ktime_t	timestamp;
> +	u32	agent_id;
> +	u32	domain_id;
> +	u32	power_state;
> +};
> +
> +struct scmi_power_state_change_requested_report {
> +	ktime_t	timestamp;
> +	u32	agent_id;
> +	u32	domain_id;
> +	u32	power_state;
> +};
> +
>  #endif /* _LINUX_SCMI_PROTOCOL_H */



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
