Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D5A159CFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 00:13:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnf7DSxWj502UNVpynClYRI54bK+A9etvEOXULXTKIo=; b=i2DtVWlgVeIO4U
	QMaqWipdrOP/FrtTj8C63gzIDxdoJOdDraJZ2EVsQTk3D0FI3dYLYhN3hCrm4cBD6DddGFk5zGCaP
	jXHv9Q+ywKZYHSlHrxq0ueUFMG9Hvz/QztGnkHb1drCliqsRIaWi4IXMWKVd92HMlrxZb7DSCWCx6
	xGpyQWAWuh38AYPG8WO3wOFCD3IarhbdC3gXEN3mAINNExhr0Fj/N3acnlVGFfcogCwC0/F/SsgAp
	Ep3rF5vuzpbWVikrAmpwW29jpj0gch/uIz5as/75SDzIjHTRAmGcmAQPhWrDpBGO3nnt9kqqev+Mk
	doDPETOgv+NDx/FxEOGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1eiI-0001SW-8N; Tue, 11 Feb 2020 23:13:06 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1eiA-0001SA-A3
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 23:12:59 +0000
Received: by mail-yb1-xb43.google.com with SMTP id v12so6281777ybi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 15:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=asxH5rE1mHmxca38giWrHRQ20XhnB22SkpjtANiGhwo=;
 b=yz4M8AJnylgO83dqd5cHyCjYaG5DRQ4oA07sMnefBQQQRRBCvVJY+osWsi+9Nu03Ym
 Nd18a44FRrJAJZ8GtRwQxwQpmiKD3/0GcxsgtiKJ50Oju6HP+mnhBMLqOxFNVrA6OJWt
 XSebUd/CBV4Y5UMZsn9YFteKAlIMCXiRs740o+q3oOGzk5H5nUFVQcxvtaqcZCrJXyZ4
 BSLVbiNVuufPe1A+TwmfZFeG7PX4HQvLeCsHqB47yQI69ky0//yxUSf9DnwZBJ+lktSw
 OQwg05nLXKwaryExroWR4AWqlmEVCxSUAH7YtiRHXA+t3Rb0xlAw3HW1Cr/74HddoJab
 zl+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=asxH5rE1mHmxca38giWrHRQ20XhnB22SkpjtANiGhwo=;
 b=N8N0D6/ctyK8JWQWHs1dBJjB+QncZgbgdbBeuVmsS/0cqU3hCQWb3PPSzNzY0LQjgf
 PujICwhRGmcqdUY4B+IBNXkcV2rDgYfQ58CDpgmSGcLtuweHI8Kr1PVwIwn0FUCV00Sy
 5EIJBS5z3gvZLnkZJcFw0CeTfFHS81K0Ey+5swC/O+RwGtDsTOjcvbkjIq80wbq8kV1d
 vv01gPGM6poTl+jnImDp9v76OBuQ9btUU4YW/FBGnMrMdfG1B6CFa5FuDwT7r8IcKlYH
 XIWHVYN40ZCzYj+3t2iLAxYLd06dtNKbVBASXq0fwadXihFoXb6OGP1r5fWi8wJZO716
 q+rw==
X-Gm-Message-State: APjAAAV0nm2z6tJY2YqI0Vd5t/CziJVIAkjHCkdOunHAfr5cGH5HB/iW
 m7f87IJYS0iNKT4soF5uRxGwRA==
X-Google-Smtp-Source: APXvYqwJAiJjVFrxBA/F030e6zWj2VmgaEv8EblImL79DbW353avRqr/AqP54XIFrQYHhF+KJtDchA==
X-Received: by 2002:a05:6902:526:: with SMTP id
 y6mr1973370ybs.132.1581462777524; 
 Tue, 11 Feb 2020 15:12:57 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id s31sm2597687ywa.30.2020.02.11.15.12.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 15:12:56 -0800 (PST)
