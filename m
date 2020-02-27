Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA0017158E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:00:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7TPgzKXsVLz8nhW6X/L+OcB0V5TSoRxF2w4eFHNyTw=; b=ozsRZFDjt7Q1s1
	+Dp7Jrlp5Xqwz7X038NAUNiGTaDvc6uNayw4t3qlPDnOsHDoXxD9vXrhCb5d4sTBLt9RO/AUDP/EH
	LXyBS8uwGqpo5fY2FGFxZcTIzSdwQUWaQXJe7Tl8kfe4JsskfzzQr6QFkgFMfZTClGFeId1X5Z51I
	yUIUevVP/j/0zrvuN1zBnCn0EO/qMITo+WsxROt8GGz4lPCN7CXq7L4c4RUG/zB1kVNvur4TC0gfE
	OJRXR9G/ATHIdrNHpCNN5I0PcWe9a4zJgcT4J5Q24XU+Fyg064pWCAM8SpDln0c55OdCtxFf2/hqR
	l7QZ5h7gCqMgrvkaM6Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Gtu-0000b4-0H; Thu, 27 Feb 2020 11:00:18 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Gtd-0008Hl-LK; Thu, 27 Feb 2020 11:00:03 +0000
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com
 [209.85.222.52]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id 01RAxibb019775;
 Thu, 27 Feb 2020 19:59:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 01RAxibb019775
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582801185;
 bh=kOw0sBdvSt7sUjD/0HddbtyeQxtSwGi/7erPa7p/9dc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bR8Qr1DrTlqgaP93XedueBODBAy2XnRRnYItjD4pySB01/bjAICgD+3tvf+lImMd3
 o2+WgmttU6bk0WT9pDau+usqOctVdRUZ681KPNGRnBtwvGNpj1pI0HlPmr1MmpmknT
 J/2py+HydW1LbXppqRFlTQXMfBd8uUBjTuf/415YtECG4MLZZ6X+fg5z3E1dVPwzZn
 OZnFB4Rq8QfoY2KrEfwORiqvLhrUnQ0Y0BsGGN+3TQrE3ZyeL5zMwPkhABj6VS3Ktz
 WgOSCofuTMBD1vUspg/3HTUMRg+PS5LVlLSZs6NVtzkBcW+I4MzMDZiD0EGd1n9DMS
 Djy2gHzX0lAMA==
X-Nifty-SrcIP: [209.85.222.52]
Received: by mail-ua1-f52.google.com with SMTP id w15so799343uap.0;
 Thu, 27 Feb 2020 02:59:45 -0800 (PST)
X-Gm-Message-State: APjAAAWWH7qVjCJRo7B/MwskKA/eQa4HNIRzcRy+XBKmYXl86AoGB6ya
 jtGOHd3yBzMQBbGD8rlrl3pbUyv/efuU3MGSnNM=
X-Google-Smtp-Source: APXvYqzHVjhb5MLGMVwROtpWRonvewg9SUUG1QW9qCu9nmcL7dmHBBzmi3dUeyhriGPnm4yTXMoldh0YBTjfPTXjx24=
X-Received: by 2002:ab0:2414:: with SMTP id f20mr854899uan.121.1582801184098; 
 Thu, 27 Feb 2020 02:59:44 -0800 (PST)
MIME-Version: 1.0
References: <20200226222722.GA18020@embeddedor>
In-Reply-To: <20200226222722.GA18020@embeddedor>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 27 Feb 2020 19:59:07 +0900
X-Gmail-Original-Message-ID: <CAK7LNARPK=AgshKO1k0BtdYg5wLUp7e9s3zA2-jGLGO26a+A3A@mail.gmail.com>
Message-ID: <CAK7LNARPK=AgshKO1k0BtdYg5wLUp7e9s3zA2-jGLGO26a+A3A@mail.gmail.com>
Subject: Re: [PATCH] mtd: rawnand: Replace zero-length array with
 flexible-array member
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_030001_941545_B7887843 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.83 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Liang Yang <liang.yang@amlogic.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Kevin Hilman <khilman@baylibre.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-amlogic@lists.infradead.org, Xiaolei Li <xiaolei.li@mediatek.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 7:25 AM Gustavo A. R. Silva
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
> ---
>  drivers/mtd/nand/raw/denali.h       | 2 +-


Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>


>  drivers/mtd/nand/raw/marvell_nand.c | 2 +-
>  drivers/mtd/nand/raw/meson_nand.c   | 2 +-
>  drivers/mtd/nand/raw/mtk_nand.c     | 2 +-
>  drivers/mtd/nand/raw/nand_hynix.c   | 2 +-
>  drivers/mtd/nand/raw/sunxi_nand.c   | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
>

-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
