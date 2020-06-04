Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CA81EED3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ly6+gHkff7Qo2pohQKhfn7pnVT2PXI3MCcp9Px5JCAs=; b=nmB3oE545fXms9
	zVB+P+iw8YFM4KDlSzpQfbyBkjxsns2GgBSR6QexbGFXfK2+1pc0oPdGAJsKTzc2DkvdpOP7CU5ZG
	+RbxCX8MLX1o0LOKs8iKzhC3TqZglZBAv5iXMZ7SOvYcY0mtUId4x2qYsZZ1JlPZ1VOw3sp1BXN8U
	/xXG0sZmAs19SCGFF14CQnzVsQDE24R8nBwxWftaRifBG596WU4GtQd5sfV4umghTKGOKv/I0SnhD
	VFfiwEGPfjFH5q4z9fxOXxdiZgAOoJCzskat+B4DvaUjEWB/VYg/YLTRWj1apVgHb55OkI8XDKxtY
	M+TD0Sl8OxpcvddCWDsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxFg-00067W-6J; Thu, 04 Jun 2020 21:18:16 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgxFX-000670-LT
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 21:18:09 +0000
Received: by mail-pl1-x641.google.com with SMTP id g12so2706498pll.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 14:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Xj4R5b/NmHr7cy4cFjqI3AVUp8b13ugKgvK5SgKHWhw=;
 b=ylc8ppBmPztFTGjH2ucHgmqWQm3hTFsQ3/jasvFwX9FvbP1wTGsji5ulax3htOH8eF
 lUqqWQupVjiPZqqerksRvNNJLIOLHk4h31B+A0HzDZf7MH/ODHwufZNXKQ5ZCPT4Dzqo
 0sMvATeKA3zqqIGdv+VpXCCPBQ1r5zHKBI9WPYkUUfpwfDf4GfeGa3k07UB68Q+Aa879
 EeZd1AnaKxUhWEju2Y9bS3R+6DkFwNrZwL1feSGbPCB8ZbZ864W+8yYefsy6f88K19oR
 PDNJv/OhKcmeLcMOmscymb4/AMw4syEttCeBD2oXTRKbSrxNa1AlRxVK6l0ouEkPVntF
 dZ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Xj4R5b/NmHr7cy4cFjqI3AVUp8b13ugKgvK5SgKHWhw=;
 b=KZVuR6jFNBTSauoxGD8qKnO67RVm3p8eYjSFlBTUkNS5jsBsf1i4s9DBmZIqX0xRK+
 g6JxQJ7S1WCyygvvnUDXyRw/G8rxi0fSgeMFMuVR0IddSIU5XrsVKKOd9COtM8nfRqIu
 gzB2353LiGt4vIbWUHvV7DAdKrhcEh1miHWyKKvGLvJlJJmVpXJOPNCdKitg5tPtfERq
 Z3t9J/vVVbGOjSAEwym/4dEGxpp2LvDeor5LqmGGvHSYwHhLKwKs/qH4lgkdY0QK4Wfa
 TSRqTZW8LKfiNsf6slcb3du3/2//6QwMu6VyPv6HKCGEvYKEUzgDjAOJvIw/PMUGH5iI
 T1uQ==
X-Gm-Message-State: AOAM530uHpT1yRjqKUZYaYyz5K7tIeVP5HPAMImq6x8Tu9H3c+2lpYHI
 xBEZAXjpJT+Pyrx4hrT0oK0L23Yvc/0=
X-Google-Smtp-Source: ABdhPJyIGDoc6vtidfICbYChumDqcH6Z30H2Sd7fXL8KkzgFwhV3blRhegrFMExce9d3PRXPuohp3w==
X-Received: by 2002:a17:902:bf43:: with SMTP id
 u3mr6480965pls.240.1591305486837; 
 Thu, 04 Jun 2020 14:18:06 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id z9sm6036803pjr.39.2020.06.04.14.18.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 14:18:06 -0700 (PDT)
Date: Thu, 4 Jun 2020 15:18:04 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 3/5] coresight: tmc: Update sink types for default
 selection.
Message-ID: <20200604211804.GC18961@xps15>
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-4-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526104642.9526-4-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_141807_705111_672972F7 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: coresight@lists.linaro.org, acme@kernel.org,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 11:46:40AM +0100, Mike Leach wrote:
> An additional sink subtype is added to differentiate ETB/ETF buffer
> sinks and ETR type system memory sinks.
> 
> This allows the prioritised selection of default sinks.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-tmc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
> index 39fba1d16e6e..0d2eb7e0e1bb 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
> @@ -484,7 +484,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
>  		break;
>  	case TMC_CONFIG_TYPE_ETR:
>  		desc.type = CORESIGHT_DEV_TYPE_SINK;
> -		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
> +		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_SYSMEM;
>  		desc.ops = &tmc_etr_cs_ops;
>  		ret = tmc_etr_setup_caps(dev, devid,
>  					 coresight_get_uci_data(id));
> @@ -496,6 +496,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
>  		break;
>  	case TMC_CONFIG_TYPE_ETF:
>  		desc.type = CORESIGHT_DEV_TYPE_LINKSINK;
> +		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
>  		desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_FIFO;
>  		desc.ops = &tmc_etf_cs_ops;
>  		dev_list = &etf_devs;

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
