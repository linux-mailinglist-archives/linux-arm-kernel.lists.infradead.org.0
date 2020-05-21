Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4091A1DD639
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 20:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URR1dRTCrXNCQACVLFv6KIqZnbnBik+NgElfUDvKKc4=; b=BYD1L/yXuN0M15
	BFX0N9F08KLdGok7wVvy/LWBlYm0YHr31ypgGm412lyKBxxkaDpbwMefID9pzODdkEUdImHxPa9Xw
	8X1ItZrvNNlYj3OC79NICBqOdOJKza+Z4iMSiP7dMzBhfVSKvjUyaJlPE4XGHw2lzTxoHq/YJS0jK
	SbK0ZPwiHp6Rup/u8iV8UWv+FxIhfE0UTjK3ycBic2z83YzXxhPdDJYcacPk0dT37hv4Znk8sarGB
	diE9HPrytZQfC6P4ipOE6e+Ei5vdImWedkGkJJoxA+hxTruwh2BADnCuNd54nofu6Xif4tPDDJPsq
	K9Ly/dTBM6ML6RSzkE8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqCb-0007nv-E7; Thu, 21 May 2020 18:45:57 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqCR-0007n1-OH
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 18:45:49 +0000
Received: by mail-pg1-x544.google.com with SMTP id n11so3598208pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 11:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gU8sgFKhNViTucmSrL8PoKpJXA/y6HhdPP2rA9oeoRs=;
 b=r+AZJRu3w6JTsxL9KO6nU41GHlIcNCImEJya4BVj3jLk1yS6icM9SUIyDHKfgcai5Y
 /m2RAVPAZY6ES+8b+7Txyszh0a5kRmAFSFdKGdxndopgAYEcD4oRHsiSi+Y4A/pEiNmP
 2IQ37IjlC+vsSb21XAzgX+yhOfGJAdqIr8N8TYrTDNbat7nE02ikplbIYQnu/UcpsmxJ
 BGaIaXtYi3NU26GiUvFrTkHyUB9FArAxhYFKITKQjLeO9UheJwGcxnjK1i+oUNPDj2Ve
 1vg9w3AIfdncH6IlikagLtM+LH3gOHN5QPcjXemjceYNp6LK3TsREjcexk7UagXHd5oN
 ceCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gU8sgFKhNViTucmSrL8PoKpJXA/y6HhdPP2rA9oeoRs=;
 b=kBFvXIoyx5JR/DQ0XnZLd0v+FhS59zjog2tXl4bMqG6LwT7O/9UrL9gMtnzVoDX0JN
 rLRr69ZCyglirL8hiza7b0i3bDASD/7GDQ0kF4HM96vdf0ihMrxpNqIZKqI3YdeqUmqe
 l+YbQY4sNMY2e5k7Ylv8kHpyUAX9bfUkH8DvCmCirsypeq6Bpkw9qg4AcjwYvv7u1yfo
 VNGt+9T2EhvgMpOCDvKk1nmmiGxd2yUWAS3GJwskTI1jpcPqdljbi8z4ebPGlz2YzeuC
 DHdU4Cgyv46pW0P4B6SFoDixNvA9LCutH6BJkO5t6nSgShOrEumd59N58BZMSDEdLAof
 dS8Q==
X-Gm-Message-State: AOAM531ZJEuxJeb5ulugDene+ZCEGKqoPZb6/kiNJjmQzrx2is6fPUGx
 YJNzjDowQliMEUzi3vJlUwy+Ug==
X-Google-Smtp-Source: ABdhPJzvAmH8U4KBIxMOLHqgBdJx23hqsA0xjqegq5rGHfJS7mrUJhHAnx3Fwau8/vsc2QlNDUyUqA==
X-Received: by 2002:a62:e707:: with SMTP id s7mr111797pfh.208.1590086745675;
 Thu, 21 May 2020 11:45:45 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id m43sm5106636pje.16.2020.05.21.11.45.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 11:45:45 -0700 (PDT)
Date: Thu, 21 May 2020 11:44:27 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH v2 1/4] remoteproc: Introduce rproc_of_parse_firmware()
 helper
Message-ID: <20200521184427.GL408178@builder.lan>
References: <20200521001006.2725-1-s-anna@ti.com>
 <20200521001006.2725-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521001006.2725-2-s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_114547_825755_C0320A50 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 20 May 17:10 PDT 2020, Suman Anna wrote:

> Add a new helper function rproc_of_parse_firmware() to the remoteproc
> core that can be used by various remoteproc drivers to look up the
> the "firmware-name" property from a rproc device node. This property
> is already being used by multiple drivers, so this helper can avoid
> repeating equivalent code in remoteproc drivers.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
> v2: New patch
> 
>  drivers/remoteproc/remoteproc_core.c     | 23 +++++++++++++++++++++++
>  drivers/remoteproc/remoteproc_internal.h |  2 ++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 9f04c30c4aaf..c458b218d524 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1034,6 +1034,29 @@ rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, size_t len,
>  }
>  EXPORT_SYMBOL(rproc_of_resm_mem_entry_init);
>  
> +/**
> + * rproc_of_parse_firmware() - parse and return the firmware-name
> + * @dev: pointer on device struct representing a rproc
> + * @index: index to use for the firmware-name retrieval
> + * @fw_name: pointer to a character string, in which the firmware
> + *           name is returned on success and unmodified otherwise.
> + *
> + * This is an OF helper function that parses a device's DT node for
> + * the "firmware-name" property and returns the firmware name pointer
> + * in @fw_name on success.
> + *
> + * Return: 0 on success, or an appropriate failure.
> + */
> +int rproc_of_parse_firmware(struct device *dev, int index, const char **fw_name)
> +{
> +	int ret;
> +
> +	ret = of_property_read_string_index(dev->of_node, "firmware-name",
> +					    index, fw_name);
> +	return ret ? ret : 0;
> +}
> +EXPORT_SYMBOL(rproc_of_parse_firmware);
> +
>  /*
>   * A lookup table for resource handlers. The indices are defined in
>   * enum fw_resource_type.
> diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
> index 4ba7cb59d3e8..e5341e91d2fc 100644
> --- a/drivers/remoteproc/remoteproc_internal.h
> +++ b/drivers/remoteproc/remoteproc_internal.h
> @@ -28,6 +28,8 @@ struct rproc_debug_trace {
>  void rproc_release(struct kref *kref);
>  irqreturn_t rproc_vq_interrupt(struct rproc *rproc, int vq_id);
>  void rproc_vdev_release(struct kref *ref);
> +int rproc_of_parse_firmware(struct device *dev, int index,
> +			    const char **fw_name);
>  
>  /* from remoteproc_virtio.c */
>  int rproc_add_virtio_dev(struct rproc_vdev *rvdev, int id);
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
