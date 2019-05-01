Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1596B10A28
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 17:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gte/rE2c9Pwfdup8jmUvDSlABLhslBnfO52SCrIIB10=; b=Fwuo+KGDon9vdg
	OEs6jsAzzdBLO1auinah8VCqbEzPfKH2ZCQ2AKIQUUIlMdBHb/RtgEHDd8OdJN8EVKfdv3QCvpBSy
	6iJLfa3EflNaq62TAqq5q+s9X8nEDMlStW3HFWlmOgE57MJyyw/oTfRZIjLSjzLqBo5roon6PIjYy
	owfb1ycQEi52QXWjjhmhF8VCbUlfYYXWyjefZtHiEjCpnxi5aXoAMr3L18ypDm6APHP9Hmer34bZk
	k1RZFbuYJ831OTSVFSqhaV1t8r4xmoaTYKOYbPA/hsQbfacaNh1FZ734zm6WlFuqq/6HTHyVw1Fie
	M3FLIGSCQitCKZeRCT9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrGT-0005W1-0K; Wed, 01 May 2019 15:35:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrGM-0005Va-8b
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 15:35:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id i21so4997998pgi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 08:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kgmmbX11duKut5f1yf/akLjshjYvHQVrE54CwkSmvqs=;
 b=polivYvSvbIKLB3JVQUPsaiqqenkFleCf8AHLLIyPYMeKU2ZMncFTvzayCGMFIYYHG
 xJ6GqUmT8zTAyZlfKu8ZWhqjwyOCMoHYnxe79kV9NGwZkuhpGQYeQ7poU5FiH2fI+ItV
 lwM6zw1VfJAJT77/sZad4CY72mywRyA1zOOz4xu6FxqnppGA8KpJly+2rihORfLeoZLt
 7gF3le104L9SFwiygI7YG3qbEHLHPPkWb7TUyo16IRF0lmirB/a/eJgGoDbpS7wOGs6u
 FXIg7adWM1XbD89jWA+aI01oTwP0IITvflH4NcQu6+/eC3ZwHIhqNuo9UqXxsKoLts3o
 ta0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kgmmbX11duKut5f1yf/akLjshjYvHQVrE54CwkSmvqs=;
 b=QpiA9jbFLZsAqjpkVbta9EF4FKYU06y1Au9HGxRhvfp5+bBHNesxU6lMDXMEqO0xEb
 EpcENud893HexJUu38RsgHc67lDvAfuZo5vZ9kWtcfzxwV++tka0jdlt9pXbuTMosaOS
 MRG6L305BU6Q9KjL2T8SUL7tPqNr9uXxrzG0b4a48VxxF/l2VDn70anR6RL+QTMCQzTM
 JWqXcdAzbdiSEoq2Wmn2I4lUxPLi12sDeNlfm731QctD/gph4xvMPrdciDmozBZx17s/
 AkfKBsRyIMWtMSJRROuuD6viSn+fdBJrgkebZw+4DB8YSMx4t1UxXsCfomhk1CoiHe/S
 IHAw==
X-Gm-Message-State: APjAAAUQvHQ2V3hRu7DRek8ABwLBMUWZgP7bC55rzWfkfwBw9tszCoR+
 D32/yL+U0QWAR0/0cVN8pqEG8B3TPV8Dx+QRG2o=
X-Google-Smtp-Source: APXvYqzy43+x8L9pDbTCt0Zr3sBdD7BiqN5VG8r/buWa1KkQmflmjUsdR7Zg8m5fiMZyQ2qnaTJ5MWVa0XZSmoPiwiM=
X-Received: by 2002:a63:f212:: with SMTP id v18mr69367043pgh.231.1556724913015; 
 Wed, 01 May 2019 08:35:13 -0700 (PDT)
MIME-Version: 1.0
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
 <1556724043-3961-2-git-send-email-Frank.Li@nxp.com>
 <20190501152437.GA28109@fuggles.cambridge.arm.com>
In-Reply-To: <20190501152437.GA28109@fuggles.cambridge.arm.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Wed, 1 May 2019 10:35:01 -0500
Message-ID: <CAHrpEqQYhg_aRt7qukkTzT3pEzLqg-B0YJL1Z7T06iZV1JAxmQ@mail.gmail.com>
Subject: Re: [PATCH V11 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_083514_308590_D5E16F6D 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lznuaa[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Frank Li <frank.li@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 1, 2019 at 10:24 AM Will Deacon <will.deacon@arm.com> wrote:
>
> On Wed, May 01, 2019 at 03:21:00PM +0000, Frank Li wrote:
> > +static int ddr_perf_probe(struct platform_device *pdev)
> > +{
> > +     struct ddr_pmu *pmu;
> > +     struct device_node *np;
> > +     void __iomem *base;
> > +     char *name;
> > +     int num;
> > +     int ret;
> > +     int irq;
> > +
> > +     base = devm_platform_ioremap_resource(pdev, 0);
> > +     if (IS_ERR(base))
> > +             return PTR_ERR(base);
> > +
> > +     np = pdev->dev.of_node;
> > +
> > +     pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> > +     if (!pmu)
> > +             return -ENOMEM;
> > +
> > +     num = ddr_perf_init(pmu, base, &pdev->dev);
> > +
> > +     platform_set_drvdata(pdev, pmu);
> > +
> > +     name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "imx_ddr%d", num);
>
> Still not happy with this.

is imx_ddr_pmu%d  okay?

>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
