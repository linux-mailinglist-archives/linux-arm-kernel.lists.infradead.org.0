Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6321416123D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:40:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0724r/RpfJ6mCNPyCCIOQDA96TR5/9ORBwObKBBFOE=; b=q3kj61T0PkvLOI
	rvdxuvnkdBFOpXa2zi/gR/qe+bSM7MQPhgJsmwHGicU+rYzXbLEd+j8BnTdqUsTlQXG5IJcN6Efvg
	4TVkje9ctGvijUnJreQcbhbCqAL8KY/83f8zsAc4w5ixpbhriyOMp4tHHUP70X7iE/YPTBGFfRaJO
	ku1cclmx/3Kv9oCWOVLVfKdoZ+94s7I/66filFizJh4oOWjnBlTI54znfyINS7O/+is5VlHNFmmUT
	S2w3EC3d//6s31qRyNzkwcMoB7bKbftOIjYVCgBIruMQsZPmA1abRMMPrV5zj0vihcslPu9qutsHU
	I+Lv6zeDhwrLicxN019w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fhg-0005ZU-Ci; Mon, 17 Feb 2020 12:40:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fhX-0005Yi-U5
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:40:41 +0000
Received: by mail-wm1-x343.google.com with SMTP id s10so17004766wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 04:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VM4sr45eMsFNfm3I8AuewKPZ2mzCi8kc40UVw+7O2LQ=;
 b=xB+yOUMH1+HqPIVwYA3f+1KohCCBUZKzi2se4L7bK+0Hs0L2ST4OcrzccxNLIKZSZL
 meF2am7U3/daqiwqZ2iYjulCYMVLvp6cA+U2CEevmBa4//Ar02kR0gI8SOaoXc2FPtNM
 4mii9R/d783fyE/dxumDzGZA8y7IOZs1u0FLd3Z4kzBmSygQEGxTGUYOe5fqlT9fjxx2
 FBivVrn9YMs6qKmDf7fYx4XhyXb2rq9Zz7yxrlKls/r0+mqTuKY6553nH6pjvXf0vhDz
 dxEhqGpoCEOSpWjK878ms0OPbBVieYrKP3NYoCNhXJO1KEiCzbAQp4gwPxSiLHMZGPv/
 8yrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VM4sr45eMsFNfm3I8AuewKPZ2mzCi8kc40UVw+7O2LQ=;
 b=Edxgv5g1y6guz78Ix+qsuuHC3GjSb7Vkt5049dbDsjXzwUon4mxAHypRvmbrzwy5FK
 fEWt+1uoIcwCWkNSwUqezYNJtXqZ4MGRkTYnICOqXdvjLsQVjGUwjoBOSc3gwSiEbjRb
 liyInWRJj29dKqT2B7EsCPYpCxCqpLu+2JwPgwjhdU8fZ/1PwQfjrcsI4iDXGAmXAb/b
 KmZRua1mckF4IwkGrfSdGtq+71uIIY9gygqyG4269dJi+BXZ+d2trx9kCDeo0/MBcG/N
 n+4WdoxrYGfmm6cslU6Un/ECtzpapRf2CUXpjyxi5AiuP5ker6cZ7PRSyPLXGWWRJ9EK
 Wbhg==
X-Gm-Message-State: APjAAAWHRrHO9a+pD+aR58UiNHZKHLHic0YXvKcYbksAEAVudXnVUB9w
 urF5mN6bYDV5HF13ZC2QEpvpTg==
X-Google-Smtp-Source: APXvYqw7OaMmOiCFpqSYiEkkioeWfbwcKs6q33Y3t8Kyrhd1NgY0z99Vh6YZxCeeeslYOpZSiSCuUQ==
X-Received: by 2002:a7b:c0d9:: with SMTP id s25mr21509184wmh.98.1581943237117; 
 Mon, 17 Feb 2020 04:40:37 -0800 (PST)
Received: from myrica ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id d16sm917782wrg.27.2020.02.17.04.40.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 04:40:36 -0800 (PST)
Date: Mon, 17 Feb 2020 13:40:28 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 03/11] PCI: OF: Check whether the host bridge supports ATS
Message-ID: <20200217124028.GC1650092@myrica>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
 <20200213165049.508908-4-jean-philippe@linaro.org>
 <CAL_JsqKZP9u7bFsVT=5TzqmnHWm_bvH39ffkbN3q9-k32ynVig@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKZP9u7bFsVT=5TzqmnHWm_bvH39ffkbN3q9-k32ynVig@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_044040_147856_3843F3BE 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Frank Rowand <frowand.list@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, linux-acpi@vger.kernel.org,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, David Woodhouse <dwmw2@infradead.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Lu Baolu <baolu.lu@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 12:26:46PM -0600, Rob Herring wrote:
> On Thu, Feb 13, 2020 at 10:52 AM Jean-Philippe Brucker
> <jean-philippe@linaro.org> wrote:
> >
> > Copy the ats-supported flag into the pci_host_bridge structure.
> >
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> >  drivers/pci/controller/pci-host-common.c | 1 +
> >  drivers/pci/of.c                         | 9 +++++++++
> >  include/linux/of_pci.h                   | 3 +++
> >  3 files changed, 13 insertions(+)
> >
> > diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
> > index 250a3fc80ec6..a6ac927be291 100644
> > --- a/drivers/pci/controller/pci-host-common.c
> > +++ b/drivers/pci/controller/pci-host-common.c
> > @@ -92,6 +92,7 @@ int pci_host_common_probe(struct platform_device *pdev,
> >                 return ret;
> >         }
> >
> > +       of_pci_host_check_ats(bridge);
> >         platform_set_drvdata(pdev, bridge->bus);
> >         return 0;
> >  }
> > diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> > index 81ceeaa6f1d5..4b8a877f1e9f 100644
> > --- a/drivers/pci/of.c
> > +++ b/drivers/pci/of.c
> > @@ -576,6 +576,15 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
> >  }
> >  EXPORT_SYMBOL_GPL(pci_parse_request_of_pci_ranges);
> >
> > +void of_pci_host_check_ats(struct pci_host_bridge *bridge)
> > +{
> > +       struct device_node *np = bridge->bus->dev.of_node;
> > +
> > +       if (!np)
> > +               return;
> > +
> > +       bridge->ats_supported = of_property_read_bool(np, "ats-supported");
> > +}
> 
> Not really any point in a common function if we expect this to be only
> for ECAM hosts which it seems to be based on the binding.

I'll move this to pci-host-common.c

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