Date: Tue, 11 Feb 2020 16:12:53 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Subject: Re: [PATCH v4 0/5] remoteproc: Add elf64 support
Message-ID: <20200211231253.GC27770@xps15>
References: <527785289.2852303.1581062223707.JavaMail.zimbra@kalray.eu>
 <20200210162209.23149-1-cleger@kalray.eu>
 <5b8045be-0942-2ecf-5dba-dad58071f6af@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b8045be-0942-2ecf-5dba-dad58071f6af@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_151258_349117_9B085B7F 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
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
 Jonathan Corbet <corbet@lwn.net>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-doc@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Clement Leger <cleger@kalray.eu>,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 s-anna <s-anna@ti.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 04:57:18PM +0100, Arnaud POULIQUEN wrote:
> Hi Clement,
> 
> I tested the series on the stm32 platform for remote proc firmwre load: no regression found.
> I do not test the da_to_va feature as not implemented on stm32 platform.

It would be very interesting if you could test the coredump, that would give us
a lot more confidence in the implementation.

Thanks,
Mathieu

> 
> Regards,
> Arnaud
> 
> 
> 
> On 2/10/20 5:22 PM, Clement Leger wrote:
> > This serie add support for elf64 in remoteproc (elf loader, coredump). 
> > First two patches modifies the type of len argument (in da_to_va) and
> > boot_addr in order to allow loading elf64 segment with a u64 size
> > and a u64 entry point.
> > Next patch introduce a set of macros to access elf64 and elf32
> > transparently.
> > Last two patches are the actual modification in the elf loader and
> > remoteproc coredump support to add elf64 support.
> > 
> > Changes from V3:
> >  - Adapt coredump to elf64 file format
> >  - Rename remoteproc_elf_loader.h to remoteproc_elf_helpers.h
> >  - Update copyright year in remoteproc_elf_helpers.h
> >  - Rename macros elf_hdr_* to elf_get_hdr_* for coherency with elf_hdr_set_*
> >  - Split elf64 loader patch in 3:
> >    - boot_addr u64 change
> >    - remoteproc_elf_helpers.h creation
> >    - elf64 loading
> > 
> > Clement Leger (5):
> >   remoteproc: Use u64 len for da_to_va
> >   remoteproc: Use u64 type for boot_addr
> >   remoteproc: Add elf helpers to access elf64 and elf32 fields
> >   remoteproc: Add elf64 support in elf loader
> >   remoteproc: Adapt coredump to generate correct elf type
> > 
> >  Documentation/remoteproc.txt                |   2 +-
> >  drivers/remoteproc/imx_rproc.c              |  11 +-
> >  drivers/remoteproc/keystone_remoteproc.c    |   4 +-
> >  drivers/remoteproc/qcom_q6v5_adsp.c         |   2 +-
> >  drivers/remoteproc/qcom_q6v5_mss.c          |   2 +-
> >  drivers/remoteproc/qcom_q6v5_pas.c          |   2 +-
> >  drivers/remoteproc/qcom_q6v5_wcss.c         |   2 +-
> >  drivers/remoteproc/qcom_wcnss.c             |   2 +-
> >  drivers/remoteproc/remoteproc_core.c        |  69 +++++++------
> >  drivers/remoteproc/remoteproc_elf_helpers.h |  95 ++++++++++++++++++
> >  drivers/remoteproc/remoteproc_elf_loader.c  | 150 ++++++++++++++++++----------
> >  drivers/remoteproc/remoteproc_internal.h    |   4 +-
> >  drivers/remoteproc/st_remoteproc.c          |   2 +-
> >  drivers/remoteproc/st_slim_rproc.c          |   4 +-
> >  drivers/remoteproc/wkup_m3_rproc.c          |   4 +-
> >  include/linux/remoteproc.h                  |   7 +-
> >  16 files changed, 252 insertions(+), 110 deletions(-)
> >  create mode 100644 drivers/remoteproc/remoteproc_elf_helpers.h
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
