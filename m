Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74026159CF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 00:11:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41Q2qiJ2WAh7DJSiCwCCnfcPK5OvpazOFIfulvq7C6Q=; b=YZPbhAtfM/u7rL
	pWvzAqy5vqTXcASMNxW0YheVUdW77PHLBYqcNEsVn+WROIfM3xisqI/yIV81EillNbY/Y0qJ0OAyJ
	DCtB+jnbhK7j8t9nTrxQDQGPttE7lPvjIG/x33yenmk1fgKyepW9QSKYoP4C2kujs135SbULjgoj1
	5/QCy+CA05y7ALasLmHpHw5IT+jpPiPda31q/KIb0Fxhg3OtXmXXfgruRXktKTjESAe9yjzi4PXNV
	J+Mj0+LzJ2crXWqu4IeKwXpol3dsq2GeM1ITiTTIJX0TvU8gu/581syA3sSLoIcRwPHwSs0rdr6Jf
	dX8sN2oaAiMW2V8YN3Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1egl-0000v9-1e; Tue, 11 Feb 2020 23:11:31 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1egd-0000un-0u
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 23:11:24 +0000
Received: by mail-yw1-xc41.google.com with SMTP id i126so175219ywe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 15:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EXXb6hCMslPYpe5QP7cxVvPU1qd+QxQG6hNKW0K/ZLY=;
 b=fop2NIzBeVUkWE0MlDvWAQtd9quHXKUj9/QUT8DzCVcakN2DfmHAbDUwD56PGJNQMw
 0b+nhl7EM6w5ux123fhGvdDJlkNi5i+W6PxI6/IGmYEeOkZNyg7FxpeFL4hke2j2QRwD
 d8Qo97MbA/K8UziNakOSCGkH31E6H2B27AUPVpddgO2cVYm1GD9+dOFx4/NZa23LFNon
 vKBmrRqhXJF9ReafwFZONeQYUFAKlHV5vCIbfAdzMeuKKoEw7Yb2QPqx6ce2KCc5wzUy
 QNbxBDwY5VY63Y+YtBk3M6ueHAgpi70zeFc7v8zNFQMceaBolVO4appQ3jPKdbL382TM
 exkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EXXb6hCMslPYpe5QP7cxVvPU1qd+QxQG6hNKW0K/ZLY=;
 b=J0mqlvSBYqndNi7/P6DEiTswpP02bJS/Xht2ifytx6CUnGby5cTaXguU4rzDGLBNzR
 m317AqILnEl18tFkyj5wOHGWCL7zzevfuMldmdgQTNQZKvX7HXedMRT/LyWAoY3aY33C
 5W4ke7MrMOQyNtMYGz6gKR3Ecwono3G7feY8W8QpsNNomLseL8zDGju3SywTfNSYrodd
 O8Pdir6/xjQMOGTx3ZRdYSYL/hOCSpmeBnJL+Y2Y5WNBXMliN+XQFGlfbbEEN+HXQukl
 jnKjNNFgjQ1xOluiwq5R1JYimW97oulrk1u2vAW1SczSRJWxsT6t9niYzsIjOlKaV6Jd
 Kjxw==
X-Gm-Message-State: APjAAAVoIYYryvFUAG0s3CvuZn88la4aaBG9zYusUKqkyS8dr3yZwt8r
 6fq7ZIuUUFk+Ujrz2SUfMfV+ow==
X-Google-Smtp-Source: APXvYqxn6dULxclCbYe7wV93arLCNkiqfm9Jqlr1l64724U8Yzo5ZIfLhTvKqljCByaK0Y1WpNnhjQ==
X-Received: by 2002:a81:1fc2:: with SMTP id f185mr8054253ywf.241.1581462681779; 
 Tue, 11 Feb 2020 15:11:21 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id i84sm2571884ywc.43.2020.02.11.15.11.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 15:11:21 -0800 (PST)
Date: Tue, 11 Feb 2020 16:11:18 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Clement Leger <cleger@kalray.eu>
Subject: Re: [PATCH v4 5/5] remoteproc: Adapt coredump to generate correct
 elf type
Message-ID: <20200211231118.GB27770@xps15>
References: <527785289.2852303.1581062223707.JavaMail.zimbra@kalray.eu>
 <20200210162209.23149-1-cleger@kalray.eu>
 <20200210162209.23149-6-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210162209.23149-6-cleger@kalray.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_151123_077242_83A272C0 
X-CRM114-Status: GOOD (  22.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Feb 10, 2020 at 05:22:09PM +0100, Clement Leger wrote:
> Now that remoteproc can load an elf64, coredump elf class should be
> the same as the loaded elf class. In order to do that, add a
> elf_class field to rproc with default values. If an elf is loaded
> successfully, these fields will be updated with the loaded elf class.
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
> index 9e6d3c6a60ee..ce70656ae150 100644
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
> @@ -1564,20 +1565,21 @@ EXPORT_SYMBOL(rproc_coredump_add_custom_segment);
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
> @@ -1588,33 +1590,33 @@ static void rproc_coredump(struct rproc *rproc)
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
> @@ -1630,8 +1632,8 @@ static void rproc_coredump(struct rproc *rproc)
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
> @@ -2029,6 +2031,7 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>  	rproc->name = name;
>  	rproc->priv = &rproc[1];
>  	rproc->auto_boot = true;
> +	rproc->elf_class = ELFCLASS32;

I suppose this is as good a place as any.

>  
>  	device_initialize(&rproc->dev);
>  	rproc->dev.parent = dev;
> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
> index 2ffb02a2ee36..07712a541ea6 100644
> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> @@ -220,6 +220,9 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
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
> index 82cebca9344c..113e356ce56a 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -514,6 +514,7 @@ struct rproc {
>  	bool auto_boot;
>  	struct list_head dump_segments;
>  	int nb_vdev;
> +	int elf_class;

Type 'int'?  I expected 'u8' as it is in the specification and in
rproc_elf_load_segments().

Thanks,
Mathieu


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
