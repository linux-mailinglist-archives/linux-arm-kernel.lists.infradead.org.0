Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0AE1B53E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 07:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wb1UjpFa7HpEvhAcpQm30k6bsvRHzM3tzdjpx8STB2g=; b=sZJE3q2jf1jl81
	piaHkndhbhotRhsT/DY32fG3SJFhw4j+FZmDimZJ8ZFshe1wFraq0o3oMhy8LqHzQ9hQXJzVT5RnB
	sT7pdKl+4OBWXYeZDkxHqL6mjtv3yRNXceZJynqKDyva973SNMu8zJVNG2TdA7eSTZEUuJxNF4lJc
	Q9TbCrgk0Y99ouNAhaJ8oxqlFE6bm3SBfyPHJW4McDD2FPUXgh9GToMiNt/1jvmZmZgjKpPV24irY
	txm9Hy7QfLq1f5q6Wbov4gjXuocFB0xyTkPFesDde2AgR1O8qzlLggz25i0TZsJmfWA84bA4WnoSn
	eW5ZiOvnhDN2q7eP1CaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRTyy-0005vG-QH; Thu, 23 Apr 2020 05:01:04 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRTyo-0005tp-BT
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 05:00:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id 18so1119258pfv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 22:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SP5kt0X+NFv01hGdhlSZGrj4pSvf4jkmcFFyTl5kuC4=;
 b=B2coqk+rNQDnE+4SDzcXxg66+w6r3X9mddej89j6Hdmu+VOZgcOeSNc0S2e+kOVsSM
 oUTa+AQZsm4dIpAeU3AabPPtsYK73pKD85dJ81ZjqSflISDPWIXk2wXFivihVsn2LJ1E
 6w91UHeBEJZ2l4QF3GNIKlo2LKI3eqjmxvK7jmbrf1tSw7UXBZHWrW3Khwb4eIejWUyb
 8d0lqoSPo4/XSppRZHzqtErAmpZr9W4HAO12PkOzhLrMc1kqqmn9CxM/975GtsqKvE2h
 L4sGrQcyfjv+ACgoG2AcpWVxVNP6xTrWiP1b1mjx+l2jbRinFXdo0NsAzOl3yUJVUMKa
 fKuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SP5kt0X+NFv01hGdhlSZGrj4pSvf4jkmcFFyTl5kuC4=;
 b=iB2UG+Mqxx6YvoVHON1gSGHndyBbH14ueWXbv9crx56rUDw2KM+/f2WBdXlHSoHJN+
 wYcm+izJ+cFIgJmPRtFlqk/QHs9+/17J0OcEoqgSYc6WtLQVgfpiMWhIBUUUrImeSBXe
 i3NA8CfMXDRnBZey29KwRNcpdsCsObCqDX3QAEDhLuEGhWDbb4uN60VbEkZDuOmUu9p3
 84dvJEygiA9VFEVmmDtRhpFUON5KGrUmpIDdCGNcLNFJhFCUQRSjIVPIqi0how+Tfh40
 BYe8j7xHXCQiWyUCFsXa7MkoNvEJxykosIbAyL/fbbh7/eIhVxrWRQfdoVJ7lp4a7nyj
 HgEA==
X-Gm-Message-State: AGi0PubRpaA9mWWd8P0aFOAhE22+A9qF93ELmFOQKPSfISEJHU1JHzhw
 W2W55apwfLUjZXjCFTCkzu/7XQ==
X-Google-Smtp-Source: APiQypL4ZJM26+qyXH9J1qO3Lqvrs7e0aJSt3FyRYAmsvCulkbisdSh1Q9TYUbrYmbCCvJGcIaei0A==
X-Received: by 2002:a62:5fc4:: with SMTP id t187mr1970332pfb.269.1587618053284; 
 Wed, 22 Apr 2020 22:00:53 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id i15sm891925pgj.30.2020.04.22.22.00.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 22:00:52 -0700 (PDT)
Date: Wed, 22 Apr 2020 22:01:20 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/2] remoteproc: Add prepare and unprepare ops
Message-ID: <20200423050120.GO1868936@builder.lan>
References: <20200417002036.24359-1-s-anna@ti.com>
 <20200417002036.24359-2-s-anna@ti.com>
 <20200421025254.GK1868936@builder.lan>
 <2feee391-9f8e-410e-2a20-5b5bdd949940@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2feee391-9f8e-410e-2a20-5b5bdd949940@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_220055_226990_590338EF 
