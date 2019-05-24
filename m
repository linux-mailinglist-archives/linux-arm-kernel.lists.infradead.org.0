Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E5729A0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 16:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3HEoxLA3p+kAqbJ0hoHFK+97ntZOeh3yiIdinKhDEtY=; b=YW1GkcT8rFDC5K
	5q7zPus6iawpPitC78+bwf221PKJJg4K0YzT/I5YnBOdmiwj/Nv9R+GQBi9AMXTeezVDk+MnnjrN/
	VXLcIq7dBE+kB2nqXccg7AHsBWWcTvSfXH/d37GpJ3VosH/btRD6h2Yv065u10etCnO2EdaqxaKZz
	HquZZqv55LeLSaARfsfSwcXrC26Zq8CZjvn3Rz9t+MMXFFN4B0lqjz5TmncVkAOv2oxghN+JSbUl9
	fuZurtrPU0Y1cGpL3zEbmpOxG8W2NswjhlAcde3ZAeKVaaBdUwdvohympUkuE9flhZ/Cb8BrcXuDi
	lGUtWUMCrN4FbOVrXX/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUB9g-0007cV-49; Fri, 24 May 2019 14:26:44 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUB9W-0007bP-Pk
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 14:26:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 234CAA78;
 Fri, 24 May 2019 07:26:34 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E36243F575;
 Fri, 24 May 2019 07:26:32 -0700 (PDT)
Date: Fri, 24 May 2019 15:26:30 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] firmware: arm_scmi: clock: set rate_discrete
Message-ID: <20190524142630.GB4408@e107155-lin>
References: <20190522102912.1032-1-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522102912.1032-1-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_072634_840529_2DD75218 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 10:15:21AM +0000, Peng Fan wrote:
> The rate_discrete needs to be assigned to clk->rate_discrete,
> then scmi_clk_round_rate could get the value.
>

Thanks for the fix, applied.

> Fixes: 5f6c6430e904 ("firmware: arm_scmi: add initial support for clock protocol")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/firmware/arm_scmi/clock.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
> index 30fc04e28431..0a194af92438 100644
> --- a/drivers/firmware/arm_scmi/clock.c
> +++ b/drivers/firmware/arm_scmi/clock.c
> @@ -185,6 +185,8 @@ scmi_clock_describe_rates_get(const struct scmi_handle *handle, u32 clk_id,
>  	if (rate_discrete)
>  		clk->list.num_rates = tot_rate_cnt;
>  
> +	clk->rate_discrete = rate_discrete;
> +
>  err:
>  	scmi_xfer_put(handle, t);
>  	return ret;
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
