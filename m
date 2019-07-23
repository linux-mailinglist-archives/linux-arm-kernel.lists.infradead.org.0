Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969EA71CBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 18:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JUcSc3TMLFYxFot6zLcmwCQLUIgp0uFpOP3FpGKWfQ=; b=IB40M+Bulu+y+3
	SvG9GOqqF0Sqnf9uxKtEikJ89Cs7GrBnGBVkA1CrOyvj//ciKzLGbky4MTzy58YxpW7Cz2xqmeYbS
	xVI/tstVs7aVPHS+vlN7tD558DKFwwYVM6Gf+am0713A02ZwkSLdRSqfF7z1TDc5qY+xXxboOejb9
	eHRbhNTmuZvOUTjqph92qWKcffiROHArRAdSQrnvdhtSq1KDymIb/FafwjmRpwTKTtp52tvQM0Th1
	PREdykdHBpMKeEheirXVExgXJ2BK9S4gDjWwxPBQooaLVQEshEasgWHwtF4anIZidOO4/wfQ/AHzy
	yDr6V9g7hFUa5IlCQ4Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxVe-0001j7-DI; Tue, 23 Jul 2019 16:19:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxVN-0001iD-DV
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 16:19:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id u14so19409251pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 09:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5cCrOYr2TnsV7hg1z4ufQ0QBSkAleXOLlrvwjgt7a8c=;
 b=HjeaCWMLzBkFGJqQXljhwWJsnBNJDOLusXlLORvuiIX/zx47EgSI3ZrqqVgboAZcu8
 7iWFwjZ5BjM7HIHuANs0ekokz4x8ZTpITs2xKvANVd3ZdXsURbsbuDegN/qvnNVqrN50
 V+yZCblOlSH2jvDDHbD2+ADTwZQdrdaxF6WjYfhb9O3diIcqypig3RXF8mycJaRu+YFn
 OxQbHaICJMlMnqii2Z3EnbN0tuk2udnq7NAWXa6V9vZn/BX+P4a5uj7nY2OAJ/kTwhuJ
 me2N02/lAa/H/UKkiXS9rATXXHjTdKa5XxSa5Dx/pVfi6TpE16b+jwTThiUQNOqnasNY
 Qy1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5cCrOYr2TnsV7hg1z4ufQ0QBSkAleXOLlrvwjgt7a8c=;
 b=HGnvK2SBwMRFwda6C72bkh+jJQrMbYejY/JERutbxv9pXC2rDWK6T+wpfnPIEya5vF
 W2HK+XoFsr/t46tPd38fzc7NvYFWuz3L2nY6klUvdzPGJBQS4yOSH9WMjiBbfOba1W7g
 ZtkkiPNTEkkILKVm2yAOXUeIMVsPpndY2//X2HA+Db8NC4N0VJvLy9cfQqggOsKFwvPc
 zjkAIKHaNf3xJU+hNPPpFnKvwAitgkkwrL+aLpcDhfUO72VNvG9h5yg1WjHRfQ3Umqt1
 1Mu02rsdtLObCFtF0ajS98kqe0GR4boRcPvsJ1AAUutRZW0Ct1mY9z1aacBmJ21FokxJ
 30SQ==
X-Gm-Message-State: APjAAAXyK06aZjvBYaep6rQOjRX/G0+KV0PAcmsnhSMEx2Eei3ALaZRR
 rOK6/o0VVv0/rHOzk4oqQG8=
X-Google-Smtp-Source: APXvYqydcQW2cCafiPIaF7/QZPrBBYpr4qob4CqJ6cgqd3IcA6gfMn0T2uK4ay1hxtAi5OTtmdf/bQ==
X-Received: by 2002:a17:90a:21cc:: with SMTP id
 q70mr85533665pjc.56.1563898748328; 
 Tue, 23 Jul 2019 09:19:08 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id e124sm68442200pfh.181.2019.07.23.09.19.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 09:19:07 -0700 (PDT)
Date: Tue, 23 Jul 2019 21:49:02 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Steven Price <steven.price@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] rqchip/stm32: Remove unneeded call to kfree
Message-ID: <20190723161902.GA2910@hari-Inspiron-1545>
References: <20190719184606.GA4701@hari-Inspiron-1545>
 <1d9aa4be-4da2-b532-4787-c98869c0bd9d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d9aa4be-4da2-b532-4787-c98869c0bd9d@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_091909_458797_8D2E30D5 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 11:26:09AM +0100, Steven Price wrote:
> On 19/07/2019 19:46, Hariprasad Kelam wrote:
> > Memory allocated by devm_ alloc will be freed upon device detachment. So
> > we may not require free memory.
> > 
> > Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> > ---
> >  drivers/irqchip/irq-stm32-exti.c | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
> > index e00f2fa..46ec0af 100644
> > --- a/drivers/irqchip/irq-stm32-exti.c
> > +++ b/drivers/irqchip/irq-stm32-exti.c
> > @@ -779,8 +779,6 @@ static int __init stm32_exti_init(const struct stm32_exti_drv_data *drv_data,
> >  	irq_domain_remove(domain);
> >  out_unmap:
> >  	iounmap(host_data->base);
> > -	kfree(host_data->chips_data);
> > -	kfree(host_data);
> 
> In the commit this is based on these variables are not allocated using a
> devm_ alloc function:
> 
> $ git show e00f2fa | grep -A12 *stm32_exti_host_init
> > stm32_exti_host_data *stm32_exti_host_init(const struct stm32_exti_drv_data *dd,
> > 					   struct device_node *node)
> > {
> > 	struct stm32_exti_host_data *host_data;
> > 
> > 	host_data = kzalloc(sizeof(*host_data), GFP_KERNEL);
> > 	if (!host_data)
> > 		return NULL;
> > 
> > 	host_data->drv_data = dd;
> > 	host_data->chips_data = kcalloc(dd->bank_nr,
> > 					sizeof(struct stm32_exti_chip_data),
> > 					GFP_KERNEL);
> The function stm32_exti_probe *does* use devm_k?alloc, so perhaps you
> were getting confused with that?
> 
> Steve
>
  Yes thanks  for explanation. Please ignore this patch

  Thanks,
  Hariprasad k
> >  	return ret;
> >  }
> >  
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
