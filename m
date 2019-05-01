Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1D110A44
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 17:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGaKrJBFq6TBUjCNq9FRsYKmbGTIwt5ZyXcMTGDn7ZI=; b=rUuLsmAiARHMum
	h2ZFTP5kH6zWuMID0EeripvQtbTmxe4gHqEVEN5A5OzDz8oXjHxrOwNEW4Ek5XOpWfuZV6SNbFi/W
	/PbhR2osJ80WYPkwYjkoeDQCuAPxXFWVGOKyVjOjzLInDTpjc/L+lsW+W6jOWuji3kWwdvL+fKirv
	/VxCuRPCN88z3TnU2kufDWghXUhSgom5rCRP4Q18xrRR3pXvFFsYM+un+TDl8bPLbyN4hVSppV8zf
	fF9opy9DibPVbTDcETpVDStGNnp0kMvsKALMNUrtTNl1LYyLXMWT1buhjVjfI4XEPEuzbdq9bj5Mv
	Yw1O+hU4fIy+NsQEP/mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrTl-0001Ec-BI; Wed, 01 May 2019 15:49:05 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrTe-0001Dr-4G
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 15:48:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 472EAA78;
 Wed,  1 May 2019 08:48:57 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB8173F719;
 Wed,  1 May 2019 08:48:54 -0700 (PDT)
Date: Wed, 1 May 2019 16:48:52 +0100
From: Will Deacon <will.deacon@arm.com>
To: Zhi Li <lznuaa@gmail.com>
Subject: Re: [PATCH V11 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Message-ID: <20190501154852.GB28109@fuggles.cambridge.arm.com>
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
 <1556724043-3961-2-git-send-email-Frank.Li@nxp.com>
 <20190501152437.GA28109@fuggles.cambridge.arm.com>
 <CAHrpEqQYhg_aRt7qukkTzT3pEzLqg-B0YJL1Z7T06iZV1JAxmQ@mail.gmail.com>
 <CAHrpEqQON_M3LC6KtZCaRt4ShhREyY-ZA=-_cRpHxAaz46bvQA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHrpEqQON_M3LC6KtZCaRt4ShhREyY-ZA=-_cRpHxAaz46bvQA@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_084858_173767_18B457CE 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Wed, May 01, 2019 at 10:41:13AM -0500, Zhi Li wrote:
> On Wed, May 1, 2019 at 10:35 AM Zhi Li <lznuaa@gmail.com> wrote:
> >
> > On Wed, May 1, 2019 at 10:24 AM Will Deacon <will.deacon@arm.com> wrote:
> > >
> > > On Wed, May 01, 2019 at 03:21:00PM +0000, Frank Li wrote:
> > > > +static int ddr_perf_probe(struct platform_device *pdev)
> > > > +{
> > > > +     struct ddr_pmu *pmu;
> > > > +     struct device_node *np;
> > > > +     void __iomem *base;
> > > > +     char *name;
> > > > +     int num;
> > > > +     int ret;
> > > > +     int irq;
> > > > +
> > > > +     base = devm_platform_ioremap_resource(pdev, 0);
> > > > +     if (IS_ERR(base))
> > > > +             return PTR_ERR(base);
> > > > +
> > > > +     np = pdev->dev.of_node;
> > > > +
> > > > +     pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> > > > +     if (!pmu)
> > > > +             return -ENOMEM;
> > > > +
> > > > +     num = ddr_perf_init(pmu, base, &pdev->dev);
> > > > +
> > > > +     platform_set_drvdata(pdev, pmu);
> > > > +
> > > > +     name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "imx_ddr%d", num);
> > >
> > > Still not happy with this.
> >
> > is imx_ddr_pmu%d  okay?
> 
> imx_ddr%d_pmu look like more reasonable.

Sorry, it's a bit subtle, but please use "imx8" instead of "imx" since
they may change the thing completely in a future revision of the SoC. That's
why I suggested "imx8_ddr" in my reply on the previous version of the patch
(although it appears I somehow managed to drop the CC line in my reply, so
it only went to your gmail address).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
