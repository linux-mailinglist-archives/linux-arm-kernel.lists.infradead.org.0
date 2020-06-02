Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E775C1EB990
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 12:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w8FMzjdzADfNqKk6V/Rj9Oc8J0A88JpgaQDkWQaIvlY=; b=Y2f/0NUqpsCASSl8T1GU6Icj8
	wLm72AYiObCOH+7wcZXQdmTegRpThEo0CxDlTtPSKR9SolUneAe/Y8oElLjk7PkmvPN8UJO3KFcv6
	aTm4jzbxXLACQVVgjoMCJiq15yO9CqxG8fGd6zOXm8H/nHdHDWyn6W7wYfUJJVhYBDvRBMLcZRh05
	EXNaV/lKdrlmCl1rjH7HZ+nsMibIvsP0RcK6Axg0PpjfwTrlL87ST+OpseSgHFqV0pIKxXFHL6oiA
	mt1AWWVGOvhb5uqtYSVp/N3oWEBUMop+sqBWcSCy0GKktYG2juMBVXC/0Fs+Ebh3nqHLXyKNARMcH
	vmZVszRfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg48P-0003Ls-6c; Tue, 02 Jun 2020 10:27:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg48I-0003LQ-LX
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 10:27:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD66031B;
 Tue,  2 Jun 2020 03:26:57 -0700 (PDT)
Received: from [10.37.12.77] (unknown [10.37.12.77])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7BD273F52E;
 Tue,  2 Jun 2020 03:26:53 -0700 (PDT)
Subject: Re: [PATCH v4 3/5] coresight: tmc: Update sink types for default
 selection.
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org, mathieu.poirier@linaro.org
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-4-mike.leach@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <5cb7d10b-5b5c-8c3f-de39-8a0ac087dadd@arm.com>
Date: Tue, 2 Jun 2020 11:31:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200526104642.9526-4-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_032658_745682_A0B1EF25 
X-CRM114-Status: GOOD (  16.13  )
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

On 05/26/2020 11:46 AM, Mike Leach wrote:
> An additional sink subtype is added to differentiate ETB/ETF buffer
> sinks and ETR type system memory sinks.
> 
> This allows the prioritised selection of default sinks.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

> ---
>   drivers/hwtracing/coresight/coresight-tmc.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
> index 39fba1d16e6e..0d2eb7e0e1bb 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
> @@ -484,7 +484,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
>   		break;
>   	case TMC_CONFIG_TYPE_ETR:
>   		desc.type = CORESIGHT_DEV_TYPE_SINK;
> -		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
> +		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_SYSMEM;
>   		desc.ops = &tmc_etr_cs_ops;
>   		ret = tmc_etr_setup_caps(dev, devid,
>   					 coresight_get_uci_data(id));
> @@ -496,6 +496,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
>   		break;
>   	case TMC_CONFIG_TYPE_ETF:
>   		desc.type = CORESIGHT_DEV_TYPE_LINKSINK;
> +		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
>   		desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_FIFO;
>   		desc.ops = &tmc_etf_cs_ops;
>   		dev_list = &etf_devs;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
