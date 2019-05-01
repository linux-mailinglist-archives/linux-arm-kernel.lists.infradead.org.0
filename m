Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7200D10A38
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 17:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yew5JjAzNa8jZ36MOSekCcjLUqdQunCGvsPCk3lQf1U=; b=KzkDIbXj7fTs1l
	IwOabyix22PssQOBeQbhRvWoAF4trRZYkP5OIzJOyx47dZ06h8COZG84Weqxo7KNvQUTgt4gu8JnE
	hEWcvzxllCtR+c8LRjyKTI6LalT8DIKq7yGYwgvq/31KYBDF7NgdM1Dp1gTBJpMDF1uGUkk8nYg6N
	G39yLlpvNV3//ih/oHO1gp0ZFLIjuzqcuB6Ca6gIT7fFIzN6t2gqynE0ryTJ2ycMJDDxYjYxpS5F7
	kwIe8aLMwfJLSjwqVHduwQfvaUp0OCPuYXhtoHsUh60r90/IPKXBXSVcSTwXXtRE2IQ8cGMaZmCUM
	QZA2wdPbWFRxebsEBTbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrMR-0007Ja-S8; Wed, 01 May 2019 15:41:31 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrML-0007JF-7O
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 15:41:26 +0000
Received: by mail-pg1-x542.google.com with SMTP id j26so8461200pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 08:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z9Jk9f5GRyVp8LwJQr63Ueksfq6d8UWo5ZdkS2e4C5Q=;
 b=pUGtFJa+YB3mWZM+HAUSk09dKbR7DFVrhScOIWdcA5l6TBTa2wRlPXW9Jk6SUnAfFC
 WgszkMgkRhYZ5REx8i3n/BFJUqlSjO3VQCoxmE9IGD2RT4iyCHvenKGE6dLXnENR8k9k
 x6mVHku40atbRzdKP24xZVggr6BbJiDDh7P/iWTWEWRpYleYP/EutRJ6Jz4vsjJCfV73
 gE5Ra8+d2aTvDJiFxg3YCSvrhnRJGwgZ61CiaL/gQaAUQG43gXpNW/sisqUgJmk9bTTp
 xzwYvbmjh3k28DOi4P52NNGArzpAArt79bkc4NpH2RparU6YBSbk/pRVmkn2TB2eXkWV
 fidQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z9Jk9f5GRyVp8LwJQr63Ueksfq6d8UWo5ZdkS2e4C5Q=;
 b=e5xqhMcvF4vwh7482Wwa986+KWJmH5+/nuwi2WTm6caLtYEzf0gRFT4qOHDuh5M2f8
 CMvm4/c2rwfQBokqdTZvQrNxG2pubnM27h4TZo4RcFDQJQgKM8+69Lr921sp7wfZSOC0
 VktPmxE+MxVikBYKLEq3YYWdLjvUuj6kNM0+GcqS3mDOuSophALNCVeVOIJcWHSWD8mD
 EG3LJ/YxFd/eJvkXCkLFb56PrNFidu5F2Ij3Q6lzXJc8WtbVjOhxlt2l1zi35pyQS4C/
 9sz0lOa2kjBHL5meoWFrkTbJuTbypJJRA/Z7qak6z1RaG1d68sLX3Tn2tOUNHxJutrkJ
 YsqA==
X-Gm-Message-State: APjAAAUVCo4ypmec3rHEeTNYpt+bgwh1+hmIncy8GGgKfEdCuVC9Hy7X
 WQRGXRxs0j/WOL1oPb6fTksSgQ+zeJV05qcu6Z8=
X-Google-Smtp-Source: APXvYqwTzicPPLPet3+UmO2HcborhdtkQ4PO7SRbsVyx3T3dAQWyJ1xvVtmZt/hOK7v/k9gEIMPAjmbD75fREeTsRAM=
X-Received: by 2002:a62:a513:: with SMTP id v19mr78245243pfm.212.1556725284311; 
 Wed, 01 May 2019 08:41:24 -0700 (PDT)
MIME-Version: 1.0
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
 <1556724043-3961-2-git-send-email-Frank.Li@nxp.com>
 <20190501152437.GA28109@fuggles.cambridge.arm.com>
 <CAHrpEqQYhg_aRt7qukkTzT3pEzLqg-B0YJL1Z7T06iZV1JAxmQ@mail.gmail.com>
In-Reply-To: <CAHrpEqQYhg_aRt7qukkTzT3pEzLqg-B0YJL1Z7T06iZV1JAxmQ@mail.gmail.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Wed, 1 May 2019 10:41:13 -0500
Message-ID: <CAHrpEqQON_M3LC6KtZCaRt4ShhREyY-ZA=-_cRpHxAaz46bvQA@mail.gmail.com>
Subject: Re: [PATCH V11 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_084125_268252_28D4187E 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Wed, May 1, 2019 at 10:35 AM Zhi Li <lznuaa@gmail.com> wrote:
>
> On Wed, May 1, 2019 at 10:24 AM Will Deacon <will.deacon@arm.com> wrote:
> >
> > On Wed, May 01, 2019 at 03:21:00PM +0000, Frank Li wrote:
> > > +static int ddr_perf_probe(struct platform_device *pdev)
> > > +{
> > > +     struct ddr_pmu *pmu;
> > > +     struct device_node *np;
> > > +     void __iomem *base;
> > > +     char *name;
> > > +     int num;
> > > +     int ret;
> > > +     int irq;
> > > +
> > > +     base = devm_platform_ioremap_resource(pdev, 0);
> > > +     if (IS_ERR(base))
> > > +             return PTR_ERR(base);
> > > +
> > > +     np = pdev->dev.of_node;
> > > +
> > > +     pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> > > +     if (!pmu)
> > > +             return -ENOMEM;
> > > +
> > > +     num = ddr_perf_init(pmu, base, &pdev->dev);
> > > +
> > > +     platform_set_drvdata(pdev, pmu);
> > > +
> > > +     name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "imx_ddr%d", num);
> >
> > Still not happy with this.
>
> is imx_ddr_pmu%d  okay?

imx_ddr%d_pmu look like more reasonable.

best regards
Frank Li

>
> >
> > Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
