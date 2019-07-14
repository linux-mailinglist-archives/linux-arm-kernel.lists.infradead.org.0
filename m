Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649FB6800E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jul 2019 18:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8+k/tbRVJifDWyRoJRptuhHAYoww4/XbftIdzMxSeU=; b=fD5rp/od6pgKiu
	81ujhNeO0yggC8AMtWNLQ0fyRKG35tLmblLVqw02ln96xSJQVzOAGTmDEAClKvY2DDH5iGjgrbYOa
	94Ieyc8cd9Od9MS2bi4JW5ZM4oz2qZ6bURJTbAgeB6WahQdZ2GLivt1u7QqL43ox41LOdywbuFNEQ
	a4buUchy4RJ/mrAESh7dcMXURiGIjlmHgUgIj7BPyneejexZ2EllJQE4xPx2kfrnlN3OEBg0FiaWS
	9r0qnshD9UOCXL6L+Wr7fckOYLhTHc2O0/b+LUoU+Sz22O/cZFmej6ndgArXFnOHUbgktST4a8a5+
	OuVgWMFaC/hJLwh/55qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmh7A-00006W-GU; Sun, 14 Jul 2019 16:12:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmh6q-00005o-MY
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jul 2019 16:12:22 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9944E205F4;
 Sun, 14 Jul 2019 16:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563120738;
 bh=jQ0f569z2zUiXdImrPkJu/Fo2TGV+neywvRzlzhGgrA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PSjJbnPIDw7/YQwyII6FXeqylpSOLkQsP48YfC+L+kwj2Y1lAZ/A4dVA8M6yp6T9s
 biqbxmYYYElipW9E91i3xFmwHFfLR/jM5h2ElZY4bse0b9ahjAyzTRyIDgyqIVXRv6
 q2ZfqviNOJiqwbuInLSgljaqEt5bOy6K1GpVdf4s=
Date: Sun, 14 Jul 2019 17:11:41 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: adc: stm32: add analog
 switches supply control
Message-ID: <20190714171141.12fc2d1d@archlinux>
In-Reply-To: <1562148496-26789-2-git-send-email-fabrice.gasnier@st.com>
References: <1562148496-26789-1-git-send-email-fabrice.gasnier@st.com>
 <1562148496-26789-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_091220_756381_F1484EB9 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 3 Jul 2019 12:08:14 +0200
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> On stm32h7 and stm32mp1, the ADC inputs are multiplexed with analog
> switches which have reduced performances when their supply is below 2.7V
> (vdda by default). Booster or vdd can be used, to get full ADC
> performances.
> 
> Add documentation for:
> - optional booster-supply that can be used on stm32h7 and stm32mp1.
> - optional vdd-supply that can be used on stm32mp1 to supply analog
>   circuitry, selected by syscfg.
> Mark these as optional, since this is a trade-off between analog
> performance and power consumption.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Seems fine to me. Applied to the togreg branch of iio.git and pushed out
as testing for the autobuilders to play with it.

Thanks,

Jonathan

> ---
> Changes in v2:
> - Rework since: "Add missing vdda-supply to STM32 ADC" series.
> - Add booster-supply regulator description
> - typo: input switches
> ---
>  Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
> index 93a0bd2..4c0da8c 100644
> --- a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
> +++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
> @@ -47,6 +47,12 @@ Required properties:
>  Optional properties:
>  - A pinctrl state named "default" for each ADC channel may be defined to set
>    inX ADC pins in mode of operation for analog input on external pin.
> +- booster-supply: Phandle to the embedded booster regulator that can be used
> +  to supply ADC analog input switches on stm32h7 and stm32mp1.
> +- vdd-supply: Phandle to the vdd input voltage. It can be used to supply ADC
> +  analog input switches on stm32mp1.
> +- st,syscfg: Phandle to system configuration controller. It can be used to
> +  control the analog circuitry on stm32mp1.
>  
>  Contents of a stm32 adc child node:
>  -----------------------------------


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
