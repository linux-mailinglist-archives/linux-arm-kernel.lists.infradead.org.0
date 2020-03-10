Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2EF18082D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:33:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGzujor3EWt9KpPlCL/hftS789EnVGxmGgRIvJz5NwI=; b=jqah4Q8B5+vVfJ
	pjvr47Zg03+wK5Kdyjqj4P+pWt+jYQSLqfVrDg8koG13R8BhMMhvXxZxc07dzUxZ0yOQOdVQ8/cC+
	catmL5L6FKXv7L4xgnOMl2MYq0kE1X7LVdknXc+qTc9R05PqDO6klDbZ7zjaIRAzW6H0epLotolli
	uHit6uJcyh5hyg+kJIxKI6uW0sR1BSy12BXaDNp5W+9N5iH9zpJtfbqwMm4ywTk1FPOybUVFCHnNM
	owuOK4P5rumxxUntT8sAGHO3Vie1OYrJSDnKPTOQHpdNZVke8SnYRWTzpP1b9adL4MfTPPbnNcxl/
	SeYcJRWW1eUhMC8a2Ywg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkd5-000374-GV; Tue, 10 Mar 2020 19:33:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkcc-0002s2-4Q
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:32:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id p14so6965437pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 12:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qMuGgR0+CRDM0BuHZ2Ae6KXyGRvF/Wi0RAPV3JkXST8=;
 b=O7XNI6K/jach7eBMD0zokAVd37z8MwdLv7WqFDGJUXpzEHJv/6LF5IM1MssL5NHx69
 sERBdH0/wvxJRbfXc8ZfBW6WmU/BI5HjmYU5Pwy6aJgYPsoC/QOCaZUUfklrPzeM+LmE
 PliHwz3PwFW+ET0WFX++nrj0fUsGiY5wb79UMhnPsZ4NSU56/TwfJhVBhRED1eo7IZvY
 tSQ6LFPA1n/cAURoK6zJWkEVSXYiL6y+KiwY8l+yxV5JDY+n10m2MA3KzHqx7bRV4sL6
 CAx0URzemFt5ihkASDeSRezGbX69RIjNEsoJ9YZzp9qrBY5Pp5i1yewl1O6hD70yt0SH
 wjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qMuGgR0+CRDM0BuHZ2Ae6KXyGRvF/Wi0RAPV3JkXST8=;
 b=lQX1Ld20dpRCRFSC32MiKkfr4RLfaw6leUb27FTZLj/dK4UvtfcVc5aXlllLod9/Uo
 z/kjgK4q0NhOynAPja2HBV5qZuz0eM2NL1lZGqwzq/PSk9JnK1kdFby6g25DJYR73QFd
 TMlETbi5tcPfR6Adu7UZjQb1FSX/yA4HijJRNd4JrCgXukUvzyGboU8c5+JTBoN5VQys
 e7mcUB/mwlrYd/Bz6jd5jgcI0js2uIUEyrgGrcYEecLUdomaCKSAGMorE11LnnARWsZL
 ZxNwz1rlsDDkz7BHgstzijHbH6tj4aMo9kSEAU0UTKpHGCOFcOT+zK+Q6H18rTKVkeP7
 OEpg==
X-Gm-Message-State: ANhLgQ0Gg11svkB/sEGzT/AesO7mPSqPTAVW0vBS6ebC/yS3FpLcq+g/
 B1yx5yHbXfjG1vtlhKMQgXVdCA==
X-Google-Smtp-Source: ADFU+vv+xHc+Rr1UGKn/v70xw8LFUA/EYdzRhMgcJY4xJ9NFuwzP6M5LicOfJuYbs5v5GixSEdrWVA==
X-Received: by 2002:a63:7f09:: with SMTP id a9mr22043810pgd.375.1583868777114; 
 Tue, 10 Mar 2020 12:32:57 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s18sm3003094pjp.24.2020.03.10.12.32.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:32:56 -0700 (PDT)
Date: Tue, 10 Mar 2020 12:32:53 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Cl?ment Leger <cleger@kalrayinc.com>
Subject: Re: [PATCH v5 3/8] remoteproc: Use u64 type for boot_addr
Message-ID: <20200310193253.GL264362@yoga>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-4-cleger@kalray.eu>
 <20200309195247.GC1399@xps15>
 <1297722115.9030349.1583827151221.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1297722115.9030349.1583827151221.JavaMail.zimbra@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_123258_183666_D01C7946 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc <linux-doc@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, s-anna <s-anna@ti.com>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 10 Mar 00:59 PDT 2020, Cl?ment Leger wrote:

