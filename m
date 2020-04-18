Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9D71AEC55
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 14:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDJL0w3yfRkcB9xncuF74u6Gw1oPNbD2GPgbfin9bFM=; b=d5tcgWSIzVQnGs
	ld1n2lmT7CY17HtdRDXvXv7TtNbp/vIqaVz1UXE3Xt+0FOOHpoldEcujqKYde4cPzDurfcfUs65Eq
	jOIZRU8mzTtxya8iyqNPGfHgA4YFnAkzLXVZET3Q10bq/xKYauVh6p2j+ztKCKQHkScf0KHdWzKhJ
	Fl2DEJ6oO4FPFurujlSbLPh0+Jl9XgOxPFyE20qERo8pcLEn2IDfGPwppS7DyeYsdXseOd8vesuKz
	6qGyuX6g9gTgifvQG8kkE9//ThOaVN0R8e7NyJIvc5C013UNJJCn2IXnQjK5+J/iyImnmAmqaFL9x
	hZYAMjkoYdb/Q3UEkYBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPmJV-00085R-1P; Sat, 18 Apr 2020 12:11:13 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPmJO-00084E-Hw; Sat, 18 Apr 2020 12:11:08 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F00092A0FCA;
 Sat, 18 Apr 2020 13:11:01 +0100 (BST)
Date: Sat, 18 Apr 2020 14:10:58 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [PATCH RESEND] MAINTAINERS: adjust to renaming
 physmap_of_versatile.c
Message-ID: <20200418141058.567a80d7@collabora.com>
In-Reply-To: <20200418100933.8012-1-lukas.bulwahn@gmail.com>
References: <20200418100933.8012-1-lukas.bulwahn@gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_051106_723878_D6D44475 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vignesh R <vigneshr@ti.com>, Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, Linus Walleij <linus.walleij@linaro.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Joe Perches <joe@perches.com>,
 Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 Sebastian Duda <sebastian.duda@fau.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ MTD maintainers and the MTD ML

On Sat, 18 Apr 2020 12:09:33 +0200
Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:

> Commit 6ca15cfa0788 ("mtd: maps: Rename physmap_of_{versatile, gemini}
> into physmap-{versatile, gemini}") renamed physmap_of_versatile.c to
> physmap-versatile.c, but did not adjust the MAINTAINERS entry.
> 
> Since then, ./scripts/get_maintainer.pl --self-test complains:
> 
>   warning: no file matches F: drivers/mtd/maps/physmap_of_versatile.c
> 
> Rectify the ARM INTEGRATOR, VERSATILE AND REALVIEW SUPPORT entry and now
> also cover drivers/mtd/maps/physmap-versatile.h while at it.
> 
> Co-developed-by: Sebastian Duda <sebastian.duda@fau.de>
> Signed-off-by: Sebastian Duda <sebastian.duda@fau.de>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> Boris, please pick or ack this patch.
> applies cleanly on current master and next-20200417

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> 
> v1: https://lore.kernel.org/lkml/20200228063338.4099-1-lukas.bulwahn@gmail.com/
>   - was wrongly sent to old boris.brezillon@bootlin.com address

Please Cc the MTD ML and maintainers next time.

>   - got Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Linus' reviewed is missing in this version.

> 
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c77f02282044..52bb8819230a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1342,7 +1342,7 @@ F:	arch/arm/plat-versatile/
>  F:	drivers/clk/versatile/
>  F:	drivers/i2c/busses/i2c-versatile.c
>  F:	drivers/irqchip/irq-versatile-fpga.c
> -F:	drivers/mtd/maps/physmap_of_versatile.c
> +F:	drivers/mtd/maps/physmap-versatile.*
>  F:	drivers/power/reset/arm-versatile-reboot.c
>  F:	drivers/soc/versatile/
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
