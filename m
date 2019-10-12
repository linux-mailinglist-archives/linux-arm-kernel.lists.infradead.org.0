Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2064D4D47
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 07:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SokjvK2ENU473SOpA8QmdtZNbsi907hFRZ/uf0NzxXI=; b=psjl1nKhb0BqVn
	Kr59eAYIhucwOounI2JAY4kWktn6XJ0hFHpT2EFu0//lsfWgdVSaNvsG/L2Aw+WvoSXiJAfo8y2ad
	vqwP1biWw0om+zj4Wcv11zfQpprkOLPhjB1bKDtwr3u9Nr73LG/TKQ4pdn9L0eymN2+d/kWxxJVsL
	1nqabdR3Yw+Gifcwr3Qhy7Cio2Tr3W6s7DrVCaah+bg3S9R5UQ0AdO+PXtTfGTP3UVQfr02g5iyAT
	VMubFggLgOrr+szfU2BcnzO5cjYixr4y6I0sjzPqu+ZgriMRBRccaXe81hqPd4QrBW5vvJsHlFmgp
	R0CB/SNCND63D8eGjmQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJAHR-00020R-0D; Sat, 12 Oct 2019 05:49:29 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJAHJ-0001zd-LB
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 05:49:23 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 13C9A25B7C7;
 Sat, 12 Oct 2019 16:49:15 +1100 (AEDT)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 9C68CE20369; Sat, 12 Oct 2019 07:49:11 +0200 (CEST)
Date: Sat, 12 Oct 2019 07:49:11 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] MAINTAINERS: Remove Simon as Renesas SoC Co-Maintainer
Message-ID: <20191012054907.nxqmuuwzgpydkk2o@verge.net.au>
References: <20191010123046.15291-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010123046.15291-1-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_224921_842838_A32E92A0 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Olof Johansson <olof@lixom.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 02:30:46PM +0200, Geert Uytterhoeven wrote:
> At the end of the v5.3 upstream kernel development cycle, Simon stepped
> down from his role as Renesas SoC maintainer.
> 
> Remove his maintainership, git repository, and branch from the
> MAINTAINERS file, and add an entry to the CREDITS file to honor his
> work.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Acked-by: Simon Horman <horms@verge.net.au>

> ---
>  CREDITS     | 4 ++++
>  MAINTAINERS | 4 ----
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/CREDITS b/CREDITS
> index 8b67a85844b55d88..031605d46b4d5cc1 100644
> --- a/CREDITS
> +++ b/CREDITS
> @@ -1637,6 +1637,10 @@ S: Panoramastrasse 18
>  S: D-69126 Heidelberg
>  S: Germany
>  
> +N: Simon Horman
> +M: horms@verge.net.au
> +D: Renesas ARM/ARM64 SoC maintainer
> +
>  N: Christopher Horn
>  E: chorn@warwick.net
>  D: Miscellaneous sysctl hacks
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 94ce075907a0b9aa..d44d6732510df746 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2165,12 +2165,10 @@ F:	arch/arm64/boot/dts/realtek/
>  F:	Documentation/devicetree/bindings/arm/realtek.yaml
>  
>  ARM/RENESAS ARM64 ARCHITECTURE
> -M:	Simon Horman <horms@verge.net.au>
>  M:	Geert Uytterhoeven <geert+renesas@glider.be>
>  M:	Magnus Damm <magnus.damm@gmail.com>
>  L:	linux-renesas-soc@vger.kernel.org
>  Q:	http://patchwork.kernel.org/project/linux-renesas-soc/list/
> -T:	git git://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git next
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git next
>  S:	Supported
>  F:	arch/arm64/boot/dts/renesas/
> @@ -2282,12 +2280,10 @@ S:	Maintained
>  F:	drivers/media/platform/s5p-mfc/
>  
>  ARM/SHMOBILE ARM ARCHITECTURE
> -M:	Simon Horman <horms@verge.net.au>
>  M:	Geert Uytterhoeven <geert+renesas@glider.be>
>  M:	Magnus Damm <magnus.damm@gmail.com>
>  L:	linux-renesas-soc@vger.kernel.org
>  Q:	http://patchwork.kernel.org/project/linux-renesas-soc/list/
> -T:	git git://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git next
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git next
>  S:	Supported
>  F:	arch/arm/boot/dts/emev2*
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
