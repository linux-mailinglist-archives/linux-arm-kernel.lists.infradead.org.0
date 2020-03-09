Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EBD17EA13
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 21:33:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHQEttJYnnCvbZGiECdL1H01fDfWQ0uWUwAjpZRBm90=; b=bA1ot9uMUaK7C3
	f1xktaxn1FF7FWDLPx/VJAgwbZyhZX1DLFrre8ILrl3Lt9+yVo1tzwwKVMqLeCT9ORr+toRjX/8C3
	UKsayejoqxXyaf6sGcRwia03mbZnSrC2C4rN3ZjCpxAApZSLGLBGo6WdzxfSA0+hG/fCze4PW977t
	TePyqTDxBk+XQ2HwEhtBEq4Ws3GBsOZFcXJAXlrtjGH10DLQbnbm70JOjKBgo93b6su6Gs9WFbgXO
	lZdI9WaRcsD522MIYqwchbv+GiYH87Y5KLz/RrAVddC4PYccnVdGEq0PyiIj80bRrbpGwMXZ+tjyf
	etwtlz0f5VCVa7NwpmiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBP50-0007RX-Se; Mon, 09 Mar 2020 20:32:50 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBP4e-0007HB-FQ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 20:32:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id i13so5366576pfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 13:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Z5axf0WVAg5WFt1W2Qni2sPQgOj88funCB2kDh5Xe4w=;
 b=W34MHRUY40O0VIg6TWhZSRQLWrUix4GLuDQS2V/IShz2+W7HbS+eCGMe2rSI7Mif89
 DlNB/1xBH9VqHjCjAaZ8Vc6fLuOfIW1PH6zXqRTelTWuIsbhbHi8rdTsXtXHMtud57te
 rrozpSG46wQEFouLsn1K3xcqg2JfUP+fiZ+XpyJlaJVcNg138tI5XLyHjAoc2DWwabuG
 bqD5Ce+9kNBAYrFwTIuHx4ExyDJVpUDQnn5zr1uQvEl+AjCve7UBiGErh08NSn9cnrF4
 umDxTcbQAkgiY8y+hrr6zXGNnD3Di+TZQ5iX6hp525nb3QGvYSCJ04HStioz41Ds5WkL
 /JOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z5axf0WVAg5WFt1W2Qni2sPQgOj88funCB2kDh5Xe4w=;
 b=abeqRpt+BREZtC4DA1WiAyzbgeXtMtCNLtZFb8JX+ggEeLTTb+3aT+RYKxeaUqGP6B
 gpHmOua9xeOaqOkkkyuVN3xwCeNvN7EwBrLQhcVglFKm2nE+HN0JQ1FHVBRpyjBW/Xg9
 vyZkBRT3gfjCUZW59ylvdMJc+sEskaXUG5Wc4hLsUomIoelKrJaPXGtMd+pS7+NAEki9
 YOBE3GbeYnJhnGq0NAgrExxWIjZj2Sc+lbxNV12W7jkzbiewodNEHuZYTm25U1P7q71a
 KqCLdBAOsrlh+WzCBIFVxIUTIlRZC+0uIJnGbIFHR/YkgXWGcOhtb3DlNjNaqvml3KB8
 c7JA==
X-Gm-Message-State: ANhLgQ3aEOW2/7MX+rJ19UJNPLgQbkyiF8rKFB96cTJKTTa8Jx278ITJ
 cHuqdULIg2UJKXND+4RCmTVTEA==
X-Google-Smtp-Source: ADFU+vtVIlxuoEcPGFGpwI4D8zyeiHQ92KF1g4qjTI35lZyYfSeX5hldsxX9ZUemubH5cAScCNw6QQ==
X-Received: by 2002:a65:624c:: with SMTP id q12mr17882462pgv.380.1583785946251; 
 Mon, 09 Mar 2020 13:32:26 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id d3sm44805327pfn.113.2020.03.09.13.32.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 13:32:25 -0700 (PDT)
