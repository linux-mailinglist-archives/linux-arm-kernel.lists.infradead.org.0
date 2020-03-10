Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC1A17F6D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 12:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRCgLDPs1sxreR1DKDRzuH6Cbt7ZjI2kD2oJRrFBWXk=; b=Oxhl+gVTtFMxrE
	p6P5mP4uBBbvXtLmZrwIm5Q/e7RYDVDcuYG5DARZ+7/TvbgWAVylo1+/8q1Y6SMCtQPy5KlEwoD3F
	vv3uNdYw+0SYH2bhuKu4YmTBGF9UzmF9pDfoc/KEHFkRsB+MM/0X8+ytoVBeI1VXrCk7PlVLTOnGK
	9waJmuMyaRgXs9DRyfyyMDiexCmitg4j2TTWzZWzHwNrNCedPOEJvn+qjsTfKYmABYHsiDUT1snjr
	tyqu3THHaacj/Gdztok2qcwUmEZ0U+3MKjcWWr8Y6n7YWucOM/EnveEVJ851EheCRQjf4N0eu42pE
	2D0f2KqvA+kpdhAjkfKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdUO-00051c-My; Tue, 10 Mar 2020 11:56:00 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdUD-00050d-0C
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 11:55:50 +0000
Received: from localhost (unknown [85.191.123.149])
 by first.geanix.com (Postfix) with ESMTPSA id B1D50C62C6;
 Tue, 10 Mar 2020 11:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1583841344; bh=tBmlMn2UhNtC3VSTWAV5c9jmOKvQNedYrfvi/K5ohGg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To;
 b=bknF87lxIHrTbRn9f0bMCZpIXWn6y6n/jJv5jJx4GVZKoB64Bw/amu1yPpyVKyVQj
 aDjg9xvogqkkpUaBj6U1zLi7FDZ7jgc/lt0AQ7sUkLej0RuMOPNnUbMiabQ0fXaF3F
 GqzKb194kcK1dP47haALH8WbY4oYbH2mWa2xem4iWz3m7mGF5FzMwE+UKOsG9b21KT
 7zDI2UVEr6q5+mOMC2lLtsKA+WBZIcauOWojzeohBdKNJXmicDsolfYIO7XZcefQbU
 KG/C+18nWtm7arWOt9VX4mQPTBUPibR+FAKQz4hD+pjYtuCsX6iCiLLkTWYHnhoa4m
 z3dIPzS6qGtzw==
From: Esben Haabendal <esben@geanix.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2 01/14] net: xilinx: temac: Relax Kconfig dependencies
References: <20200309181851.190164-1-andre.przywara@arm.com>
 <20200309181851.190164-2-andre.przywara@arm.com>
Date: Tue, 10 Mar 2020 12:55:44 +0100
In-Reply-To: <20200309181851.190164-2-andre.przywara@arm.com> (Andre
 Przywara's message of "Mon, 9 Mar 2020 18:18:38 +0000")
Message-ID: <871rq0a0fz.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Spam-Status: No, score=0.6 required=4.0 tests=BAYES_50,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,UNPARSEABLE_RELAY,URIBL_BLOCKED
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 05ff821c8cf1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_045549_205639_01C68A17 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>, rmk+kernel@arm.linux.org.uk,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Andre Przywara <andre.przywara@arm.com> writes:

> Similar to axienet, the temac driver is now architecture agnostic, and
> can be at least compiled for several architectures.
> Especially the fact that this is a soft IP for implementing in FPGAs
> makes the current restriction rather pointless, as it could literally
> appear on any architecture, as long as an FPGA is connected to the bus.
>
> The driver hasn't been actually tried on any hardware, it is just a
> drive-by patch when doing the same for axienet (a similar patch for
> axienet is already merged).
>
> This (temac and axienet) have been compile-tested for:
> alpha hppa64 microblaze mips64 powerpc powerpc64 riscv64 s390 sparc64
> (using kernel.org cross compilers).

The temac driver is being actively used on x86_64, so please include
that for future compile-tests of it.

> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Reviewed-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> ---
>  drivers/net/ethernet/xilinx/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/xilinx/Kconfig b/drivers/net/ethernet/xilinx/Kconfig
> index 6304ebd8b5c6..0810af8193cb 100644
> --- a/drivers/net/ethernet/xilinx/Kconfig
> +++ b/drivers/net/ethernet/xilinx/Kconfig
> @@ -32,7 +32,6 @@ config XILINX_AXI_EMAC
>  
>  config XILINX_LL_TEMAC
>  	tristate "Xilinx LL TEMAC (LocalLink Tri-mode Ethernet MAC) driver"
> -	depends on PPC || MICROBLAZE || X86 || COMPILE_TEST
>  	select PHYLIB
>  	---help---
>  	  This driver supports the Xilinx 10/100/1000 LocalLink TEMAC

Acked-by: Esben Haabendal <esben@geanix.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
