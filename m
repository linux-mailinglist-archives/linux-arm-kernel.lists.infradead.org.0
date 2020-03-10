Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1661801B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:23:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdkG3oEJSPaNq8CnThmCNfaw+EsncDEzpKxLKk7lBZU=; b=jcxSbIin92jVY2
	U05E3Va1pmdd5Z48M/HzabznTHCUPgZmxj2qrXMF417KS19EosLAxT/jU88BLwWn341AZstGaHuQG
	kiNbTF+ib5YUncAIi7yGMRO2Cez4x4w321NDTFRXNst80xZNT3ZsZO9D8nT5RHVpRm8KNpwl6PylF
	ZYiBYX9Vmb071y8jQlYk+MzJrcUb3R/rNGK9m7kZXUoSxo4DcjegSe3rnsZyR3spsN/3z9jXZ5rpy
	nrxls6ZSHVl0iYMJBIWdwafCIoCsGMwwNImBOCRE8Tmft5mkJ5AmB6CHvqgIUm/ecPRuw8eJ5+LLs
	b92hhGPRghsZEkEJjnBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgiu-0004cq-SY; Tue, 10 Mar 2020 15:23:12 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBggN-0002O6-2x
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:20:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id b72so3058379pfb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 08:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=6MhFgIdze8CFf2DOrBawMYLjN6c8ytgEy4KTgM5UsKI=;
 b=m/zNCZ70DcHzitOz0JSTs00aicOWLVtUPobgMC2juOgSuvBdRUs2ULP0Ups4xAIQ4+
 GkiAoRRV7UEuj9/HSK3R8iaYqmCTarzCPhjS+DlYPrfcEvSBosUBkj+izKK2cQjS8BjW
 GFq1ZXcm0Cgr3caOvqgwfypDmqe3jbdjn018IQLTmBYACIgMYqij/5lRoPNNCUMhGdhX
 gTfK86J+0GkyCRD62BYej6x5QSHQ4y6zPt7H+6m6gOtGalne8wVoFc0jlhTdYfolU+Qu
 Ng3TUPVBRljKkoRg3ffG8G99Z61/jah0DJbo9NMGFbjDtP1dnbj6HzePS3abQQ81/6bp
 UdNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=6MhFgIdze8CFf2DOrBawMYLjN6c8ytgEy4KTgM5UsKI=;
 b=U05ezQOPcZ28naOPORt4k1IhVe/+MiRFlKqx4xKNxib/GNyorBHfwEdpm/F7BCkd9O
 YhRT76Dc5bjFrFsr1HWpBA+QVNx494OCuUaMrf83XZ2OnIpADv3jFo1NeK0APFJKHJ52
 pN2A9Gpshano8Sppm9Db+Y/6Eo+6ry8uxNWQTM2guY1KxEnfu272aW+Wq6JiMteeYf+M
 drwY5ty1eZ/Rz1DPZn/xsWoE8ZIyr7TWuimiiVYQScbkNOqHu2Xjq4g0X9fktQrrILpd
 UmtN+7WR6cBAsZMBzfPxh9Bi+cpKxQaofIdjgHLxnJzEKHxaACLdCsH8SNxcKSTFFXPj
 fdZg==
X-Gm-Message-State: ANhLgQ3pCiy42/kDW0Cfise6ZHG6JYzXDuyHi7KcRuTqzFeqWfYqQS6K
 eyrCtDLZj66evlYl1/cK77bSTg==
X-Google-Smtp-Source: ADFU+vuDMeVSrBmcnm1f3SeMtYbGOm0trJg8lN9EATMG0oGxhlTM5PSR5uh75bg8T3fDm2w5zn88ZA==
X-Received: by 2002:a62:ce48:: with SMTP id y69mr10163479pfg.178.1583853634107; 
 Tue, 10 Mar 2020 08:20:34 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id dw19sm2662207pjb.16.2020.03.10.08.20.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 08:20:33 -0700 (PDT)
Date: Tue, 10 Mar 2020 09:20:31 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v5 5/8] remoteproc: Rename rproc_elf_sanity_check for elf32
Message-ID: <20200310152031.GA25781@xps15>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-6-cleger@kalray.eu>
 <20200302231342.GE262924@yoga>
 <482678048.7666348.1583222551942.JavaMail.zimbra@kalray.eu>
 <20200310000005.GF14744@builder>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310000005.GF14744@builder>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_082035_178608_36341F5B 
