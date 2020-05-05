Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7961C6076
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 20:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwgPw98XvXOyj5kZ0eAQVPe5yzOS5+3FJAslPS8sl8g=; b=AuF8/S1PwVkOhO
	xAaO6PCpsIXo2TRfVELtjXeJnfPjHIjUUk1A4mpi26RCTJ/knmJsKchbCUorh84Mseuqxq0wXwZh2
	Z3oORHcyDBpNgRPRmCvmVBrSqIvRy9NJGTN2H1H3wG6Iykl3bsaVwkOF8Qbl8F8E8zqTtoWOFM773
	H2EjOpyagkfaOYsjLVIywH+AXm8TutcYQTINh3SzpxZZdV5rpqptIDDsNhNOGZtKcWMa+IMUx3uUS
	sXqr9DKx18mTYhO5CVPY4lPEDybkikeM27nVCoJ4kAu2Ca2e6JXsZnKwQY9FMkRC6/2bL7hmZq2My
	vezIz7MGDCBJsIsDQicw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2eM-0002Et-VZ; Tue, 05 May 2020 18:50:38 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2eG-0002E5-KA
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 18:50:34 +0000
Received: by mail-lj1-x242.google.com with SMTP id f11so2788543ljp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 11:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fQtcPUQW49oPTnT+jASB+pu5t+m5qPdUelhle+W5F4o=;
 b=e2LM4c7y4U0BetC/gB0eIa7BcxIovrqW2+yMivftL2EUsrm9A/3tzPHnkWrENn0+BY
 3u8nlKnzNbvWltqUbePhaEVeITEBqdy3oJ/OoqwDOACo021vaWG3fpFzoZBwAEfpJ/T7
 +AgIzXtc4NJ1zsQ+y6SrWc1RKchP8F8XxTSv08dWWyQ2BtBnzBt+iy4L92tZ3UliSHEx
 lZPLffC2w/YnG5vf5M2YiUUcpWIt7S3jEiV8hAHP9h79nVayw4X1+qTG0d8wF3MY8iSJ
 v9f/mCqFam0KZFjTCQpO/p7SAEWfWjm3aKaNwCqNALVOt0eWz/CsLXXLRBCOZRGKAVY5
 N1LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fQtcPUQW49oPTnT+jASB+pu5t+m5qPdUelhle+W5F4o=;
 b=lMrZRwxvkdVowjJ+BUrsEurWUL5QEOp8dQLxvOCovfqXtmJQsHbZjeGYGNo6rnUM99
 eo6sCPksbsSI09tIUz63zFF+UNc02Nae4BcmGHp4+O/pdRPmc8pMhyQjOX+Y9uddztB3
 QFrXf9jy4qPGOPe7RUa2hjVYTZT0wCS8+YhFeat90Uyk8bDAf3eyhjdQgiF9WRQvTe7C
 KFK7NhMCruShWym8/vObcfFdmbekAo/yoct+131g581UA7VKw2daCIUrIih+jVaONOZ9
 ldI7hswPGBJhr+4EPcm6iQmRtk30wt3AD2hMeyiQuF1wqe395kjD96CV+mfNfEJ4DrbT
 qrgA==
X-Gm-Message-State: AGi0PuacXAnjTSEGgiV3Rx7+kBHmIQZKQ8mTMIndNvs6CyBNn81UY8TO
 WRBgem0NcmQXfaF6mQ7vBa1wngoiQvm1QjpuaoMzzg==
X-Google-Smtp-Source: APiQypKvjCJ8PklB3LOXCvVyQOThS4XpKMQ/Afaf/e/kP6nt/5BFFzQYKIqd2OgadCHb/8wFTCM6UEj3k7Ta0f50ic0=
X-Received: by 2002:a05:651c:107a:: with SMTP id
 y26mr2697805ljm.80.1588704629773; 
 Tue, 05 May 2020 11:50:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200505162123.13366-1-grygorii.strashko@ti.com>
In-Reply-To: <20200505162123.13366-1-grygorii.strashko@ti.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 5 May 2020 20:50:18 +0200
Message-ID: <CADYN=9KZ9GSBv+VOA0MSLHcW312sEOX+T+h5GNyaaAridaLXuA@mail.gmail.com>
Subject: Re: [PATCH net-next] net: ethernet: ti: am65-cpts: fix build
To: Grygorii Strashko <grygorii.strashko@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_115032_832011_CABAA403 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Networking <netdev@vger.kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 5 May 2020 at 18:21, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
>
> It's possible to have build configuration which will force PTP_1588_CLOCK=m
> and so TI_K3_AM65_CPTS=m while still have TI_K3_AM65_CPSW_NUSS=y. This will
> cause build failures:
>
> aarch64-linux-gnu-ld: ../drivers/net/ethernet/ti/am65-cpsw-nuss.o: in function `am65_cpsw_init_cpts':
> ../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685: undefined reference to `am65_cpts_create'
> aarch64-linux-gnu-ld: ../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685:(.text+0x2e20):
> relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `am65_cpts_create'
>
> Fix it by adding dependencies from CPTS in TI_K3_AM65_CPSW_NUSS as below:
>    config TI_K3_AM65_CPSW_NUSS
>    ...
>      depends on TI_K3_AM65_CPTS || !TI_K3_AM65_CPTS
>
> Note. This will create below dependencies and for NFS boot + CPTS all of them
> have to be built-in.
>   PTP_1588_CLOCK -> TI_K3_AM65_CPTS -> TI_K3_AM65_CPSW_NUSS
>
> While here, clean up TI_K3_AM65_CPTS definition.
>
> Fixes: b1f66a5bee07 ("net: ethernet: ti: am65-cpsw-nuss: enable packet timestamping support")
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Reported-by: Anders Roxell <anders.roxell@linaro.org>

Tested-by: Anders Roxell <anders.roxell@linaro.org>

> ---
>  drivers/net/ethernet/ti/Kconfig | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
> index 4ab35ce7b451..988e907e3322 100644
> --- a/drivers/net/ethernet/ti/Kconfig
> +++ b/drivers/net/ethernet/ti/Kconfig
> @@ -99,7 +99,7 @@ config TI_K3_AM65_CPSW_NUSS
>         depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
>         select TI_DAVINCI_MDIO
>         imply PHY_TI_GMII_SEL
> -       imply TI_AM65_CPTS
> +       depends on TI_K3_AM65_CPTS || !TI_K3_AM65_CPTS

Don't we want to move this so it is below the other 'depends on' ?

Cheers,
Anders

>         help
>           This driver supports TI K3 AM654/J721E CPSW2G Ethernet SubSystem.
>           The two-port Gigabit Ethernet MAC (MCU_CPSW0) subsystem provides
> @@ -112,9 +112,8 @@ config TI_K3_AM65_CPSW_NUSS
>
>  config TI_K3_AM65_CPTS
>         tristate "TI K3 AM65x CPTS"
> -       depends on ARCH_K3 && OF && PTP_1588_CLOCK
> +       depends on ARCH_K3 && OF
>         depends on PTP_1588_CLOCK
> -       select NET_PTP_CLASSIFY
>         help
>           Say y here to support the TI K3 AM65x CPTS with 1588 features such as
>           PTP hardware clock for each CPTS device and network packets
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
