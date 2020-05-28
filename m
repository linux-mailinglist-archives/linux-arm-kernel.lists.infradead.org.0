Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1634E1E5CDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 12:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zk6F166v2m5C7LHzfvo8g74+ZeM8FglXnEbqbuZnS0k=; b=XKXK9UsHCQK6oe
	mg16+Clz1lsTFZbkAh/qGJZ61nkfYYx6zX0riqJQEittL6ezvJJ/H234rMlJw28HLNrNVyuePTyAh
	Pbf1EUpcqutRMkL65Y/XgzAT5rCt1+6X7+g6RVf6wzku2jAbqXvpCp1eaFK4LepIFLOL36dAk6bRg
	ol2u3/VY7EqVuDLDYDhzMkJc2kPVB9opa8WyzX/5J0Vd2n8SOW8xqI6+y24+14i9LFgdM/5dS4L2e
	vnF7r4f6621ZRTe5YtMnUNvW33TuM7pPQmYQYAsSXl9zt6kbcOlNTs33lsD+LoyS7hamQeae2gGe6
	ST3DjUQF6d2lDJMs6p8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFZi-0008OT-8N; Thu, 28 May 2020 10:15:46 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFZ0-0005km-Qi
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 10:15:04 +0000
Received: by mail-vk1-xa43.google.com with SMTP id f126so4038735vkb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 03:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aFpDBbrHEeT5xAI+qYBx9rcH60UUN2udEsNMOSyFQ7M=;
 b=RIkaLL9VqsXXK1DHiTafAsYpzTRa0aIHMBATB83QXKiWmXmFatDm6fRrBRPe76rlvT
 Dwr9cm3HrMFlp0Y6/cjmzbQb4qRKsuVWnVre09ea8X3RQh/lfPZx7WFtUREXt3Fmo31s
 GzD7atxAtpLEqIMLweIlNFnpeAIuHQf6Y91JhXIabRlTW8FQFd+tOSYDa8S2i70qslLo
 8y8PfetflXzmIhltE4AIzd3QqJjU84cJTuEl51YsH/FZMdvQWPV8V8BphrgQLkCoRjle
 tufz7VAftw3Yu2ULboRGcmfof7SCqWa3kHQlSyqdNL3dWofLne0S94MHuVyyDGhEEQUi
 /bWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aFpDBbrHEeT5xAI+qYBx9rcH60UUN2udEsNMOSyFQ7M=;
 b=KjXJ5zz1FFAl14wzDo+w5CzeXHntGcdoQFbn4zFxZFEDdHKH+00XBNBw7JZG5JzT3N
 aQffX39oJttjPq8vaqS+h3FDP/UnXpQq2vso6JhipcLEj1oF87orJx+w/KOYj7KRsMY8
 niP+V/twI9s6J/Pwb91iXfVptV31jKRPDmPnceLfJ0R1XjUVrn7vMwKws+Kt/lmPka5r
 0f3DI5NTOnfGVhCEWcphe7VB5nsdY/BiOWNUtBPkEM6u+Vfz4x1kUH3+G1fKSLaKyY2B
 HEHZRT+QGn6ivY3Mfv5THYQXcC/D5mKSnjhmu5EniV+PmoFXN4yLdjesvL/NoUXA7Cnl
 cCuA==
X-Gm-Message-State: AOAM533wr+YZw+WDw4Jbjwrzkp2gB3Elufx5ypr6A1q3md3szJQK2yCx
 Q+ERCK/7RdgJqO8V9B7LCCSgJMcDWt8KP4UNzU61MQ==
X-Google-Smtp-Source: ABdhPJz8enCJHhd0jfdJ+DBmNgKKBHckVDKWeCVKVJF6gzV7WcLLPi1FCACEAj6Hvns2GZzF5yYelsjvOCKbyjqzjTc=
X-Received: by 2002:a1f:4845:: with SMTP id v66mr1493594vka.43.1590660902066; 
 Thu, 28 May 2020 03:15:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200526155103.12514-1-ludovic.barre@st.com>
 <20200526155103.12514-2-ludovic.barre@st.com>
