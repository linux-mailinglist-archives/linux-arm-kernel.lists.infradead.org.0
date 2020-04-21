Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D16E61B1C2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7LntLxEML0aGYv91DFK1aJ0luIVi0h42Po6Phnv6Xs=; b=ahjg8iaXWyCZqV
	8ribCF469CZem5ulgtHoLh/v+ejRZWDLDLM1DCdGEkcgNm0FKVLTzygpXGBkpXB1KRVWHWCUYS8Zt
	8hYqLuiEat4jiT0ykBDQrJKhRmA/kNIeqyXmShfPiFHd0b20ZweOqOnmdoQP5cFfmy83FzSzh/6xo
	CSwhyg6PknsWFRlK1H6ccBN/ADqj01c1XrYa2B+QTXXlK+BwjzMEVmyCPpkQQghoHKP94Bsdip4F0
	0FUrAF8IrZ2KcUxSPPkvUgriXW/ax6SzPsL02+agxj8s0gCMhVYNe08jxJ2T4kbHjJuLQjq0kwEID
	8HllOS1anO/2nJyu69Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQj1e-00065d-V0; Tue, 21 Apr 2020 02:52:42 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQj1U-00064k-Ae
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 02:52:34 +0000
Received: by mail-pj1-x1041.google.com with SMTP id e6so739015pjt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 19:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eX6YUoAUyU+ald9w0j9y7218CuMrF9AfTefdb4alt7k=;
 b=Ho+pWbohjKTbqwiK7ylfi0+5ra50+e7O/4vhoi7sO6wSGyeQVWHW9pMw3K1ByITxeq
 z0VvDWGxnjNrIHd5LsVqLBwa+BcbghBVjOwGn+dONaY1qVIeFuWkO9US9xfPmPFawzgQ
 5heqivxlNf5V7lEkyxccC4wEAfuJ4O3QWWAnX3wN7o27anigl1fSE85ambi3Z1CAm4G4
 pBZvpf8kjuSRWxzoXqrLT/G6DxdUFxnztpSVJTkos2ocV7t2YT71m5OneanzpNN2r+Bo
 cFzpE+4/KfDlKV/cuYb/1FIKHJrqQebnIHs9DuaGlRiuDp8KeU3aJGSnpTtiSaiUYmy4
 wDPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eX6YUoAUyU+ald9w0j9y7218CuMrF9AfTefdb4alt7k=;
 b=GrTPyi0FaQZkmTznpPiaOO5j4/AwYZmmM2KTkIdhS5tWZ+XtFPoCu7X1mYtGC2sVN1
 afoZ/SXy8rI5U0xd9EDHN05UgFbthM9wmfM13gj8HCfEkFc6EuWfP0MiRdpc8rF5mD4i
 fpbN+eGAUmeUhL4qh14fMh4gY9BZ3SpUENq8eZ03FD6e8fmEfBydtkiHCi+Rbf+bS4SA
 hmwMZ4AJ8CVqxtAKmJ/o+Nc2a4dSM5P40eE8OulH+dWdVLDQuPbwUBdaUJNnubxpNN+K
 fEVqL7BtY4feIrW6cAXEEtzSy7mQ40wOkXFRMMeZ3TOFJvFEUz3SUPVeyMgUrf0qg+oI
 zoOQ==
X-Gm-Message-State: AGi0Pua182JBLFpz3XHdGO6dwxgelR5+ULrYdAfJiZscc44o0LtO9NsJ
 P0m8v1+GQXQkoO7regcXKLez/w==
X-Google-Smtp-Source: APiQypL/E8X9y33COIhDNLXm7A3iI42f49fWAH3eN4CyoMfQlo9TcCfOvUS3Lv9YjydPpYGbOaTW3g==
X-Received: by 2002:a17:90a:8c93:: with SMTP id
 b19mr2947130pjo.141.1587437551079; 
 Mon, 20 Apr 2020 19:52:31 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id c201sm910602pfc.73.2020.04.20.19.52.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 19:52:30 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:52:54 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/2] remoteproc: Add prepare and unprepare ops
Message-ID: <20200421025254.GK1868936@builder.lan>
References: <20200417002036.24359-1-s-anna@ti.com>
 <20200417002036.24359-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417002036.24359-2-s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_195232_898940_2FABC22D 
