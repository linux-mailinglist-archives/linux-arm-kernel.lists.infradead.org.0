Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78598B799
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzQeFTciX/SJbEhgkB5kKwSFvgdBiIXfVSwWp0XAR2Q=; b=jqUqjzijOicDt4
	gLYg7yqDXA0FupD+Fp9vDRg8PdEvQ/GuNHdcVvXUJUPJwkrS+7XQAoeSNJ4W+b5pSkM1qH0cZK8ZQ
	+/eRfCVRxK/qVSiS+FkVcYF5GaSLl8+lYuxtZ1DnHVieIncsZnieZeMy+DRfkBeNSxZFTa9LAdCW/
	4VngBBA+sZYhiGVJT/3WIAzpTdwRB9UHzpMkeh09CpzBPOP8oq1XaC+wrObnmFOIv6tox+k2a1ZxS
	CnAHwn9j3HAS01yGeNxgRDQciG5gEAU+kuZjbkL5x1Vz5xGXnulz1LwqldYVgFjUrkHXWgsOC3K13
	fUfZijDGfoFdHE9U3Pqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVLV-0000sj-MU; Tue, 13 Aug 2019 11:52:09 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVLK-0000rs-4Q
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:51:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so51145656pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 04:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zQLcyMh/ISEYCNtjhilvOef27B+ErPxPF2alHh2I/rc=;
 b=yOz7SWGI5f2DNgNH+EDVpBNZsvS2JWwojelO+H3twD4309I0JzuqE9agVRxnlQ8aSz
 lqymVTEIYXM28K8H/SJ6Lx1gp2cvzcHi9GARmU59TWWmeUzkeMfRg0rZ4jzR8E5Pi31u
 TnQ7bN+rkEd4W/ulDNtN7Uu4CQqkbXO/ROkzmYkY4XAtX1Xq+nLwdF8cpa8htS09pTY+
 LRbE3p7fSlADM8+7Tdpy5pE1GpSp+U/u9PF1fxYOJprhpRF43X/6RRz4wkMAcSZWXv8M
 m3UMA7psFdisL+/dzly3IvowyM+WY2Hh5KQmjVy4mdRrVXv+NbRyV9xpQBw9LS2mNTld
 j3xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zQLcyMh/ISEYCNtjhilvOef27B+ErPxPF2alHh2I/rc=;
 b=dYcxnJWGZUp4pFbs+8SUJu/mYQHlclsJRNrNuZbjpVElxM5GPUnlQsQ+liif2/fjD+
 fzzDRpFurs1aO+QnDpzJR9KC2jN65YOuDeFQN2V7Nz/ujEhx3lCQtWM29oYwHK4+PFWp
 ML6IdmazClA38J3gb1yEbX6IPSfxifTihFnZSFMmhaMcPO4SotBgpDUGBKjicUICe3Wd
 7fa/6fN0Pakm32HB9UYpocuQbHBLIvhWhEyFrU9d9jxfFVZkn0hSQhYx38BSx7hImNlK
 9MNSZSbf6s9w+z9DNodIplZJGuJKhwUqj3X3aCZvnq/mgX3WJ1ASI78xt/sFJz3TwQn6
 FgPw==
X-Gm-Message-State: APjAAAUDxwBaVOPniV75FB6BUHggdht5kXpVQvb96aEgt5aUwMnsl7rE
 PyDQ0i3u7HYbJ4SLYbLiNcQI
X-Google-Smtp-Source: APXvYqxc/t6kiEwTrKBx62vfKP5EcaMkAfRfkcv1bxg95HmegdS7ap89d9SxVaFk0eASmLiYCIqh1g==
X-Received: by 2002:a63:2807:: with SMTP id o7mr34711857pgo.131.1565697116787; 
 Tue, 13 Aug 2019 04:51:56 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:649c:6ce0:9d44:669c:5d6c:bc5f])
 by smtp.gmail.com with ESMTPSA id u18sm5071090pfl.29.2019.08.13.04.51.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Aug 2019 04:51:56 -0700 (PDT)
Date: Tue, 13 Aug 2019 17:21:47 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor
 binding
Message-ID: <20190813115147.GB28877@Mani-XPS-13-9360>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
 <20190806130938.19916-2-manivannan.sadhasivam@linaro.org>
 <20190813113846.GG13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813113846.GG13294@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_045158_181069_0ED447A3 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russel,

On Tue, Aug 13, 2019 at 12:38:46PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Aug 06, 2019 at 06:39:36PM +0530, Manivannan Sadhasivam wrote:
> > +Required Properties:
> > +- compatible: Should be "sony,imx290"
> > +- reg: I2C bus address of the device
> > +- clocks: Reference to the xclk clock.
> > +- clock-names: Should be "xclk".
> > +- clock-frequency: Frequency of the xclk clock.
> 
> Driver code:
> 
> +       ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);+       if (ret) {
> +               dev_err(dev, "Could not get xclk frequency\n");
> +               return ret;
> +       }
> +
> +       /* external clock must be 37.125 MHz */
> +       if (xclk_freq != 37125000) {
> +               dev_err(dev, "External clock frequency %u is not supported\n",
> +                       xclk_freq);
> +               return -EINVAL;
> +       }
> 
> So, only 37125000 is supported - is that not worth mentioning in this
> description?  Is this a hard requirement of the sensor?  If so, why
> does it need to be mentioned in the DT binding?
> 

Actually, sensor supports only 2 clock frequencies: 37.125 MHz and 74.25 MHz.
And the driver currently supports only 37.125, because that's what I can test
with my setup.

So how about below:

clock-frequency: Frequency of the xclk clock in Hz. It should be one of the
		 following:
		 - 37125000
		 - 74250000

Thanks,
Mani

> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