> 
> 
> ----- On 9 Mar, 2020, at 20:52, Mathieu Poirier mathieu.poirier@linaro.org wrote:
> 
> > On Mon, Mar 02, 2020 at 10:38:57AM +0100, Clement Leger wrote:
> >> elf64 entry is defined as a u64. Since boot_addr is used to store the
> >> elf entry point, change boot_addr type to u64 to support both elf32
> >> and elf64. In the same time, fix users that were using this variable.
> >> 
> >> Signed-off-by: Clement Leger <cleger@kalray.eu>
> >> ---
> >>  drivers/remoteproc/remoteproc_elf_loader.c | 2 +-
> >>  drivers/remoteproc/remoteproc_internal.h   | 2 +-
> >>  drivers/remoteproc/st_remoteproc.c         | 2 +-
> >>  include/linux/remoteproc.h                 | 4 ++--
> >>  4 files changed, 5 insertions(+), 5 deletions(-)
> >> 
> >> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c
> >> b/drivers/remoteproc/remoteproc_elf_loader.c
> >> index 606aae166eba..c2a9783cfb9a 100644
> >> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> >> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> >> @@ -102,7 +102,7 @@ EXPORT_SYMBOL(rproc_elf_sanity_check);
> >>   * Note that the boot address is not a configurable property of all remote
> >>   * processors. Some will always boot at a specific hard-coded address.
> >>   */
> >> -u32 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw)
> >> +u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw)
> >>  {
> >>  	struct elf32_hdr *ehdr  = (struct elf32_hdr *)fw->data;
> >>  
> >> diff --git a/drivers/remoteproc/remoteproc_internal.h
> >> b/drivers/remoteproc/remoteproc_internal.h
> >> index 58580210575c..0deae5f237b8 100644
> >> --- a/drivers/remoteproc/remoteproc_internal.h
> >> +++ b/drivers/remoteproc/remoteproc_internal.h
> >> @@ -55,7 +55,7 @@ phys_addr_t rproc_va_to_pa(void *cpu_addr);
> >>  int rproc_trigger_recovery(struct rproc *rproc);
> >>  
> >>  int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
> >> -u32 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
> >> +u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
> >>  int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
> >>  int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firmware *fw);
> >>  struct resource_table *rproc_elf_find_loaded_rsc_table(struct rproc *rproc,
> > 
> > The return type of function rproc_get_boot_addr() should also be changed from
> > u32 to u64.  Or perhaps this is intentional to make sure rproc->bootaddr never
> > occupies more than 32bit?
> 
> No, this is a mistake clearly. I haven't been able to test with a 64 bit
> boot address since our remote processors always boot in the 32 bits
> space. But since the elf64 boot address is on 64 bitsn this was a logical
> modification. I will fix that.
> 

Sorry, I forgot to reply to this one. I fixed it up while applying the
patch.

Thanks,
Bjorn

> > 
> >> diff --git a/drivers/remoteproc/st_remoteproc.c
> >> b/drivers/remoteproc/st_remoteproc.c
> >> index ee13d23b43a9..a3268d95a50e 100644
> >> --- a/drivers/remoteproc/st_remoteproc.c
> >> +++ b/drivers/remoteproc/st_remoteproc.c
> >> @@ -190,7 +190,7 @@ static int st_rproc_start(struct rproc *rproc)
> >>  		}
> >>  	}
> >>  
> >> -	dev_info(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);
> >> +	dev_info(&rproc->dev, "Started from 0x%llx\n", rproc->bootaddr);
> >>  
> >>  	return 0;
> >>  
> >> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> >> index bee559330204..1683d6c386a6 100644
> >> --- a/include/linux/remoteproc.h
> >> +++ b/include/linux/remoteproc.h
> >> @@ -382,7 +382,7 @@ struct rproc_ops {
> >>  				struct rproc *rproc, const struct firmware *fw);
> >>  	int (*load)(struct rproc *rproc, const struct firmware *fw);
> >>  	int (*sanity_check)(struct rproc *rproc, const struct firmware *fw);
> >> -	u32 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
> >> +	u64 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
> >>  };
> >>  
> >>  /**
> >> @@ -498,7 +498,7 @@ struct rproc {
> >>  	int num_traces;
> >>  	struct list_head carveouts;
> >>  	struct list_head mappings;
> >> -	u32 bootaddr;
> >> +	u64 bootaddr;
> >>  	struct list_head rvdevs;
> >>  	struct list_head subdevs;
> >>  	struct idr notifyids;
> >> --
> >> 2.15.0.276.g89ea799

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
