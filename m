Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DD7EF9EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 10:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toeu9L2l4wxN0cvvqgQnFHWr5/XFEboNkyD4vundrAM=; b=lRYV1T1HMYhc44
	1XXF/F7VIIDKgLWv0ubTbnu/Iohi4LztwsMEfGphy8Q2bwY3I8RGXU97iTovXKp5NnhNfiIVFxCJu
	e48FWnMBwRnhW4WpgBDYrHea4kNMQxhnLNhaNCr9ksX4SD+4rU00GMFZbjeNdg4nAu2I17Q37Mv1q
	54p2ViiKR5a0pTw9MaPhhZbP1+7P/wnNZPW8d+DGDPaDvltycJAoUrYjQeVkd4EWEjcphkWDkMLb3
	A9Ri59ZoIKP1f5OcMD7/34dU54IBKpKFX9naZQNnsvDDB/Z2lw8dmdlpWo3XHYF3n8R6i1yGahNTO
	ilrOjWUBwdVJ3sgfPYMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRvRW-0001vF-Ia; Tue, 05 Nov 2019 09:48:06 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRvRL-0001uC-JK
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 09:48:01 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id A008D2043B;
 Tue,  5 Nov 2019 10:47:50 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 909452036B;
 Tue,  5 Nov 2019 10:47:50 +0100 (CET)
Subject: Re: [PATCH] clk: imx: pll14xx: initialize flags to 0
To: Peng Fan <peng.fan@nxp.com>
References: <1572938372-7006-1-git-send-email-peng.fan@nxp.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <5fc2dfd6-ae59-6af8-0423-ddc8e0b4f78f@free.fr>
Date: Tue, 5 Nov 2019 10:47:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1572938372-7006-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Nov  5 10:47:50 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_014759_303455_FA38B4FD 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/11/2019 08:21, Peng Fan wrote:

> From: Peng Fan <peng.fan@nxp.com>
> 
> init.flags is initialized with value from pll_clk->flags, however
> imx_1443x_pll and imx_1416x_pll are not static structure, so flags
> might be random value. So let's initialize flags as 0 now.

This is incorrect. When using an initializer list, struct members
not explicitly specified are initialized to 0.

https://port70.net/~nsz/c/c11/n1570.html#6.7.9p19

> The initialization shall occur in initializer list order, each
> initializer provided for a particular subobject overriding any
> previously listed initializer for the same subobject; all
> subobjects that are not initialized explicitly shall be initialized
> implicitly the same as objects that have static storage duration.
(You might point out that the kernel is compiled with -std=gnu89 not C11,
but GCC's semantics are the same.)

https://gcc.gnu.org/onlinedocs/gcc/Designated-Inits.html#Designated-Inits

> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index fa76e04251c4..a7f1c1abe664 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -65,12 +65,14 @@ struct imx_pll14xx_clk imx_1443x_pll = {
>  	.type = PLL_1443X,
>  	.rate_table = imx_pll1443x_tbl,
>  	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
> +	.flags = 0,
>  };

What tree is this patch based on?

https://elixir.bootlin.com/linux/v5.4-rc1/source/drivers/clk/imx/clk-pll14xx.c#L65

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
