Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEDD1C1C11
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 19:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QV6BiRUo/6F9FSHl64FOCBtIvlQE9F9quJvnKzlLU5c=; b=j6G+vWVmqcb6GS
	FCToAgSMtt2G/qEggKtoYDLsy3CLmdVxFOFuUjuv8i8AEtpf8YsGfkvvyB9hO781Lx9dzO/UOStqv
	U3B6+ZrnncHJbjeHaJedSJAhDOxG35cw76hAb5cEDrC8cA5AmPzvx5a+36yXnDl48vaJFY5jMZ69K
	RCo9Bk5ph5jBiP6i5Pji2doeytSQqbjXXTRd5QXMIl0kET2cM1Zb0UXbGHZVIXOyRyjcKmQfshTyq
	QsDZZQrDRPWVCEvZI5bX4g/2WhiBZdfvCtvIb+EQGrQ9aodxrE1SEjFaT8Exi9+PWaOX5My0SG3Ac
	80FNAPt25FIEIKAVuR1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUZeY-0001m8-5U; Fri, 01 May 2020 17:40:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUZeL-0001jq-Q5
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 17:40:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id f7so1856896pfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 10:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8IP/WBu47pU6ouhN2oeGfSsgFnxkqGn0drzckoDk4hk=;
 b=g2k1bwmwn9a1ALHurechtGzFhXxdRQbUhn9qt00gPUOW08JxjqCRX4zk9gIj28tb4f
 94iRLJTuLlqeVyYta8Zoomyv4dNVAaULtz3vpVph3UxyyOopN58eA/BTJjA8QUjBxdlr
 clw8OpJAGPHwc5M8nwIdrmheTQ5l3u788kaAT7k8VWTJZhM0wPm0C1XmCn68mFe3VAyM
 jUrYUjYiNOQOlmOGHn5/KOicu4wTRYGBR5BcYEcYkpCz/vc/+NCBfkJHsyDuObzW/LVv
 OU1nHwpDYH8N05YBvkypSM4970b4gk0TkZm+LIM00ewZgLTsYuibIHS6q7ZhJxxJ/I1o
 9BeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8IP/WBu47pU6ouhN2oeGfSsgFnxkqGn0drzckoDk4hk=;
 b=Dz+1N+fTbn2+NWo9t6SVMnxcDY1QL5a5Gl18IYB9Sbqv/MBkSBMK9VorBn1UrICPh5
 gBXupl4gTo+LHAR1W7GWvTJMTd4+PAEMC4geXAvQjgNtbcXYrGlKwxxgYGPnwhTCrJm5
 5IZupWu+0ieM/IN7V9Pw0iPn4AbqTKpr8fwMsUN+ykpOkCECPcOLHzBZKReA70mXTHab
 3r3J0D6h4lyYAZdf+95yFkoQLQXQESv2ptXKjkAvXyzoYRd75grtRa+IRdGiJcl7ELQq
 6wjv+NoTo4e991Dv2C+aqHaVfCtKnYu1DiS5KajbvyDQtmGGxEzpYhdQwkciMgkmu0LP
 AzgA==
X-Gm-Message-State: AGi0PubhsRbDoTouuU84GBnXlRk5qz2FAZStP7iGjVBKq7aTxD1YAOos
 TCSUTiRA/OWzTaZ4TXt+nhzFDw==
X-Google-Smtp-Source: APiQypL9HBkwlP+KAWPfkuqO0QiNUaR8CIOzODdIq3IXOkeBwGVMRk2Ak/cqUy/WU7qJdpA0gK/ErQ==
X-Received: by 2002:a63:7e1b:: with SMTP id z27mr4928900pgc.19.1588354832991; 
 Fri, 01 May 2020 10:40:32 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id fu12sm236152pjb.20.2020.05.01.10.40.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 10:40:32 -0700 (PDT)
Date: Fri, 1 May 2020 11:40:30 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Subject: Re: [PATCH v2 06/12] remoteproc: stm32: Get coprocessor state
Message-ID: <20200501174030.GE18004@xps15>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-7-mathieu.poirier@linaro.org>
 <faa9b0e1-2e2f-609f-c436-2a58223f5f72@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <faa9b0e1-2e2f-609f-c436-2a58223f5f72@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_104037_695500_BD92731E 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

On Wed, Apr 29, 2020 at 03:38:24PM +0200, Arnaud POULIQUEN wrote:
> 
> 
> On 4/24/20 10:24 PM, Mathieu Poirier wrote:
> > Introduce the required mechanic to get the state of the M4 when the
> > remoteproc core is initialising.
> > 
> > Mainly based on the work published by Arnaud Pouliquen [1].
> > 
> > [1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877
> > 
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
> > ---
> >  drivers/remoteproc/stm32_rproc.c | 29 +++++++++++++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> > 
> > diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> > index a285f338bed8..89fbd2ffac93 100644
> > --- a/drivers/remoteproc/stm32_rproc.c
> > +++ b/drivers/remoteproc/stm32_rproc.c
> > @@ -38,6 +38,15 @@
> >  #define STM32_MBX_VQ1_ID	1
> >  #define STM32_MBX_SHUTDOWN	"shutdown"
> >  
> > +#define RSC_TBL_SIZE		(1024)
> > +
> > +#define M4_STATE_OFF		0
> > +#define M4_STATE_INI		1
> > +#define M4_STATE_CRUN		2
> > +#define M4_STATE_CSTOP		3
> > +#define M4_STATE_STANDBY	4
> > +#define M4_STATE_CRASH		5
> > +
> >  struct stm32_syscon {
> >  	struct regmap *map;
> >  	u32 reg;
> > @@ -635,12 +644,23 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev,
> >  	return 0;
> >  }
> >  
> > +static int stm32_rproc_get_m4_status(struct stm32_rproc *ddata,
> > +				     unsigned int *state)
> > +{
> > +	/* See stm32_rproc_parse_dt() */
> > +	if (!ddata->m4_state.map)
> > +		return -EINVAL;
> > +
> > +	return regmap_read(ddata->m4_state.map, ddata->m4_state.reg, state);
> > +}
> i would manage here the default state depending on the error types
> if (!ddata->m4_state.map {
> 	/* 
> 	 * We couldn't get the coprocessor's state, assume
> 	 * it is not running.
> 	 */
> 	state = M4_STATE_OFF;
> 
> 	return 0;
> }
> 
> return regmap_read(ddata->m4_state.map, ddata->m4_state.reg, state);
> 
> 
> 
> > +
> >  static int stm32_rproc_probe(struct platform_device *pdev)
> >  {
> >  	struct device *dev = &pdev->dev;
> >  	struct stm32_rproc *ddata;
> >  	struct device_node *np = dev->of_node;
> >  	struct rproc *rproc;
> > +	unsigned int state;
> >  	bool auto_boot = false;
> >  	int ret;
> >  
> > @@ -664,6 +684,15 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >  	if (ret)
> >  		goto free_rproc;
> >  
> > +	ret = stm32_rproc_get_m4_status(ddata, &state);
> > +	if (ret) {
> > +		/*
> > +		 * We couldn't get the coprocessor's state, assume
> > +		 * it is not running.
> > +		 */
> > +		state = M4_STATE_OFF;
> 
> So here just handle the error;

Ok

> 
> Regards
> Arnaud
> > +	}
> > +
> >  	rproc->auto_boot = auto_boot;
> >  	rproc->has_iommu = false;
> >  	ddata->workqueue = create_workqueue(dev_name(dev));
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
