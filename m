Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE14C164221
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:29:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XB7Q4J0I4ig0x0czaTbVMZjSi/09mNCdBKdLSWIaNwg=; b=GvCMLJTe5VZP9A
	O4IYaAMf6Gw0jbsWqzkYpYbXUmcR12CS1wHO8b/dGyGAL5eI8u5DAk2Qjx0Pbsl0eT/Y7DTgekPed
	zF6qAJeQH7EiYgvni8hdHF1B5VcHh4hQ4VzGxbPcwU+926jEPOAsv+HX317LDPDotzQkpLBB3sTJ6
	h/IkwVkY5UdhhgpAPFHL3cdk+lvmAfijm+ak856DBgNVsaeFCW/q2e3SrQkYz8ZUr9acujp/8FIgT
	XPBRJBAPRLrAyZT8htdG6HB5IzIQGijuO3D3D1CfOXc4QL7YHCXnMGyrqqX/hbxgDjxUeh1q2lYFf
	47yf79ODYKSlI6o6/Vqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Mbs-00009Q-UH; Wed, 19 Feb 2020 10:29:40 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Mbh-00007v-Mw
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:29:31 +0000
Received: by mail-ua1-x941.google.com with SMTP id a33so8623221uad.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 02:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+JMXibqU7pdFIdII16L/Y2AeVX/CI11svigC46gf8uU=;
 b=zzniWRwZoycxdKWo3bTAbQWaVxpy5CQGzW+0nidtIr77EZWl/cCZx19vDOZhjWvZRe
 p4t9rQ1ONJU2pZbwkIfSnLHNBeSyGflqKTLg2X+xxPUp2/fP9F7zjv+4f2KkizcjUDH7
 84nBCzOIfyHlHBLIQRPB0LIaTvdf4cW1Ojn5641hnjyoRgjm2haN6JfhhoBmIGU4WHcS
 gGuh6IZhW6sAQc0Csy727H0aAwHSk1cEjCFo3UdvwUH/ldH71Cm8rueaexzFTRgEjASO
 LLuaDLyLelIt7eXTO+LLbenQ/4CZCDhNSkkA3ZlWI9T68Xhm5+3UiGC+3QHkZyUwVhHZ
 jkTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+JMXibqU7pdFIdII16L/Y2AeVX/CI11svigC46gf8uU=;
 b=KsFLPumB9eylMXNcj46P5/Y+mtCBHM2C3XTRz7/H4oaKyCSVfq5/ORxPPbj+IViU7C
 yfvRzDY+WRw8F/5/wF0Y7ogcisN7Vpxow8Qg5eH5UivAZyGr5T1M9cS4xyTH9lNWDCYx
 mALSHmfHsaVDfaZ8tbSiyS1og+xJQZnsAo9phZCFC60TxoCGaTwiR3nUQf3XIRnETA1r
 iVfSeexBqnGMDPlw9AK/xxUNh9R4aI+l9NAZ1vxxdY+7pEEU95MCf5h3itvfdKNN/7yn
 T9OJZtSb1fMmcwCJpVSC8ywWQldyDyfnub1L7ly/xl/1iKw1G4YD7JDCUDbhPaGfQSAr
 wvpA==
X-Gm-Message-State: APjAAAVM5vmvpklKk3qokWsGMgD4G92v9Ri9t9zOwfCu1W0cFp9Yau/b
 r+ZBcpiI61FOtH5Pr2U2VLrOqmME+5V/3T6A1hZ76w==
X-Google-Smtp-Source: APXvYqzltx18jQ/GN6j6y5PblztBh+anBxCtM5CqYz0EqlghKAvb6lvUng+oaF2oUU44zSaQHTDNiUkIX+LzpAamcAo=
X-Received: by 2002:a9f:3046:: with SMTP id i6mr12953039uab.15.1582108167823; 
 Wed, 19 Feb 2020 02:29:27 -0800 (PST)
MIME-Version: 1.0
References: <20200128090636.13689-1-ludovic.barre@st.com>
In-Reply-To: <20200128090636.13689-1-ludovic.barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 19 Feb 2020 11:28:51 +0100
Message-ID: <CAPDyKFr+7SvRasPPjFDA2kwG0ERS-Qp3FGbVbRGLrscz5N=L2g@mail.gmail.com>
Subject: Re: [PATCH V2 0/9] mmc: mmci: sdmmc: add sdr104 support
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_022929_781243_DCD98776 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, 28 Jan 2020 at 10:06, Ludovic Barre <ludovic.barre@st.com> wrote:
>
> To support the sdr104 mode, sdmmc variant needs:
> -Hardware delay block support for sdmmc variant
>  with tuning procedure
> -Voltage switch callbacks
> -sdmmc revision 2.0
>
> V2:
> -regroup host->mmc_ops & mmc->ops assignment
> -add timeout define
> -rename prep_volt_switch to pre_sig_volt_switch
> -rename volt_switch to post_sig_volt_switch
> -add 'why' comment for "mmc: mmci: add volt_switch callbacks"
>
> Ludovic Barre (9):
>   mmc: mmci: sdmmc: replace sg_dma_xxx macros
>   mmc: mmci: sdmmc: rename sdmmc_priv struct to sdmmc_idma
>   mmc: mmci: add a reference at mmc_host_ops in mmci struct
>   mmc: mmci: add private pointer for variant
>   dt-bindings: mmc: mmci: add delay block base register for sdmmc
>   mmc: mmci: sdmmc: add execute tuning with delay block
>   mmc: mmci: add volt_switch callbacks
>   mmc: mmci: sdmmc: add voltage switch functions
>   mmc: mmci: add sdmmc variant revision 2.0
>
>  .../devicetree/bindings/mmc/mmci.txt          |   2 +
>  drivers/mmc/host/mmci.c                       |  42 +++-
>  drivers/mmc/host/mmci.h                       |   8 +
>  drivers/mmc/host/mmci_stm32_sdmmc.c           | 204 +++++++++++++++++-
>  4 files changed, 248 insertions(+), 8 deletions(-)
>
> --
> 2.17.1
>

Applied for next, thanks!

I took the liberty to do minor amendments to some of the changelogs,
but in particular I have change some of prefixes for the commit
message headers into "mmc: mmci_sdmmc:".

Please tell, if there is anything that you want me to update.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
