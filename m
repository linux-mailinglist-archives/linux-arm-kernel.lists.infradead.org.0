Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E2217ECEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 00:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8+Kg/mcTefHOYt4MEln66JfktUq95dGQWSAi6czmqE=; b=s1AChJB/hq5tC4
	9f2jCshq25eteGUfISzfEj1Ul4DL3uf1JmztJ2c0yUweh36DaTLqLcBTd2u4Mi+GqnuPpZrXSe4pH
	9Ru3TdezZYufAIKvuSfkAfVckiePSftFHxQj7HcymnHq2inTMFw/AwI5XQ8jW5jZlaecDoQYnA7VQ
	DfXfQDNR+Pknc9S1zWtuD4DGCChCt1pTIOQ6xStGtZ8yy35NsfPQOZiUxIh1hyOhdUaPhF+fDxCRx
	F4fEMjoi4tY+r4hPM9tAj4tg7HLeyJWFrMCxqD1mT0X+BNtzg/CYx2DyC6eqs50O+SQybgoJKrAAQ
	ldi87l2YMYn6dbll5snw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBSGy-0006qr-Lv; Mon, 09 Mar 2020 23:57:24 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBSGq-0006pr-OI
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 23:57:18 +0000
Received: by mail-pj1-x1041.google.com with SMTP id d8so617351pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 16:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Wm5Lg2OwLb2Gbu8UbdOxInuFFy/j485NdtgtI1w3Uso=;
 b=ujTKLPaj9u3KLK5hwlZ/+TqVXXhRL4HdPMdOFe+PwRXGMA03qhOh3IS8bCIgGOfn+2
 zB2HKz6Oc2Ud0gyhpPcoKmfe0SfHvS1ZaACo9iJIJMjRjfeoTVIcq3CzC4Jx0kWY1w3j
 rXksS8cZMI9i4h2gNfQ+aeZ2I629bN73hLx8iUwZd60JcZgiCj0qkubn98L85GG4SKXd
 pLFl0JjNe/otONTb9RIeVrAhXgw1h+aVcVDUcObfGcAxsK9yX+CAhvPV20RrjRKYnS99
 S3LMIUDZCUYT3R75+2wunM4Hv6E5O0acqqdrKdDbiSQF7jiFImvWsL6OXMD9RiYueXfg
 ZD1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Wm5Lg2OwLb2Gbu8UbdOxInuFFy/j485NdtgtI1w3Uso=;
 b=rgSH+SaybAWQ26MNPCTkBYL4E+F0e7ts3LYT/uWcR8T6lmOp+Rd/O5gaNKhw37jgso
 +BuAcAE/0iWTcpRPKs1ucvbFQUO7Rb7LV4Pv5c94oFu/Sx9mE/PXS7a7aKaYZzs9mw0v
 iBrCavvPf5RKQHG6lD7elXAAR5CvZdauSank9GD6wcu8qE0nOSNwNW2rPWApZQkunwTt
 cSI/ElL00OzVQ1tj5vT9nDpHUGNeCHilR1uWDI8mMBeap+HVE3w+/U8lcRKh5w7sC0Rn
 CPsd8uTS/IFterhlzhT3+6NfMnNTYA6DaU7UmtkLu7+WlM9/uhK7I7FUAeJWP6Kq8HqI
 lA4g==
X-Gm-Message-State: ANhLgQ0NASUeWC6zsOptwl/BnZdRqc8/OSoUkQAONfLG1YpEHsI7O4ol
 tGTpOz3ofuG2gXBPbdM9ub/Shg==
X-Google-Smtp-Source: ADFU+vuICM5X4u6FyXIBRBP5ZXvJd/9oP2avw/hORIe39UaN62nh9Bh5YWGsAGP95j+U/WVfFkmKtw==
X-Received: by 2002:a17:90a:1912:: with SMTP id
 18mr1267198pjg.10.1583798234106; 
 Mon, 09 Mar 2020 16:57:14 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 184sm12651664pfe.11.2020.03.09.16.57.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 16:57:13 -0700 (PDT)
Date: Mon, 9 Mar 2020 16:57:10 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v5 8/8] remoteproc: Adapt coredump to generate correct
 elf type
Message-ID: <20200309235710.GE14744@builder>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-9-cleger@kalray.eu>
 <20200309203223.GE1399@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309203223.GE1399@xps15>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_165716_856773_9CE7B644 
