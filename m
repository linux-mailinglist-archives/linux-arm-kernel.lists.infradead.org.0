Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 012BC18326E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:08:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9GgrKocJ+VNVI9nnBOBTiP+4Xta2b1fTloAalOThH0=; b=GRs83UOpvdSxJP
	KuHWhOiLa3e3mLx5uxFwXv7XQvO4/38WLJNdzjRIT8UDvKgJtjv2Ns6L+DGA0pRPPKhDhR82L0Muv
	oUHUQsDE38iv36KVa5BIclXA/Mdn0YNHG4EuYEPBndqjkoIiu3bMnanllcXs8pmclPkdxRkTjdE9D
	OqgSANUnqR2gtIpBNtjb7v8QMh8gwr1Zdpwi5SBhYVYNdcqoXdu1Fi5k3jzILh6DdhoZAvVCmYuJ4
	x0mYRSaRNqvqWF5m0gml1RCwZlMhvVMF4zV10Xourh3qFWkk/uKM//+pjYwki674v80uDNjiBfKyq
	MvDDlGx38HceRcNy6tdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOVX-0005q4-Gx; Thu, 12 Mar 2020 14:08:19 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOVP-0005pQ-00
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:08:12 +0000
Received: by mail-vk1-xa42.google.com with SMTP id w4so1595473vkd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 07:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6J9Ig2oz1bb7guvVXYyRNpRVz0RKMu9DYxVEd/SzgXI=;
 b=H7DN/hrXC5SOfs2915ZbQulRR7iAHtt3uIi89leVhH11cRIYwJ9rIM5rrJTWqrQc9c
 k6W4+S7mPhWQ2G271UpAF2UqqOBhfUyXVTTOQeRHxJK7VosV9dmfY0UvneGlfP+dqukd
 ba3Z/Ki7tJ2JemSrkSaxjoOoJtCIg6pMKZ3j9UHyB38C1Ah7aqbxMCC2r+nHacnypqbc
 r3A4lgiLdqxs92Kk3ltPbguQYkRSI1unHNO6GWPHWvlAERBw4nfA4AMns8o44eOr+zKm
 BUJ0/BKeCLxznbuOfoSnK76G/tzMHiPgKc78DV+nGGwt69TptpgDvh0rOWdTy6i018Jm
 ag0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6J9Ig2oz1bb7guvVXYyRNpRVz0RKMu9DYxVEd/SzgXI=;
 b=MJQk6G8r500VivaAWSmOnnTlBUGOX6/eozXlLKCYA+ylBVmDxL9qLSuplKLadrymim
 4U6hW/AdhdEGqJcsMETViY0GeD9++WkDWy260N5+o9K1n5ZlQXYdOjEssb3vq5cuHisF
 CC3A/DUl66xojsXm61mIcMZxEhmiIUdg7FWAQHcxNs2uiqED0kaJa+yl6BotpH8FAseI
 mC0fOimX+2ullrPI9NfP7mQT84zZemD33LdeEGeIUXoW/jr7lfKB8L6OpX6agAXBLGtX
 EBCLUwlvIlplt2p2ksb5h5+ZKq29watdJPfxQtb1KjC7Vd0GmeSHessvA83jZM6xMXZ+
 DL6A==
X-Gm-Message-State: ANhLgQ3U/gPTnIKOcP3xmNGk1k/3ZldMhdRIqlqoLExaAPDytBBm2C5W
 bmY64jFgfs5XVtWqwBbNehnJ58u+1OkDZcQHTLysbA==
X-Google-Smtp-Source: ADFU+vsGDaiiav8lo5THUgIDY0HPzi+5T5mlfmPdJyURWCmQInX4drk2MUTv+qfoecTOl54d4a4OmoBfL83ZlRl3Who=
X-Received: by 2002:a1f:5c84:: with SMTP id q126mr5449459vkb.5.1584022089616; 
 Thu, 12 Mar 2020 07:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583952275.git.amanharitsh123@gmail.com>
 <d12a15f496ca472e100798ac2cd256fbfc1de15d.1583952276.git.amanharitsh123@gmail.com>
In-Reply-To: <d12a15f496ca472e100798ac2cd256fbfc1de15d.1583952276.git.amanharitsh123@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Mar 2020 15:07:58 +0100
Message-ID: <CACRpkdYv0U0RmT7snp+UejEXecq4wLkhc11DUniUfGYAgyXC=A@mail.gmail.com>
Subject: Re: [PATCH 1/5] pci: handled return value of platform_get_irq
 correctly
To: Aman Sharma <amanharitsh123@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_070811_040372_31EE3C0D 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-pci <linux-pci@vger.kernel.org>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Ryder Lee <ryder.lee@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Mans Rullgard <mans@mansr.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 8:19 PM Aman Sharma <amanharitsh123@gmail.com> wrote:

> Signed-off-by: Aman Sharma <amanharitsh123@gmail.com>
> ---
>  drivers/pci/controller/pci-v3-semi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
> index bd05221f5a22..a5bf945d2eda 100644
> --- a/drivers/pci/controller/pci-v3-semi.c
> +++ b/drivers/pci/controller/pci-v3-semi.c
> @@ -777,9 +777,9 @@ static int v3_pci_probe(struct platform_device *pdev)
>
>         /* Get and request error IRQ resource */
>         irq = platform_get_irq(pdev, 0);
> -       if (irq <= 0) {
> +       if (irq < 0) {

Have you considered:
https://lwn.net/Articles/470820/

TL;DR Linus (both of them) are not with you on this.

And that is why the code is written like this.

Do you really have a platform that could return 0 as IRQ
here? In that case, can we fix it?

>                 dev_err(dev, "unable to obtain PCIv3 error IRQ\n");
> -               return -ENODEV;
> +               return irq;

That's OK with me.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
