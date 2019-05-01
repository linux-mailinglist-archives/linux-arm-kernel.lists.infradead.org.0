Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0275710A56
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 17:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7mnGa9P2vvV7V8dg2O2mTL4rVqeKRq+Er1BOGd08LM=; b=NpGKv8mGZWwwH7
	4pe18Zc8akH7Vb2hyBElPfChjn0hOVSWtWkGuVD2pQkZkzmp9bDLSzgc+XWGfbKu7V2Vm4eHp61DH
	gzAsZDtRj2Ml3tIToqfPOfbzDqywaLfdiUgitkPnrhbyKYYD41974A/Eo7jIOYDGyVQVFkezd6EKr
	Rn14L6xML2ILv/WZLwqO15/Gy2g/YV8JoCMOTATpZTN2aV2z67R7E9SzV8s7VhQYTR2kRPBd2AP24
	XyYjnpS98gYBtl5j9AzZJjysQjyzXK1C8Nb32LaROno7+812b2K3WOLkdJKTBMjR8RXyP3roBkbG+
	dM2TT8Be7GU2yZrVDhNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrbb-0004E3-44; Wed, 01 May 2019 15:57:11 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrbU-0004Dc-Jq
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 15:57:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id c13so7506616pgt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 08:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zougnS9BHWtiV86/fjUGFfiNYsjc2IiPUeZ1wHycv54=;
 b=pssZ8J+WWQRbOyrlcdWLjXFhkeJz2mZCR4QsTOuYI7FI22sBKiSlhvb3wBF22qLnkU
 5asc9y57ArgeAzDip7evbLaIGK6GwEJNYE+6j0X3kAlD6qVHt1nZy1H9mFpXxgKGImil
 /mfigmNKy1wPw0zdNXHuSmpzij9hHt9KqzOmuMMGE51opboEK/wVBjvVPxHRvepkbnAP
 iLtg/L9YCPrlkInULrqI1GOzKJjVi+ws+nwkOFj6ud3xxTkMIjASD0OMo+QRV60pTIJQ
 9dqOoRoqBQbM+oqSkKPY+5ryAm5YT6FjRbxgMwWTd1yo8EvGTHQRQfy/NOCTMFZXghcE
 t4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zougnS9BHWtiV86/fjUGFfiNYsjc2IiPUeZ1wHycv54=;
 b=A2viDJz65e1qKSbqfx1UfDShxeupS/tihIKnhpa45yQ13OjlsbME3MCIyYwSz7vS8i
 7RSziP2fsOtNQwgjTSifHRj4fw4039WN2rfKw2U4Y+ne8P/kzODJ48kiVGaiRYZiWqni
 WZIpnMOka4zmPTkkcdmhq/YJ2UWNbjo7VRnzwp5wwGlnyQYiMt10APwKCru9sP1oU52q
 +Y4yBj6u5KIrVsYOiqMjh441rftTvJV7msZsDx4jp4TgBbQtCcVuNsTiUjkOROFheuEq
 TPvygcCKoO1rpU2E43xl/UMm3sGsA8LJZNHQD0BMTncOy9FyY9CbyzvF0agRjCmkXiMX
 Yvvw==
X-Gm-Message-State: APjAAAUSeFN/fOHdzNuUcjSfkLYd8G/EbNtk6AUVTMrbCG3l/06Wq763
 uIzWzh1BwmqqHegsyihvqvx8VqXRZ5i9CmsqekI=
X-Google-Smtp-Source: APXvYqyVbB3PJlkYHkPrKxoEyC7Gmz2Tf4KUKj7+CETz3ajcYu09AZMjTbwENOvvHZUcd/CAt+vXIOTz1sm68Mek+eM=
X-Received: by 2002:a62:a513:: with SMTP id v19mr78314336pfm.212.1556726223921; 
 Wed, 01 May 2019 08:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
 <1556724043-3961-2-git-send-email-Frank.Li@nxp.com>
 <20190501152437.GA28109@fuggles.cambridge.arm.com>
 <CAHrpEqQYhg_aRt7qukkTzT3pEzLqg-B0YJL1Z7T06iZV1JAxmQ@mail.gmail.com>
 <CAHrpEqQON_M3LC6KtZCaRt4ShhREyY-ZA=-_cRpHxAaz46bvQA@mail.gmail.com>
 <20190501154852.GB28109@fuggles.cambridge.arm.com>
In-Reply-To: <20190501154852.GB28109@fuggles.cambridge.arm.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Wed, 1 May 2019 10:56:52 -0500
Message-ID: <CAHrpEqR9n=RnwttxP3x8UW3OZg7vYML3WRhwDmFkJmmDd9Ld8A@mail.gmail.com>
Subject: Re: [PATCH V11 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_085704_659066_6E546328 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Wed, May 1, 2019 at 10:48 AM Will Deacon <will.deacon@arm.com> wrote:
>
> On Wed, May 01, 2019 at 10:41:13AM -0500, Zhi Li wrote:
> > On Wed, May 1, 2019 at 10:35 AM Zhi Li <lznuaa@gmail.com> wrote:
> > >
> > > On Wed, May 1, 2019 at 10:24 AM Will Deacon <will.deacon@arm.com> wrote:
> > > >
> > > > On Wed, May 01, 2019 at 03:21:00PM +0000, Frank Li wrote:
> > > > > +static int ddr_perf_probe(struct platform_device *pdev)
> > > > > +{
> > > > > +     struct ddr_pmu *pmu;
> > > > > +     struct device_node *np;
> > > > > +     void __iomem *base;
> > > > > +     char *name;
> > > > > +     int num;
> > > > > +     int ret;
> > > > > +     int irq;
> > > > > +
> > > > > +     base = devm_platform_ioremap_resource(pdev, 0);
> > > > > +     if (IS_ERR(base))
> > > > > +             return PTR_ERR(base);
> > > > > +
> > > > > +     np = pdev->dev.of_node;
> > > > > +
> > > > > +     pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> > > > > +     if (!pmu)
> > > > > +             return -ENOMEM;
> > > > > +
> > > > > +     num = ddr_perf_init(pmu, base, &pdev->dev);
> > > > > +
> > > > > +     platform_set_drvdata(pdev, pmu);
> > > > > +
> > > > > +     name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "imx_ddr%d", num);
> > > >
> > > > Still not happy with this.
> > >
> > > is imx_ddr_pmu%d  okay?
> >
> > imx_ddr%d_pmu look like more reasonable.
>
> Sorry, it's a bit subtle, but please use "imx8" instead of "imx" since
> they may change the thing completely in a future revision of the SoC. That's
> why I suggested "imx8_ddr" in my reply on the previous version of the patch
> (although it appears I somehow managed to drop the CC line in my reply, so
> it only went to your gmail address).

I see.  I will update it.

best regards
Frank Li

>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