X-CRM114-Status: GOOD (  27.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 Patrice Chotard <patrice.chotard@st.com>, linux-kernel@vger.kernel.org,
 Clement Leger <cleger@kalray.eu>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 s-anna <s-anna@ti.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 09 Mar 13:32 PDT 2020, Mathieu Poirier wrote:

> On Mon, Mar 02, 2020 at 10:39:02AM +0100, Clement Leger wrote:
> > Now that remoteproc can load an elf64, coredump elf class should be
> > the same as the loaded elf class. In order to do that, add a
> > elf_class field to rproc with default values. If an elf is loaded
> > successfully, this field will be updated with the loaded elf class.
> > Then, the coredump core code has been modified to use the generic elf
> > macro in order to create an elf file with correct class.
> > 
> > Signed-off-by: Clement Leger <cleger@kalray.eu>
> > ---
> >  drivers/remoteproc/remoteproc_core.c       | 67 ++++++++++++++++--------------
> >  drivers/remoteproc/remoteproc_elf_loader.c |  3 ++
> >  include/linux/remoteproc.h                 |  1 +
> >  3 files changed, 39 insertions(+), 32 deletions(-)
> > 
> > diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> > index b932a64a2be2..f923355aa3f9 100644
> > --- a/drivers/remoteproc/remoteproc_core.c
> > +++ b/drivers/remoteproc/remoteproc_core.c
> > @@ -38,6 +38,7 @@
> >  #include <linux/platform_device.h>
> >  
> >  #include "remoteproc_internal.h"
> > +#include "remoteproc_elf_helpers.h"
> >  
> >  #define HIGH_BITS_MASK 0xFFFFFFFF00000000ULL
> >  
> > @@ -1566,20 +1567,21 @@ EXPORT_SYMBOL(rproc_coredump_add_custom_segment);
> >  static void rproc_coredump(struct rproc *rproc)
> >  {
> >  	struct rproc_dump_segment *segment;
> > -	struct elf32_phdr *phdr;
> > -	struct elf32_hdr *ehdr;
> > +	void *phdr;
> > +	void *ehdr;
> >  	size_t data_size;
> >  	size_t offset;
> >  	void *data;
> >  	void *ptr;
> > +	u8 class = rproc->elf_class;
> >  	int phnum = 0;
> >  
> >  	if (list_empty(&rproc->dump_segments))
> >  		return;
> >  
> > -	data_size = sizeof(*ehdr);
> > +	data_size = elf_size_of_hdr(class);
> >  	list_for_each_entry(segment, &rproc->dump_segments, node) {
> > -		data_size += sizeof(*phdr) + segment->size;
> > +		data_size += elf_size_of_phdr(class) + segment->size;
> >  
> >  		phnum++;
> >  	}
> > @@ -1590,33 +1592,33 @@ static void rproc_coredump(struct rproc *rproc)
> >  
> >  	ehdr = data;
> >  
> > -	memset(ehdr, 0, sizeof(*ehdr));
> > -	memcpy(ehdr->e_ident, ELFMAG, SELFMAG);
> > -	ehdr->e_ident[EI_CLASS] = ELFCLASS32;
> > -	ehdr->e_ident[EI_DATA] = ELFDATA2LSB;
> > -	ehdr->e_ident[EI_VERSION] = EV_CURRENT;
> > -	ehdr->e_ident[EI_OSABI] = ELFOSABI_NONE;
> > -	ehdr->e_type = ET_CORE;
> > -	ehdr->e_machine = EM_NONE;
> > -	ehdr->e_version = EV_CURRENT;
> > -	ehdr->e_entry = rproc->bootaddr;
> > -	ehdr->e_phoff = sizeof(*ehdr);
> > -	ehdr->e_ehsize = sizeof(*ehdr);
> > -	ehdr->e_phentsize = sizeof(*phdr);
> > -	ehdr->e_phnum = phnum;
> > -
> > -	phdr = data + ehdr->e_phoff;
> > -	offset = ehdr->e_phoff + sizeof(*phdr) * ehdr->e_phnum;
> > +	memset(ehdr, 0, elf_size_of_hdr(class));
> > +	/* e_ident field is common for both elf32 and elf64 */
> > +	elf_hdr_init_ident(ehdr, class);
> > +
> > +	elf_hdr_set_e_type(class, ehdr, ET_CORE);
> > +	elf_hdr_set_e_machine(class, ehdr, EM_NONE);
> > +	elf_hdr_set_e_version(class, ehdr, EV_CURRENT);
> > +	elf_hdr_set_e_entry(class, ehdr, rproc->bootaddr);
> > +	elf_hdr_set_e_phoff(class, ehdr, elf_size_of_hdr(class));
> > +	elf_hdr_set_e_ehsize(class, ehdr, elf_size_of_hdr(class));
> > +	elf_hdr_set_e_phentsize(class, ehdr, elf_size_of_phdr(class));
> > +	elf_hdr_set_e_phnum(class, ehdr, phnum);
> > +
> > +	phdr = data + elf_hdr_get_e_phoff(class, ehdr);
> > +	offset = elf_hdr_get_e_phoff(class, ehdr);
> > +	offset += elf_size_of_phdr(class) * elf_hdr_get_e_phnum(class, ehdr);
> > +
> >  	list_for_each_entry(segment, &rproc->dump_segments, node) {
> > -		memset(phdr, 0, sizeof(*phdr));
> > -		phdr->p_type = PT_LOAD;
> > -		phdr->p_offset = offset;
> > -		phdr->p_vaddr = segment->da;
> > -		phdr->p_paddr = segment->da;
> > -		phdr->p_filesz = segment->size;
> > -		phdr->p_memsz = segment->size;
> > -		phdr->p_flags = PF_R | PF_W | PF_X;
> > -		phdr->p_align = 0;
> > +		memset(phdr, 0, elf_size_of_phdr(class));
> > +		elf_phdr_set_p_type(class, phdr, PT_LOAD);
> > +		elf_phdr_set_p_offset(class, phdr, offset);
> > +		elf_phdr_set_p_vaddr(class, phdr, segment->da);
> > +		elf_phdr_set_p_paddr(class, phdr, segment->da);
> > +		elf_phdr_set_p_filesz(class, phdr, segment->size);
> > +		elf_phdr_set_p_memsz(class, phdr, segment->size);
> > +		elf_phdr_set_p_flags(class, phdr, PF_R | PF_W | PF_X);
> > +		elf_phdr_set_p_align(class, phdr, 0);
> >  
> >  		if (segment->dump) {
> >  			segment->dump(rproc, segment, data + offset);
> > @@ -1632,8 +1634,8 @@ static void rproc_coredump(struct rproc *rproc)
> >  			}
> >  		}
> >  
> > -		offset += phdr->p_filesz;
> > -		phdr++;
> > +		offset += elf_phdr_get_p_filesz(class, phdr);
> > +		phdr += elf_size_of_phdr(class);
> >  	}
> >  
> >  	dev_coredumpv(&rproc->dev, data, data_size, GFP_KERNEL);
> > @@ -2031,6 +2033,7 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
> >  	rproc->name = name;
> >  	rproc->priv = &rproc[1];
> >  	rproc->auto_boot = true;
> > +	rproc->elf_class = ELFCLASS32;
> 
> I would initialise this to ELFCLASSNONE to make sure that if a platform driver
> overwrites rproc_elf_load_segments or doesn't provide one, we don't falsely
> deduce the elf type.  It goes without saying that if elf_class == ELFCLASSNONE,
> a coredump is not generated. 
> 

I like the idea of making the choice explicit, perhaps even more
explicit than the assumption that the coredumps should be of the same
type as the ELF loaded. Note that it's different consumers of the two
ELF files.

> Unless you think this is a seriously bad idea or Bjorn over rules me,
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 

Not sure if it count as "over ruling", I accept your suggestion but used
your R-b to merge the patch as is, no need to hold this up any longer.

Clement, can you please follow up with a patch implementing this (don't
forget that the qcom drivers doesn't use rproc_elf_load_segments())

Thanks Clement and thanks for the reviews Mathieu.

Regards,
Bjorn

> Thanks,
> Mathieu
> 
> >  
> >  	device_initialize(&rproc->dev);
> >  	rproc->dev.parent = dev;
> > diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
> > index 4869fb7d8fe4..16e2c496fd45 100644
> > --- a/drivers/remoteproc/remoteproc_elf_loader.c
> > +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> > @@ -248,6 +248,9 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
> >  			memset(ptr + filesz, 0, memsz - filesz);
> >  	}
> >  
> > +	if (ret == 0)
> > +		rproc->elf_class = class;
> > +
> >  	return ret;
> >  }
> >  EXPORT_SYMBOL(rproc_elf_load_segments);
> > diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> > index 1683d6c386a6..ed127b2d35ca 100644
> > --- a/include/linux/remoteproc.h
> > +++ b/include/linux/remoteproc.h
> > @@ -514,6 +514,7 @@ struct rproc {
> >  	bool auto_boot;
> >  	struct list_head dump_segments;
> >  	int nb_vdev;
> > +	u8 elf_class;
> >  };
> >  
> >  /**
> > -- 
> > 2.15.0.276.g89ea799
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
