Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654EB1EBAB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 13:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xd7qCzllAPZ+NOBm7rcnrcsZbfcH/jUyoxfX5tgb6Zc=; b=bcjcTku2CnFejlaJSoI0ffv63
	PztLYt2INYYOVoHtrgyR9BpTLokvCfZq3QcA5QLBrLwu2i1Ygch3j5XSOJiPTofdjPwQK39aW7X1X
	NqbqfEb0Qj4sUYR7UKomiziSOtdKXoTyQR84iMenk/yXkFSs/ZDPQEkAaEEVZFsEZw5wItCiRwx6z
	cy1jJsM1sBqO+22kNUIQ/xgcwy4yuwRNQoNgSR1pUkfCGOia8ZBvFw/R80uGs/A8phteeep9YWSJ0
	51UzchbhZrWSJZ0ie4P+YGgpALkMlpNdgFgN8PxjUSqhlNWbBhvu1t7UaVx39aaX9bOs6ef3bj7tr
	OwGcOkRgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg5Nf-0002Xh-AV; Tue, 02 Jun 2020 11:46:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg5NE-0002Nb-4w
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 11:46:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E82531B;
 Tue,  2 Jun 2020 04:46:27 -0700 (PDT)
Received: from [10.37.12.77] (unknown [10.37.12.77])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 166CD3F52E;
 Tue,  2 Jun 2020 04:46:19 -0700 (PDT)
Subject: Re: [PATCH v4 5/5] coresight: sysfs: Allow select default sink on
 source enable.
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org, mathieu.poirier@linaro.org
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-6-mike.leach@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <62411834-9273-e46c-dc34-71ae45013b96@arm.com>
Date: Tue, 2 Jun 2020 12:51:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200526104642.9526-6-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_044628_231900_0D1615DE 
X-CRM114-Status: GOOD (  20.16  )
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
Cc: acme@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On 05/26/2020 11:46 AM, Mike Leach wrote:
> When enabling a trace source using sysfs, allow the CoreSight system to
> auto-select a default sink if none has been enabled by the user.
> 
> Uses the sink select algorithm that uses the default select priorities
> set when sinks are registered with the system. At present this will
> prefer ETR over ETB / ETF.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>   drivers/hwtracing/coresight/coresight.c | 11 +++++++++--
>   1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 7632d060e25d..bd1a52a65d00 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -965,8 +965,15 @@ int coresight_enable(struct coresight_device *csdev)
>   	 */
>   	sink = coresight_get_enabled_sink(false);
>   	if (!sink) {
> -		ret = -EINVAL;
> -		goto out;
> +		/* look for a default sink if nothing enabled */
> +		sink = coresight_find_default_sink(csdev);
> +		if (!sink) {
> +			ret = -EINVAL;
> +			goto out;
> +		}
> +		/* mark the default as enabled */
> +		sink->activated = true;
> +		dev_info(&sink->dev, "Enabled default sink.");
>   	}

To be honest, I would drop this change and mandate that the
user enables the sink(s). There is no way to reliably match
which ETM is tracing to the sink above in case multiple ETMs
are being enabled, even with the above message. It is important
for sysfs mode, as the user must collect the trace data manually,
unlike the perf mode where the race data is collected and presented to
the user via memory buffers.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
