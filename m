Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A7DC020A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NarNU/irSDmnAhR/0/RrqXuV1lvgm9108aG3Pho1QcU=; b=ZH5i6LzPsysx66
	U+aCMWtQmAjCTLgGd/EWfdYdN1eSSLcj5lvVFtozhX4hoPbcz9VONcfjDwaMZVPecA1STJMn6MYIq
	1Fjk1K114IptmdhIBi9BCsOACzwxS90LwYKr4NLLuLBh/gXwzX3cBhfMnjiWDFrkUE37hllJ85qfS
	2AYQ5431X2UVx8Kx0PtOQuzZ52l3wt2mTHwMRZkVG8lFvX6crfMAs1NiOnxM0+li7E3tYWsOaJdUn
	X3X1tPpJWI0yY7Xyu24CRTkstHK011L0S3t3gRImaw6V95QVe8HB0FIF1myq8gaSNo+dzGWbhbazf
	UcDSPoIEgUt4k6K3fJaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmMN-0002Zx-V2; Fri, 27 Sep 2019 09:16:19 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmME-0002ZC-SF
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:16:12 +0000
Received: by mail-oi1-f195.google.com with SMTP id k20so4623023oih.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 02:16:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TrSMs+vxGV2tpo5fzGvnzPrC4xp2UbLMKgbm5e707os=;
 b=QFIuHiepD2kxzWKi+VcONaAicWuL8bzV4Jg01xT1WrOxpGXiMh84t7fVehFZD2ehj0
 78lSWCJzF0sDwlkD06+/zKjXMn3be452gxrJF+6DzvU82GieRrD4n5PibhtRPlfP2RST
 mh1Y+xeuvHud0U6HX2lhwApJhjuDYBtq6VkBgnCZkGpIZIZU3yeOcgvvFOFAi0nl6xXS
 /Lag25lgwPw3XUAvxbc0hoGj3ai931yTaYE72wy4zXqyiEZl+i9DhMKjUEBqMzdownhZ
 KntcSLrOhFPJIGtZeXaVyFeGomiVIfMjtlcRcy8JwkmjQrJq/JThnQl+NpyPykm2RKrM
 qC9A==
X-Gm-Message-State: APjAAAV3DWk++Q0quv+DxyC9d/la6cEStCkf0N/DtJaz29mBqXwaCVUY
 Mz+fQcboIBIAdF99DmvLhaM66l5HDLDo/ehfJvA=
X-Google-Smtp-Source: APXvYqzwRUzhC1kv7YWIlRcwxP2ZhSwoD+vpHKOeORZVMk6BEVywWUAanN0Ycv/YcVYLjOSwRFSwWhMeLqcMJPqG3Xs=
X-Received: by 2002:aca:b654:: with SMTP id g81mr5914865oif.153.1569575769992; 
 Fri, 27 Sep 2019 02:16:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-4-robh@kernel.org>
In-Reply-To: <20190927002455.13169-4-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Sep 2019 11:15:58 +0200
Message-ID: <CAMuHMdV5Dw2FZcp6K7Kytzxtp7apEQ0FuE1CiOi+R4QVDrhM3A@mail.gmail.com>
Subject: Re: [PATCH 03/11] of: address: Report of_dma_get_range() errors
 meaningfully
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_021610_912794_E374F312 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Frank Rowand <frowand.list@gmail.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 2:25 AM Rob Herring <robh@kernel.org> wrote:
> From: Robin Murphy <robin.murphy@arm.com>
>
> If we failed to translate a DMA address, at least show the offending
> address rather than the uninitialised contents of the destination
> argument.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

> ---
>  drivers/of/address.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index 8e354d12fb04..53d2656c2269 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c
> @@ -955,8 +955,8 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
>         dmaaddr = of_read_number(ranges, naddr);
>         *paddr = of_translate_dma_address(np, ranges);
>         if (*paddr == OF_BAD_ADDR) {
> -               pr_err("translation of DMA address(%pad) to CPU address failed node(%pOF)\n",

Yeah, the %pad was wrong on 32-bit without CONFIG_PHYS_ADDR_T_64BIT.

> -                      dma_addr, np);
> +               pr_err("translation of DMA address(%llx) to CPU address failed node(%pOF)\n",
> +                      dmaaddr, np);
>                 ret = -EINVAL;
>                 goto out;
>         }

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
