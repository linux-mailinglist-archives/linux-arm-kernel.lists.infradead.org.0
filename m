Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FA370B6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsV2Xa4oCpUBUM+7Bzx64ZjYfn3nG+RcW7g8XDWs2cI=; b=dhzQyqWilTC2aV
	xZ5cNm6YwTS6ZctaHil2Uhllf32GOMGFhtuSyNPU2AtMjqhaI0awxJtiBmSjtpcyDGPbWH4mZxh2L
	GRkGKL+n0U1T7shdNfYhQWm1pXrfPEed9e3sHoesvBPGFONoSSjiJPwx5tq1Vg28op7v5nlNncJ/I
	pjFjg9mWcIi51B1NhMhq9ktI9WflD1/8bE3gwbVxkoq2hQ2KVqfVU10Dpd109DFozlDrDfLvufdxw
	w6e81BGUWDROcse2r34bhK6C9rXJ5sxWDWbQ7jbVkHk0XMlUvEIwIAjVAXFYjqqsqaFlg7eXbRCdS
	mT9NCvaBn3XF8Rg8vOKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpfuv-000568-Sh; Mon, 22 Jul 2019 21:32:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpfuW-00055Q-TT
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 21:31:58 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8829E21900;
 Mon, 22 Jul 2019 21:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563831116;
 bh=6+/sxagahL+li6jU6ojcB6SqYd6K9O6P+akg/i4q2+0=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=BfaltBBaR63zw809ajWmqfGQDl/yVbLLDWguStR5cYjWJ/GgzUzhXBEZgQklIYe5v
 fyrtKZIvR7r6glea1WEmEK1XwPkZnPsKrbq4rytKZgyDLKVhQTIYVDHistTPyuxI9U
 ycHtK1Mcc4LGRHW4fgBSqIZvVxVQHjs3kGuHabuM=
MIME-Version: 1.0
In-Reply-To: <af07c26e-cef3-f0ff-48ff-68f99ccf4de9@microchip.com>
References: <20190625091002.27567-1-codrin.ciubotariu@microchip.com>
 <af07c26e-cef3-f0ff-48ff-68f99ccf4de9@microchip.com>
Subject: Re: [RESEND][PATCH] clk: at91: generated: Truncate divisor to
 GENERATED_MAX_DIV + 1
To: Codrin.Ciubotariu@microchip.com, Ludovic.Desroches@microchip.com,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 14:31:55 -0700
Message-Id: <20190722213156.8829E21900@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_143156_965805_914354CF 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nicolas.Ferre@microchip.com (2019-07-03 08:05:24)
> On 25/06/2019 at 11:10, Codrin Ciubotariu wrote:
> > In clk_generated_determine_rate(), if the divisor is greater than
> > GENERATED_MAX_DIV + 1, then the wrong best_rate will be returned.
> > If clk_generated_set_rate() will be called later with this wrong
> > rate, it will return -EINVAL, so the generated clock won't change
> > its value. Do no let the divisor be greater than GENERATED_MAX_DIV + 1.
> > 
> > Fixes: 8c7aa6328947 ("clk: at91: clk-generated: remove useless divisor loop")
> > Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> > Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> > Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> > ---
> > 
> > - The email-server was converting my patches to base64, so I resend it
> >    using another server;
> > - Added acked-bys from Nicolas and Ludovic;
> 
> Stephen,
> 
> I don't see this patch in linux-next and we're already late in the 
> development cycle: aka ping...
> 

Sorry. I dropped this one. Will pick it up into fixes.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
