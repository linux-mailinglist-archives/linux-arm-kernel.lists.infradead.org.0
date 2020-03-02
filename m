Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C21121767E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 00:12:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alN92VzOa7PuLRpXvY2ax+2AfPg+jpZ8IIOnSKgpS5s=; b=sseHveLr2LVKhw
	W6GxSM25TcwYdVvuH/Nr0M6YqjYUTZevRI6UwQNBjrvg0WoLbvibpjqCWr/Pca3KD1M33E1W6SNo9
	Tosf1OjZGJwM3yMhm6YRRFwsn8/CUO/0WhOWeJ9bWe6y4nuFpWsnwhZmRjEAQREuo7VA7M2HRTN3Q
	7ByUFZ/7IRwrP6pXixbFgfV968757QrYUaU9G3zzvYz4kwNTB1T8ZCce9uNblXQcQ5F6wkkLWSqq1
	ndY7kFuq5+MHNdsw5XDosRaSlvRfI3owbh117vn1l75Aj7/V6TswyViUfRKsE7N3oG7SKgZShKKDe
	da0UPszb40BaIrzE+IZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8uEy-0002Ir-58; Mon, 02 Mar 2020 23:12:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8uEq-0002IU-Vt
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 23:12:42 +0000
Received: by mail-pf1-x442.google.com with SMTP id f5so445154pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 15:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=cZHkLPyQi4lEOu+PeEyqnnKuw6NNgD2Yqbp/RubP2bc=;
 b=ofnLSi+jS3OXUcK8vE0gMbM1QBDxh7b5jS1IxWi3HkGpKKOEcm3WJd9aEk0Us7IUKO
 8nmFWDJfiuwlFyqsXCcVKRAwIBQaYQl/evwVVX80Y3CPQhjcxITZ1o5Jk7P5xhZf2YmV
 JUbFU5wRnrXfDlxWlBhwcEx9xdQfFjkkoY8zYrA9cLB/YTtxDa+Ix3UgLS37laXFK+lF
 YO5R32/SpDIyenCGvur0FFCxabBbXTYfaf1ITOLkeTmU1Kzvh/HtnQ2WmKgFvoaxK9pj
 quRJ7rwJz3FmBNE/PilR6rrZsmbZ6ywl2wXJqkGSS2Gt0C8UBc0UKbqYmILkeUOjgzI9
 blIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cZHkLPyQi4lEOu+PeEyqnnKuw6NNgD2Yqbp/RubP2bc=;
 b=FJ+GXae/H2MzUynRNF4/KNEheeUKP4oHdsOB0FahO27/2Str3OA78DoWXZHLAGgBjJ
 bRBR/SjbVpTWX+H4M+Dxn/LXKb65fW/N5lXc18Y1LCJNuBWgfqPnPJLTPHUTsXKoyBuh
 et8NbF5v36ptcjCSQ3mPXmqlBI4KidPDeFto0JwfzQjcR74PXXlJfAbW1yV9aTZKbUxV
 ZA3Q5OTkvM/Yil453jvF5uVmYOEHkq1wCOYT/dRKnkhscYYscGF4kRLS+nQYifJM1TE4
 oikZC/t0wGEJZ5QQB7AT/tNdT6vOVt29jOhrB7Ep1m5AAWM7VUAN5yXErX+saUhUkoKY
 O+3A==
X-Gm-Message-State: ANhLgQ3bqBaCE6BtBPhqN3HFNhCHNfzdIXOz0tqteIrUrQRzAkiFjcir
 JeGhFy+CvVtEH2dGdjGYvcnrFw==
X-Google-Smtp-Source: ADFU+vsbt7xW95b/HirVpnFvyPznPrDnd/h85vDaRcM55B9JmCtuRXICrRpYIjC1wXlERTK8an7NHg==
X-Received: by 2002:a63:f403:: with SMTP id g3mr1256700pgi.62.1583190759696;
 Mon, 02 Mar 2020 15:12:39 -0800 (PST)
Received: from yoga (pat_11.qualcomm.com. [192.35.156.11])
 by smtp.gmail.com with ESMTPSA id x65sm9095993pfd.34.2020.03.02.15.12.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 15:12:39 -0800 (PST)
Date: Mon, 2 Mar 2020 15:12:36 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Clement Leger <cleger@kalray.eu>
Subject: Re: [PATCH v5 4/8] remoteproc: Add elf helpers to access elf64 and
 elf32 fields
Message-ID: <20200302231236.GD262924@yoga>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-5-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302093902.27849-5-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_151241_028161_C2A4CFC5 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 Patrice Chotard <patrice.chotard@st.com>, linux-kernel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 s-anna <s-anna@ti.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 02 Mar 01:38 PST 2020, Clement Leger wrote:

