Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1DD12D5D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 03:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBtRJh/jedHKJsB+ZlqjIzMXMzRyivYibsZEBwF5FW0=; b=LeS7cb3i8sQZ6c
	EpxPvrhuG93PuoZS3fPucKwRpQdWQnvDqfyovXZu5nephEuc0N+DtfyEIRbG7N8ocni/oSSuviTY4
	ckHRkpG6G8E2kmKxIHBRaR5UaB8kqKaRjk6gw0IqaSZ+sMCD5FC5cPbX8DpZxRn+N10g75dyY6Z5R
	h9Tb09vB9VH9NFuY+jm4uJ5IaILVCNhOzi7QIsw3kMUflwWzYJMkJqKSxe9rRmGgEvR1EoG3/VeF4
	aMHdBoKmUO0azc18GlP4reP4NgOW9wTl2Ahl0AOFrEGgxHIxyiKS8YMJtNuB4dwE1LjLyQNBtLGpb
	WjqtgiYvLAHEHsMwbybg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im7cc-0007r6-3k; Tue, 31 Dec 2019 02:51:02 +0000
Received: from mail-eopbgr50088.outbound.protection.outlook.com ([40.107.5.88]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im7cQ-0007qO-PS
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 02:50:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O5+8fC29klPPDlDNyjyk/8ytgsn4wrQqkYpIjy2PWBoDqSKf1APy9baTeurwx43ldnQrEsR3Np5cPZ5FXB0hSBmtZMsHw6K/iIi+F3ne7xIFwBpqMFq4AC8gitBFKLjgO4nbin0prqM1krECUBe7vgW8KhyJMPv7jwv1PRPscakRfziRUn4M7Ybp+7uKYfIPaNSpt8XG5k2RZEWy3c1CIsXf4TkDXBN6WN/vHYtj+LbKKMN5FOPhd584waakhrW6e6LKUsp7tHjjIhGSyXOqKNHW1YAbaoj0pMjb/wG0cx95IzzbIe6BsfY07qnMV6fF9XbrnqODdEJZSpon/UOpjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yg2YwtoB0oX3dU4fSMVW41zsk6Ec9oh2whax5ksk9FY=;
 b=aHViqkMTgX5YFASQsAQY1ZepxsFAKvudBVGkmkDu2TbwZHG/F160+cpdOWcRYyDV48Wfpk6gu0CYovEOzUekfasm2ju73mhj2zAdiNpam9mK2Mk/0d9p0iJONkZ6Vx2OFrCqsNHCrmaKDws4V8B8NwqRhF1KrqbQep1Dg9HPRKXfcMHytHNtfqxQztaIB6/EEi/hTWEKjO6zZKOTDWvwVH70NTFuUoLkfNS9iy4EMgr3ugo6mj0lIqPiQFMauWzExiGbFLVxyzjXx0RjkUqdxS3f2+waD/tIdc29mNgfW6+cv7wcqFvf5dMHkY9gs7upx5GMBUw13NtWxggtyGZhOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yg2YwtoB0oX3dU4fSMVW41zsk6Ec9oh2whax5ksk9FY=;
 b=Ug6X12I28LvJED3VeMGAlO/QsTyjJRtBmNslEV0buHrJ1vLf+Tm5I5D614Qar4M14HV050mF10DIIdYrtfh3Oh5dZ6uFwXEH0EyL+/1Jdxc2gFsCci5U7NKWZ4JxoZ+qtreSb/pCHe/pcxEqxI6+GzLXrHZGfTXyx1SvfNd6JW4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5457.eurprd04.prod.outlook.com (20.178.113.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Tue, 31 Dec 2019 02:50:40 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58%6]) with mapi id 15.20.2581.007; Tue, 31 Dec 2019
 02:50:40 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Thread-Topic: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Thread-Index: AQHVppfygI23RUpETUWFTxolQ+nTs6fTvJtw
