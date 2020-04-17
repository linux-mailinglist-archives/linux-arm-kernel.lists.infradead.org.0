Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EECC51AE5EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 21:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dD8sdU9iLKY8YxVxxYns6YjUPxynTPgPh4PDQ6ZmkaM=; b=gowZIEqP5E32SK
	c02X0WSaqjBSrC5q8/4OM3sDVT7G5G1F5llz+vu3u/+tRRuNKhw02i2G4j0FdZ7YDcZh0zq5+k9BG
	2cqWHlZULTqDp9BFD3ImuVO+4y0YjBxVdKXv3InI8wfzFfWgow/RyZvErmRwWJUqX5zwxtwX7REVd
	xXz7zlzXVk24f0BSQl3C2sJL7TCuzU3grK0ROS8G61LvQ+BNv9C4YAaG9w4GIyhuO5b0yxnoVIhbV
	X/bMaN9H2eebVMKWFyGgyA8855zLYv6ENMRB3D6nssm9mpegnkUfYFoE9LEsxoXFMh1d3ZWiTJnr8
	jESIHQXHSlc4gs1O+ziw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPWpF-0005lB-59; Fri, 17 Apr 2020 19:38:57 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPWp0-0005k1-Sw
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 19:38:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id 188so1561897pgj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 12:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=L/KLniOfteFVMXQ71u7R1TBbbpgcRHaxIa69jNoCo+g=;
 b=LMjWtbczjWK9xz25YpLOrWyVCpnAir+NmVNcSR8nqO5CYI6biyNRsEnQ6aVoBTtP91
 /F5RQL0ngIcntGeQPodiL6reiF4Qp10P7ocREihvTve9R5doGnLaKhLAsMAkZ4vVHvCC
 GQYmPzJK2tPnXdFllItkdEo+5Ky8Owl4qWbDJvYkJ6z1Wd+N4m4Y68cJSEL8RXFbdDtJ
 ONNtyeDMX9inYr6A4BNsWHXIfh8XNLV+eEHOYIqdliD2gePqY7RrdJ/FpDYK2qONyozn
 NDcLSjMlien/eI3eXb2aAiGv+0nadT/GsSm9Pb+vo2KYmZHuuMcR3sQQQfpGDbP/jFbs
 GRkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L/KLniOfteFVMXQ71u7R1TBbbpgcRHaxIa69jNoCo+g=;
 b=ZWoQXlEh3A8NjnE6cSmfVzNNtoetpyHrfsci7gH2IFs+oJQl+/rr6KnY99CIC2NEA2
 1+BC6a54B3wYjP2thgAzUVsl02uaBkF5j6TuBftvUFYJXhSgajMr2Q236To+dIYcqTlv
 ealZIGZHeh4Jte2sROyQgslXK5Zaqb3duI80PcsRdzyDNWd5QWSroAxZHVvMgmoIxVAD
 E3WsyCJMwwsLT89BteZ/o2m5AYzChEwVpwKbIBUwLbA7aOPTRPrlSFZyvkwLYeMmg+UH
 5ZnJAQ4IqILk1oPQcRLlaHyRS4gW7UPVaTm0jBMZ45CHIz/gqrO+fhnqvvo06StK+xFg
 yT0A==
X-Gm-Message-State: AGi0PuachH0FieKaiGsqTH/yC+A096RAl7M8IIYee46oI/YGimyAPj5c
 swbHVVsRfiaKcW1zEDJD0/Y4Fw==
X-Google-Smtp-Source: APiQypJOFDs95tWlt5OLSyjmZ2cFoGxRUCQJ62lFfPsxeWdusfOdDR/sAiJSgmQw7WF3uCywu/mX8Q==
X-Received: by 2002:a63:40f:: with SMTP id 15mr4627154pge.57.1587152321367;
 Fri, 17 Apr 2020 12:38:41 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm2723546pfc.94.2020.04.17.12.38.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 12:38:39 -0700 (PDT)
Date: Fri, 17 Apr 2020 13:38:37 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Clement Leger <cleger@kalray.eu>
Subject: Re: [PATCH 1/2] remoteproc: add rproc_coredump_set_elf_info
Message-ID: <20200417193837.GB6797@xps15>
References: <20200410102433.2672-1-cleger@kalray.eu>
 <20200410102433.2672-2-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410102433.2672-2-cleger@kalray.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_123843_457850_9C0D589E 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 12:24:32PM +0200, Clement Leger wrote:
