Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AC41CD155
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 07:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9vAHsEcl4aT4T2N0rDN6wvWtB33Gik1/Md9/4aTDKg=; b=WYNhEt8bhqdui4
	JE0rnb6HgDA0uKlHWT6x/ya9aogOBleymJ3U9VkLlZf+RgU6W7VEvz/zAnG2gW+Bh7bT6TJ22I8Tw
	CnjVaD6zptkZMjlHeN+ge7LowsEiXsIk6LYQq8A8sTT3Kqu1mJ/QFTKcjhBlQKOZBEEOpTEOth1A1
	kTi6y9Zv5Ptikgt31QuccNqRZ2ka/mUqEqP/kFYlcdoA5wDOWlqyzQ4ncaXrxV9No8Gfac9LCEQB/
	a69VJ59bjMJf/cNRyy4uXkWIJgNfAAS093JdIxLAaum22o2eyP6UUXXJTgBchLM3KLrh4WO9ukbLF
	Rg/KTX0/8k98pqhRcydA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY1I2-0006iC-Bj; Mon, 11 May 2020 05:47:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY1Hv-0006hO-Tt
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 05:47:41 +0000
Received: from sekiro (amontpellier-556-1-155-96.w109-210.abo.wanadoo.fr
 [109.210.131.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 326EF20735;
 Mon, 11 May 2020 05:47:35 +0000 (UTC)
Date: Mon, 11 May 2020 07:47:30 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH] dmaengine: at_hdmac: Replace zero-length array with
 flexible-array
Message-ID: <20200511054730.pfsavov2onak4nf6@sekiro>
References: <20200507190038.GA15272@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507190038.GA15272@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_224739_983731_B7C0345E 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 02:00:38PM -0500, Gustavo A. R. Silva wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
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
> sizeof(flexible-array-member) triggers a warning because flexible array
> members have incomplete type[1]. There are some instances of code in
> which the sizeof operator is being incorrectly/erroneously applied to
> zero-length arrays and the result is zero. Such instances may be hiding
> some bugs. So, this work (flexible-array member conversions) will also
> help to get completely rid of those sorts of issues.
> 
> This issue was found with the help of Coccinelle.
> 
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
> 
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Acked-by: Ludovic Desroches<ludovic.desroches@microchip.com>

Thanks
> ---
>  drivers/dma/at_hdmac_regs.h |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/at_hdmac_regs.h b/drivers/dma/at_hdmac_regs.h
> index 397692e937b3..80fc2fe8c77e 100644
> --- a/drivers/dma/at_hdmac_regs.h
> +++ b/drivers/dma/at_hdmac_regs.h
> @@ -331,7 +331,7 @@ struct at_dma {
>         struct dma_pool         *dma_desc_pool;
>         struct dma_pool         *memset_pool;
>         /* AT THE END channels table */
> -       struct at_dma_chan      chan[0];
> +       struct at_dma_chan      chan[];
>  };
> 
>  #define        dma_readl(atdma, name) \
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