In-Reply-To: <20200526155103.12514-2-ludovic.barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 28 May 2020 12:14:25 +0200
Message-ID: <CAPDyKFosrfuZGHZhDyVmst67_-RT6G6R4h=M4qedTzdOiB+HaA@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: mmci_sdmmc: fix DMA API warning overlapping
 mappings
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_031502_900202_1F773147 
X-CRM114-Status: GOOD (  21.57  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, 26 May 2020 at 17:51, Ludovic Barre <ludovic.barre@st.com> wrote:
>
> Turning on CONFIG_DMA_API_DEBUG_SG results in the following warning:
> WARNING: CPU: 1 PID: 20 at kernel/dma/debug.c:500 add_dma_entry+0x16c/0x17c
> DMA-API: exceeded 7 overlapping mappings of cacheline 0x031d2645
> Modules linked in:
> CPU: 1 PID: 20 Comm: kworker/1:1 Not tainted 5.5.0-rc2-00021-gdeda30999c2b-dirty #49
> Hardware name: STM32 (Device Tree Support)
> Workqueue: events_freezable mmc_rescan
> [<c03138c0>] (unwind_backtrace) from [<c030d760>] (show_stack+0x10/0x14)
> [<c030d760>] (show_stack) from [<c0f2eb28>] (dump_stack+0xc0/0xd4)
> [<c0f2eb28>] (dump_stack) from [<c034a14c>] (__warn+0xd0/0xf8)
> [<c034a14c>] (__warn) from [<c034a530>] (warn_slowpath_fmt+0x94/0xb8)
> [<c034a530>] (warn_slowpath_fmt) from [<c03bca0c>] (add_dma_entry+0x16c/0x17c)
> [<c03bca0c>] (add_dma_entry) from [<c03bdf54>] (debug_dma_map_sg+0xe4/0x3d4)
> [<c03bdf54>] (debug_dma_map_sg) from [<c0d09244>] (sdmmc_idma_prep_data+0x94/0xf8)
> [<c0d09244>] (sdmmc_idma_prep_data) from [<c0d05a2c>] (mmci_prep_data+0x2c/0xb0)
> [<c0d05a2c>] (mmci_prep_data) from [<c0d073ec>] (mmci_start_data+0x134/0x2f0)
> [<c0d073ec>] (mmci_start_data) from [<c0d078d0>] (mmci_request+0xe8/0x154)
> [<c0d078d0>] (mmci_request) from [<c0cecb44>] (mmc_start_request+0x94/0xbc)
>
> DMA api debug brings to light leaking dma-mappings, dma_map_sg and
> dma_unmap_sg are not correctly balanced.
>
> If a request is prepared, the dma_map/unmap are done in asynchronous
> call pre_req (prep_data) and post_req (unprep_data). In this case
> the dma-mapping is right balanced.
>
> But if the request was not prepared, the data->host_cookie is
> define to zero and the dma_map/unmap must be done in the request.
> The dma_map is called by mmci_dma_start (prep_data), but there is
> no dma_unmap in this case.
>
> This patch adds dma_unmap_sg when the dma is finalized and
> the data cookie is zero (request not prepared).
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>

Applied for next by adding a fixes tag and a stable tag, thanks!

Fixes: 46b723dd867d ("mmc: mmci: add stm32 sdmmc variant")

Kind regards
Uffe


> ---
>  drivers/mmc/host/mmci_stm32_sdmmc.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
> index 14f99d8aa3f0..2965b1c062e1 100644
> --- a/drivers/mmc/host/mmci_stm32_sdmmc.c
> +++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
> @@ -188,6 +188,9 @@ static int sdmmc_idma_start(struct mmci_host *host, unsigned int *datactrl)
>  static void sdmmc_idma_finalize(struct mmci_host *host, struct mmc_data *data)
>  {
>         writel_relaxed(0, host->base + MMCI_STM32_IDMACTRLR);
> +
> +       if (!data->host_cookie)
> +               sdmmc_idma_unprep_data(host, data, 0);
>  }
>
>  static void mmci_sdmmc_set_clkreg(struct mmci_host *host, unsigned int desired)
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