> This function allows drivers to correctly setup the coredump output
> elf information.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  drivers/remoteproc/remoteproc_core.c       | 32 ++++++++++++++++++++--
>  drivers/remoteproc/remoteproc_elf_loader.c |  3 --
>  include/linux/remoteproc.h                 |  2 ++
>  3 files changed, 32 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index a9ac1d01e09b..382443bab583 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1562,6 +1562,28 @@ int rproc_coredump_add_custom_segment(struct rproc *rproc,
>  }
>  EXPORT_SYMBOL(rproc_coredump_add_custom_segment);
>  
> +/**
> + * rproc_coredump_set_elf_info() - set coredump elf information
> + * @rproc:	handle of a remote processor
> + * @class:	elf class for coredump elf file
> + * @size:	elf machine for coredump elf file
> + *
> + * Set elf information which will be used for coredump elf file.
> + *
> + * Return: 0 on success, negative errno on error.
> + */
> +int rproc_coredump_set_elf_info(struct rproc *rproc, u8 class, u16 machine)
> +{
> +	if (class != ELFCLASS64 && class != ELFCLASS32)
> +		return -EINVAL;
> +
> +	rproc->elf_class = class;
> +	rproc->elf_machine = machine;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(rproc_coredump_set_elf_info);
> +
>  /**
>   * rproc_coredump() - perform coredump
>   * @rproc:	rproc handle
> @@ -1584,6 +1606,11 @@ static void rproc_coredump(struct rproc *rproc)
>  	if (list_empty(&rproc->dump_segments))
>  		return;
>  
> +	if (class == ELFCLASSNONE) {
> +		dev_err(&rproc->dev, "Elf class is not set\n");
> +		return;
> +	}
> +
>  	data_size = elf_size_of_hdr(class);
>  	list_for_each_entry(segment, &rproc->dump_segments, node) {
>  		data_size += elf_size_of_phdr(class) + segment->size;
> @@ -1602,7 +1629,7 @@ static void rproc_coredump(struct rproc *rproc)
>  	elf_hdr_init_ident(ehdr, class);
>  
>  	elf_hdr_set_e_type(class, ehdr, ET_CORE);
> -	elf_hdr_set_e_machine(class, ehdr, EM_NONE);
> +	elf_hdr_set_e_machine(class, ehdr, rproc->elf_machine);
>  	elf_hdr_set_e_version(class, ehdr, EV_CURRENT);
>  	elf_hdr_set_e_entry(class, ehdr, rproc->bootaddr);
>  	elf_hdr_set_e_phoff(class, ehdr, elf_size_of_hdr(class));
> @@ -2043,7 +2070,8 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>  	rproc->name = name;
>  	rproc->priv = &rproc[1];
>  	rproc->auto_boot = true;
> -	rproc->elf_class = ELFCLASS32;
> +	rproc->elf_class = ELFCLASSNONE;
> +	rproc->elf_machine = EM_NONE;
>  
>  	device_initialize(&rproc->dev);
>  	rproc->dev.parent = dev;
> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
> index 16e2c496fd45..4869fb7d8fe4 100644
> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> @@ -248,9 +248,6 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
>  			memset(ptr + filesz, 0, memsz - filesz);
>  	}
>  
> -	if (ret == 0)
> -		rproc->elf_class = class;
> -
>  	return ret;
>  }
>  EXPORT_SYMBOL(rproc_elf_load_segments);
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index ed127b2d35ca..d67eb5a40476 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -515,6 +515,7 @@ struct rproc {
>  	struct list_head dump_segments;
>  	int nb_vdev;
>  	u8 elf_class;
> +	u16 elf_machine;
>  };

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  
>  /**
> @@ -619,6 +620,7 @@ int rproc_coredump_add_custom_segment(struct rproc *rproc,
>  						     struct rproc_dump_segment *segment,
>  						     void *dest),
>  				      void *priv);
> +int rproc_coredump_set_elf_info(struct rproc *rproc, u8 class, u16 machine);
>  
>  static inline struct rproc_vdev *vdev_to_rvdev(struct virtio_device *vdev)
>  {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
