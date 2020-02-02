Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F221E14FDD2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 16:34:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eo69uwfAEDCN9nKix9E5andS70ii+sUNCKPFevofL48=; b=XK1/DFEin3y6lj
	hQInKV3E5rX7faR4qFsYK6pip/8VI89TznvNVPkzp7loIpcU84sINgUzKcl+aElDc008NACTb6Snl
	S1cvI1Le1iXjh9Ebsk9kcvBTe/2xb0tPNABSnMSsbc7SL0+Q5/0wBj3D4t8DxfKfDA+uylK99fLHO
	5BNyBNghQYXBRg1+q2v4Osz6pjurTx4wPUib30LckKKPwwqyqFQky0zB6uBfLof4kvUCe2BI9hNf1
	LvcIHeMAOf4WWtqxg7Kg1HPxB4UxR4c1jY1VMbcDZYj2/rQ6qzlBrduFLkmyJtKKTnzhlYDtX5SLU
	XoLiuwMp9A7xqTPIcEyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyHG9-0002iM-Un; Sun, 02 Feb 2020 15:34:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyHG4-0002hw-CI
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 15:34:01 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB2DB20643;
 Sun,  2 Feb 2020 15:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580657639;
 bh=NQdIkCaHC++sdUz8EJtM4E6FaGmhFs3epc/t8aDK9gE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=u/IMqBLoMM+bIHEdv7B/M0xS8LMvVgqbwg5T3uMqLP/gV7D6krxtIepaW7pSKfkHj
 LDZFqStqTQOJZ6fzM75yGQEfK1xax25a/hc7KTOb43dRXo0KVtwiEnMBKhAW/KG11Z
 6k/3a/nHXjwoWQiDn6KTwEly4ElCCfTKoemRjoNs=
Date: Sun, 2 Feb 2020 15:33:54 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: adc: stm32-adc: fix runtime autosuspend delay when
 slow polling
Message-ID: <20200202153354.3dae5863@archlinux>
In-Reply-To: <1579854369-7972-1-git-send-email-fabrice.gasnier@st.com>
References: <1579854369-7972-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_073400_460305_F87C989F 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lars@metafoo.de, olivier.moysan@st.com, alexandre.torgue@st.com,
 linux-pm@vger.kernel.org, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 Jan 2020 09:26:09 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> When the ADC is runtime suspended and starting a conversion, the stm32-adc
> driver calls pm_runtime_get_sync() that gets cascaded to the parent
> (e.g. runtime resume of stm32-adc-core driver). This also kicks the
> autosuspend delay (e.g. 2s) of the parent.
> Once the ADC is active, calling pm_runtime_get_sync() again (upon a new
> capture) won't kick the autosuspend delay for the parent (stm32-adc-core
> driver) as already active.
> 
> Currently, this makes the stm32-adc-core driver go in suspend state
> every 2s when doing slow polling. As an example, doing a capture, e.g.
> cat in_voltageY_raw at a 0.2s rate, the auto suspend delay for the parent
> isn't refreshed. Once it expires, the parent immediately falls into
> runtime suspended state, in between two captures, as soon as the child
> driver falls into runtime suspend state:
> - e.g. after 2s, + child calls pm_runtime_put_autosuspend() + 100ms
>   autosuspend delay of the child.
> - stm32-adc-core switches off regulators, clocks and so on.
> - They get switched on back again 100ms later in this example (at 2.2s).
> 
> So, add an explicit call to pm_runtime_mark_last_busy() for the parent
> driver (stm32-adc-core), synchronously with the child driver (stm32-adc),
> to avoid this.
> 
> Fixes: 9bdbb1139ca1 ("iio: adc: stm32-adc: add power management support")
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Hi Fabrice,

Whilst this will clearly work, it seems like a somewhat adhoc solution.
Power management specialists (cc'd):  Is this what we should be doing, or
have Fabrice and I both missed something that we should be doing here?

Thanks,

Jonathan

> ---
>  drivers/iio/adc/stm32-adc.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
> index 3b291d7..670157e 100644
> --- a/drivers/iio/adc/stm32-adc.c
> +++ b/drivers/iio/adc/stm32-adc.c
> @@ -1157,6 +1157,7 @@ static int stm32_adc_single_conv(struct iio_dev *indio_dev,
>  
>  	stm32_adc_conv_irq_disable(adc);
>  
> +	pm_runtime_mark_last_busy(dev->parent);
>  	pm_runtime_mark_last_busy(dev);
>  	pm_runtime_put_autosuspend(dev);
>  
> @@ -1278,6 +1279,7 @@ static int stm32_adc_update_scan_mode(struct iio_dev *indio_dev,
>  	adc->num_conv = bitmap_weight(scan_mask, indio_dev->masklength);
>  
>  	ret = stm32_adc_conf_scan_seq(indio_dev, scan_mask);
> +	pm_runtime_mark_last_busy(dev->parent);
>  	pm_runtime_mark_last_busy(dev);
>  	pm_runtime_put_autosuspend(dev);
>  
> @@ -1329,6 +1331,7 @@ static int stm32_adc_debugfs_reg_access(struct iio_dev *indio_dev,
>  	else
>  		*readval = stm32_adc_readl(adc, reg);
>  
> +	pm_runtime_mark_last_busy(dev->parent);
>  	pm_runtime_mark_last_busy(dev);
>  	pm_runtime_put_autosuspend(dev);
>  
> @@ -1451,6 +1454,7 @@ static int __stm32_adc_buffer_postenable(struct iio_dev *indio_dev)
>  err_clr_trig:
>  	stm32_adc_set_trig(indio_dev, NULL);
>  err_pm_put:
> +	pm_runtime_mark_last_busy(dev->parent);
>  	pm_runtime_mark_last_busy(dev);
>  	pm_runtime_put_autosuspend(dev);
>  
> @@ -1487,6 +1491,7 @@ static void __stm32_adc_buffer_predisable(struct iio_dev *indio_dev)
>  	if (stm32_adc_set_trig(indio_dev, NULL))
>  		dev_err(&indio_dev->dev, "Can't clear trigger\n");
>  
> +	pm_runtime_mark_last_busy(dev->parent);
>  	pm_runtime_mark_last_busy(dev);
>  	pm_runtime_put_autosuspend(dev);
>  }
> @@ -1874,6 +1879,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  		goto err_hw_stop;
>  	}
>  
> +	pm_runtime_mark_last_busy(dev->parent);
>  	pm_runtime_mark_last_busy(dev);
>  	pm_runtime_put_autosuspend(dev);
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
