Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EB21173E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:17:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZrLFFZSnTCRkvwux9IF7quXBmw6b4JQBB8Mqra4q+c=; b=Fww1jRulpveEDt
	nMjNzb5PP5hSf4uBjfbfYHz+4liY4uz6A3yi3bnGkGihdjU9Fro449VMxwemSEC7om0oUdDZbIv/X
	WBpLdySOv/1rRXGdCzRhg7W65SY/g9YM8xvdo3DIMgukZvrMdbNHJIWnhrfCGkZ7yJ9oHzQrGn+bm
	pnBcd6IGk5Zs4cFxPUpTz37ji1i8OyPx2xhYbIVQoX8g6sVgccKlgkexNf7IEH3i2FXFHeiH9ib8C
	uRYgcnn4PTGDkXbrlvQPXXP+zIIOiIfuraHd+ElPdL6kCbVZURtcC8OnrWD6lHLE7AH9+V9XvXxF3
	neEAwkoEtx6t/XJExxGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNbE-0002aL-NP; Mon, 09 Dec 2019 18:17:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNXA-0005z7-1h
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:13:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A90081045;
 Mon,  9 Dec 2019 10:13:20 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC9453F6CF;
 Mon,  9 Dec 2019 10:13:19 -0800 (PST)
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <71417ba8-b844-ac96-bcad-4bf48fa8b869@arm.com>
Date: Mon, 9 Dec 2019 18:13:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101324_199759_B60491BF 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

a one minor nit, and one question about scmi_desc usage in this new transport
independent driver.

On 29/11/2019 09:31, Viresh Kumar wrote:
> The SCMI specification is fairly independent of the transport protocol,
> which can be a simple mailbox (already implemented) or anything else.
> The current Linux implementation however is very much dependent of the
> mailbox transport layer.
> 
> This patch makes the SCMI core code (driver.c) independent of the
> mailbox transport layer and moves all mailbox related code to a new
> file: mailbox.c.
> 
> We can now implement more transport protocols to transport SCMI
> messages.
> 
> The transport protocols just need to provide struct scmi_transport_ops,
> with its version of the callbacks to enable exchange of SCMI messages.
> 
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  drivers/firmware/arm_scmi/Makefile  |   3 +-
>  drivers/firmware/arm_scmi/common.h  |  39 ++++++++
>  drivers/firmware/arm_scmi/driver.c  | 143 ++++++++++-----------------
>  drivers/firmware/arm_scmi/mailbox.c | 146 ++++++++++++++++++++++++++++
>  4 files changed, 236 insertions(+), 95 deletions(-)
>  create mode 100644 drivers/firmware/arm_scmi/mailbox.c
> 

[snip]

>  /**
>   * struct scmi_info - Structure representing a SCMI instance
>   *
> @@ -128,6 +109,7 @@ struct scmi_chan_info {
>  struct scmi_info {
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

Could we add also the related @transport_ops in the above comment block ?

> -#define client_to_scmi_chan_info(c) container_of(c, struct scmi_chan_info, cl)
>  #define handle_to_scmi_info(h)	container_of(h, struct scmi_info, handle)
>  
>  /*

[snip]

> +
>  static int scmi_probe(struct platform_device *pdev)
>  {
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

This scmi_desc struct descriptor is retrieved from  of_match_table .data and points to
the driver-provided scmi_generic_desc

static const struct scmi_desc scmi_generic_desc = {
        .max_rx_timeout_ms = 30,        /* We may increase this if required */
        .max_msg = 20,          /* Limited by MBOX_TX_QUEUE_LEN */
        .max_msg_size = 128,
};

Is not this kind of information possibly (maybe partially) related to the selected
transport, and as such it should be also provided dynamically by the chosen transport
layer at probe time, like the transport_ops, instead of being hard-coded in
this driver ?

Thanks

Cristian



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
