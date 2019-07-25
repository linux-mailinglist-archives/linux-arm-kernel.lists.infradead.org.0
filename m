Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303F974D4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 13:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFu7/5Wtml9N5HLe7wvqMYkHSgfZwZDUHCwL7ZgUCIs=; b=IYaqR5PCnz4G5C
	uD7wHQFZvtJEJHE3hH85D3K/rqYNSGTgVeEmRsICb7RoU8SPJTTszTmvTXSX18i6ZHnvrhokpu1Ck
	EeIHPKw+fX3EcEGHDgFinA5cm6riWAyM7UJLiAw1wslGpgI5p7w1yJJfm7lIUUpHGbTI4ebZ4ENtR
	uUEPZf60blWVth5jxeolAr0naPwwdI8ecagUaLocc1Eq9arLPinLOQQ9Haxh/RSqbEfLsH850fJH3
	XooaJibTwf+ZvnVdA0SjTzUkAgrcco6dKx2aSWdkE9bzk3mXzolL6XSrl7q6bituLTm4mpJkdpyQo
	S0IOU4KKrhQmZ2XnDvrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqc5z-0006gt-FV; Thu, 25 Jul 2019 11:39:39 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqc5o-0006g2-V2
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 11:39:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id a15so44675453wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 04:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/KNocy2+ZfOQXTjSVoKpw5gYwyEUDk8UgKcJTP4ngYE=;
 b=MAEDyrQNT8xSuX9iSr/7BWAuVtiFFg0r91vvdxT2++HHJS9g3J0YPwvOtkJtKUq8Jv
 5iKmWqJK52t0LH1sXJk3PO+C21INeHi4V/ZYW7YuPXVIBflnQMtUHe6awRTT5dvD1DaE
 WpfQIVfVij+bSGThMlicGuVLRiLpF6rqQwZpgSsW3OX9UHyDapWCYIrbuJner3poxc++
 G0Bn8vzCLpCMRU3GuO3rYDre/AQ/pQH9pBaRn/BU0lkFmSiIGNMktCQBPARjaQkabMe+
 GuF14I1ZfrdG7ZX9sunB4JjQ9JvX8MVHFeTldfj+sF04kvwCNlmOmMZTYqLm/phbk5K8
 qnTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/KNocy2+ZfOQXTjSVoKpw5gYwyEUDk8UgKcJTP4ngYE=;
 b=HE1HnZN1BwhKpvRUt4qJNZlQjvIqYCQYmjVwA02i51MdAZtOA88QW2bI1t9waLkhXQ
 YXPMgCOKMQVyuserHn2GY+H33Ir+YqbpDK3BFugDGZtAQcJRdRB+Alr7ZhSMU/4gP5ua
 h1I0vWx1fHE1zQZ3JPlBVrU4fMMDMIkk4gf+5DOqj5tuJWXGcb1T9Tl6Z7pVdQKo1q8c
 yLkkacjmVY6V0dG7X1MOxoh24+dQJj2Mmqj7UTEC9VCB6abxJC37YZArOUtq/qB5bxHe
 An031nSnQ3JKXnZTW2HmqqjsWHSs6mOzdJXs4n1V/TA93c7uQPcyWH3HwEludz1/gCr5
 hwkg==
X-Gm-Message-State: APjAAAV93zA8RLtz0AWWTIDt28US36OKdb+bQXwCmsr57jbS8mW3O1PV
 Cci3Or03vnfo492ad7fjwyPaAg==
X-Google-Smtp-Source: APXvYqxKToM60L7WegP6mEG3X3RaqPtSEAUsT9RXfSRetFr+Hk/NVm3V8WF2BD26TvV4TjAbT9vnuA==
X-Received: by 2002:a7b:c5c2:: with SMTP id n2mr77541522wmk.92.1564054766915; 
 Thu, 25 Jul 2019 04:39:26 -0700 (PDT)
Received: from apalos (athedsl-373703.home.otenet.gr. [79.131.11.197])
 by smtp.gmail.com with ESMTPSA id p6sm53195376wrq.97.2019.07.25.04.39.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 04:39:26 -0700 (PDT)
Date: Thu, 25 Jul 2019 14:39:22 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Jon Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190725113922.GA1703@apalos>
References: <20190723.115112.1824255524103179323.davem@davemloft.net>
 <20190724085427.GA10736@apalos>
 <BYAPR12MB3269AA9955844E317B62A239D3C60@BYAPR12MB3269.namprd12.prod.outlook.com>
 <20190724095310.GA12991@apalos>
 <BYAPR12MB3269C5766F553438ECFF2C9BD3C60@BYAPR12MB3269.namprd12.prod.outlook.com>
 <33de62bf-2f8a-bf00-9260-418b12bed24c@nvidia.com>
 <BYAPR12MB32696F0A2BFDF69F31C4311CD3C60@BYAPR12MB3269.namprd12.prod.outlook.com>
 <a07c3480-af03-a61b-4e9c-d9ceb29ce622@nvidia.com>
 <BYAPR12MB3269F4E62B64484B08F90998D3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
 <d2658b7d-1f24-70f7-fafe-b60a0fd7d240@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2658b7d-1f24-70f7-fafe-b60a0fd7d240@nvidia.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_043929_008098_CBEE5272 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "wens@csie.org" <wens@csie.org>,
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

Hi Jon, Jose,
On Thu, Jul 25, 2019 at 10:45:46AM +0100, Jon Hunter wrote:
> 
> On 25/07/2019 08:44, Jose Abreu wrote:
> 
> ...
> 
> > OK. Can you please test what Ilias mentioned ?
> > 
> > Basically you can hard-code the order to 0 in 
> > alloc_dma_rx_desc_resources():
> > - pp_params.order = DIV_ROUND_UP(priv->dma_buf_sz, PAGE_SIZE);
> > + pp_params.order = 0;
> > 
> > Unless you use a MTU > PAGE_SIZE.
> 
> I made the change but unfortunately the issue persists.

Yea tbh i didn't expect this to fix it, since i think the mappings are fine, but
it never hurts to verify.
@Jose: Can we add some debugging prints on the driver?
Ideally the pages the api allocates (on init), the page that the driver is
trying to use before the crash and the size of the packet (right from the device
descriptor). Maybe this will tell us where the erroneous access is

Thanks
/Ilias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
