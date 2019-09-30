Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4BEC2618
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 20:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beSKNtNfekHPmDpcd0lRiXb61rg6qQyTUpxmZLmJbXE=; b=GJVbTMaPia9/Hi
	xW4xJAHPkRIH7Zup+2T3PHlUDfBsHCb3+JnDUN6CaEr7lB8TDyZQdT0Shaz//dsaScvm+k+fywkDJ
	Rz2uyfJRLFXxn5uwHQVY3l4hzj27dawObQfZJkWXIzlOs7cS2bzf44G91tf/hWbzXvHiexsAcUnu3
	ZhcGsJ9ltmT/1ME5jx05MPn2Tn5+PqSxW6NOrzv32SU9Ym5NiIU+Jn0m4EMG0kr/+QhQF4lDvBIke
	kH1MoDjp5yYCGSexf301bWVOpoZlcPSVgOjzOCUqvvhY46KMQ7VYHO3l5Rj5LEQNLmeim+lausTMM
	Lj+v4QnLkvaZfZuLJ2tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF0h9-00018n-1E; Mon, 30 Sep 2019 18:46:51 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF0gu-00018I-EI
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 18:46:38 +0000
Received: by mail-io1-xd42.google.com with SMTP id v2so40961141iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 11:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wUaOjIAAKAGaG+nfGl63t9Ipyj1FhR6XnUA53rZZ53s=;
 b=zDPsmRIwr8UIFX7VPiwHVeFhbT9W6MjyM0cDosaTz6Rj3zolIxdtsVVOrY9z7FM7XG
 uAU1mKI9zyzUMMFkGYEdYKvs95ONx+ggQ3z4YWqT57peTmyX6l5T0UAPu64/Ap15zr5L
 RA79HvMK4wUKRBh7sh0vJFG9xuDD0oBULcut5P/nId/bamWyDBfHP5/BaMkAPmcWsbrK
 +punAMByTro8mAK6qQVtmf/sNn61rZ89cXtgTkj8atxCDXheMXds+FSHGJQZYl93Tnu5
 GSMApqoi55lWrKNOCG5yhIXhbnj3Owa/bd5XjwGPVK33WbZP59K1UlWpDncsZUyRoWoB
 gNaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wUaOjIAAKAGaG+nfGl63t9Ipyj1FhR6XnUA53rZZ53s=;
 b=FH7+sEm33FTDgr+DOUEsTtT5LUhyUyNar5s88z4TleTbGj+7P3SCs4N6v0IS8wZDOI
 f3b4sZ9/pNKnX46l6yPwo1yTaudrBuRnSQhCq1D3kKgmMQEkoMmAu/sOXzj1PmWruvkk
 njwGaB+TzBnvbRfIUz63N2QehqdH5AFhEpsUcBYpx4zjEeig+GgX33fxof54kex6uulh
 DjIU0e21Td61MmehfnXZhZCiysB8OjYalRHR0DYVBLgWoveKRHzFlzBLe9Sr5/U/25LV
 4iXICfeQPJtpfaoMoWcT4/D3ePPckED/6VIXR6xkEQ69vTLtha2FvzLS8RtqtmjHq8i4
 vZfw==
X-Gm-Message-State: APjAAAWDuXxWsoE3lEvwyFMgoVW00BJVt5d2Gzn4jxNGQ2gMhUmUnpE0
 0wD1ztjb5lGfZi/ioJNhwl72izeg8paqkHFOPBegDA==
X-Google-Smtp-Source: APXvYqx2QQxA7WYK1gg5Log0L74tzLz+6chp+ZbkA5mlSoinDE3QaD6dO1s0HBeusM7BqhVSnDyqgXQvtPF3K4YXyUw=
X-Received: by 2002:a92:4799:: with SMTP id e25mr22486585ilk.72.1569869194482; 
 Mon, 30 Sep 2019 11:46:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190920075946.13282-1-j-keerthy@ti.com>
 <20190920075946.13282-5-j-keerthy@ti.com>
 <20190930134856.umdoeq7k6ukmajij@willie-the-truck>
In-Reply-To: <20190930134856.umdoeq7k6ukmajij@willie-the-truck>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 30 Sep 2019 11:46:23 -0700
Message-ID: <CAOesGMgs7rKOVnimDwSpeGTAf93Er+Ymzy9-R-mKkQK6MQcF3Q@mail.gmail.com>
Subject: Re: [PATCH v2 linux-next 4/4] arm64: configs: defconfig: Change
 CONFIG_REMOTEPROC from m to y
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_114636_530539_53576830 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-omap <linux-omap@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Keerthy <j-keerthy@ti.com>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tero Kristo <t-kristo@ti.com>,
 Catalin Marinas <catalin.marinas@arm.com>, hch@lst.de,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 6:49 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Sep 20, 2019 at 01:29:46PM +0530, Keerthy wrote:
> > Commit 6334150e9a36 ("remoteproc: don't allow modular build")
> > changes CONFIG_REMOTEPROC to a boolean from a tristate config
> > option which inhibits all defconfigs marking CONFIG_REMOTEPROC as
> > a module in compiling the remoteproc and dependent config options.
> >
> > So fix the defconfig to have CONFIG_REMOTEPROC built in.
> >
> > Fixes: 6334150e9a36 ("remoteproc: don't allow modular build")
> > Signed-off-by: Keerthy <j-keerthy@ti.com>
> > ---
> >  arch/arm64/configs/defconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 8e05c39eab08..c9a867ac32d4 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -723,7 +723,7 @@ CONFIG_TEGRA_IOMMU_SMMU=y
> >  CONFIG_ARM_SMMU=y
> >  CONFIG_ARM_SMMU_V3=y
> >  CONFIG_QCOM_IOMMU=y
> > -CONFIG_REMOTEPROC=m
> > +CONFIG_REMOTEPROC=y
> >  CONFIG_QCOM_Q6V5_MSS=m
> >  CONFIG_QCOM_Q6V5_PAS=m
> >  CONFIG_QCOM_SYSMON=m
>
> Acked-by: Will Deacon <will@kernel.org>
>
> This fixes the following annoying warning from "make defconfig" on arm64:
>
>   arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for REMOTEPROC
>
> I'm assuming the fix will go via arm-soc, but I can take it otherwise
> (please just let me know).

Thanks, I'll pick this up, but I'll squash the 4 one-line changes into
one commit instead of separate patches.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
