Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D81012A992
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 02:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrCm82cd29U08tEkTD4BUyl3cL0c1W5zsdpwvuKVtqc=; b=dHI0ocN9NJO4ON
	zQG+BHW0PvSnVeEXcQDtd/Cdm7tVqd+DNNKr4zC46EaZsuilypEUQNHCACtYkfhssegEJTqNllNZR
	XZHl5D+mA+BhXggywILVvnEaffOOAR2ooI6tFlgs7xpxgaLxMbFx461LudDQC7bgwUj+Elj1rNpoo
	xyaB4JeG2zQcNO3UspXhgl+Dpygf2Ke/u8Rk+FgN5d34ghtSBltg9+nTK1POAj2i+oXnfSOcz+CJl
	xWVpq2CoK+0wlhv1NoG01uA2kjb6dsPwgCM9t1X1xGEkKMUH1/3WfDqNseWEAjCCledGH7XjobSpI
	/JYy57ino7NUXGRMLD+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikINS-0006j1-Rc; Thu, 26 Dec 2019 01:55:50 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikINJ-0006i0-G1
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 01:55:43 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 26 Dec 2019 10:55:37 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 789B71800B2;
 Thu, 26 Dec 2019 10:55:37 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Thu, 26 Dec 2019 10:56:18 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 0A3624035C;
 Thu, 26 Dec 2019 10:55:37 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id D87D412044A;
 Thu, 26 Dec 2019 10:55:36 +0900 (JST)
Date: Thu, 26 Dec 2019 10:55:36 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 4/5] spi: uniphier: Add SPI_LOOP to the capabilities
In-Reply-To: <20191225180142.GD27497@sirena.org.uk>
References: <1577149107-30670-5-git-send-email-hayashi.kunihiko@socionext.com>
 <20191225180142.GD27497@sirena.org.uk>
Message-Id: <20191226105536.302C.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_175541_652305_B2C5F986 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Keiji Hayashibara <hayashibara.keiji@socionext.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,
Thanks for your comment.

On Wed, 25 Dec 2019 18:01:42 +0000 <broonie@kernel.org> wrote:
> On Tue, Dec 24, 2019 at 09:58:26AM +0900, Kunihiko Hayashi wrote:
> > Add SPI_LOOP to the capabilities to support loopback mode.
> 
> >  	master->min_speed_hz = DIV_ROUND_UP(clk_rate, SSI_MAX_CLK_DIVIDER);
> > -	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LSB_FIRST;
> > +	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LSB_FIRST |
> > +			    SPI_LOOP;
> 
> I'd expect to see a matching change that configures the hardware
> in loopback mode when the driver is in SPI_MODE?  There's nothing
> in the existing driver.

I see. When doing loopback test using spi-loopback-test.c, I thought
'loop_req=1' option was needed, however, the controller doesn't need it.
We can ignore this patch.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