X-CRM114-Status: GOOD (  26.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Loic Pallardy <loic.pallardy@st.com>, linux-remoteproc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 21 Apr 07:12 PDT 2020, Suman Anna wrote:

> On 4/20/20 9:52 PM, Bjorn Andersson wrote:
> > On Thu 16 Apr 17:20 PDT 2020, Suman Anna wrote:
> > 
> > > From: Loic Pallardy <loic.pallardy@st.com>
> > > 
> > > On some SoC architecture, it is needed to enable HW like
> > > clock, bus, regulator, memory region... before loading
> > > co-processor firmware.
> > > 
> > > This patch introduces prepare and unprepare ops to execute
> > > platform specific function before firmware loading and after
> > > stop execution.
> > > 
> > > Signed-off-by: Loic Pallardy <loic.pallardy@st.com>
> > > Signed-off-by: Suman Anna <s-anna@ti.com>
> > > Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > 
> > Do we have an inbound user of these new oops?
> 
> Yes, both the TI K3 R5F and DSP remoteproc drivers use these ops, the
> patches are already on the lists.
> 

Thanks for confirming Suman, I'll apply this.

Regards,
Bjorn

> regards
> Suman
> 
> > 
> > Regards,
> > Bjorn
> > 
> > > ---
> > > v1:
> > >   - Make the direct ops into inline helper functions in line
> > >     with the comments on the MCU sync series (v1 comments).
> > >     No change in functionality.
> > >   - Picked up the Reviewed-by tags
> > > v0: https://patchwork.kernel.org/patch/11456383/
> > > 
> > >   drivers/remoteproc/remoteproc_core.c     | 15 ++++++++++++++-
> > >   drivers/remoteproc/remoteproc_internal.h | 16 ++++++++++++++++
> > >   include/linux/remoteproc.h               |  4 ++++
> > >   3 files changed, 34 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> > > index d681eeb962b6..e38f627059ac 100644
> > > --- a/drivers/remoteproc/remoteproc_core.c
> > > +++ b/drivers/remoteproc/remoteproc_core.c
> > > @@ -1394,12 +1394,19 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
> > >   		return ret;
> > >   	}
> > > +	/* Prepare rproc for firmware loading if needed */
> > > +	ret = rproc_prepare_device(rproc);
> > > +	if (ret) {
> > > +		dev_err(dev, "can't prepare rproc %s: %d\n", rproc->name, ret);
> > > +		goto disable_iommu;
> > > +	}
> > > +
> > >   	rproc->bootaddr = rproc_get_boot_addr(rproc, fw);
> > >   	/* Load resource table, core dump segment list etc from the firmware */
> > >   	ret = rproc_parse_fw(rproc, fw);
> > >   	if (ret)
> > > -		goto disable_iommu;
> > > +		goto unprepare_rproc;
> > >   	/* reset max_notifyid */
> > >   	rproc->max_notifyid = -1;
> > > @@ -1433,6 +1440,9 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
> > >   	kfree(rproc->cached_table);
> > >   	rproc->cached_table = NULL;
> > >   	rproc->table_ptr = NULL;
> > > +unprepare_rproc:
> > > +	/* release HW resources if needed */
> > > +	rproc_unprepare_device(rproc);
> > >   disable_iommu:
> > >   	rproc_disable_iommu(rproc);
> > >   	return ret;
> > > @@ -1838,6 +1848,9 @@ void rproc_shutdown(struct rproc *rproc)
> > >   	/* clean up all acquired resources */
> > >   	rproc_resource_cleanup(rproc);
> > > +	/* release HW resources if needed */
> > > +	rproc_unprepare_device(rproc);
> > > +
> > >   	rproc_disable_iommu(rproc);
> > >   	/* Free the copy of the resource table */
> > > diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
> > > index b389dc79da81..101e6be8d240 100644
> > > --- a/drivers/remoteproc/remoteproc_internal.h
> > > +++ b/drivers/remoteproc/remoteproc_internal.h
> > > @@ -64,6 +64,22 @@ struct resource_table *rproc_elf_find_loaded_rsc_table(struct rproc *rproc,
> > >   struct rproc_mem_entry *
> > >   rproc_find_carveout_by_name(struct rproc *rproc, const char *name, ...);
> > > +static inline int rproc_prepare_device(struct rproc *rproc)
> > > +{
> > > +	if (rproc->ops->prepare)
> > > +		return rproc->ops->prepare(rproc);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static inline int rproc_unprepare_device(struct rproc *rproc)
> > > +{
> > > +	if (rproc->ops->unprepare)
> > > +		return rproc->ops->unprepare(rproc);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >   static inline
> > >   int rproc_fw_sanity_check(struct rproc *rproc, const struct firmware *fw)
> > >   {
> > > diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> > > index 38607107b7cb..b8481ac969f1 100644
> > > --- a/include/linux/remoteproc.h
> > > +++ b/include/linux/remoteproc.h
> > > @@ -355,6 +355,8 @@ enum rsc_handling_status {
> > >   /**
> > >    * struct rproc_ops - platform-specific device handlers
> > > + * @prepare:	prepare device for code loading
> > > + * @unprepare:	unprepare device after stop
> > >    * @start:	power on the device and boot it
> > >    * @stop:	power off the device
> > >    * @kick:	kick a virtqueue (virtqueue id given as a parameter)
> > > @@ -373,6 +375,8 @@ enum rsc_handling_status {
> > >    *		panic at least the returned number of milliseconds
> > >    */
> > >   struct rproc_ops {
> > > +	int (*prepare)(struct rproc *rproc);
> > > +	int (*unprepare)(struct rproc *rproc);
> > >   	int (*start)(struct rproc *rproc);
> > >   	int (*stop)(struct rproc *rproc);
> > >   	void (*kick)(struct rproc *rproc, int vqid);
> > > -- 
> > > 2.26.0
> > > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
