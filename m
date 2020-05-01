Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A941C1C5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 19:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwz0XQPQ8F3TIb4F18szsq+vqU5gUO7TRHM5yzte6m0=; b=FR7q/nVVfLXoN8
	AtwsPN9MxZV28jJdRm0sYZSz5La7b5wxzeVn4nIveeXN1aiLby4/kuE4dn0l29e4BkkC1YfNVQlaC
	qk4zgaxuS0JuXbB4w9OSFJEq83xeemdcMLqZMHnAPJWobM22iEctS5w0GNCZOC/60WS/7kAErSnuo
	IlsrDLEiIVcP2AuuLrzScsLpVTi+UHvgcVojpTsME6xCRLF9wHf/6MX13kAblW2/MKPJPFD0N9eOo
	PcjZj/iCWmez+wi0JJnedForcZbGTOoH7XdNZXObC3MUim4fTfRiOZ/IsPGjmtmnqCgV5321PJrlv
	4fGX7vBnDGvlznnBoUCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUZsH-0000vV-5L; Fri, 01 May 2020 17:54:57 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUZs9-0000uq-QL
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 17:54:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id r4so4863442pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 10:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DRg3zcbdwJvHwwdmWPDqLT8eUhyWI38G+2e6Y0MIzuw=;
 b=AjM7yFpPFJFc/Xp09RqIRFsPyXCGYSShJyQBSCnCAyE+7w0uxt38ym2oxCXiPcXovx
 Q/VYY+Ad7CH5P3WyBOeGS99Gdjk8IzNpvQltN/LRSZn/sTMubaTznSKXIxSKFFacj5il
 FaBkG5E3ASrBNabkNSKuWq3L8ENPNZ3qHMXlcXhdGhiV9b7UZAb2guXey8knRe3/cXsc
 ahnapvrVM0moMOfekNoNbIoNxB4q5i/KZLK9r1TJrfDu7ZYbV9qYNod8IdCEnAuw+GQz
 POEKAE5o/gcllW5kSLgV85yXbaJt99SohMDdSB6PkngnJ998oezxGG0uRjzsnrf/qmmI
 yA3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DRg3zcbdwJvHwwdmWPDqLT8eUhyWI38G+2e6Y0MIzuw=;
 b=YTtX3i1St+fBUBGmEXD3sgMFeU0s9Qae82o8+fyu6EhTsOVDCYvuY5OrOFZMOVVc9K
 juzkomAvg9fPp8XibdJ7vubqA0tiwnpzKwaSNZ2OwFQCj9FSF1d+NxsQ5mwAgbngd/4/
 IH3BkP55BP1pP5RjeSwas1OgU2FeUWzSD2C7hncwbs5aL9sj7PRCLb164tKyDXtqeAoB
 LZbJsGorXZC6SxWUCZroBz/WH+SBZBuOYob0bfDn7m1jWL6nyX/oQO6Hwmsdv114eiHY
 PXDsLbUvAUIgEDQ6bSb0nK/fUvgluBEVnpGexEFBia39nWZwqsZ/O1q6YwDjJL5e/NKL
 YNrg==
X-Gm-Message-State: AGi0PuaAhPxO3dU5YA5ucc/yVPdIz4NK9pBNHzDjC8G1iuCmLAwdwhKR
 2e1a/VJmMecIVx1xP4gpbfZV5w==
X-Google-Smtp-Source: APiQypKinFwjLxwudUbIQPJSzcgT/R+sN9xYkeIHLb7Ej4S4Zq5Bpmiy+iZT5kj2ZM3AoMThjH03xA==
X-Received: by 2002:a63:564e:: with SMTP id g14mr5324203pgm.63.1588355689010; 
 Fri, 01 May 2020 10:54:49 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id s38sm2528104pgk.31.2020.05.01.10.54.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 10:54:48 -0700 (PDT)
Date: Fri, 1 May 2020 11:54:46 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Subject: Re: [PATCH v2 12/12] remoteproc: stm32: Set synchronisation state
 machine if needed
