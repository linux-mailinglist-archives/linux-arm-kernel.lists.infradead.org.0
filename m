Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2270DDC357
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01oIuOkUpXUW2qN0m2sMSZ303Dz6OEjnBokP9uDK70g=; b=aq7nbJ46vePyMk
	iAwv1wtRkbyuGCRXLa1dlcqCw4AqU083YBzce4ylmSZouhoEXOmLluGKvJyr7Nv47h8YlVXENSdzL
	/73tLYGvMT1l+SZBFg1Nl1btFKSvJXpx3ipDE+J6IpVrxecL2t3TUIkeMdkquFU67t63D34eLtdWY
	X1ie5OxCpNw2+FyPF3izNRLQx3+9QciIGElJi9psLXTMmGGlNOT52U7PraBo3Xz8aEFftlYj08tAj
	cW0Ufb+SRO7V1GZae1Zyg7m6jjHKR0VxzzVqyddIw19WeNjyxhHC8SmF8eCbWp0DX7GypzajDeX7D
	2Y2Lx32FRd8g8dUESy6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPys-0008Dp-Bk; Fri, 18 Oct 2019 10:59:38 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPyD-0007kx-IM
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:58:59 +0000
Received: by mail-ua1-x944.google.com with SMTP id b14so1594895uap.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 03:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tt8K7w3x8HTdPRqv2Fif3/U/rG1clDpwhUCuSLxR4V4=;
 b=ZT9bTUQ6OC5ou55VS9YQx/QBwxnwJMBR+sIN7NFLM0HxkoGrTSe8tT/Qt4JdHA2MMU
 DjId+FAIoU6fIeDoczEOErcFlOkcO+e8JNfl+TwJnF8jmbJIA+R6bZeyFK+oI6B44p93
 E2RKRQ+DqQGymqV+LjeAfkgyr/whnziPddKzcnq8Je0axdhhYXq4F8eMAkP8neG8FZxA
 Wl39/ai8CQcsHWTOzgQd5b6m4y/3Ts3GeWQSCsdZ5NjYQCswurxqeHCvmgNVCB/nNl/8
 v79pFsn/eqHdYlCzLlLczwlxIhh27cCNPny1X6S1N8A4G3XTEPqXUydW08tTHR+s/eFI
 UNng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tt8K7w3x8HTdPRqv2Fif3/U/rG1clDpwhUCuSLxR4V4=;
 b=KR5Gyer61m0/sAdxxF30FvtekPn+JgGWEfANe/C0Ua8uuNOvGGFBdIyISlsZD2fMSz
 eDjUNtAEn9fMUk1CsowAN8Ipast6tOkPppEbq+vUall30CgaXnM8mzWCEFYVnSBKceYo
 2i5NmyppKyOikgag8JsWDTOQExqzyE7UYwLktEr4R29AyacHy9gzdHs2kQKRH0of7RQS
 q6jkTnuyAil6WiMkUzT9N8ko57BDhCl7/cPU0KzNY6tMIyCbQxb+soWYvzjU7HsNdMVQ
 EKq80cU1BWSUWVyk4rkWN82BIMfs3umon+QcOs9+kgYUi6zDKmEAj36MpRAhOr0rmXEd
 WaRw==
X-Gm-Message-State: APjAAAUo3QKXgAf0bgiCtBiSDsUir6JKzWWo105JYQWMPubXv4IAp3vv
 iPiVoY2WOSvnC7JJTfRBc5I7x7ILpJsQb6Q2DvrvLobP
X-Google-Smtp-Source: APXvYqzqXgy001fV5A91b+YnpXgC21Z0PLOBh1lckmLIHtwrkfn/IGdZxxUOfwEtNWIE5nn72WMV3aVXXjO/z8yggnw=
X-Received: by 2002:ab0:708c:: with SMTP id m12mr5080226ual.15.1571396336167; 
 Fri, 18 Oct 2019 03:58:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191009115415.15691-1-ben.dooks@codethink.co.uk>
In-Reply-To: <20191009115415.15691-1-ben.dooks@codethink.co.uk>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 18 Oct 2019 12:58:20 +0200
Message-ID: <CAPDyKFqGwB2uo5dVqL3nbBpch1FBO2D-TG+yXo0R0hFiCL0Tfg@mail.gmail.com>
Subject: Re: [PATCH] mmc: mmci: stm32: make sdmmc_idma_validate_data static
To: Ben Dooks <ben.dooks@codethink.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_035857_634547_87819D8C 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@lists.codethink.co.uk,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 9 Oct 2019 at 13:54, Ben Dooks <ben.dooks@codethink.co.uk> wrote:
>
> Make sdmmc_idma_validate_data to avoid the following warning
> from sparse:
>
> drivers/mmc/host/mmci_stm32_sdmmc.c:28:5: warning: symbol 'sdmmc_idma_validate_data' was not declared. Should it be static?
>
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

Applied for next, thanks!

Kind regards
Uffe



> ---
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: linux-mmc@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/mmc/host/mmci_stm32_sdmmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
> index 8e83ae6920ae..296be8a060a6 100644
> --- a/drivers/mmc/host/mmci_stm32_sdmmc.c
> +++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
> @@ -25,8 +25,8 @@ struct sdmmc_priv {
>         void *sg_cpu;
>  };
>
> -int sdmmc_idma_validate_data(struct mmci_host *host,
> -                            struct mmc_data *data)
> +static int sdmmc_idma_validate_data(struct mmci_host *host,
> +                                   struct mmc_data *data)
>  {
>         struct scatterlist *sg;
>         int i;
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
