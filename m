Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F1F161E89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 02:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8v21OZ0O+497V8UCV+9+JASt5nC/NTalGp94rKz6u0=; b=BvgVwOCOLkUM6n
	DDZ06VTfevyw9hISS9e7qPoVZpc9OjX3KM1pCSmG4KESrTVbxWQV9kWcC7xGdgVFacEOODc/8JDiY
	f7/m6CZvOP/vskw4bifp9RxXhEwfQB1CohuOVfEOQ5BziUHYbYAr15tvbMogyVOd+UQgg05xlxUVg
	ADv5sdvO3lq+YByoaSk+tdXb5yCp9uPdgeBoj8x+PUS8UwmsiaC1ahcXKKDxPQT3nhZ6aHdcacsfh
	00L7aew2yya/ppOZPNkMmT+LiUxS5ijDR5m6IMrWN2CylJoBEiIt0QbWRBHD9UYcjmU4iu1ROVl+D
	noXtLeuaW+hhmw97+VQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3rf3-0001F1-HQ; Tue, 18 Feb 2020 01:26:53 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3res-0001Eg-Jm
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 01:26:44 +0000
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
 [209.85.217.53]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 01I1QDwR019690
 for <linux-arm-kernel@lists.infradead.org>; Tue, 18 Feb 2020 10:26:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 01I1QDwR019690
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1581989173;
 bh=DFo5bZ5Bm4QsGsx8r/W+4n6QGw47HateZtKF1IqGjK4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jp8Y9Unk0X+nZxx/4xNp0bdyquwZdI2uguxEiL1thKibD01TDUQchfpR8tzH9qo54
 ebqsDP1nPj2QrD86PyvvbtgtDZ8+GiPD1y5RNNa6TGQb56nqw213MaBrl/ua5uUOxU
 5DgFbeS7eoU+ayS6eMsbL5jSguqEf93I5A31J7oZ1wYAGR5ojC7dKyrDGv00Cngfqv
 iT2QgcdCBSG0oK5tLSXvBgDlhX0dsPlOMUfK8JtSI8F5ZV+NyZIQxGvqxdkZit3/wz
 E3LUSTLD5c77SzuZHnSt3ucM4iXEOsnInbp7Gg7ExPHJF4YNry6LYvdUFi/EjL6m5E
 7JX8AjBphg6hQ==
X-Nifty-SrcIP: [209.85.217.53]
Received: by mail-vs1-f53.google.com with SMTP id t12so11627577vso.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 17:26:13 -0800 (PST)
X-Gm-Message-State: APjAAAVa8+nbvRI66RHQNicsuNzincTLIxpi/YS8rgGYgPXrbhSAh4V3
 jxQeza+ON57akr3/kKfwNDMoR800kLGtyUhzaxQ=
X-Google-Smtp-Source: APXvYqxSiKTUTozFX1mDbJzMmvg2TfqQRp6FqoGdjnaYvvmSAf4Wg9j1N4gyQ+nadCxh2KhQZghaCZKnVejvMtBs3tE=
X-Received: by 2002:a05:6102:190:: with SMTP id
 r16mr9552896vsq.215.1581989172430; 
 Mon, 17 Feb 2020 17:26:12 -0800 (PST)
MIME-Version: 1.0
References: <20200213003535.GA3269@embeddedor.com>
In-Reply-To: <20200213003535.GA3269@embeddedor.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 18 Feb 2020 10:25:36 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS8TomJow4_3T++3u+eo=KhRMP9V5X=urWNRPUE93NOvQ@mail.gmail.com>
Message-ID: <CAK7LNAS8TomJow4_3T++3u+eo=KhRMP9V5X=urWNRPUE93NOvQ@mail.gmail.com>
Subject: Re: [PATCH] dmaengine: uniphier-mdmac: replace zero-length array with
 flexible-array member
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_172642_871664_1F963641 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM"
 <dmaengine@vger.kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 9:35 AM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
>
> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array member[1][2],
> introduced in C99:
>
> struct foo {
>         int stuff;
>         struct boo array[];
> };
>
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertently introduced[3] to the codebase from now on.
>
> Also, notice that, dynamic memory allocations won't be affected by
> this change:
>
> "Flexible array members have incomplete type, and so the sizeof operator
> may not be applied. As a quirk of the original implementation of
> zero-length arrays, sizeof evaluates to zero."[1]
>
> This issue was found with the help of Coccinelle.
>
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>


> ---
>  drivers/dma/uniphier-mdmac.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/dma/uniphier-mdmac.c b/drivers/dma/uniphier-mdmac.c
> index 21b8f1131d55..618839df0748 100644
> --- a/drivers/dma/uniphier-mdmac.c
> +++ b/drivers/dma/uniphier-mdmac.c
> @@ -68,7 +68,7 @@ struct uniphier_mdmac_device {
>         struct dma_device ddev;
>         struct clk *clk;
>         void __iomem *reg_base;
> -       struct uniphier_mdmac_chan channels[0];
> +       struct uniphier_mdmac_chan channels[];
>  };
>
>  static struct uniphier_mdmac_chan *
> --
> 2.23.0
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
