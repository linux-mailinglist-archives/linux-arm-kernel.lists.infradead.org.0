Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863E8E63E2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 16:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbibofWRaTENLd4USGQy5Vtjfg9HUZE9/OxKULFW+zs=; b=ERrt6zUbQPm1Nw
	6poUNnaSyjYfJtPVtqfHwF05IRlUpshJW3EiAE2ODJvJhUctsYNyKgVjCUc/geJ0+At1T7xiSVuTR
	i+vaVyHNjxxXljzO3bMxMCzXnp59Vxzmf+b9sL0l49Jf6al9NHlgk2xlaSEWdumwt+1ZcJnkWDL00
	F8JDoq9HA2tkrHbKhS0x6pLqzDlToFsKIGwDUY67clTKIlMu56X73DzPUzHim+LJMaSRUbkodm0EF
	bHX8KiD8G/5mqAdgJ3iOJ6wnAg0x1wK9eF/ngiLcjC6zu2TUVZUTLjncwhPjdg8L+qXPd7ZmmbNED
	Ee02nt/DvlMkrqPO5+oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOkwQ-0008Io-1G; Sun, 27 Oct 2019 15:58:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOkwF-0008IR-23
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 15:58:44 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FDA620873;
 Sun, 27 Oct 2019 15:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572191921;
 bh=66tHgdFuZFgwvfMgb7+hbPciCMsrO5SrqRnt9hjmZ1k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=wf+tMYqVxXsb/cfDFmgvgPoKwpWL1D6/od446FGICrGRm0LTENlOwSfb+bZP39CaC
 L+YBLArt/NSlK1PMzP08+dVPdbKM/wQGsNZDiPtLZdzh9ekovGl9V7uOS2AHNiLiTw
 ngMYY9lTMV0XSL+UNnmJgDb9uQH75z1845RCRLyA=
Date: Sun, 27 Oct 2019 15:58:36 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: adc: stm32-adc: fix stopping dma
Message-ID: <20191027155836.2e3d8ebf@archlinux>
In-Reply-To: <1572015860-8931-1-git-send-email-fabrice.gasnier@st.com>
References: <1572015860-8931-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_085843_124255_41BBF2C2 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 25 Oct 2019 17:04:20 +0200
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> There maybe a race when using dmaengine_terminate_all(). The predisable
> routine may call iio_triggered_buffer_predisable() prior to a pending DMA
> callback.
> Adopt dmaengine_terminate_sync() to ensure there's no pending DMA request
> before calling iio_triggered_buffer_predisable().
> 
> Fixes: 2763ea0585c9 ("iio: adc: stm32: add optional dma support")
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Applied to the fixes-togreg branch of iio.git and marked for stable.
I'm guessing this is not something that has been observed in practice, but
seems like a safe fix anyway to backport.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/stm32-adc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
> index 663f8a5..73aee59 100644
> --- a/drivers/iio/adc/stm32-adc.c
> +++ b/drivers/iio/adc/stm32-adc.c
> @@ -1399,7 +1399,7 @@ static int stm32_adc_dma_start(struct iio_dev *indio_dev)
>  	cookie = dmaengine_submit(desc);
>  	ret = dma_submit_error(cookie);
>  	if (ret) {
> -		dmaengine_terminate_all(adc->dma_chan);
> +		dmaengine_terminate_sync(adc->dma_chan);
>  		return ret;
>  	}
>  
> @@ -1477,7 +1477,7 @@ static void __stm32_adc_buffer_predisable(struct iio_dev *indio_dev)
>  		stm32_adc_conv_irq_disable(adc);
>  
>  	if (adc->dma_chan)
> -		dmaengine_terminate_all(adc->dma_chan);
> +		dmaengine_terminate_sync(adc->dma_chan);
>  
>  	if (stm32_adc_set_trig(indio_dev, NULL))
>  		dev_err(&indio_dev->dev, "Can't clear trigger\n");


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
