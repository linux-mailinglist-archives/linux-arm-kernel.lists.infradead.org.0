Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FC81C08A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 22:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALNL5z5bubO3KKQACtv57aNV7E2dZOLfTx0XdbjihVg=; b=gVduoNLOd2ro8F
	Xy3ejKg2DzBfDPXN1xAw9dCUnYYh1DFXiqaSfZjAL/Dz3oRPx3UTjPC20m/HhYQJyPBrSnnMrYH+x
	xM9WmzDHvjzsTmgNA0xHw9FMEiLs/qvBA7tSIJtPltwE1vKuRkS4f48sR07utTrso/rO+QVMopDDE
	oNsoIvc7lFAfQgDNCSo1R7l2WzU5hnQ/ospaU3yfAya2dBWnRYQDm303qpEssDHcesuwIN1nhe6mh
	C7GLQNPw8586M0LFarka3hRcvZIbeSibZQmoQvZ9Mpq0Qhfq9dthII4EptA/sxlnEFf89nAIyO3oP
	oOWJdFa6LS6thPrmrWGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGGQ-0000Po-8T; Thu, 30 Apr 2020 20:58:34 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGGF-0000PC-2D
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 20:58:24 +0000
Received: by mail-pj1-x1042.google.com with SMTP id y6so1383060pjc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 13:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MX/gFKorFD3fJiz0waGi+R3fRw1GVFpupUsSX0SPyJY=;
 b=CsTBErZFaAQkEbs5S+GlwA8kRzgyJRrcYYtemLqJ9WlfIPAhaq6G4rW9gc3uI8mECY
 OMjpu0MqbtnrkkGBFU8c/hoxlzYOAoSNV2BdQCVF8lHP2UPvKSWGeIHDMTYDp8al261g
 lV8Vh0nWV30oVczqakw539UDRjIKSR24bd1HFHrw8Gf7opTt4Vk+SSqj/xO2nokwhZw2
 1OOJwQdoa+tqNpeiHYjzibN2xdFDXDes6gRUNiPGVnncDZywStP0554NDEfMabSOjeis
 8vfPXauZSf0IR0nm3IJrCMbGs3o/HsvmL3H0ypxjyka1O616cT1vv/24yQwBFsHDsy91
 9a3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MX/gFKorFD3fJiz0waGi+R3fRw1GVFpupUsSX0SPyJY=;
 b=jj15JarbxLulNI+/Ec5WbaI9xEF3vWDcHYnW8P9iy23yRSrhR2bwo6MR7WaylS81Uy
 2bm+ECrnObKOY5rLVBWLmM2/zHk9NY8un6XtGMyW65YAh00TzSkCNFJsgXalIYht7OpB
 5bItsK7ctDzUQ8AH/bJ7ByezQiK+UL0CcYHXT6ek46Cm/P72+13Jm4IysdXaWOHlrJvT
 6JXpdPeV2BaUNyFxiVaDBrirqNuJhmXhaUYHYfPcPU9XFdh8m4hsnEjYAIxxYqh2J9Ph
 bpBF6RHjYfuA4AkpRw9J91cWEYugQym8IRlNt9QR3r4TL17x5ouhxKK3oQy31B1I9pUc
 cDeA==
X-Gm-Message-State: AGi0Puay98jvqAp984Waj0yOvaBkupG03kSHXBNEvaj2yUcmwdX5Q+Zh
 l69KTHeR32iqijI9Js3rB7HFLg==
X-Google-Smtp-Source: APiQypKe3OdI9QEW41vMal8UJb8GDAGm5V7tlJQS0ryzb463ValPrIAGP3jeUyn/S22VakZZUZ9faw==
X-Received: by 2002:a17:90b:297:: with SMTP id
 az23mr762282pjb.85.1588280301989; 
 Thu, 30 Apr 2020 13:58:21 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v7sm559509pfm.146.2020.04.30.13.58.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 13:58:21 -0700 (PDT)
Date: Thu, 30 Apr 2020 14:58:19 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Subject: Re: [PATCH v2 03/12] remoteproc: stm32: Decouple rproc from DT parsing
Message-ID: <20200430205819.GD18004@xps15>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-4-mathieu.poirier@linaro.org>
 <b68419a6-65a9-08d0-bed8-5f8195ae3d55@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b68419a6-65a9-08d0-bed8-5f8195ae3d55@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_135823_144317_747FC2EA 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Apr 29, 2020 at 03:37:58PM +0200, Arnaud POULIQUEN wrote:
> Hi Mathieu,
> 
> On 4/24/20 10:24 PM, Mathieu Poirier wrote:
> > Remove the remote processor from the process of parsing the device tree
> > since (1) there is no correlation between them and (2) to use the
> > information that was gathered to make a decision on whether to
> > synchronise with the M4 or not.
> > 
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  drivers/remoteproc/stm32_rproc.c | 25 ++++++++++++++-----------
> >  1 file changed, 14 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> > index 1ac90adba9b1..57a426ea620b 100644
> > --- a/drivers/remoteproc/stm32_rproc.c
> > +++ b/drivers/remoteproc/stm32_rproc.c
> > @@ -538,12 +538,11 @@ static int stm32_rproc_get_syscon(struct device_node *np, const char *prop,
> >  	return err;
> >  }
> >  
> > -static int stm32_rproc_parse_dt(struct platform_device *pdev)
> > +static int stm32_rproc_parse_dt(struct platform_device *pdev,
> > +				struct stm32_rproc *ddata, bool *auto_boot)
> >  {
> >  	struct device *dev = &pdev->dev;
> >  	struct device_node *np = dev->of_node;
> > -	struct rproc *rproc = platform_get_drvdata(pdev);
> > -	struct stm32_rproc *ddata = rproc->priv;
> >  	struct stm32_syscon tz;
> >  	unsigned int tzen;
> >  	int err, irq;
> > @@ -589,7 +588,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
> >  
> >  	err = regmap_read(tz.map, tz.reg, &tzen);
> >  	if (err) {
> > -		dev_err(&rproc->dev, "failed to read tzen\n");
> > +		dev_err(dev, "failed to read tzen\n");
> >  		return err;
> >  	}
> >  	ddata->secured_soc = tzen & tz.mask;
> > @@ -605,7 +604,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
> >  	if (err)
> >  		dev_info(dev, "failed to get pdds\n");
> >  
> > -	rproc->auto_boot = of_property_read_bool(np, "st,auto-boot");
> > +	*auto_boot = of_property_read_bool(np, "st,auto-boot");
> >  
> >  	return stm32_rproc_of_memory_translations(pdev, ddata);
> >  }
> > @@ -616,6 +615,7 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >  	struct stm32_rproc *ddata;
> >  	struct device_node *np = dev->of_node;
> >  	struct rproc *rproc;
> > +	bool auto_boot = false;
> 
> Nitpicking: Seems that you don't need to initialize it. 

I think you are correct.

> Perhaps you can simply suppress the local variable and directly use rproc->auto_boot.

... and change the value of rproc->auto_boot if state == M4_STATE_CRUN?  Sure,
that's possible.

Thanks for all the comments, it really helps to have a different perspective.  I
am out of time for today but will continue with the rest of your comments
tomorrow.

Mathieu

> 
> else LGTM
> 
> 
> Thanks,
> Arnaud
> 
> >  	int ret;
> >  
> >  	ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
> > @@ -626,9 +626,16 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >  	if (!rproc)
> >  		return -ENOMEM;
> >  
> > +	ddata = rproc->priv;
> > +
> >  	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
> > +
> > +	ret = stm32_rproc_parse_dt(pdev, ddata, &auto_boot);
> > +	if (ret)
> > +		goto free_rproc;
> > +
> > +	rproc->auto_boot = auto_boot;
> >  	rproc->has_iommu = false;
> > -	ddata = rproc->priv;
> >  	ddata->workqueue = create_workqueue(dev_name(dev));
> >  	if (!ddata->workqueue) {
> >  		dev_err(dev, "cannot create workqueue\n");
> > @@ -638,13 +645,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >  
> >  	platform_set_drvdata(pdev, rproc);
> >  
> > -	ret = stm32_rproc_parse_dt(pdev);
> > -	if (ret)
> > -		goto free_wkq;
> > -
> >  	ret = stm32_rproc_request_mbox(rproc);
> >  	if (ret)
> > -		goto free_rproc;
> > +		goto free_wkq;
> >  
> >  	ret = rproc_add(rproc);
> >  	if (ret)
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
