Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB5372BC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 11:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tDKalP+/Q/kTj8AsiihTF+5kDYjw4Ci3+koGxfQNLA=; b=ESfXf6zWXa41J/
	sHCrJ+DMACUFgd3C0wv8g/vZamT7R4s5d9Ynnk6Wxb90alz1euyDYE+3VDSnZ6vb8gvqC6ugcSGZ4
	5Lj2Qg96hAzuGd4Mr3AZWeh0qw8VE79vGWwFDWb6nQbOlLVGvyW0anm5DLp9pPUix+X8ip0jTCu72
	IQKZhzXeDmWMSxX3qhJ0kPfQac9A1r5VEiJI5G5iYzkWhAdQhrY0pRwS+H5z4gRV8ONPlLJ2Op3SA
	bTs1ZpG9MoFHjY0AVCZ8Fjp2Qkp2DK9iAbRYm9igVtd/7UPppEz7371ZmIdk8mn6ePZNR1FzBrBQ7
	fpeXlRGxdaV5Ky7m2C1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqDxp-0006pY-56; Wed, 24 Jul 2019 09:53:37 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqDxT-0006ol-Re
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 09:53:17 +0000
Received: by mail-wr1-x435.google.com with SMTP id f9so46202426wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 02:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lR8Ju9su/CBU1j0HeTY4zNhljAae1dIFpfV6iNZG33M=;
 b=rt/AaXnhKheL0xFkzKLunvj8+9MwYEXt7S1oWeRDReGARnsopOBP3yinZcK7tsLHqv
 qFxSb0f+FgWqC2SiOJ+Y4Q+N2wnCIxG//pk1XmsRAU8Ks4FKHEcjiDkdRA/Vqy8Tpg+3
 IrCkPu96jz7A5YWxYU96ngNunz6QAhNjF4guFqYYXuxMy4oeAms2bw1+kIMcTn0QoPLr
 1JWbKZ0PhszWxXesACC+DBTOOgO2HEByQt11XNPWWviacFtZESCOJUwMHq+yX7lh5fV+
 icCJzRZV90ddlGcEZzwNZpikwm2MDlWl0espu3AlxlUJeG/9K338Yp4WXLlVGzQSyXSH
 MT1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lR8Ju9su/CBU1j0HeTY4zNhljAae1dIFpfV6iNZG33M=;
 b=haExFrwpcvEfDWU3gxAjaf3bMN3RC4sKp1sOZ6ijfKSvVwJtOczhNYNHWccgvgT7O9
 MQlSDXpeblEM/yBcZ78rt1uqhiS6U0mo3cblaXa3wqfZaBEYEpsiHJ5AETfSV4KHf7US
 /8b1564cGlByZogukRpjOX5Kog9T/OuowBh/PRyoTwmH9Bjc1hwZMKVleWpXB/JdjxWz
 bvcMJdgzJVGe66ZBPDBIiNJ9xuhtg1VyOAaae1znjRu+S5ey9QrI+llMSVfMMgJ79X18
 mPFUZxaEIqYMe9R+SMcpPkvXuwvIpRsaD1oJNF1blGEue4SyZr7Smyw1YA6AsYVwWHfZ
 r5zg==
X-Gm-Message-State: APjAAAVRtOUGcojHM2ruTcB7au+PXu+bwPJwNEugN6rfiyXYAXGOCrUP
 CVmusL7BB+98/lBdXGLkAcK+gA==
X-Google-Smtp-Source: APXvYqxWislcFVF3Du4KHOxbpYbgSDdLfG5qWcm0W5OuQz1uGH40+V+7q9mAco6CKAQ68bL6fhPIRg==
X-Received: by 2002:a5d:6190:: with SMTP id j16mr76465400wru.49.1563961994279; 
 Wed, 24 Jul 2019 02:53:14 -0700 (PDT)
Received: from apalos (athedsl-373703.home.otenet.gr. [79.131.11.197])
 by smtp.gmail.com with ESMTPSA id p18sm45611466wrm.16.2019.07.24.02.53.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 02:53:13 -0700 (PDT)
Date: Wed, 24 Jul 2019 12:53:10 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190724095310.GA12991@apalos>
References: <BYAPR12MB32692AF2BA127C5DA5B74804D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
 <6c769226-bdd9-6fe0-b96b-5a0d800fed24@arm.com>
 <8756d681-e167-fe4a-c6f0-47ae2dcbb100@nvidia.com>
 <20190723.115112.1824255524103179323.davem@davemloft.net>
 <20190724085427.GA10736@apalos>
 <BYAPR12MB3269AA9955844E317B62A239D3C60@BYAPR12MB3269.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR12MB3269AA9955844E317B62A239D3C60@BYAPR12MB3269.namprd12.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_025315_904795_450DDF56 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>, "wens@csie.org" <wens@csie.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 David Miller <davem@davemloft.net>, "lists@bofh.nu" <lists@bofh.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jose, 
> From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
> Date: Jul/24/2019, 09:54:27 (UTC+00:00)
> 
> > Hi David, 
> > 
> > > From: Jon Hunter <jonathanh@nvidia.com>
> > > Date: Tue, 23 Jul 2019 13:09:00 +0100
> > > 
> > > > Setting "iommu.passthrough=1" works for me. However, I am not sure where
> > > > to go from here, so any ideas you have would be great.
> > > 
> > > Then definitely we are accessing outside of a valid IOMMU mapping due
> > > to the page pool support changes.
> > 
> > Yes. On the netsec driver i did test with and without SMMU to make sure i am not
> > breaking anything.
> > Since we map the whole page on the API i think some offset on the driver causes
> > that. In any case i'll have another look on page_pool to make sure we are not
> > missing anything. 
> 
> Ilias, can it be due to this:
> 
> stmmac_main.c:
> 	pp_params.order = DIV_ROUND_UP(priv->dma_buf_sz, PAGE_SIZE);
> 
> page_pool.c:
> 	dma = dma_map_page_attrs(pool->p.dev, page, 0,
> 				 (PAGE_SIZE << pool->p.order),
> 				 pool->p.dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
> 
> "order", will be at least 1 and then mapping the page can cause overlap 
> ?

well the API is calling the map with the correct page, page offset (0) and size
right? I don't see any overlapping here. Aren't we mapping what we allocate?

Why do you need higher order pages? Jumbo frames? Can we do a quick test with
the order being 0?

Thanks,
/Ilias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