Date: Tue, 31 Dec 2019 02:50:40 +0000
Message-ID: <AM0PR04MB44817F7C0FB0E6D417823B4A88260@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
In-Reply-To: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 354152b2-85f3-475a-c669-08d78d9c391a
x-ms-traffictypediagnostic: AM0PR04MB5457:
x-microsoft-antispam-prvs: <AM0PR04MB5457956164ADFC833FF6F35288260@AM0PR04MB5457.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0268246AE7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(376002)(346002)(396003)(199004)(189003)(5660300002)(966005)(478600001)(4326008)(33656002)(2906002)(66556008)(64756008)(66446008)(66476007)(66946007)(44832011)(76116006)(54906003)(30864003)(45080400002)(26005)(110136005)(186003)(81166006)(81156014)(7696005)(55016002)(6506007)(316002)(71200400001)(8936002)(86362001)(52536014)(8676002)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5457;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 46p85NN7TPaCvXe3nk7bIHQGJFVMPBNN9PxZlTe5ZR+SkajcYTpr+WCJMl0zfOAz6znJnCjj5dQA8oGKBEybPuuYCHmsOyb9F/CL4hsHcqyBUPCougfqmM/TOs1DDE5Auycirs/tHZ2xCVuNAAMCCK9AmSzfYG6jmU5J7WljpIrp7D1dJaZDsvgiBE6sJo5MoQK9VwPG47EJ2XLN23uHz6nJ3UgPVCkHV/JxSCw3H9fg+bbqzPMO4s/+ud9J6ocicVQmIdcFi2cP1Gjidlpr6r4dNhYKGE9Ud+70EDm2EwdCqX3FNYYvM5JSEKLuSkYTto/OWjB4H6efcOL3cFF9F4pBTd9JNmcARWd6CVS6/E1/e+hloGsgpZENnpukT9NUtMr6vNC48WVIC3xCbcgEGRXLcE0hS1lbyR76VCsBWksaFGED5zTyUvC+uGz2xKSN6A1DrJhWXeYVyy87sUksbaVa0jqR97oD2sGiu+seKaA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 354152b2-85f3-475a-c669-08d78d9c391a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Dec 2019 02:50:40.6696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 98t1AGJvk4sCG6kE57rSTFIiPzTcEEAtgBcVn9jRCicPphobLV4aZOq9sa/8XfiE+m+JCtuJkfQq/l6AigV27Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5457
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_185051_188675_8A89EEF5 
X-CRM114-Status: GOOD (  23.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Subject: [PATCH] firmware: arm_scmi: Make scmi core independent of
> transport type
> 
> The SCMI specification is fairly independent of the transport protocol, which
> can be a simple mailbox (already implemented) or anything else.
> The current Linux implementation however is very much dependent of the
> mailbox transport layer.
> 
> This patch makes the SCMI core code (driver.c) independent of the mailbox
> transport layer and moves all mailbox related code to a new
> file: mailbox.c.
> 
> We can now implement more transport protocols to transport SCMI
> messages.
> 
> The transport protocols just need to provide struct scmi_transport_ops, with
> its version of the callbacks to enable exchange of SCMI messages.

Will there be v2? will this be used to replace smc mailbox?

Thanks,
Peng.

> 
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  drivers/firmware/arm_scmi/Makefile  |   3 +-
>  drivers/firmware/arm_scmi/common.h  |  39 ++++++++
> drivers/firmware/arm_scmi/driver.c  | 143 ++++++++++-----------------
> drivers/firmware/arm_scmi/mailbox.c | 146
> ++++++++++++++++++++++++++++
>  4 files changed, 236 insertions(+), 95 deletions(-)  create mode 100644
> drivers/firmware/arm_scmi/mailbox.c
> 
> diff --git a/drivers/firmware/arm_scmi/Makefile
> b/drivers/firmware/arm_scmi/Makefile
> index 5f298f00a82e..df2c05a545d8 100644
> --- a/drivers/firmware/arm_scmi/Makefile
> +++ b/drivers/firmware/arm_scmi/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> -obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o
> +obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o scmi-transport.o
>  scmi-bus-y = bus.o
>  scmi-driver-y = driver.o
> +scmi-transport-y = mailbox.o
>  scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
>  obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o diff
> --git a/drivers/firmware/arm_scmi/common.h
> b/drivers/firmware/arm_scmi/common.h
> index 5237c2ff79fe..e11314146e67 100644
> --- a/drivers/firmware/arm_scmi/common.h
> +++ b/drivers/firmware/arm_scmi/common.h
> @@ -111,3 +111,42 @@ void scmi_setup_protocol_implemented(const
> struct scmi_handle *handle,
>  				     u8 *prot_imp);
> 
>  int scmi_base_protocol_init(struct scmi_handle *h);
> +
> +/* SCMI Transport */
> +
> +/**
> + * struct scmi_chan_info - Structure representing a SCMI channel
> +information
> + *
> + * @payload: Transmit/Receive payload area
> + * @dev: Reference to device in the SCMI hierarchy corresponding to this
> + *	 channel
> + * @handle: Pointer to SCMI entity handle
> + * @transport_info: Transport layer related information  */ struct
> +scmi_chan_info {
> +	void __iomem *payload;
> +	struct device *dev;
> +	struct scmi_handle *handle;
> +	void *transport_info;
> +};
> +
> +/**
> + * struct scmi_transport_ops - Structure representing a SCMI transport
> +ops
> + *
> + * @send_message: Callback to send a message
> + * @mark_txdone: Callback to mark tx as done
> + * @chan_setup: Callback to allocate and setup a channel
> + * @chan_free: Callback to free a channel  */ struct scmi_transport_ops
> +{
> +	bool (*chan_available)(struct device *dev, int idx);
> +	int (*chan_setup)(struct scmi_chan_info *cinfo, bool tx);
> +	int (*chan_free)(int id, void *p, void *data);
> +	int (*send_message)(struct scmi_chan_info *cinfo, struct scmi_xfer
> *xfer);
> +	void (*mark_txdone)(struct scmi_chan_info *cinfo, int ret); };
> +
> +void scmi_tx_prepare(struct scmi_chan_info *cinfo, struct scmi_xfer
> +*t); void scmi_rx_callback(struct scmi_chan_info *cinfo, struct
> +scmi_xfer *t); void scmi_free_channel(struct scmi_chan_info *cinfo,
> +struct idr *idr, int id); struct scmi_transport_ops
> +*scmi_mailbox_get_ops(struct device *dev);
> diff --git a/drivers/firmware/arm_scmi/driver.c
> b/drivers/firmware/arm_scmi/driver.c
> index 3eb0382491ce..dfdd12f3dd8b 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -19,7 +19,6 @@
>  #include <linux/io.h>
>  #include <linux/kernel.h>
>  #include <linux/ktime.h>
> -#include <linux/mailbox_client.h>
>  #include <linux/module.h>
>  #include <linux/of_address.h>
>  #include <linux/of_device.h>
> @@ -91,24 +90,6 @@ struct scmi_desc {
>  	int max_msg_size;
>  };
> 
> -/**
> - * struct scmi_chan_info - Structure representing a SCMI channel information
> - *
> - * @cl: Mailbox Client
> - * @chan: Transmit/Receive mailbox channel
> - * @payload: Transmit/Receive mailbox channel payload area
> - * @dev: Reference to device in the SCMI hierarchy corresponding to this
> - *	 channel
> - * @handle: Pointer to SCMI entity handle
> - */
> -struct scmi_chan_info {
> -	struct mbox_client cl;
> -	struct mbox_chan *chan;
> -	void __iomem *payload;
> -	struct device *dev;
> -	struct scmi_handle *handle;
> -};
> -
>  /**
>   * struct scmi_info - Structure representing a SCMI instance
>   *
> @@ -128,6 +109,7 @@ struct scmi_chan_info {  struct scmi_info {
>  	struct device *dev;
>  	const struct scmi_desc *desc;
> +	struct scmi_transport_ops *transport_ops;
>  	struct scmi_revision_info version;
>  	struct scmi_handle handle;
>  	struct scmi_xfers_info tx_minfo;
> @@ -138,7 +120,6 @@ struct scmi_info {
>  	int users;
>  };
> 
> -#define client_to_scmi_chan_info(c) container_of(c, struct scmi_chan_info,
> cl)
>  #define handle_to_scmi_info(h)	container_of(h, struct scmi_info, handle)
> 
>  /*
> @@ -233,18 +214,16 @@ static inline void unpack_scmi_header(u32
> msg_hdr, struct scmi_msg_hdr *hdr)  }
> 
>  /**
> - * scmi_tx_prepare() - mailbox client callback to prepare for the transfer
> + * scmi_tx_prepare() - callback to prepare for the transfer
>   *
> - * @cl: client pointer
> - * @m: mailbox message
> + * @cinfo: SCMI channel info
> + * @t: transfer message
>   *
>   * This function prepares the shared memory which contains the header and
> the
>   * payload.
>   */
> -static void scmi_tx_prepare(struct mbox_client *cl, void *m)
> +void scmi_tx_prepare(struct scmi_chan_info *cinfo, struct scmi_xfer *t)
>  {
> -	struct scmi_xfer *t = m;
> -	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
>  	struct scmi_shared_mem __iomem *mem = cinfo->payload;
> 
>  	/*
> @@ -332,10 +311,10 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo,
> struct scmi_xfer *xfer)  }
> 
>  /**
> - * scmi_rx_callback() - mailbox client callback for receive messages
> + * scmi_rx_callback() - callback for receive messages
>   *
> - * @cl: client pointer
> - * @m: mailbox message
> + * @cinfo: SCMI channel info
> + * @t: transfer message
>   *
>   * Processes one received message to appropriate transfer information and
>   * signals completion of the transfer.
> @@ -343,13 +322,12 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo,
> struct scmi_xfer *xfer)
>   * NOTE: This function will be invoked in IRQ context, hence should be
>   * as optimal as possible.
>   */
> -static void scmi_rx_callback(struct mbox_client *cl, void *m)
> +void scmi_rx_callback(struct scmi_chan_info *cinfo, struct scmi_xfer
> +*t)
>  {
>  	u8 msg_type;
>  	u32 msg_hdr;
>  	u16 xfer_id;
>  	struct scmi_xfer *xfer;
> -	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
>  	struct device *dev = cinfo->dev;
>  	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
>  	struct scmi_xfers_info *minfo = &info->tx_minfo; @@ -439,15 +417,12
> @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer
> *xfer)
>  	if (unlikely(!cinfo))
>  		return -EINVAL;
> 
> -	ret = mbox_send_message(cinfo->chan, xfer);
> +	ret = info->transport_ops->send_message(cinfo, xfer);
>  	if (ret < 0) {
> -		dev_dbg(dev, "mbox send fail %d\n", ret);
> +		dev_dbg(dev, "Failed to send message %d\n", ret);
>  		return ret;
>  	}
> 
> -	/* mbox_send_message returns non-negative value on success, so reset
> */
> -	ret = 0;
> -
>  	if (xfer->hdr.poll_completion) {
>  		ktime_t stop = ktime_add_ns(ktime_get(),
> SCMI_MAX_POLL_TO_NS);
> 
> @@ -461,7 +436,7 @@ int scmi_do_xfer(const struct scmi_handle *handle,
> struct scmi_xfer *xfer)
>  		/* And we wait for the response. */
>  		timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms);
>  		if (!wait_for_completion_timeout(&xfer->done, timeout)) {
> -			dev_err(dev, "mbox timed out in resp(caller: %pS)\n",
> +			dev_err(dev, "timed out in resp(caller: %pS)\n",
>  				(void *)_RET_IP_);
>  			ret = -ETIMEDOUT;
>  		}
> @@ -470,13 +445,7 @@ int scmi_do_xfer(const struct scmi_handle *handle,
> struct scmi_xfer *xfer)
>  	if (!ret && xfer->hdr.status)
>  		ret = scmi_to_linux_errno(xfer->hdr.status);
> 
> -	/*
> -	 * NOTE: we might prefer not to need the mailbox ticker to manage the
> -	 * transfer queueing since the protocol layer queues things by itself.
> -	 * Unfortunately, we have to kick the mailbox framework after we have
> -	 * received our message.
> -	 */
> -	mbox_client_txdone(cinfo->chan, ret);
> +	info->transport_ops->mark_txdone(cinfo, ret);
> 
>  	return ret;
>  }
> @@ -713,21 +682,14 @@ static int scmi_xfer_info_init(struct scmi_info
> *sinfo)
>  	return 0;
>  }
> 
> -static int scmi_mailbox_check(struct device_node *np, int idx) -{
> -	return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells",
> -					  idx, NULL);
> -}
> -
> -static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
> -				int prot_id, bool tx)
> +static int scmi_chan_setup(struct scmi_info *info, struct device *dev,
> +			   int prot_id, bool tx)
>  {
>  	int ret, idx;
>  	struct resource res;
>  	resource_size_t size;
> -	struct device_node *shmem, *np = dev->of_node;
> +	struct device_node *shmem;
>  	struct scmi_chan_info *cinfo;
> -	struct mbox_client *cl;
>  	struct idr *idr;
>  	const char *desc = tx ? "Tx" : "Rx";
> 
> @@ -735,7 +697,7 @@ static int scmi_mbox_chan_setup(struct scmi_info
> *info, struct device *dev,
>  	idx = tx ? 0 : 1;
>  	idr = tx ? &info->tx_idr : &info->rx_idr;
> 
> -	if (scmi_mailbox_check(np, idx)) {
> +	if (!info->transport_ops->chan_available(dev, idx)) {
>  		cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
>  		if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
>  			return -EINVAL;
> @@ -748,14 +710,7 @@ static int scmi_mbox_chan_setup(struct scmi_info
> *info, struct device *dev,
> 
>  	cinfo->dev = dev;
> 
> -	cl = &cinfo->cl;
> -	cl->dev = dev;
> -	cl->rx_callback = scmi_rx_callback;
> -	cl->tx_prepare = tx ? scmi_tx_prepare : NULL;
> -	cl->tx_block = false;
> -	cl->knows_txdone = tx;
> -
> -	shmem = of_parse_phandle(np, "shmem", idx);
> +	shmem = of_parse_phandle(dev->of_node, "shmem", idx);
>  	ret = of_address_to_resource(shmem, 0, &res);
>  	of_node_put(shmem);
>  	if (ret) {
> @@ -770,14 +725,9 @@ static int scmi_mbox_chan_setup(struct scmi_info
> *info, struct device *dev,
>  		return -EADDRNOTAVAIL;
>  	}
> 
> -	cinfo->chan = mbox_request_channel(cl, idx);
> -	if (IS_ERR(cinfo->chan)) {
> -		ret = PTR_ERR(cinfo->chan);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "failed to request SCMI %s mailbox\n",
> -				desc);
> +	ret = info->transport_ops->chan_setup(cinfo, tx);
> +	if (ret)
>  		return ret;
> -	}
> 
>  idr_alloc:
>  	ret = idr_alloc(idr, cinfo, prot_id, prot_id + 1, GFP_KERNEL); @@ -791,12
> +741,12 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct
> device *dev,  }
> 
>  static inline int
> -scmi_mbox_txrx_setup(struct scmi_info *info, struct device *dev, int prot_id)
> +scmi_txrx_setup(struct scmi_info *info, struct device *dev, int
> +prot_id)
>  {
> -	int ret = scmi_mbox_chan_setup(info, dev, prot_id, true);
> +	int ret = scmi_chan_setup(info, dev, prot_id, true);
> 
>  	if (!ret) /* Rx is optional, hence no error check */
> -		scmi_mbox_chan_setup(info, dev, prot_id, false);
> +		scmi_chan_setup(info, dev, prot_id, false);
> 
>  	return ret;
>  }
> @@ -814,7 +764,7 @@ scmi_create_protocol_device(struct device_node *np,
> struct scmi_info *info,
>  		return;
>  	}
> 
> -	if (scmi_mbox_txrx_setup(info, &sdev->dev, prot_id)) {
> +	if (scmi_txrx_setup(info, &sdev->dev, prot_id)) {
>  		dev_err(&sdev->dev, "failed to setup transport\n");
>  		scmi_device_destroy(sdev);
>  		return;
> @@ -824,6 +774,23 @@ scmi_create_protocol_device(struct device_node
> *np, struct scmi_info *info,
>  	scmi_set_handle(sdev);
>  }
> 
> +static int scmi_set_transport_ops(struct scmi_info *info) {
> +	struct scmi_transport_ops *ops;
> +	struct device *dev = info->dev;
> +
> +	/* Only mailbox method supported for now */
> +	ops = scmi_mailbox_get_ops(dev);
> +	if (!ops) {
> +		dev_err(dev, "Transport protocol not found in %pOF\n",
> +			dev->of_node);
> +		return -EINVAL;
> +	}
> +
> +	info->transport_ops = ops;
> +	return 0;
> +}
> +
>  static int scmi_probe(struct platform_device *pdev)  {
>  	int ret;
> @@ -833,12 +800,6 @@ static int scmi_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct device_node *child, *np = dev->of_node;
> 
> -	/* Only mailbox method supported, check for the presence of one */
> -	if (scmi_mailbox_check(np, 0)) {
> -		dev_err(dev, "no mailbox found in %pOF\n", np);
> -		return -EINVAL;
> -	}
> -
>  	desc = of_device_get_match_data(dev);
>  	if (!desc)
>  		return -EINVAL;
> @@ -851,6 +812,10 @@ static int scmi_probe(struct platform_device *pdev)
>  	info->desc = desc;
>  	INIT_LIST_HEAD(&info->node);
> 
> +	ret = scmi_set_transport_ops(info);
> +	if (ret)
> +		return ret;
> +
>  	ret = scmi_xfer_info_init(info);
>  	if (ret)
>  		return ret;
> @@ -863,7 +828,7 @@ static int scmi_probe(struct platform_device *pdev)
>  	handle->dev = info->dev;
>  	handle->version = &info->version;
> 
> -	ret = scmi_mbox_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
> +	ret = scmi_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
>  	if (ret)
>  		return ret;
> 
> @@ -898,19 +863,9 @@ static int scmi_probe(struct platform_device *pdev)
>  	return 0;
>  }
> 
> -static int scmi_mbox_free_channel(int id, void *p, void *data)
> +void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr,
> +int id)
>  {
> -	struct scmi_chan_info *cinfo = p;
> -	struct idr *idr = data;
> -
> -	if (!IS_ERR_OR_NULL(cinfo->chan)) {
> -		mbox_free_channel(cinfo->chan);
> -		cinfo->chan = NULL;
> -	}
> -
>  	idr_remove(idr, id);
> -
> -	return 0;
>  }
> 
>  static int scmi_remove(struct platform_device *pdev) @@ -930,11 +885,11
> @@ static int scmi_remove(struct platform_device *pdev)
>  		return ret;
> 
>  	/* Safe to free channels since no more users */
> -	ret = idr_for_each(idr, scmi_mbox_free_channel, idr);
> +	ret = idr_for_each(idr, info->transport_ops->chan_free, idr);
>  	idr_destroy(&info->tx_idr);
> 
>  	idr = &info->rx_idr;
> -	ret = idr_for_each(idr, scmi_mbox_free_channel, idr);
> +	ret = idr_for_each(idr, info->transport_ops->chan_free, idr);
>  	idr_destroy(&info->rx_idr);
> 
>  	return ret;
> diff --git a/drivers/firmware/arm_scmi/mailbox.c
> b/drivers/firmware/arm_scmi/mailbox.c
> new file mode 100644
> index 000000000000..d9d301df5cc9
> --- /dev/null
> +++ b/drivers/firmware/arm_scmi/mailbox.c
> @@ -0,0 +1,146 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * System Control and Management Interface (SCMI) Message Mailbox
> +Transport driver
> + *
> + * Copyright (C) 2019 ARM Ltd.
> + */
> +
> +#include <linux/err.h>
> +#include <linux/device.h>
> +#include <linux/mailbox_client.h>
> +#include <linux/of.h>
> +#include <linux/slab.h>
> +
> +#include "common.h"
> +
> +/**
> + * struct scmi_mailbox - Structure representing a SCMI mailbox
> +transport
> + *
> + * @cl: Mailbox Client
> + * @chan: Transmit/Receive mailbox channel
> + * @cinfo: SCMI channel info
> + */
> +struct scmi_mailbox {
> +	struct mbox_client cl;
> +	struct mbox_chan *chan;
> +	struct scmi_chan_info *cinfo;
> +};
> +
> +#define client_to_scmi_mailbox(c) container_of(c, struct scmi_mailbox,
> +cl)
> +
> +static bool mailbox_chan_available(struct device *dev, int idx) {
> +	return !of_parse_phandle_with_args(dev->of_node, "mboxes",
> +					   "#mbox-cells", idx, NULL);
> +}
> +
> +static void mailbox_tx_prepare(struct mbox_client *cl, void *m) {
> +	struct scmi_mailbox *smbox = client_to_scmi_mailbox(cl);
> +	struct scmi_chan_info *cinfo = smbox->cinfo;
> +
> +	scmi_tx_prepare(cinfo, m);
> +}
> +
> +static void mailbox_rx_callback(struct mbox_client *cl, void *m) {
> +	struct scmi_mailbox *smbox = client_to_scmi_mailbox(cl);
> +	struct scmi_chan_info *cinfo = smbox->cinfo;
> +
> +	scmi_rx_callback(cinfo, m);
> +}
> +
> +static int mailbox_chan_setup(struct scmi_chan_info *cinfo, bool tx) {
> +	struct device *dev = cinfo->dev;
> +	struct scmi_mailbox *smbox;
> +	struct mbox_client *cl;
> +	int ret;
> +
> +	smbox = devm_kzalloc(dev, sizeof(*smbox), GFP_KERNEL);
> +	if (!smbox)
> +		return -ENOMEM;
> +
> +	cl = &smbox->cl;
> +	cl->dev = dev;
> +	cl->tx_prepare = tx ? mailbox_tx_prepare : NULL;
> +	cl->rx_callback = mailbox_rx_callback;
> +	cl->tx_block = false;
> +	cl->knows_txdone = tx;
> +
> +	smbox->chan = mbox_request_channel(cl, tx ? 0 : 1);
> +	if (IS_ERR(smbox->chan)) {
> +		ret = PTR_ERR(smbox->chan);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "failed to request SCMI %s mailbox\n",
> +				tx ? "Tx" : "Rx");
> +		return ret;
> +	}
> +
> +	cinfo->transport_info = smbox;
> +	smbox->cinfo = cinfo;
> +
> +	return 0;
> +}
> +
> +static int mailbox_chan_free(int id, void *p, void *data) {
> +	struct scmi_chan_info *cinfo = p;
> +	struct scmi_mailbox *smbox = cinfo->transport_info;
> +
> +	if (!IS_ERR_OR_NULL(smbox->chan)) {
> +		mbox_free_channel(smbox->chan);
> +		cinfo->transport_info = NULL;
> +		smbox->chan = NULL;
> +		smbox->cinfo = NULL;
> +	}
> +
> +	scmi_free_channel(cinfo, data, id);
> +
> +	return 0;
> +}
> +
> +static int mailbox_send_message(struct scmi_chan_info *cinfo,
> +			struct scmi_xfer *xfer)
> +{
> +	struct scmi_mailbox *smbox = cinfo->transport_info;
> +	int ret;
> +
> +	ret = mbox_send_message(smbox->chan, xfer);
> +
> +	/* mbox_send_message returns non-negative value on success, so reset
> */
> +	if (ret > 0)
> +		ret = 0;
> +
> +	return ret;
> +}
> +
> +static void mailbox_mark_txdone(struct scmi_chan_info *cinfo, int ret)
> +{
> +	struct scmi_mailbox *smbox = cinfo->transport_info;
> +
> +	/*
> +	 * NOTE: we might prefer not to need the mailbox ticker to manage the
> +	 * transfer queueing since the protocol layer queues things by itself.
> +	 * Unfortunately, we have to kick the mailbox framework after we have
> +	 * received our message.
> +	 */
> +	mbox_client_txdone(smbox->chan, ret);
> +}
> +
> +static struct scmi_transport_ops scmi_mailbox_ops = {
> +	.chan_available = mailbox_chan_available,
> +	.chan_setup = mailbox_chan_setup,
> +	.chan_free = mailbox_chan_free,
> +	.send_message = mailbox_send_message,
> +	.mark_txdone = mailbox_mark_txdone,
> +};
> +
> +struct scmi_transport_ops *scmi_mailbox_get_ops(struct device *dev) {
> +	if (!of_parse_phandle_with_args(dev->of_node, "mboxes",
> "#mbox-cells",
> +					0, NULL))
> +		return &scmi_mailbox_ops;
> +
> +	return NULL;
> +}
> --
> 2.21.0.rc0.269.g1a574e7a288b
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infr
> adead.org%2Fmailman%2Flistinfo%2Flinux-arm-kernel&amp;data=02%7C01
> %7Cpeng.fan%40nxp.com%7C8fe2d24d2ab54103882208d774af1406%7C686
> ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637106167622251045&a
> mp;sdata=q74lMDic9eolz1JhL2Iple8wz1KxNEDq0BbHkh1QfRU%3D&amp;res
> erved=0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
