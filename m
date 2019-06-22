Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA2E4F4B9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 11:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FN/aVLGSnnddOgL5/i5tI0pNZ2VRHlg9DNS76gXb1Fw=; b=LjJiy8deFV5moP
	DwZ6X1sHycCj3xi2z4XwNvLe7RWYVLMWB+MQwttkHUa3pCfFQ99DrrfKcWCBhCwrz8ituAmgUGsHD
	iZkznw1FaKpaQV5eo3hb5xiUfnSfK14jiV/g3v6oioJEf2TDHCcKLFWbpk4voAlohRwAMmIgWItJV
	PJCvroZNjH4dILqxyzhxlrcO7MwFowRURis+oiFD+BE2moLcliTeXsinrBgExD5unYxEG/9JXRneV
	SgyH0iBrYYmLiu+UHG6YE7UMFOEnyKgp0urjhtx9DG2mKKdHowg+WU7w+VTElKysao8HHu6KBpy4J
	JFNYqeT31Ah37qJNT5SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hecOz-0003g1-Ff; Sat, 22 Jun 2019 09:33:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hecOX-0003Lu-T8
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 09:33:15 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FF7B2075E;
 Sat, 22 Jun 2019 09:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561195993;
 bh=I0NwKMdM7grA72wdghATYuLC9S2scyeIRrURUSdnpWc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fjYvZv6SCiSgFIbOvVkdSfPQMb3qP+hXn19RP8kVFsA+lDN0AXzmkMQhD7MlJOTjg
 ZkYP+qzVkxjnbrhWrqB/kjGwGGIn/h/kadTwkoc2V+ouCWMCHhhbEr73mbQ7KKrY1a
 yWlr8ul5/WMbgUn74wcqKyiNNfBqiaCvoi1GYyJc=
Date: Sat, 22 Jun 2019 10:33:07 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH 5/5] iio: adc: stm32-dfsdm: add comment for 16 bits record
Message-ID: <20190622103307.50ba052b@archlinux>
In-Reply-To: <1560949431-22948-6-git-send-email-olivier.moysan@st.com>
References: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
 <1560949431-22948-6-git-send-email-olivier.moysan@st.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_023314_004209_2B9529F4 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 15:03:51 +0200
Olivier Moysan <olivier.moysan@st.com> wrote:

> Add a comment on DMA configuration for 16 bits record.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Applied.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/stm32-dfsdm-adc.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index d855a605eab6..ee1e0569d0e1 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -918,6 +918,11 @@ static void stm32_dfsdm_dma_buffer_done(void *data)
>  static int stm32_dfsdm_adc_dma_start(struct iio_dev *indio_dev)
>  {
>  	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
> +	/*
> +	 * The DFSDM supports half-word transfers. However, for 16 bits record,
> +	 * 4 bytes buswidth is kept, to avoid losing samples LSBs when left
> +	 * shift is required.
> +	 */
>  	struct dma_slave_config config = {
>  		.src_addr = (dma_addr_t)adc->dfsdm->phys_base,
>  		.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
