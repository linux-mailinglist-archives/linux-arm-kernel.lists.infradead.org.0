Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651331442EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:14:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ba0O6Q2okMRg4Ix/k2Xvrw8u4mC4bQzdbmr+TxdCgPs=; b=usdqrGArYRRJMb
	Cfh8ELfyaYfLw6ZqfxtO0T5HSS+NNCtd2CIH3j0exis3EpV9GaNCMCaId6BRwNsha7386Nmt3pyXW
	ad0Xw39CnZ4sjarA2B0C5+xnaYOuRzphOK/4oLRTK7zAXX8xcPQ3Hipll5pOBcQgIN5vikahRxncz
	FoUfGcdR74VZPnbMB3kTnrF+kV29J6fj4s2AMUqrDYfzm/1j7HGm/KZhGMTe/AJNCqQCtKs05PmyS
	n6DLgY6SF8exSeGxEtu63Ff/+ZKd720+f4FR30hmz3tsngj/gxtxOBOq3umSwtldjbYaK2u6IZI2G
	HqCoC0vRkHLeWGvmiQRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itx6M-00080C-K6; Tue, 21 Jan 2020 17:14:06 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itx66-0007y9-Iq
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:13:56 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 9F8C1DFB9D;
 Tue, 21 Jan 2020 17:13:55 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id egpkrthuXcvC; Tue, 21 Jan 2020 17:13:55 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id F3CF4DFE6D;
 Tue, 21 Jan 2020 17:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id fa5bH0yR5lYx; Tue, 21 Jan 2020 17:13:54 +0000 (UTC)
Received: from localhost (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 92789DFB9D;
 Tue, 21 Jan 2020 17:13:54 +0000 (UTC)
Date: Tue, 21 Jan 2020 18:13:43 +0100
From: Lubomir Rintel <lkundrak@v3.sk>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 13/20] ARM: mmp: Drop unneeded select of COMMON_CLK
Message-ID: <20200121171343.GA171627@furthur.local>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-13-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121103722.1781-13-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_091350_771082_081A28FE 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Olof Johansson <olof@lixom.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 11:37:15AM +0100, Geert Uytterhoeven wrote:
> Support for Marvell MMP ARMv5 platforms depends on ARCH_MULTI_V5, and
> thus on ARCH_MULTIPLATFORM.
> As the latter selects COMMON_CLK, there is no need for MACH_MMP_DT to
> select COMMON_CLK.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Lubomir Rintel <lkundrak@v3.sk>

Acked-by: Lubomir Rintel <lkundrak@v3.sk>

Thank you
Lubo

> ---
> All patches in this series are independent of each other.
> Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be
> 
>  arch/arm/mach-mmp/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/mach-mmp/Kconfig b/arch/arm/mach-mmp/Kconfig
> index b58a03b18bdef14c..6fe1550f43ec6aef 100644
> --- a/arch/arm/mach-mmp/Kconfig
> +++ b/arch/arm/mach-mmp/Kconfig
> @@ -110,7 +110,6 @@ config MACH_MMP_DT
>  	depends on ARCH_MULTI_V5
>  	select PINCTRL
>  	select PINCTRL_SINGLE
> -	select COMMON_CLK
>  	select ARCH_HAS_RESET_CONTROLLER
>  	select CPU_MOHAWK
>  	help
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
