Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CE5178E87
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 11:40:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IwVHWRJNlFWct3FUMoquWDVIRYWjaKggO3yuDgBg7hQ=; b=AiReCY1kIR5MwL
	nl1tQIxgjiCQgQeYuZ2fT/6AGlksd5sIOcyvID0EwSDrsg3xkTkeQMzNAuctT6RlALK6+dgBEluqw
	OQEuArWmfM7cEjnTmbVeV4X5hXa/20vneGQCE8EB2GbgIyIJbDsEDsNCO57gLsjbm0zwdibmOAiNB
	crKstWBCBpOov/Jwjc5ptIRH2Dj4Hi757rk5zHNz9WbT6imO5mqyBvo3RoliNmtZF9UsIyR+P4K7y
	DI/kGjl2LoPgOZLhCmw+XFSfTVg6QZ1euNFreq4/Q0oLjCzT4BB+8dajR5O6yyvoX8HvD+aNga07q
	iqN50TlbOq0A4GVUK68A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9RRy-0006k0-4I; Wed, 04 Mar 2020 10:40:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9RRr-0006j7-PI
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 10:40:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EBDD530E;
 Wed,  4 Mar 2020 02:40:13 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7FC03F534;
 Wed,  4 Mar 2020 02:40:12 -0800 (PST)
Date: Wed, 4 Mar 2020 10:40:05 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: peng.fan@nxp.com
Subject: Re: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
Message-ID: <20200304103954.GA25004@bogus>
References: <1583201219-15839-1-git-send-email-peng.fan@nxp.com>
 <1583201219-15839-3-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583201219-15839-3-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_024019_867485_BF620787 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, viresh.kumar@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 10:06:59AM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
>
> Take arm,smc-id as the 1st arg, leave the other args as zero for now.
> There is no Rx, only Tx because of smc/hvc not support Rx.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

[...]

> +static int smc_send_message(struct scmi_chan_info *cinfo,
> +			    struct scmi_xfer *xfer)
> +{
> +	struct scmi_smc *scmi_info = cinfo->transport_info;
> +	struct arm_smccc_res res;
> +
> +	shmem_tx_prepare(scmi_info->shmem, xfer);

How do we protect another thread/process on another CPU going and
modifying the same shmem with another request ? We may need notion
of channel with associated shmem and it is protected with some lock.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
