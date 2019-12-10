Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B46118F15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 18:33:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q/ir8sFi0dhs4+pG9Xjg2/FbwLUNYRppwkJi3qZI7EU=; b=V7WwNzeLKW0A+x6I2MQpAz0ZQt
	/zW7dAIaD2QKhDswvTC+OkuhhmXo1keP8zKs2zBpbGuvL1uswDMSHVUJhvtRkNWJe5JUOsuFsDl2n
	kmUXd4grx8bozuyjYq2WR7S6Dr85SUMybt7JQCCOM/aRmOOSVR4pP7/UELapahxGGXashh7sUiiTg
	fR6wwfvPx6wrE6bj6lS0Q2jY5b2uZwWfCJzucIhX0EpM+DlXTN7cg7EG8rV+xWauFrzSnWmiEyJzt
	t2lOYNW2h7fo8i4/mW8afmj86rd0cfVFqJomtlQExMGFKHuax2j9eh3M4x6e/NGOO1ktCcD7XKuqc
	hPoNigbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iejOM-0000pp-AS; Tue, 10 Dec 2019 17:33:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iejOF-0000ox-TC
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 17:33:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 310D91FB;
 Tue, 10 Dec 2019 09:33:37 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA6E93F6CF;
 Tue, 10 Dec 2019 09:33:36 -0800 (PST)
Subject: Re: [PATCH 02/15] firmware: arm_scmi: Skip scmi mbox channel setup
 for addtional devices
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-3-sudeep.holla@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <23168005-1326-e535-4dd7-fdab481b08ac@arm.com>
Date: Tue, 10 Dec 2019 17:33:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210145345.11616-3-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_093339_981631_8EEC81F4 
X-CRM114-Status: GOOD (  14.83  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/12/2019 14:53, Sudeep Holla wrote:
> Now that the scmi bus supports adding multiple devices per protocol,
> and since scmi_create_protocol_device calls scmi_mbox_chan_setup,
> we must avoid allocating and initialising the mbox channel if it is
> already initialised.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/driver.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index dee7ce3bd815..2952fcd8dd8a 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -735,6 +735,11 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
>  	idx = tx ? 0 : 1;
>  	idr = tx ? &info->tx_idr : &info->rx_idr;
> 
> +	/* check if already allocated, used for multiple device per protocol */
> +	cinfo = idr_find(idr, prot_id);
> +	if (cinfo)
> +		return 0;
> +
>  	if (scmi_mailbox_check(np, idx)) {
>  		cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
>  		if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
> --
> 2.17.1
> 

Fine for me.

Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>


Cristian


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