Date: Mon, 9 Mar 2020 14:32:23 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Clement Leger <cleger@kalray.eu>
Subject: Re: [PATCH v5 8/8] remoteproc: Adapt coredump to generate correct
 elf type
Message-ID: <20200309203223.GE1399@xps15>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-9-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302093902.27849-9-cleger@kalray.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_133228_538015_380F183E 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 s-anna <s-anna@ti.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 10:39:02AM +0100, Clement Leger wrote:
> Now that remoteproc can load an elf64, coredump elf class should be
> the same as the loaded elf class. In order to do that, add a
> elf_class field to rproc with default values. If an elf is loaded
> successfully, this field will be updated with the loaded elf class.
> Then, the coredump core code has been modified to use the generic elf
> macro in order to create an elf file with correct class.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  drivers/remoteproc/remoteproc_core.c       | 67 ++++++++++++++++--------------
>  drivers/remoteproc/remoteproc_elf_loader.c |  3 ++
>  include/linux/remoteproc.h                 |  1 +
>  3 files changed, 39 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index b932a64a2be2..f923355aa3f9 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -38,6 +38,7 @@
>  #include <linux/platform_device.h>
>  
>  #include "remoteproc_internal.h"
> +#include "remoteproc_elf_helpers.h"
>  
>  #define HIGH_BITS_MASK 0xFFFFFFFF00000000ULL
>  
> @@ -1566,20 +1567,21 @@ EXPORT_SYMBOL(rproc_coredump_add_custom_segment);
>  static void rproc_coredump(struct rproc *rproc)
>  {
>  	struct rproc_dump_segment *segment;
> -	struct elf32_phdr *phdr;
> -	struct elf32_hdr *ehdr;
> +	void *phdr;
> +	void *ehdr;
>  	size_t data_size;
>  	size_t offset;
>  	void *data;
>  	void *ptr;
> +	u8 class = rproc->elf_class;
>  	int phnum = 0;
>  
>  	if (list_empty(&rproc->dump_segments))
>  		return;
>  
> -	data_size = sizeof(*ehdr);
> +	data_size = elf_size_of_hdr(class);
>  	list_for_each_entry(segment, &rproc->dump_segments, node) {
> -		data_size += sizeof(*phdr) + segment->size;
> +		data_size += elf_size_of_phdr(class) + segment->size;
>  
>  		phnum++;
>  	}
> @@ -1590,33 +1592,33 @@ static void rproc_coredump(struct rproc *rproc)
>  
>  	ehdr = data;
>  
> -	memset(ehdr, 0, sizeof(*ehdr));
> -	memcpy(ehdr->e_ident, ELFMAG, SELFMAG);
> -	ehdr->e_ident[EI_CLASS] = ELFCLASS32;
> -	ehdr->e_ident[EI_DATA] = ELFDATA2LSB;
> -	ehdr->e_ident[EI_VERSION] = EV_CURRENT;
> -	ehdr->e_ident[EI_OSABI] = ELFOSABI_NONE;
> -	ehdr->e_type = ET_CORE;
> -	ehdr->e_machine = EM_NONE;
> -	ehdr->e_version = EV_CURRENT;
> -	ehdr->e_entry = rproc->bootaddr;
> -	ehdr->e_phoff = sizeof(*ehdr);
> -	ehdr->e_ehsize = sizeof(*ehdr);
> -	ehdr->e_phentsize = sizeof(*phdr);
> -	ehdr->e_phnum = phnum;
> -
> -	phdr = data + ehdr->e_phoff;
> -	offset = ehdr->e_phoff + sizeof(*phdr) * ehdr->e_phnum;
> +	memset(ehdr, 0, elf_size_of_hdr(class));
> +	/* e_ident field is common for both elf32 and elf64 */
> +	elf_hdr_init_ident(ehdr, class);
> +
> +	elf_hdr_set_e_type(class, ehdr, ET_CORE);
> +	elf_hdr_set_e_machine(class, ehdr, EM_NONE);
> +	elf_hdr_set_e_version(class, ehdr, EV_CURRENT);
> +	elf_hdr_set_e_entry(class, ehdr, rproc->bootaddr);
> +	elf_hdr_set_e_phoff(class, ehdr, elf_size_of_hdr(class));
> +	elf_hdr_set_e_ehsize(class, ehdr, elf_size_of_hdr(class));
> +	elf_hdr_set_e_phentsize(class, ehdr, elf_size_of_phdr(class));
> +	elf_hdr_set_e_phnum(class, ehdr, phnum);
> +
> +	phdr = data + elf_hdr_get_e_phoff(class, ehdr);
> +	offset = elf_hdr_get_e_phoff(class, ehdr);
> +	offset += elf_size_of_phdr(class) * elf_hdr_get_e_phnum(class, ehdr);
> +
>  	list_for_each_entry(segment, &rproc->dump_segments, node) {
> -		memset(phdr, 0, sizeof(*phdr));
> -		phdr->p_type = PT_LOAD;
> -		phdr->p_offset = offset;
> -		phdr->p_vaddr = segment->da;
> -		phdr->p_paddr = segment->da;
> -		phdr->p_filesz = segment->size;
> -		phdr->p_memsz = segment->size;
> -		phdr->p_flags = PF_R | PF_W | PF_X;
> -		phdr->p_align = 0;
> +		memset(phdr, 0, elf_size_of_phdr(class));
> +		elf_phdr_set_p_type(class, phdr, PT_LOAD);
> +		elf_phdr_set_p_offset(class, phdr, offset);
> +		elf_phdr_set_p_vaddr(class, phdr, segment->da);
> +		elf_phdr_set_p_paddr(class, phdr, segment->da);
> +		elf_phdr_set_p_filesz(class, phdr, segment->size);
> +		elf_phdr_set_p_memsz(class, phdr, segment->size);
> +		elf_phdr_set_p_flags(class, phdr, PF_R | PF_W | PF_X);
> +		elf_phdr_set_p_align(class, phdr, 0);
>  
>  		if (segment->dump) {
>  			segment->dump(rproc, segment, data + offset);
> @@ -1632,8 +1634,8 @@ static void rproc_coredump(struct rproc *rproc)
>  			}
>  		}
>  
> -		offset += phdr->p_filesz;
> -		phdr++;
> +		offset += elf_phdr_get_p_filesz(class, phdr);
> +		phdr += elf_size_of_phdr(class);
>  	}
>  
>  	dev_coredumpv(&rproc->dev, data, data_size, GFP_KERNEL);
> @@ -2031,6 +2033,7 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>  	rproc->name = name;
>  	rproc->priv = &rproc[1];
>  	rproc->auto_boot = true;
> +	rproc->elf_class = ELFCLASS32;

I would initialise this to ELFCLASSNONE to make sure that if a platform driver
overwrites rproc_elf_load_segments or doesn't provide one, we don't falsely
deduce the elf type.  It goes without saying that if elf_class == ELFCLASSNONE,
a coredump is not generated. 

Unless you think this is a seriously bad idea or Bjorn over rules me,

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Thanks,
Mathieu

>  
>  	device_initialize(&rproc->dev);
>  	rproc->dev.parent = dev;
> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
> index 4869fb7d8fe4..16e2c496fd45 100644
> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> @@ -248,6 +248,9 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
>  			memset(ptr + filesz, 0, memsz - filesz);
>  	}
>  
> +	if (ret == 0)
> +		rproc->elf_class = class;
> +
>  	return ret;
>  }
>  EXPORT_SYMBOL(rproc_elf_load_segments);
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 1683d6c386a6..ed127b2d35ca 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -514,6 +514,7 @@ struct rproc {
>  	bool auto_boot;
>  	struct list_head dump_segments;
>  	int nb_vdev;
> +	u8 elf_class;
>  };
>  
>  /**
> -- 
> 2.15.0.276.g89ea799
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
