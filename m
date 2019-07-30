Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC00D7B035
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQQwD5WHvF6RzLF8lrchz6oJd7unkMjUuvg95a6oKGg=; b=ROdxSwovwcTb/3
	tYd0aYjZIcMhUMb/Z82LmCVj3S0vkPneAZppdwi+vDDJKsaoU1lp4SYd02QOxQZYx1CAqEkZA/sxQ
	uw73BJQ0R56MBaBYXkMJjsipHmK0PzAuxlR2Dv4+jGAAJ7Q3RpDFHxKYDKjkDilsMbvH1BJ1ildjq
	KxsYiMeCCITTEGRPRmZCwbv/JaMkIKAhuvuP1NusfubB/ktMyBzvCM1cm3ArOxvL7kVPzFDXjWsUL
	2ZpHVP+lWc8VzEb7+toD3BAMaoSJWxw16FRs9pvaCXOIU87z5nGMY2cHstTMMomU3WpHqmqYrllGK
	YTekTPIua748zcwwqyCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsW3d-00019t-7A; Tue, 30 Jul 2019 17:37:05 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsW3T-00019Z-TD
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:36:57 +0000
Received: by mail-io1-xd42.google.com with SMTP id j5so125904106ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0rwxjGQ0F8+7/JgSl5zAGXkF4+sYHbKb6y6qDK+alhg=;
 b=gkX79G8WWxMhmbnVBy82sigtuXRk0mxE6VY3CsMNdf5hT4coRD9fU36W4Q45ae3vKn
 wWiCeYclztjJMcNPuwJtWCVG4w6TRVOiefRLI7sW7m+4X8Or3HAISRpS0F4oNbdy9oYQ
 AIqiKw111Uuzr4T+4G4vo3v1PwrqoUXL1mTzRgiEGcS6op7+kjA18WWMkn36Svh140cn
 Iw2AlgNooDknvK7v+YyuAuKw8zJvOjF0a7tS1crKGFwDMPNxyipry5MFiPZcbmYnwaOh
 az9phnFnGdZqn4tu1h4e+btID5+QINSV9vYgtYM4voOzIEjcPkWQk4l9IsX24ROaHtt0
 2R+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0rwxjGQ0F8+7/JgSl5zAGXkF4+sYHbKb6y6qDK+alhg=;
 b=ZiJvw9+n9lSN/ZTXtYBXwqDg7bDmOQx2sSDF3LxqlUPAV0RWMsykx57EHrbaJD70DA
 t9VERXrKMgUGollzczqt4rDj9mvajEyKLwNlyTabZYVy9nF3EvUS+WZcu0uQF3XJ1mEF
 KYMqBYSsKvn84lg4grXfj4DMpttt50MCX8yHSsDUh2jypDz5xN6YowiyXrUPp8j/JkdV
 KeiOvlcU0oatggdePV+VwpyVQmrnHtnS57AeGUjETbYuzGUu6n1E7U9l9zLOgf4axt/7
 84w82MzWaQj4Itr4dtxqCeEFDiOQrwC1/oEkYqn+Q8eV9DBqdu/PfDy+9zsbb0N2KeCQ
 9TmQ==
X-Gm-Message-State: APjAAAWsgAj2YJsYBuQ8dseSzj19BwdLn8NDCKH94zmtIrv4KdUB63np
 YhOYTVpASVAmgfrwYV6tozV/9Lr6Rm3H1J7iYS0=
X-Google-Smtp-Source: APXvYqyXcQAC/AoZ3rJhI5Ac31OagN0p/mkM1JieiGm/GnkuFYYiAYIVYKqyvOPcCeHt0rAKPHGJW51Y1rGcRrDR2PE=
X-Received: by 2002:a5d:915a:: with SMTP id
 y26mr108937727ioq.207.1564508214873; 
 Tue, 30 Jul 2019 10:36:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190729135505.15394-1-patrice.chotard@st.com>
In-Reply-To: <20190729135505.15394-1-patrice.chotard@st.com>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 30 Jul 2019 19:36:43 +0200
Message-ID: <CAOesGMg-3xt2qjjZ569pUE+d6tn7nz264AN9ARkBT_Ej4TFC2A@mail.gmail.com>
Subject: Re: ARM: multi_v7_defconfig: Enable SPI_STM32_QSPI support
To: Patrice CHOTARD <patrice.chotard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_103656_086092_3A586090 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Patrice,

If you cc soc@kernel.org on patches you want us to apply, you'll get
them automatically tracked by patchwork.


-Olof

On Mon, Jul 29, 2019 at 3:55 PM <patrice.chotard@st.com> wrote:
>
> From: Patrice Chotard <patrice.chotard@st.com>
>
> Enable support for QSPI block on STM32 SoCs.
>
> Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
> ---
>  arch/arm/configs/multi_v7_defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 6a40bc2ef271..78d1d93298af 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -403,6 +403,7 @@ CONFIG_SPI_SH_MSIOF=m
>  CONFIG_SPI_SH_HSPI=y
>  CONFIG_SPI_SIRF=y
>  CONFIG_SPI_STM32=m
> +CONFIG_SPI_STM32_QSPI=m
>  CONFIG_SPI_SUN4I=y
>  CONFIG_SPI_SUN6I=y
>  CONFIG_SPI_TEGRA114=y
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