X-CRM114-Status: GOOD (  23.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Loic Pallardy <loic.pallardy@st.com>, linux-remoteproc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 16 Apr 17:20 PDT 2020, Suman Anna wrote:

> From: Loic Pallardy <loic.pallardy@st.com>
> 
> On some SoC architecture, it is needed to enable HW like
> clock, bus, regulator, memory region... before loading
> co-processor firmware.
> 
> This patch introduces prepare and unprepare ops to execute
> platform specific function before firmware loading and after
> stop execution.
> 
> Signed-off-by: Loic Pallardy <loic.pallardy@st.com>
> Signed-off-by: Suman Anna <s-anna@ti.com>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Do we have an inbound user of these new oops?

Regards,
Bjorn

> ---
> v1:
>  - Make the direct ops into inline helper functions in line
>    with the comments on the MCU sync series (v1 comments).
>    No change in functionality.
>  - Picked up the Reviewed-by tags
> v0: https://patchwork.kernel.org/patch/11456383/
> 
>  drivers/remoteproc/remoteproc_core.c     | 15 ++++++++++++++-
>  drivers/remoteproc/remoteproc_internal.h | 16 ++++++++++++++++
>  include/linux/remoteproc.h               |  4 ++++
>  3 files changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index d681eeb962b6..e38f627059ac 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1394,12 +1394,19 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
>  		return ret;
>  	}
>  
> +	/* Prepare rproc for firmware loading if needed */
> +	ret = rproc_prepare_device(rproc);
> +	if (ret) {
> +		dev_err(dev, "can't prepare rproc %s: %d\n", rproc->name, ret);
> +		goto disable_iommu;
> +	}
> +
>  	rproc->bootaddr = rproc_get_boot_addr(rproc, fw);
>  
>  	/* Load resource table, core dump segment list etc from the firmware */
>  	ret = rproc_parse_fw(rproc, fw);
>  	if (ret)
> -		goto disable_iommu;
> +		goto unprepare_rproc;
>  
>  	/* reset max_notifyid */
>  	rproc->max_notifyid = -1;
> @@ -1433,6 +1440,9 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
>  	kfree(rproc->cached_table);
>  	rproc->cached_table = NULL;
>  	rproc->table_ptr = NULL;
> +unprepare_rproc:
> +	/* release HW resources if needed */
> +	rproc_unprepare_device(rproc);
>  disable_iommu:
>  	rproc_disable_iommu(rproc);
>  	return ret;
> @@ -1838,6 +1848,9 @@ void rproc_shutdown(struct rproc *rproc)
>  	/* clean up all acquired resources */
>  	rproc_resource_cleanup(rproc);
>  
> +	/* release HW resources if needed */
> +	rproc_unprepare_device(rproc);
> +
>  	rproc_disable_iommu(rproc);
>  
>  	/* Free the copy of the resource table */
> diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
> index b389dc79da81..101e6be8d240 100644
> --- a/drivers/remoteproc/remoteproc_internal.h
> +++ b/drivers/remoteproc/remoteproc_internal.h
> @@ -64,6 +64,22 @@ struct resource_table *rproc_elf_find_loaded_rsc_table(struct rproc *rproc,
>  struct rproc_mem_entry *
>  rproc_find_carveout_by_name(struct rproc *rproc, const char *name, ...);
>  
> +static inline int rproc_prepare_device(struct rproc *rproc)
> +{
> +	if (rproc->ops->prepare)
> +		return rproc->ops->prepare(rproc);
> +
> +	return 0;
> +}
> +
> +static inline int rproc_unprepare_device(struct rproc *rproc)
> +{
> +	if (rproc->ops->unprepare)
> +		return rproc->ops->unprepare(rproc);
> +
> +	return 0;
> +}
> +
>  static inline
>  int rproc_fw_sanity_check(struct rproc *rproc, const struct firmware *fw)
>  {
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 38607107b7cb..b8481ac969f1 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -355,6 +355,8 @@ enum rsc_handling_status {
>  
>  /**
>   * struct rproc_ops - platform-specific device handlers
> + * @prepare:	prepare device for code loading
> + * @unprepare:	unprepare device after stop
>   * @start:	power on the device and boot it
>   * @stop:	power off the device
>   * @kick:	kick a virtqueue (virtqueue id given as a parameter)
> @@ -373,6 +375,8 @@ enum rsc_handling_status {
>   *		panic at least the returned number of milliseconds
>   */
>  struct rproc_ops {
> +	int (*prepare)(struct rproc *rproc);
> +	int (*unprepare)(struct rproc *rproc);
>  	int (*start)(struct rproc *rproc);
>  	int (*stop)(struct rproc *rproc);
>  	void (*kick)(struct rproc *rproc, int vqid);
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
