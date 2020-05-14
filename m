Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D37BC1D2681
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXjf4ApQFA4bE4iid3OjWWrPX3g0dLeqyxW7PPfHZ3U=; b=lZwwp8cP5wYfSS
	IpqnZAZtGxX+xVB6CS/sttk2pNxO/V9vcHs6BTNJUsGDw/wub+nGFaxRfYcsIRQB+Cscr9FFO2vAK
	8Ad+UEKzgkFB3DIxOFKoOyHpB2I6Vz8gP+NSaY65o7DpbSlkp6aoZgA/gwJgdj75HDDn0RZ1NCucf
	B//RMLQ1Ev6Y0SWKWn1Inq2McldhNL0uT8kJ5PpjNYNjy5hyYsAFxQgI1q4o09XAKmXSGnFk9vsLI
	Ukin3no/2v6L7gQyR4kepBBRu7UtVnOAhxVDgnY8v5EzU6AKNkwryfpovem3s6ekG7778oeCQStUU
	qbmExyAPBOtQt7p8D+0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ67n-00014o-Rg; Thu, 14 May 2020 05:09:39 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ63N-0003MP-Bw
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:05:09 +0000
Received: by mail-pj1-x1041.google.com with SMTP id hi11so12042686pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 22:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Tj3wTZtbDhnHZV3JGD+uPMkyVs4DjgIgPsF9FB8nJ8k=;
 b=Es7gB+V2iRrBdGZENlfFP7ZPj71j6sUTsS8b5RJjQMyycpeN/dRq6+h1KC46rIh+dG
 e+y1nzHg3jqoLQh7i8c5I4c9EYPm60CBZJrrgjhCe2uf7IU1sulmF1wC1vnocmblc9Tl
 llsaiwqDsP0oYe1Rus7kOj4t2oH3xU3fVf2P3bU5JdHVmu0y0qBPea8bJhn/p14vdYNK
 yBxV1rVd/BEV1c2WW0RVMFcX92t/U5FnflbXkSTm0Q35KHD/6iqB7pVnOGvM8n9UJpGc
 +G1BKArwMEdLVLpJHsocK6RDgotJXXtlrWu/t2mFUIrTt90g9axtbXaRVvbFAZz9l5ye
 X7nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Tj3wTZtbDhnHZV3JGD+uPMkyVs4DjgIgPsF9FB8nJ8k=;
 b=SlicalwJJWmZrBWaKDguc8VTcaXIZ3EUhvD9iGckVzG7+2blmazEpg6xVkFsERFpEe
 M7KFJz9ioOt8HsV0Ss4NossKmvtP+W/hyIcAT6uZhOcuaujPL02BVPbo+ytaPrljZF69
 1NnwqcNEaV1fLbtYOt3ro9nAoy6zpJsNOiAuG8A1RwyMoN57Wz9wSaNLhGLygkZs6DTP
 vPj+4O8TJk3mwTJcERTArlL5UnlGA3wss6Frz1rFg76deN2Xxp5cbum7VtLnoUACKDAd
 LywRliWXv2BEnbYQv2+AM0k7WcOWaeIm9+/GJHJE1ESd30ZajvrRw+gHn4pIe4wtYbTO
 xKmw==
X-Gm-Message-State: AOAM533SctPXyEAmsi/qV9GPOOJth9mGEO7Hld3cNv8xJ3VHE+z0D8Tz
 qXH1SGls+FYR3iRdH8SJ1RD8kg==
X-Google-Smtp-Source: ABdhPJxE+Ga0oiFVkwJhCJzgkI8UBbxRw3MDQH0DbdFOywzsoL1X/me7zuMcKuBheK34DoyGKQsEYg==
X-Received: by 2002:a17:90a:c201:: with SMTP id
 e1mr5391158pjt.162.1589432704717; 
 Wed, 13 May 2020 22:05:04 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 1sm1059453pgy.77.2020.05.13.22.05.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 22:05:04 -0700 (PDT)
Date: Wed, 13 May 2020 22:03:33 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 05/12] remoteproc: stm32: Parse syscon that will
 manage M4 synchronisation
Message-ID: <20200514050333.GK16107@builder.lan>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-6-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424202505.29562-6-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220505_518594_79562EE7 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ohad@wizery.com, alexandre.torgue@st.com, loic.pallardy@st.com,
 arnaud.pouliquen@st.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 24 Apr 13:24 PDT 2020, Mathieu Poirier wrote:

> Get from the DT the syncon to probe the state of the remote processor
> and the location of the resource table.
> 
> Mainly based on the work published by Arnaud Pouliquen [1].
> 
> [1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Loic Pallardy <loic.pallardy@st.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/remoteproc/stm32_rproc.c | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 658439d4b00a..a285f338bed8 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -70,6 +70,8 @@ struct stm32_rproc {
>  	struct reset_control *rst;
>  	struct stm32_syscon hold_boot;
>  	struct stm32_syscon pdds;
> +	struct stm32_syscon m4_state;
> +	struct stm32_syscon rsctbl;
>  	int wdg_irq;
>  	u32 nb_rmems;
>  	struct stm32_rproc_mem *rmems;
> @@ -606,6 +608,30 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev,
>  
>  	*auto_boot = of_property_read_bool(np, "st,auto-boot");
>  
> +	/*
> +	 * See if we can check the M4 status, i.e if it was started
> +	 * from the boot loader or not.
> +	 */
> +	err = stm32_rproc_get_syscon(np, "st,syscfg-m4-state",
> +				     &ddata->m4_state);
> +	if (err) {
> +		/* remember this */
> +		ddata->m4_state.map = NULL;
> +		/* no coprocessor state syscon (optional) */
> +		dev_warn(dev, "m4 state not supported\n");
> +
> +		/* no need to go further */
> +		return 0;
> +	}
> +
> +	/* See if we can get the resource table */
> +	err = stm32_rproc_get_syscon(np, "st,syscfg-rsc-tbl",
> +				     &ddata->rsctbl);
> +	if (err) {
> +		/* no rsc table syscon (optional) */
> +		dev_warn(dev, "rsc tbl syscon not supported\n");
> +	}
> +
>  	return 0;
>  }
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
