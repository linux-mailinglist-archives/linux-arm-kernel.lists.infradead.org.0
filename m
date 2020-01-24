Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C111485A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 14:10:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HgLBxaYtZxh+1Ot9OaLas+f9M80J6VEPP0iP+G5eN1w=; b=lPNaoJfzdhstIt
	2PS8yu9h8UXbziIDDA9c4NnWphrv8MAGpw+PpzxXpQwyHwPwuTsWb1J0eOri+UsvZiNTGu4IjFQv1
	P/yLFX/SNSXA7E5tiQyUvKyeGNtC4WpvfSJU6ioK37XhprAhzhIFMovcp+R93udIy55TsQZIIszn/
	MW5K+6sXUE6VOgF/u61tDH3spvF8aktyEmrDuHVSvn5/h77dEQbO4MbQH6qW43yzVPMqFUsqOhMOF
	IJdvqwODwYWsOJ0toYsST1te00FT+mfxYUtN5vCP1bOV+QFS8an9o6FNKfMNt2VmGaOjz6uJIHOFc
	0xMKUv6uQ6o3vXQhDP7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuyjL-0004rw-OI; Fri, 24 Jan 2020 13:10:35 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuyjA-0004qo-LF
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 13:10:26 +0000
Received: by mail-vs1-xe42.google.com with SMTP id g15so1173587vsf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 05:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FgJ5lZH4Mb1Tzk/p5bRIKhcE7A+Y7euEYLcO1OpV4S8=;
 b=gjmgAgx3XOChzsVHsvnM5jQSiMZ4Fjx3NBVYIq2/dT3CH9ql1U7aAdqnR14513DZFT
 YCH8qYlXsmEWt6b1r3I4OAxTH8Hk8zQT0770sSu4j1UryQK2excH9kVrqUJQL+Z1HVuK
 ZRxv2qonE2OXIHbhU41udwALpiap6wfaL6E6mUiUMX8FBzbhBbFqVUz1IoqdD941o+rp
 g96vbjsxuLg7zYqFDMRrMQNHFyolL5jDENiFUrPIEwhM5Nf/gGAkkwqtpERmRCxKTNFs
 CWPzTUUwNYmAnFwuZlb3CQgCKwG4t4dH3hX7laxkMyuEdwEesH6wFkZTpIMSXWIkXhHz
 dkig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FgJ5lZH4Mb1Tzk/p5bRIKhcE7A+Y7euEYLcO1OpV4S8=;
 b=g30Hu3K7gh1CNryIZ6x66EP3t1sR2S7jlip3FUxTD0ol7CzknhXpwJTaz840ZC4h2F
 m4ZLdDZ0pR5dJCbd1lOG/QzPJUbucbOl20Oxem4HPwFhl0A6xmQfjfu0Z6VetYrf6JlE
 HCkzWlxdz95HIC/3OSwmBJC3Q9+dOoL45IJi2pCSArxLtGZ24eamBK4cOr5ilZStpA7o
 QwZ2GdNVvgt7GU0LLL2k/6DEONx3YSP1M0V28WlIdaLSKHo+KXwwrL4B3er7Rit6AE0e
 udOzR3F+wyd/PzohWpQRO1VJQqPLGVE1nRu+hSkSXW/dGMqcCKbgKCKdT+7/7qdwAWlh
 mxAw==
X-Gm-Message-State: APjAAAWxJjj7OZFM9UgThDpsvhLn5In1fYsV3Lsn9TYNCEtv+7vfttPb
 JYaPOe+MHfVD+WkNEHDWN2jrFspBd0FZEZfdPGP7ckET
X-Google-Smtp-Source: APXvYqwTSyMti1aLrHxV4T1GbulSVX2llyodm3KWM+MmIFpyCh3UiqUM4MYq/lAoQMj2ylGIpLcWxal/hp0XVXJXDjA=
X-Received: by 2002:a67:de15:: with SMTP id q21mr2060825vsk.165.1579871422965; 
 Fri, 24 Jan 2020 05:10:22 -0800 (PST)
MIME-Version: 1.0
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <20200110134823.14882-4-ludovic.barre@st.com>
In-Reply-To: <20200110134823.14882-4-ludovic.barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 24 Jan 2020 14:09:46 +0100
Message-ID: <CAPDyKFpBgRGbRjOKHygknUMvGt9AKke+svoSG+So4B7hdZ8AMw@mail.gmail.com>
Subject: Re: [PATCH 3/9] mmc: mmci: add a reference at mmc_host_ops in mmci
 struct
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_051024_788752_831147D1 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 at 14:49, Ludovic Barre <ludovic.barre@st.com> wrote:
>
> This patch adds mmc_host_ops pointer in mmci struct.
> The variant init function may need to add a mmc_host_ops,
> for example to add the execute_tuning support if this feature
> is available.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci.c | 1 +
>  drivers/mmc/host/mmci.h | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index 7b13d66cbb21..00b473f57047 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -1923,6 +1923,7 @@ static int mmci_probe(struct amba_device *dev,
>
>         host = mmc_priv(mmc);
>         host->mmc = mmc;
> +       host->mmc_ops = &mmci_ops;

Nitpick:

Can you please also move the assignment "mmc->ops = &mmci_ops;" to
this place as well, as I think these belongs together.

>
>         /*
>          * Some variant (STM32) doesn't have opendrain bit, nevertheless
> diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
> index ea6a0b5779d4..55acc0971a44 100644
> --- a/drivers/mmc/host/mmci.h
> +++ b/drivers/mmc/host/mmci.h
> @@ -407,6 +407,7 @@ struct mmci_host {
>         u32                     mask1_reg;
>         u8                      vqmmc_enabled:1;
>         struct mmci_platform_data *plat;
> +       struct mmc_host_ops     *mmc_ops;
>         struct mmci_host_ops    *ops;
>         struct variant_data     *variant;
>         struct pinctrl          *pinctrl;
> --
> 2.17.1
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
