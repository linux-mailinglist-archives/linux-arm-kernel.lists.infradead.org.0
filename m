Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 663E611F795
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 13:00:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwUzHQQDHk/PQIyp9Tqyit3nCzghn3lVdOcjHx6aWVA=; b=rvSmkp7lyl1IA0
	dHrvhdkqAq/Ln/h8DGFt78CYg79YQSxTLA6m5+FMoV+t6yf8IxBtDli20+d++W2Vou8+XFFr+mDHC
	KCz6cO5YRiRJy/h8kBLhkX7ynbLSlbs0tfWUH/GMbZfX+/Fo8Y3Y/2J3Fyb84tHNTfVWWb4tt0EOA
	2f36riAFrc3/4mVIbbUGo4NIUVbtnPLEGTGyW7fTgvpleuEHJzDHieMAPmFo0Cwb5t05NaGAm2zv0
	GUOTnfLPBi23rH2plJfg79GR9NjdY9moFzkafPz2iym7B92sWd6Vn8W7s2FCCHZrxCGtII61AiQNQ
	t9dUobznIk4ziCQEcpYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igSZX-0002uG-UJ; Sun, 15 Dec 2019 12:00:27 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igSZK-0002rg-DB; Sun, 15 Dec 2019 12:00:15 +0000
Received: by mail-io1-xd41.google.com with SMTP id z193so540182iof.1;
 Sun, 15 Dec 2019 04:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U32Ya4ZtyKRe0g31iyaOrg9bNIbVTfXKPEbGivDkS10=;
 b=OSen5Gcvcdj9lEzBZB15Tn6QiRTI9MWlO/rPN49bMq0K83mAgq18VHkzQ7zVlPrjML
 gszdUGt2eF1kyYhDFF+GP7FeP1RPEnPsfH7wY9I095RPAYClYjywGRCaSteDEqN+zK62
 IKehzG864B+NpPZLPI1yH3m0V9J02rnTKvgIZxkccK3VNzHuy++Doo+IV2cQKWeFpyGv
 sOw1S4YJdTl9C8RnFpAVjILHeJMichKHxPUSI98wDRt0UmqQkWCWFLtA7q2g+jukhVzx
 EloylsApJVNnAMvbYem3m+vszDWIyz4reg4yOYbOHfUjbut1/oBMn1uR67AGYca3deCP
 DSrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U32Ya4ZtyKRe0g31iyaOrg9bNIbVTfXKPEbGivDkS10=;
 b=Ox9khvQK28UlWRysi1owebpg6ISPT+U3GDWX7ukkmZcLxxsE4usOyJP1GFm0i5X6yW
 zTH4kZvU/rkK5sEXjDmYxZ21k64uD/+Gg3CjLvJ9guqrqvDc/7J1aq0PzNidiBWe18sJ
 7kSFK9d6tGVSiGO3J3Rpqdurm6TeMfaoU7QoeI2Kwp4qDc63MqmshSTke3NSzE7olekf
 qH0emWXgpkea84AY9C43yzlYOUxC4jaNQQEFFSPSNY3cV/xGwCcqyf5c2/fw0rkLyDcA
 0He9kUW0gAXiHQpE+YjNBETq88X0PHqqF9bFMynizvF9JEzSy/lBqi8Y5b7RkHV2zlmE
 7U3Q==
X-Gm-Message-State: APjAAAUkSBYVRbYlE56IpKsgHaFadhGbo0/WknU46e29g8A16us6o76J
 KOnxobrnG+PEOeYzkzzitiDGVGhFtAcfzmamWkE=
X-Google-Smtp-Source: APXvYqytWwvnLfUD+171nhXHDbJqlTikV21tQNc2dQdQlOI6X6lJ/eLQFLTNTro7mQyhFx4wzdvzbYn6q+tytdyDIA8=
X-Received: by 2002:a5d:9f05:: with SMTP id q5mr14678305iot.295.1576411213379; 
 Sun, 15 Dec 2019 04:00:13 -0800 (PST)
MIME-Version: 1.0
References: <20191214175447.25482-1-tiny.windzz@gmail.com>
 <20191214175447.25482-10-tiny.windzz@gmail.com>
 <20191215104824.658889d3@why>
In-Reply-To: <20191215104824.658889d3@why>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sun, 15 Dec 2019 20:00:01 +0800
Message-ID: <CAEExFWtgXt2pGM1fGfmxNdk_7S_53gnhN0-bProWA4-vOaNN3w@mail.gmail.com>
Subject: Re: [PATCH 10/10] soc: qcom: convert to devm_platform_ioremap_resource
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_040014_475285_C43D3923 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: john@phrozen.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-samsung-soc@vger.kernel.org, khilman@baylibre.com, krzk@kernel.org,
 Chen-Yu Tsai <wens@csie.org>, agross@kernel.org, linux-arm-msm@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, khalasa@piap.pl, ssantosh@kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-amlogic@lists.infradead.org,
 bjorn.andersson@linaro.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 shawnguo@kernel.org, linux-mips@vger.kernel.org, leoyang.li@nxp.com,
 kgene@kernel.org, linux-mediatek@lists.infradead.org, jun.nie@linaro.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 15, 2019 at 6:48 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On Sat, 14 Dec 2019 17:54:47 +0000
> Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> > Use devm_platform_ioremap_resource() to simplify code.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >  drivers/soc/qcom/llcc-qcom.c    | 7 +------
> >  drivers/soc/qcom/qcom-geni-se.c | 4 +---
> >  drivers/soc/qcom/qcom_aoss.c    | 4 +---
> >  drivers/soc/qcom/qcom_gsbi.c    | 5 +----
> >  drivers/soc/qcom/spm.c          | 4 +---
> >  5 files changed, 5 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
> > index 429b5a60a1ba..99e19df76889 100644
> > --- a/drivers/soc/qcom/llcc-qcom.c
> > +++ b/drivers/soc/qcom/llcc-qcom.c
> > @@ -387,7 +387,6 @@ static int qcom_llcc_remove(struct platform_device *pdev)
> >  static struct regmap *qcom_llcc_init_mmio(struct platform_device *pdev,
> >               const char *name)
> >  {
> > -     struct resource *res;
> >       void __iomem *base;
> >       struct regmap_config llcc_regmap_config = {
> >               .reg_bits = 32,
> > @@ -396,11 +395,7 @@ static struct regmap *qcom_llcc_init_mmio(struct platform_device *pdev,
> >               .fast_io = true,
> >       };
> >
> > -     res = platform_get_resource_byname(pdev, IORESOURCE_MEM, name);
> > -     if (!res)
> > -             return ERR_PTR(-ENODEV);
> > -
> > -     base = devm_ioremap_resource(&pdev->dev, res);
> > +     base = devm_platform_ioremap_resource(pdev, 0);
>
> What guarantees do you have that entry 0 matches name?

Yeah, this place is wrong. I intruduce another helper.

https://lore.kernel.org/patchwork/patch/1165186/

Thx,
Yangtao


>
> I find these changes pointless: they don't add much to the readability
> or maintainability of the code, and instead introduce creative bugs.
>
>         M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