X-CRM114-Status: GOOD (  26.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Fabio Estevam <festevam@gmail.com>,
 Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Cl?ment Leger <cleger@kalrayinc.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc <linux-doc@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, s-anna <s-anna@ti.com>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 05:00:05PM -0700, Bjorn Andersson wrote:
> On Tue 03 Mar 00:02 PST 2020, Cl?ment Leger wrote:
> =

> > Hi Bjorn, =

> > =

> > ----- On 3 Mar, 2020, at 00:13, Bjorn Andersson bjorn.andersson@linaro.=
org wrote:
> > =

> > > On Mon 02 Mar 01:38 PST 2020, Clement Leger wrote:
> > > =

> > >> Since this function will be modified to support both elf32 and elf64,
> > >> rename the existing one to elf32 (which is the only supported format
> > >> at the moment). This will allow not to introduce possible side effect
> > >> when adding elf64 support (ie: all backends will still support only
> > >> elf32 if not requested explicitely using rproc_elf_sanity_check).
> > >> =

> > > =

> > > Is there a reason for preventing ELF64 binaries be loaded?
> > =

> > I decided to go this way to let driver maintainer decide if they want
> > to support elf64 to avoid problems with 64bits addresses/sizes which do
> > not fit in their native type (size_t for instance). This is probably
> > not going to happen and there are additionnal checks before calling
> > rproc_da_to_va. And addresses should be filtered by rproc_da_to_va.
> > So, actually it seems there is no reason to forbid supporting elf32/64
> > for all drivers.
> > =

> =

> I was hoping to hear some additional feedback on this from others.

I didn't follow up on this one because I agreed with your assesment and did=
n't
think it was needed.

Simply put I would rather see rproc_elf_sanity_check() gain support for elf=
64
and let the platform code decide what to do with format they don't support
rather than spinning a new function.

> =

> I've merge the patch as is, but think it would be nice to clean this up
> and just have the driver ignore if fed a 32 or 64-elf.

It would be really nice to see this cleaned up in time for the coming merge
window...

Thanks
Mathieu

> =

> Regards,
> Bjorn
> =

> > Regards,
> > =

> > Cl=E9ment
> > =

> > > =

> > > Regards,
> > > Bjorn
> > > =

> > >> Signed-off-by: Clement Leger <cleger@kalray.eu>
> > >> ---
> > >>  drivers/remoteproc/remoteproc_core.c       | 2 +-
> > >>  drivers/remoteproc/remoteproc_elf_loader.c | 6 +++---
> > >>  drivers/remoteproc/remoteproc_internal.h   | 2 +-
> > >>  drivers/remoteproc/st_remoteproc.c         | 2 +-
> > >>  drivers/remoteproc/st_slim_rproc.c         | 2 +-
> > >>  drivers/remoteproc/stm32_rproc.c           | 2 +-
> > >>  6 files changed, 8 insertions(+), 8 deletions(-)
> > >> =

> > >> diff --git a/drivers/remoteproc/remoteproc_core.c
> > >> b/drivers/remoteproc/remoteproc_core.c
> > >> index 4bfaf4a3c4a3..99f0b796fbc7 100644
> > >> --- a/drivers/remoteproc/remoteproc_core.c
> > >> +++ b/drivers/remoteproc/remoteproc_core.c
> > >> @@ -2055,7 +2055,7 @@ struct rproc *rproc_alloc(struct device *dev, =
const char
> > >> *name,
> > >>  		rproc->ops->load =3D rproc_elf_load_segments;
> > >>  		rproc->ops->parse_fw =3D rproc_elf_load_rsc_table;
> > >>  		rproc->ops->find_loaded_rsc_table =3D rproc_elf_find_loaded_rsc_t=
able;
> > >> -		rproc->ops->sanity_check =3D rproc_elf_sanity_check;
> > >> +		rproc->ops->sanity_check =3D rproc_elf32_sanity_check;
> > >>  		rproc->ops->get_boot_addr =3D rproc_elf_get_boot_addr;
> > >>  	}
> > >>  =

> > >> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c
> > >> b/drivers/remoteproc/remoteproc_elf_loader.c
> > >> index c2a9783cfb9a..5a67745f2638 100644
> > >> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> > >> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> > >> @@ -25,13 +25,13 @@
> > >>  #include "remoteproc_internal.h"
> > >>  =

> > >>  /**
> > >> - * rproc_elf_sanity_check() - Sanity Check ELF firmware image
> > >> + * rproc_elf_sanity_check() - Sanity Check ELF32 firmware image
> > >>   * @rproc: the remote processor handle
> > >>   * @fw: the ELF firmware image
> > >>   *
> > >>   * Make sure this fw image is sane.
> > >>   */
> > >> -int rproc_elf_sanity_check(struct rproc *rproc, const struct firmwa=
re *fw)
> > >> +int rproc_elf32_sanity_check(struct rproc *rproc, const struct firm=
ware *fw)
> > >>  {
> > >>  	const char *name =3D rproc->firmware;
> > >>  	struct device *dev =3D &rproc->dev;
> > >> @@ -89,7 +89,7 @@ int rproc_elf_sanity_check(struct rproc *rproc, co=
nst struct
> > >> firmware *fw)
> > >>  =

> > >>  	return 0;
> > >>  }
> > >> -EXPORT_SYMBOL(rproc_elf_sanity_check);
> > >> +EXPORT_SYMBOL(rproc_elf32_sanity_check);
> > >>  =

> > >>  /**
> > >>   * rproc_elf_get_boot_addr() - Get rproc's boot address.
> > >> diff --git a/drivers/remoteproc/remoteproc_internal.h
> > >> b/drivers/remoteproc/remoteproc_internal.h
> > >> index 0deae5f237b8..28639c588d58 100644
> > >> --- a/drivers/remoteproc/remoteproc_internal.h
> > >> +++ b/drivers/remoteproc/remoteproc_internal.h
> > >> @@ -54,7 +54,7 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, =
size_t len);
> > >>  phys_addr_t rproc_va_to_pa(void *cpu_addr);
> > >>  int rproc_trigger_recovery(struct rproc *rproc);
> > >>  =

> > >> -int rproc_elf_sanity_check(struct rproc *rproc, const struct firmwa=
re *fw);
> > >> +int rproc_elf32_sanity_check(struct rproc *rproc, const struct firm=
ware *fw);
> > >>  u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmw=
are *fw);
> > >>  int rproc_elf_load_segments(struct rproc *rproc, const struct firmw=
are *fw);
> > >>  int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firm=
ware *fw);
> > >> diff --git a/drivers/remoteproc/st_remoteproc.c
> > >> b/drivers/remoteproc/st_remoteproc.c
> > >> index a3268d95a50e..a6cbfa452764 100644
> > >> --- a/drivers/remoteproc/st_remoteproc.c
> > >> +++ b/drivers/remoteproc/st_remoteproc.c
> > >> @@ -233,7 +233,7 @@ static const struct rproc_ops st_rproc_ops =3D {
> > >>  	.parse_fw		=3D st_rproc_parse_fw,
> > >>  	.load			=3D rproc_elf_load_segments,
> > >>  	.find_loaded_rsc_table	=3D rproc_elf_find_loaded_rsc_table,
> > >> -	.sanity_check		=3D rproc_elf_sanity_check,
> > >> +	.sanity_check		=3D rproc_elf32_sanity_check,
> > >>  	.get_boot_addr		=3D rproc_elf_get_boot_addr,
> > >>  };
> > >>  =

> > >> diff --git a/drivers/remoteproc/st_slim_rproc.c
> > >> b/drivers/remoteproc/st_slim_rproc.c
> > >> index 09bcb4d8b9e0..3cca8b65a8db 100644
> > >> --- a/drivers/remoteproc/st_slim_rproc.c
> > >> +++ b/drivers/remoteproc/st_slim_rproc.c
> > >> @@ -203,7 +203,7 @@ static const struct rproc_ops slim_rproc_ops =3D=
 {
> > >>  	.da_to_va       =3D slim_rproc_da_to_va,
> > >>  	.get_boot_addr	=3D rproc_elf_get_boot_addr,
> > >>  	.load		=3D rproc_elf_load_segments,
> > >> -	.sanity_check	=3D rproc_elf_sanity_check,
> > >> +	.sanity_check	=3D rproc_elf32_sanity_check,
> > >>  };
> > >>  =

> > >>  /**
> > >> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/s=
tm32_rproc.c
> > >> index a18f88044111..9a8b5f5e2572 100644
> > >> --- a/drivers/remoteproc/stm32_rproc.c
> > >> +++ b/drivers/remoteproc/stm32_rproc.c
> > >> @@ -505,7 +505,7 @@ static struct rproc_ops st_rproc_ops =3D {
> > >>  	.load		=3D rproc_elf_load_segments,
> > >>  	.parse_fw	=3D stm32_rproc_parse_fw,
> > >>  	.find_loaded_rsc_table =3D rproc_elf_find_loaded_rsc_table,
> > >> -	.sanity_check	=3D rproc_elf_sanity_check,
> > >> +	.sanity_check	=3D rproc_elf32_sanity_check,
> > >>  	.get_boot_addr	=3D rproc_elf_get_boot_addr,
> > >>  };
> > >>  =

> > >> --
> > >> 2.15.0.276.g89ea799

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