> elf32 and elf64 mainly differ by their types. In order to avoid
> copy/pasting the whole loader code, generate static inline functions
> which will access values according to the elf class. It allows to
> keep a common loader basis.
> In order to accommodate both elf types sizes, the maximum size for a
> elf header member is chosen using the maximum value of the field for
> both elf class.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/remoteproc/remoteproc_elf_helpers.h | 96 +++++++++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
>  create mode 100644 drivers/remoteproc/remoteproc_elf_helpers.h
> 
> diff --git a/drivers/remoteproc/remoteproc_elf_helpers.h b/drivers/remoteproc/remoteproc_elf_helpers.h
> new file mode 100644
> index 000000000000..4b6be7b6bf4d
> --- /dev/null
> +++ b/drivers/remoteproc/remoteproc_elf_helpers.h
> @@ -0,0 +1,96 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Remote processor elf helpers defines
> + *
> + * Copyright (C) 2020 Kalray, Inc.
> + */
> +
> +#ifndef REMOTEPROC_ELF_LOADER_H
> +#define REMOTEPROC_ELF_LOADER_H
> +
> +#include <linux/elf.h>
> +#include <linux/types.h>
> +
> +/**
> + * fw_elf_get_class - Get elf class
> + * @fw: the ELF firmware image
> + *
> + * Note that we use and elf32_hdr to access the class since the start of the
> + * struct is the same for both elf class
> + *
> + * Return: elf class of the firmware
> + */
> +static inline u8 fw_elf_get_class(const struct firmware *fw)
> +{
> +	struct elf32_hdr *ehdr = (struct elf32_hdr *)fw->data;
> +
> +	return ehdr->e_ident[EI_CLASS];
> +}
> +
> +static inline void elf_hdr_init_ident(struct elf32_hdr *hdr, u8 class)
> +{
> +	memcpy(hdr->e_ident, ELFMAG, SELFMAG);
> +	hdr->e_ident[EI_CLASS] = class;
> +	hdr->e_ident[EI_DATA] = ELFDATA2LSB;
> +	hdr->e_ident[EI_VERSION] = EV_CURRENT;
> +	hdr->e_ident[EI_OSABI] = ELFOSABI_NONE;
> +}
> +
> +/* Generate getter and setter for a specific elf struct/field */
> +#define ELF_GEN_FIELD_GET_SET(__s, __field, __type) \
> +static inline __type elf_##__s##_get_##__field(u8 class, const void *arg) \
> +{ \
> +	if (class == ELFCLASS32) \
> +		return (__type) ((const struct elf32_##__s *) arg)->__field; \
> +	else \
> +		return (__type) ((const struct elf64_##__s *) arg)->__field; \
> +} \
> +static inline void elf_##__s##_set_##__field(u8 class, void *arg, \
> +					     __type value) \
> +{ \
> +	if (class == ELFCLASS32) \
> +		((struct elf32_##__s *) arg)->__field = (__type) value; \
> +	else \
> +		((struct elf64_##__s *) arg)->__field = (__type) value; \
> +}
> +
> +ELF_GEN_FIELD_GET_SET(hdr, e_entry, u64)
> +ELF_GEN_FIELD_GET_SET(hdr, e_phnum, u16)
> +ELF_GEN_FIELD_GET_SET(hdr, e_shnum, u16)
> +ELF_GEN_FIELD_GET_SET(hdr, e_phoff, u64)
> +ELF_GEN_FIELD_GET_SET(hdr, e_shoff, u64)
> +ELF_GEN_FIELD_GET_SET(hdr, e_shstrndx, u16)
> +ELF_GEN_FIELD_GET_SET(hdr, e_machine, u16)
> +ELF_GEN_FIELD_GET_SET(hdr, e_type, u16)
> +ELF_GEN_FIELD_GET_SET(hdr, e_version, u32)
> +ELF_GEN_FIELD_GET_SET(hdr, e_ehsize, u32)
> +ELF_GEN_FIELD_GET_SET(hdr, e_phentsize, u16)
> +
> +ELF_GEN_FIELD_GET_SET(phdr, p_paddr, u64)
> +ELF_GEN_FIELD_GET_SET(phdr, p_vaddr, u64)
> +ELF_GEN_FIELD_GET_SET(phdr, p_filesz, u64)
> +ELF_GEN_FIELD_GET_SET(phdr, p_memsz, u64)
> +ELF_GEN_FIELD_GET_SET(phdr, p_type, u32)
> +ELF_GEN_FIELD_GET_SET(phdr, p_offset, u64)
> +ELF_GEN_FIELD_GET_SET(phdr, p_flags, u32)
> +ELF_GEN_FIELD_GET_SET(phdr, p_align, u64)
> +
> +ELF_GEN_FIELD_GET_SET(shdr, sh_size, u64)
> +ELF_GEN_FIELD_GET_SET(shdr, sh_offset, u64)
> +ELF_GEN_FIELD_GET_SET(shdr, sh_name, u32)
> +ELF_GEN_FIELD_GET_SET(shdr, sh_addr, u64)
> +
> +#define ELF_STRUCT_SIZE(__s) \
> +static inline unsigned long elf_size_of_##__s(u8 class) \
> +{ \
> +	if (class == ELFCLASS32)\
> +		return sizeof(struct elf32_##__s); \
> +	else \
> +		return sizeof(struct elf64_##__s); \
> +}
> +
> +ELF_STRUCT_SIZE(shdr)
> +ELF_STRUCT_SIZE(phdr)
> +ELF_STRUCT_SIZE(hdr)
> +
> +#endif /* REMOTEPROC_ELF_LOADER_H */
> -- 
> 2.15.0.276.g89ea799
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
