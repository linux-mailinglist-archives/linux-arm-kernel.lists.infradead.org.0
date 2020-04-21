Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6A71B22A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 11:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRiYAUU/JMVFUQPCUkh4gblNo9jCa4HaIQsngknewKs=; b=JnIRwx0ZInkKU7
	GRc7tm9P7Yeji0rp3KsY9ujZvOCuBIbMuevXWQPzSMWbO5lXpRVgHyElJ0VE0UroarSlXQLSeNlZS
	DHKum/ZpQOi698ozJ83OCOLkFELRZnXn2Pb4go0PJgL4ux+NKPZ7ihLHrZNJJTmtfCX6/u9GfF+nv
	mIru8z90Ejmt9ODYBY7j/xlus/hhzldujoObjqIX0YsfNEpbRACXt4LucruoXvvNPvL/Zu+YMC62e
	K8YHw1vYwI2EKuItNVx8uFTC/rNm2pe5Egv0SBgVtA7WG8a9t6eR99ImdPBF+mv2FhSahLgqY8XWD
	DnVAW0qB6WN47Uj4Vnlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQpAc-0003nN-AS; Tue, 21 Apr 2020 09:26:22 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQpAR-0003mM-D7
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 09:26:13 +0000
Received: by mail-vk1-xa43.google.com with SMTP id g129so3412866vkh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 02:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sutV1Oamoy4pwRt+VwqP9AtJQW6IanilRtSt3lz61TU=;
 b=i44fOYZUDMFqxzO+bLxz7mYEXUJOrpBd6UGd2O+okyMUpCDdFKYIA826sUc7iPf6we
 js7pHNoTwz0e4R+VDEEez61/nomAfRCsuE94AcZJ9S5rehCXy1mKu/shAWtzpt5XfI+r
 l2r9o/esXgf9BSBCXfnnvw6hbSFBgzLYaI5HilgMBU9YGUTsg5p6E8mn0f/ULpHUceV+
 grZbBZ4lBL1a3TWwDjxTT1wtbs2ryIpbqkXG4MOXWlfVjB0C5532Ob0xNjO+leG/B2jP
 C7PZF9bGVE3w+BOpv+3h7rP7Iv2Zp5h7xvJNVCEBTX3s7LvKyKbqlZBsoksAMNcbHIKb
 3+cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sutV1Oamoy4pwRt+VwqP9AtJQW6IanilRtSt3lz61TU=;
 b=pocpzSBHf0wnxdZ2hE+hFmmJStWoJEXu/kiiK1lKZ9xCLP+pz1gW62/9jy2ekjQdxj
 Km2BxLLA6obOdw/w6B7JiqKtLZiY2/+UTbho4gdR4TFxEd06LcpjstXrX/Jdsik0Esuj
 isQxN2wD3FEy0Tjl2lr/48FeUtA6Bgs5DEhl94MaQ3TR+vhuwEi+qPWkeUGTO8R0ApHF
 wLoIfILsXbjwtxuYzhprq2reb/qnkJsFf7OPXYPvn575qBhzQzE11yyYNc4M8YGW2Wxc
 CCrFaXGR7PcEqT0IVrF/gw7jn0vp2cHuJ9ClTkbOah1HSd1Y3i3TPFnCEV6DalHPDtA9
 Hzlg==
X-Gm-Message-State: AGi0PuZJYc/SR0gwri/uocD7bgGMHPezQp8HERqz31ZAWRUMTP4qAttl
 Npp4KA5kBoQ6UgVqltgif+6jQn5AiVp9oHhrF3wGxA==
X-Google-Smtp-Source: APiQypKgJ3XD4p50nn/CNLH8KAToU17AAWt5xtoXI0IXMljJSdFyItYyZUEcdUyWP2PTkh+mgDLx1kzXR3Z25Pm/P1U=
X-Received: by 2002:a1f:a60b:: with SMTP id p11mr8434277vke.43.1587461169800; 
 Tue, 21 Apr 2020 02:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200420161831.5043-1-ludovic.barre@st.com>
In-Reply-To: <20200420161831.5043-1-ludovic.barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 21 Apr 2020 11:25:33 +0200
Message-ID: <CAPDyKFqC3fdnQ9CMYhS-=5MiCET=r5Az2S5oFoA2v1gdDeGO3w@mail.gmail.com>
Subject: Re: [PATCH] mmc: mmci_sdmmc: fix power on issue due to pwr_reg
 initialization
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_022611_959805_255DDF4F 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 at 18:18, Ludovic Barre <ludovic.barre@st.com> wrote:
>
> This patch fix a power-on issue, and avoid to retry the power sequence.
>
> In power off sequence: sdmmc must set pwr_reg in "power-cycle" state
> (value 0x2), to prevent the card from being supplied through the signal
> lines (all the lines are driven low).
>
> In power on sequence: when the power is stable, sdmmc must set pwr_reg
> in "power-off" state (value 0x0) to drive all signal to high before to
> set "power-on".

Just a question to gain further understanding.

Let's assume that the controller is a power-on state, because it's
been initialized by the boot loader. When the mmc core then starts the
power-on sequence (not doing a power-off first), would $subject patch
then cause the
MMCIPOWER to remain as is, or is it going to be overwritten?

I am a little worried that we may start to rely on boot loader
conditions, which isn't really what we want either...

>
> To avoid writing the same value to the power register several times, this
> register is cached by the pwr_reg variable. At probe pwr_reg is initialized
> to 0 by kzalloc of mmc_alloc_host.
>
> Like pwr_reg value is 0 at probing, the power on sequence fail because
> the "power-off" state is not writes (value 0x0) and the lines
> remain drive to low.
>
> This patch initializes "pwr_reg" variable with power register value.
> This it done in sdmmc variant init to not disturb default mmci behavior.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>

Besides the comment, the code and the approach seems reasonable to me.

Kind regards
Uffe

> ---
>
> This patch is the proposal from:
> https://patchwork.kernel.org/patch/11457987/
>
> ---
>  drivers/mmc/host/mmci_stm32_sdmmc.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
> index d33e62bd6153..14f99d8aa3f0 100644
> --- a/drivers/mmc/host/mmci_stm32_sdmmc.c
> +++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
> @@ -519,6 +519,7 @@ void sdmmc_variant_init(struct mmci_host *host)
>         struct sdmmc_dlyb *dlyb;
>
>         host->ops = &sdmmc_variant_ops;
> +       host->pwr_reg = readl_relaxed(host->base + MMCIPOWER);
>
>         base_dlyb = devm_of_iomap(mmc_dev(host->mmc), np, 1, NULL);
>         if (IS_ERR(base_dlyb))
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