Message-ID: <20200501175446.GF18004@xps15>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-13-mathieu.poirier@linaro.org>
 <defc59b2-4d64-a108-2e5e-ecc579f70a8b@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <defc59b2-4d64-a108-2e5e-ecc579f70a8b@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_105449_857439_71A25E3A 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ohad@wizery.com, alexandre.torgue@st.com, loic.pallardy@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 04:47:19PM +0200, Arnaud POULIQUEN wrote:
> 
> 
> On 4/24/20 10:25 PM, Mathieu Poirier wrote:
> > Set the flags and operations to use if the M4 has been started
> > by another entity than the remoteproc core.
> > 
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  drivers/remoteproc/stm32_rproc.c | 16 +++++++++++++++-
> >  1 file changed, 15 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> > index dcae6103e3df..02dad3f51c7a 100644
> > --- a/drivers/remoteproc/stm32_rproc.c
> > +++ b/drivers/remoteproc/stm32_rproc.c
> > @@ -598,13 +598,20 @@ static struct rproc_ops st_rproc_ops = {
> >  	.get_boot_addr	= rproc_elf_get_boot_addr,
> >  };
> >  
> > -static __maybe_unused struct rproc_ops st_rproc_sync_ops = {
> > +static struct rproc_ops st_rproc_sync_ops = {
> >  	.start		= stm32_rproc_sync_start,
> >  	.stop		= stm32_rproc_stop,
> > +	.kick		= stm32_rproc_kick,
> 
> Seems independent of the path.

I agree - on the flip side I didn't find a better place to put it.  Had I did a
one line patch someone would have asked me to stuff it somewhere.  I'll have
another look to see if I can find something decent.

> 
> >  	.parse_fw       = stm32_rproc_sync_parse_fw,
> >  	.find_loaded_rsc_table = stm32_rproc_sync_elf_find_loaded_rsc_table,
> >  };
> >  
> > +static struct rproc_sync_flags st_sync_flags = {
> > +	.on_init = true, /* sync with MCU when the kernel boots */
> > +	.after_stop = false, /* don't resync with MCU if stopped from sysfs */
> > +	.after_crash = false, /* don't resync with MCU after a crash */
> > +};
> > +
> could be const

If I do make this a const I'll have to move the call to
rproc_set_state_machine() inside the "if (state == M4_STATE_CRUN)".  It also
means that people won't be able to make dynamic adjustment to the
synchronisation states based on specifics discovered at probe() time.  They will
need to declare different synchronisation ops for all the potential scenarios.

I don't have a strong opinion on any of this.  I'll wait a little to see what
other people think.  If nobody chimes in I'll make this a const in the next
revision.

> 
> >  static const struct of_device_id stm32_rproc_match[] = {
> >  	{ .compatible = "st,stm32mp1-m4" },
> >  	{},
> > @@ -803,6 +810,7 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >  	struct stm32_rproc *ddata;
> >  	struct device_node *np = dev->of_node;
> >  	struct rproc *rproc;
> > +	struct rproc_sync_flags sync_flags = {0};
> >  	unsigned int state;
> >  	bool auto_boot = false;
> >  	int ret;
> > @@ -837,11 +845,17 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >  	}
> >  
> >  	if (state == M4_STATE_CRUN) {
> > +		auto_boot = true;
> > +		sync_flags = st_sync_flags;
> 
> seems an useless copy 
> 
> Regards,
> Arnaud
> 
> >  		ret = stm32_rproc_get_loaded_rsc_table(pdev, ddata);
> >  		if (ret)
> >  			goto free_rproc;
> >  	}
> >  
> > +	ret = rproc_set_state_machine(rproc, &st_rproc_sync_ops, sync_flags);
> > +	if (ret)
> > +		goto free_rproc;
> > +
> >  	rproc->auto_boot = auto_boot;
> >  	rproc->has_iommu = false;
> >  	ddata->workqueue = create_workqueue(dev_name(dev));
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
