Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 637E77D5F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LxCeZbCfVTB9gB6vWAg0niQ+r47vbN3KrPuOdyw/0c=; b=qpASGv1IAW56Qr
	jL4sTsKifGKo9geTGhFM4vrpwa5FjYXYlKuMJnKM/hVhS+1MUlBavelItw3T+iURNJe4bNaotYIKi
	CiPdkXuxcG71a8wF5OZzp2lnJEM1RWA1zkVDPMsQ+ZvAEfG62ivOmJHuwG2NOOJBKSMjwYYLLpuWS
	UkbedlKJ8jDJe5aY9Uu/USBYCCAYHploxt42YoHaX/EdBkOc7AgGC/T5UCe/BhRA4b/w9JsyIUcdu
	hCTX+Qzlc0F9D7s/s4SJ+CYC1o5YBrIZkP9FSWxVYUDFUf8IH5wP/CPYjkDEgBlP1Gh5EKzMjTzZ3
	BMficWYf615WYDmlTmnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht559-00047X-Ov; Thu, 01 Aug 2019 07:00:59 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht54v-00046i-VF
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:00:51 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 713C725B7DE;
 Thu,  1 Aug 2019 17:00:41 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 096AF9405AE; Thu,  1 Aug 2019 09:00:38 +0200 (CEST)
Date: Thu, 1 Aug 2019 09:00:38 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] MAINTAINERS: Add Geert as Renesas SoC Co-Maintainer
Message-ID: <20190801070034.zxgv3svcpzgbjqwf@verge.net.au>
References: <20190729175658.13672-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729175658.13672-1-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_000049_228953_9E1B2D20 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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

On Mon, Jul 29, 2019 at 07:56:58PM +0200, Geert Uytterhoeven wrote:
> At the end of the v5.3 upstream kernel development cycle, Simon will be
> stepping down from his role as Renesas SoC maintainer.  Starting with
> the v5.4 development cycle, Geert is taking over this role.
> 
> Add Geert as a co-maintainer, and add his git repository and branch.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> Stephen: Can you please add my branch to linux-next, after Simon's
> 	 branch, which may still receive fixes for v5.3?
> 
> 	 Thanks!
> ---
>  MAINTAINERS | 4 ++++
>  1 file changed, 4 insertions(+)

For the record:

Acked-by: Simon Horman <horms+renesas@verge.net.au>

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6426db5198f05377..6de667021591fb52 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2155,10 +2155,12 @@ F:	Documentation/devicetree/bindings/arm/realtek.txt
>  
>  ARM/RENESAS ARM64 ARCHITECTURE
>  M:	Simon Horman <horms@verge.net.au>
> +M:	Geert Uytterhoeven <geert+renesas@glider.be>
>  M:	Magnus Damm <magnus.damm@gmail.com>
>  L:	linux-renesas-soc@vger.kernel.org
>  Q:	http://patchwork.kernel.org/project/linux-renesas-soc/list/
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git next
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git next
>  S:	Supported
>  F:	arch/arm64/boot/dts/renesas/
>  F:	Documentation/devicetree/bindings/arm/renesas.yaml
> @@ -2269,10 +2271,12 @@ F:	drivers/media/platform/s5p-mfc/
>  
>  ARM/SHMOBILE ARM ARCHITECTURE
>  M:	Simon Horman <horms@verge.net.au>
> +M:	Geert Uytterhoeven <geert+renesas@glider.be>
>  M:	Magnus Damm <magnus.damm@gmail.com>
>  L:	linux-renesas-soc@vger.kernel.org
>  Q:	http://patchwork.kernel.org/project/linux-renesas-soc/list/
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git next
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git next
>  S:	Supported
>  F:	arch/arm/boot/dts/emev2*
>  F:	arch/arm/boot/dts/gr-peach*
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
