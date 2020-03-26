Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6B31947B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 20:43:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nl7Rxy0BKQII0VVZ3x7+T6PikEuSzK7RYBTHMT4dXqM=; b=UEsmd+iMF/P8Oa
	w9unT8iRfaKkpwlw1wKTHm7yqCaQZwpoZSogqw8Y9VEyV/AgLwWzH9CfWnR/MefW1AnDItZ5VXXla
	kNb/Yv5MI6PIh2n7q+5PNeJOGZI565iLx1wIAaCb2XyfqCwOxzBy1kxjLjSaTt/T0MQal1ohMxRdS
	+AQknydz9H5HY34nhmpEuuIf3QUcIGF1wvf6xqMUXeMNlIzKdsFenavbr45I8x7ASjX4zlPvObn5P
	2oYkgD3WxU/R9AROZ5pHlg1apKGcDQuceGRDcERQQtTaPD/Gn7AXHD3MeJjU40Oc8dDVr31FfHw60
	UhdLGM00NZc/8ChTP0OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHYPP-0001VY-4z; Thu, 26 Mar 2020 19:43:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHYPE-0001VD-CK
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 19:43:09 +0000
Received: by mail-pf1-x442.google.com with SMTP id f206so3302806pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 12:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UGAInaue7GSFpt799maDJX4PnvgR4YSaBrw6mv4yOuk=;
 b=KguwooGsTz40f9cvcDxM2GNej0d6GxRAuvL6H5rS2U2v7SuftTKbyWwCoyrbVU3Ran
 VyD2YsLLg4xfZTRozdTd/JY90atjqoOpyPsEJjDzEgufF+wEMTpcE9MagelT/9cM8rva
 QrE54uxvU0eXm4LkVkrQl5WgpIwRwN69ZnuS/VeB9cIZ12+TL/6uHMUaz5OfwZH7g6gX
 YxxUMnphBeI2VAuIg77Dt7Xx2x+goewYVKpeBqxiX70yfRkUTuFEx1Bkcvfl4H8KhpYo
 8xpDJePD6vF39IcomlmlCm4/vnfi0aW9XyeDzV0/RiS+yCNpFXy9NGbVAaLleQ8A+QFj
 zhbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UGAInaue7GSFpt799maDJX4PnvgR4YSaBrw6mv4yOuk=;
 b=jfrtjtVvxmpQ9ZNMuhDlppupZRxd2ChDjMV2d53VFXcG5VhrhlE32JBroL4hemrfo6
 jy3smbG11zDalHQ/WRQesXEVMUBEsJdVorRJ4mrhEFBHEsbco7ZD8AFFE5jUfClYB8gR
 YT67Msjm3sci2VeU0ypkWLXy1hftQmw210ICRtaztD6nXjwxSh0ZBWiVJwLX5mID8nSX
 yEF32zJDk0WGvcjxE8qjIigjAr1reDRZwz0VUoUix6/gVgEy4fUokxoGNqSZ+ke+e4jD
 28b+gJ1sI2P0G6aaw6DfpW6KreHeI3t10oEDpMfDm42In30RnYMmy1eDYxYLae6BeoJT
 BlqQ==
X-Gm-Message-State: ANhLgQ2CqQTZgcTWRzSq2vJB9BxJAh0GSOJkWXDwhd8wzWGE07a3JYIi
 ZGCYLpN/YsVLb0N4XYeq9AN/7g==
X-Google-Smtp-Source: ADFU+vv9sWxbnpeMRWqiM+cTYJKGzMXvNJsp7SDb2PVAVwCDDAyVZTC6Mxm+NU97kEdmTimNfqkYPw==
X-Received: by 2002:a63:2e03:: with SMTP id u3mr9972910pgu.205.1585251787183; 
 Thu, 26 Mar 2020 12:43:07 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 132sm2321984pfc.183.2020.03.26.12.43.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 12:43:06 -0700 (PDT)
