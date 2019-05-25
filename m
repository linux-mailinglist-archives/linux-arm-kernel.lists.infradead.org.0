Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CA22A373
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 10:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKUOb8RHJ/qkB/HOXV15DpeRKqRnOR4ju/NHQaCUVb8=; b=T5P1SL0tuIs9j6
	ZPw5Cov7cnoNyMFx6LG1m9TBStjZawkabr6raZ3jtens5eZhYmWAw0c26QU0X1bhLytrQ6GLYcXiG
	Avjzbbd81RKihJQJ5KYoAVIEiSzS32msLp/86BtGpS2xo1v7OZ8h6nn7PMJ5SGVFzk+oPxmATGgWV
	ILvrkTHooOkQiAyVNkqkd0RNig58Q7QyotFFnyIfiFpfuF4TICkPXoR4NwMVxJ7kRfyhWMr2aFPOn
	DAAoRz0sY2PLfBSIOqqaa0NAY7NdKqjFX48+BPtUMpDox9S5io9SK4ePQpo7h5mcQig31RS+Vmb5E
	mPjVcejC1DvJS4Xhou5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUS7U-00044b-Co; Sat, 25 May 2019 08:33:36 +0000
Received: from mleia.com ([178.79.152.223] helo=mail.mleia.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUS7O-00044K-Cz
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 08:33:31 +0000
Received: from mail.mleia.com (localhost [127.0.0.1])
 by mail.mleia.com (Postfix) with ESMTP id 10F54400019;
 Sat, 25 May 2019 09:33:25 +0100 (BST)
Subject: Re: [PATCH 3/8] MAINTAINERS: add I2C DT bindings to LPC platforms
To: Wolfram Sang <wsa@the-dreams.de>, linux-arm-kernel@lists.infradead.org
References: <20190521082137.2889-1-wsa@the-dreams.de>
 <20190521082137.2889-4-wsa@the-dreams.de>
From: Vladimir Zapolskiy <vz@mleia.com>
Message-ID: <266e3199-840b-54e7-cacf-c6eb5fc1c6c5@mleia.com>
Date: Sat, 25 May 2019 11:33:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190521082137.2889-4-wsa@the-dreams.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20190525_093325_131783_B91B0A37 
X-CRM114-Status: GOOD (  11.42  )
/bin/ln: failed to access
 'reaver_cache/texts/20190525_093325_131783_B91B0A37': No such file or
 directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_093325_131783_B91B0A37 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wolfram,

On 05/21/2019 11:21 AM, Wolfram Sang wrote:
> Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
> Cc: Vladimir Zapolskiy <vz@mleia.com>
> ---
>  MAINTAINERS | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 90abfe11b05c..01b5579cfa07 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1782,6 +1782,7 @@ ARM/LPC18XX ARCHITECTURE
>  M:	Vladimir Zapolskiy <vz@mleia.com>
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  S:	Maintained
> +F:	Documentation/devicetree/bindings/i2c/i2c-lpc2k.txt
>  F:	arch/arm/boot/dts/lpc43*
>  F:	drivers/i2c/busses/i2c-lpc2k.c
>  F:	drivers/memory/pl172.c
> @@ -1795,6 +1796,7 @@ M:	Sylvain Lemieux <slemieux.tyco@gmail.com>
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  T:	git git://github.com/vzapolskiy/linux-lpc32xx.git
>  S:	Maintained
> +F:	Documentation/devicetree/bindings/i2c/i2c-pnx.txt
>  F:	arch/arm/boot/dts/lpc32*
>  F:	arch/arm/mach-lpc32xx/
>  F:	drivers/i2c/busses/i2c-pnx.c
> 

it makes sense, thank you for the change!

Acked-by: Vladimir Zapolskiy <vz@mleia.com>

--
Best wishes,
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
