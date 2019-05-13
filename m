Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AC01BC0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVSBjcTMjZ4BFLgmAK9hJJzO0Zuy+FH2itMV4k3dXHw=; b=Kvi26Lw7VsEPkb
	GCrCB/6Dsp2hGng+Z+Z+0P6KJIHPa1S6v+ymbl8QFg3ykmJszas68501lxf38ztRRv4iN4/ntjAta
	qCteHzlhGLTXvuYKyGBQmVkrmw/Acj7GDsSAhIPR68BpTYTamnmKbVXWoHqsHKh2YocDmuRHkcdUT
	Lca1DR+dtS7xxyVxeEItPIAV9cobYtWIYo9OdQwEhUURPa7BLl5dQ1MJqnwcQ06lP/2+4ik6r3s+D
	HeEkjn69VU7WYJ4+OlPbOwsAJg++yoojsG4scy564Tw5qChjv7YVbwj2aa+PvrjU6WvQPhdherUd9
	7HZ/VwAoBu2fqD9TOTRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEuz-0000c7-0M; Mon, 13 May 2019 17:39:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEur-0000bl-3W
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 17:39:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id g3so7574538pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 10:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KpsinxBxU2IoS3LCH5T0Ss+1QCWrxYRxntIPJdXby/A=;
 b=xpJyfpk3uJ1PoPj69whnoQXlK2Y6lg+pimlpWmvvoHSrn2GQ9KweickQD26Kijy0kX
 KOUiwHeetbM4coZ/33zlh2JPuIxqM1W55S74AA3gR88OCA4G41cwYMEQa0lLEW5ub0Pj
 XaXCu8Xgq97cSfA/6KMXjJlMvWQHouEQ2+dqVwaCgGO+s6n8Sjox+TsLwpiPL/cqzCZu
 Y5KmVjltLMp1U7C3phaU4GwWGOELUQS00VHails0/YXkwa0Dq3pQHwCQSszlhwPNndip
 bsss2SvctkAcnk8RrH5axLM79eC4qp0i0rhDBIlDyYAvsp5WMfhQKZjdeJevHyiwleHH
 dIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KpsinxBxU2IoS3LCH5T0Ss+1QCWrxYRxntIPJdXby/A=;
 b=Od4CVc2m+EVwA8tsT6mKbyHt3RvoJbCOYzYWukTzpjAFcxYp3Pux2copPp540jiznA
 AcVch0cw2LWeI5906dna9eA0EiClBfuunHg1D7gz12EEzrMa1wHDuVhNYaOcMjbkjuJU
 b/9tuVFN5niIZfE2uhOHP7tMeJrigF4MsPfV0ZaaHPEGaSKQ7IAH4Ig4uDxSjeXr6rew
 Sc18exXv4zuCsqvrLza8AUopE+lXGSrw7UEwy3mCBxvNzp5N/h8eVf1C1Ld/dDgKO9ol
 q7tX8JuXGjAk7GCjWrS0OYnKfCikatYZQgG3mbX+QCWU1y3UnaC6842vSFO4vH7SkZlx
 X0NQ==
X-Gm-Message-State: APjAAAUxNC2UXrJCcBNdTG+oFYKnktkvfiDFm0G2AtW8CGz+R5XCtm4D
 F3q7H+aDwWJapI0m6MkUGxn6eQ==
X-Google-Smtp-Source: APXvYqyEYMG7ado+dLEWJgwVjGXR0xa/HRNzTbQYBvnTChEtAu6bvz0HchUbDOc2x5RW2QQY4I7Vbg==
X-Received: by 2002:a65:6255:: with SMTP id q21mr21702714pgv.211.1557769148012; 
 Mon, 13 May 2019 10:39:08 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 17sm21589088pfw.65.2019.05.13.10.39.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 10:39:07 -0700 (PDT)
Date: Mon, 13 May 2019 11:39:05 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 24/30] coresight: platform: Use fwnode handle for
 device search
Message-ID: <20190513173905.GD16162@xps15>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
 <1557226378-10131-25-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557226378-10131-25-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_103909_171050_999000EB 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 11:52:51AM +0100, Suzuki K Poulose wrote:
> We match of_node while searching for a device. Make this
> more generic in preparation for the ACPI support by using
> fwnode_handle.
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
> Change since v2:
>  - Drop the generic helper. It requires further clean up,
>    and will be dealt with a separate series.
> ---
>  drivers/hwtracing/coresight/coresight-platform.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 53d6eed..4394095 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -36,14 +36,13 @@ static int coresight_alloc_conns(struct device *dev,
>  	return 0;
>  }
>  
> -#ifdef CONFIG_OF
> -static int of_dev_node_match(struct device *dev, void *data)
> +static int coresight_device_fwnode_match(struct device *dev, void *fwnode)
>  {
> -	return dev->of_node == data;
> +	return dev_fwnode(dev) == fwnode;
>  }
>  
>  static struct device *
> -of_coresight_get_endpoint_device(struct device_node *endpoint)
> +coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)
>  {
>  	struct device *dev = NULL;
>  
> @@ -52,7 +51,7 @@ of_coresight_get_endpoint_device(struct device_node *endpoint)
>  	 * platform bus.
>  	 */
>  	dev = bus_find_device(&platform_bus_type, NULL,
> -			      endpoint, of_dev_node_match);
> +			      fwnode, coresight_device_fwnode_match);
>  	if (dev)
>  		return dev;
>  
> @@ -61,9 +60,10 @@ of_coresight_get_endpoint_device(struct device_node *endpoint)
>  	 * looking for the device that matches the endpoint node.
>  	 */
>  	return bus_find_device(&amba_bustype, NULL,
> -			       endpoint, of_dev_node_match);
> +			       fwnode, coresight_device_fwnode_match);
>  }
>  
> +#ifdef CONFIG_OF
>  static inline bool of_coresight_legacy_ep_is_input(struct device_node *ep)
>  {
>  	return of_property_read_bool(ep, "slave-mode");
> @@ -191,6 +191,7 @@ static int of_coresight_parse_endpoint(struct device *dev,
>  	struct device_node *rparent = NULL;
>  	struct device_node *rep = NULL;
>  	struct device *rdev = NULL;
> +	struct fwnode_handle *rdev_fwnode;
>  
>  	do {
>  		/* Parse the local port details */
> @@ -209,8 +210,9 @@ static int of_coresight_parse_endpoint(struct device *dev,
>  		if (of_graph_parse_endpoint(rep, &rendpoint))
>  			break;
>  
> +		rdev_fwnode = of_fwnode_handle(rparent);
>  		/* If the remote device is not available, defer probing */
> -		rdev = of_coresight_get_endpoint_device(rparent);
> +		rdev = coresight_find_device_by_fwnode(rdev_fwnode);
>  		if (!rdev) {
>  			ret = -EPROBE_DEFER;
>  			break;

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