Date: Thu, 26 Mar 2020 12:43:04 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 2/7] remoteproc: use a local copy for the name field
Message-ID: <20200326194304.GB59436@builder>
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-3-s-anna@ti.com>
 <20200326054234.GA59436@builder>
 <2089a4a8-d5e4-e4f5-e7bc-7d053f654204@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2089a4a8-d5e4-e4f5-e7bc-7d053f654204@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_124308_433905_DF589921 
X-CRM114-Status: GOOD (  26.51  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 26 Mar 07:01 PDT 2020, Suman Anna wrote:

> Hi Bjorn,
> 
> On 3/26/20 12:42 AM, Bjorn Andersson wrote:
> > On Tue 24 Mar 13:18 PDT 2020, Suman Anna wrote:
> > 
> >> The current name field used in the remoteproc structure is simply
> >> a pointer to a name field supplied during the rproc_alloc() call.
> >> The pointer passed in by remoteproc drivers during registration is
> >> typically a dev_name pointer, but it is possible that the pointer
> >> will no longer remain valid if the devices themselves were created
> >> at runtime like in the case of of_platform_populate(), and were
> >> deleted upon any failures within the respective remoteproc driver
> >> probe function.
> >>
> >> So, allocate and maintain a local copy for this name field to
> >> keep it agnostic of the logic used in the remoteproc drivers.
> >>
> >> Signed-off-by: Suman Anna <s-anna@ti.com>
> >> ---
> >>  drivers/remoteproc/remoteproc_core.c | 9 ++++++++-
> >>  include/linux/remoteproc.h           | 2 +-
> >>  2 files changed, 9 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> >> index aca6d022901a..6e0b91fa6f11 100644
> >> --- a/drivers/remoteproc/remoteproc_core.c
> >> +++ b/drivers/remoteproc/remoteproc_core.c
> >> @@ -1989,6 +1989,7 @@ static void rproc_type_release(struct device *dev)
> >>  
> >>  	kfree(rproc->firmware);
> >>  	kfree(rproc->ops);
> >> +	kfree(rproc->name);
> >>  	kfree(rproc);
> >>  }
> >>  
> >> @@ -2061,7 +2062,13 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
> >>  	}
> >>  
> >>  	rproc->firmware = p;
> >> -	rproc->name = name;
> >> +	rproc->name = kstrdup(name, GFP_KERNEL);
> > 
> > Let's use kstrdup_const() instead here (and kfree_const() instead of
> > kfree()), so that the cases where we are passed a constant we won't
> > create a duplicate on the heap.
> > 
> > And the "name" in struct rproc can remain const.
> 
> Agreed, that's better functions to use for this.
> 
> > 
> >> +	if (!rproc->name) {
> >> +		kfree(p);
> >> +		kfree(rproc->ops);
> >> +		kfree(rproc);
> >> +		return NULL;
> > 
> > Perhaps we can rearrange the hunks here slightly and get to a point
> > where we can rely on the release function earlier?
> 
> Not sure I understand. I don't see any release function, all failure
> paths in rproc_alloc() directly unwind the previous operations. You mean
> move this to before the alloc for rproc structure, something similar to
> what we are doing with firmware?
> 

Look at the failure for ida_simple_get(), there we're past the setup of
rproc->dev.type, so the rproc_type->release function will be invoked as
we call put_device().

So if you move the initialization of rproc->dev up right after the
allocation of rproc we should be able to rely on that to clean up all
these for us.

Regards,
Bjorn

> regards
> Suman
> 
> 
> > 
> > Regards,
> > Bjorn
> > 
> >> +	}
> >>  	rproc->priv = &rproc[1];
> >>  	rproc->auto_boot = true;
> >>  	rproc->elf_class = ELFCLASS32;
> >> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> >> index ddce7a7775d1..77788a4bb94e 100644
> >> --- a/include/linux/remoteproc.h
> >> +++ b/include/linux/remoteproc.h
> >> @@ -490,7 +490,7 @@ struct rproc_dump_segment {
> >>  struct rproc {
> >>  	struct list_head node;
> >>  	struct iommu_domain *domain;
> >> -	const char *name;
> >> +	char *name;
> >>  	char *firmware;
> >>  	void *priv;
> >>  	struct rproc_ops *ops;
> >> -- 
> >> 2.23.0
> >>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
