Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C8C4F4A9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 11:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wr/mO4J0ZRZmRy9DkyLL7IriDpcWOdJaXOBgHgnx/cw=; b=SxT+k0hs3Vdn8L
	1uWaEha2pikwPljdRNVIyKUWNzttr4SNgyIyyLhkrh+0VfnCtZEMgg6bN23OZfQ46tZtvhEG/sEKq
	B+wB5y5Buurozn8/fGYod2ZZYLSPkoWSvx/d71F4/+NZTypCHJYfDyeQqh9Qq570PcuOeLR8pqATm
	LlA+1ananQiugiKa8eOQFEcgYVS5B2MrrjotYsNssbSZNp5+hil4AdGpzk9QSt2N8q4iW6HVDKQKu
	xkLzkDC/icaik0gkqqOt6nArdmq/pILbLWhiqTShpd2r5MLhk36nnFW9ZHZia2EO6d/8SuHPeuyyW
	qQpHgak57sFtdCn+dtAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hecDH-0007zG-Ls; Sat, 22 Jun 2019 09:21:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hecD6-0007yr-5t
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 09:21:25 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F86E205F4;
 Sat, 22 Jun 2019 09:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561195283;
 bh=wkdTMticKHUz+cqAK4HXYfHz22t3/vjmhA1xKNHdB30=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=2b1Fs1wv3cLZcM3ddy5Imq5aX1oUyn4BskTADmRj3/zN0VqBAh8p4ZDaOdh4oivQ6
 Ef9+oE8oBzYGvMBa40/aB4e/iqxJ2ICfzNyPVnKuBxjc2YiNqy9uNgf5FH9Y1Oxd7P
 EytmmecSLYh0JNtWxL5ybfYBrpICRGVvz0MMTeoI=
Date: Sat, 22 Jun 2019 10:21:17 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH 2/5] iio: adc: stm32-dfsdm: fix data type
Message-ID: <20190622102117.5289e1e2@archlinux>
In-Reply-To: <1560949431-22948-3-git-send-email-olivier.moysan@st.com>
References: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
 <1560949431-22948-3-git-send-email-olivier.moysan@st.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_022124_244499_6D067377 
X-CRM114-Status: GOOD (  14.76  )
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

On Wed, 19 Jun 2019 15:03:48 +0200
Olivier Moysan <olivier.moysan@st.com> wrote:

> Fix the data type as DFSDM raw output is complements 2,
> 24bits left aligned in a 32-bit register.
> This change does not affect AUDIO path
> - Set data as signed for IIO (as for AUDIO)
> - Set 8 bit right shift for IIO.
> The 8 LSBs bits of data contains channel info and are masked.
> 
> Fixes: e2e6771c6462 ("IIO: ADC: add STM32 DFSDM sigma delta ADC support")
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to play with them.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/stm32-dfsdm-adc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index cb596f104919..6b90a40882f2 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -1365,11 +1365,11 @@ static int stm32_dfsdm_adc_chan_init_one(struct iio_dev *indio_dev,
>  					BIT(IIO_CHAN_INFO_SAMP_FREQ);
>  
>  	if (adc->dev_data->type == DFSDM_AUDIO) {
> -		ch->scan_type.sign = 's';
>  		ch->ext_info = dfsdm_adc_audio_ext_info;
>  	} else {
> -		ch->scan_type.sign = 'u';
> +		ch->scan_type.shift = 8;
>  	}
> +	ch->scan_type.sign = 's';
>  	ch->scan_type.realbits = 24;
>  	ch->scan_type.storagebits = 32;
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
