Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E116E1985CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 22:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5UbbFKDqnuZu3rWKMltrlTVBVC7281lQPcnWXAfgSE=; b=i7DIMvZLfL/x/6
	48fndm0xfXCPg+MzazDrxHVTeB5RVTO/qzgR9jXdBa+PoXKxsIOIFwbSqfZ+88TdGUes0aWWrY1mY
	C0m9i9764U/VHx2hp+6auLDQJiU+kFsY++oXJTWFWuKQvQ+HpyeP/UjKzLDj6cXOZqJrQDbJAWJ5z
	F96iIsIKu8XBCuGQ2xVSangKVm/l6fK7VPAQmJSG0BIF6gRO+r2aGUNTNPTG3qV3bslcHMNcu2PLs
	uqNh+TKFZ24ReY4RiztAxk9shn+xauOtYPe6e52d16hLN2HAX6eudSuNyEdxi9x0923zpLPqIVePv
	jdRwkwgQyiE3edpoCyug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ1IX-0001WR-9E; Mon, 30 Mar 2020 20:46:17 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ1IN-0001W6-2J
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 20:46:08 +0000
Received: by mail-il1-f193.google.com with SMTP id p13so17237451ilp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 13:46:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BAHD/YUBzhydWwE/iCZpMojP/quu8HcEwcDTrZ8h834=;
 b=DLh+nxBEE5pGVDQFgojnE3OYHLPHltHCb7QQCYEQUhhOw87fGfxAHIWHRDKuYDXVNr
 1OkVOU8hPQf9Pb0am4GQ0FVmbIbWPSdirPwQRbfjq6+YzftOwT04ofhREr/HXPtvnNtI
 Ix1it1pKXbpF+phKq89hPk0B0QC0f7BlL18yZ3IOrJpI5m4JNZ3Oxz4+svzDIIpmd8W2
 ryCmlDfNEL+h3C8xoTr75z+JqqhYMB2BnYXIIRKtCzvxz81i12ZEW4est6HM1sAHc1Dv
 SMZ5JI+ML78Mh5fpU88uyQ2EIBq5Vx5Gza7u4ucJtYMPFlg5t2fVBo9b6P3Jg1/67mcl
 qGVA==
X-Gm-Message-State: ANhLgQ0LLceBQEWSlIcKfAXqyTM57jJTjs2JxZ+0s5IagQK+MnfNiCIk
 pWDq0UNQgxuJjqd2blAxIQ==
X-Google-Smtp-Source: ADFU+vvlE38IaEgB1E1VNG9brIWJQdKajCluZzFENMztoPQXJvNW6huFEyZfTsPzQyXIopjuR2Ju+g==
X-Received: by 2002:a92:6501:: with SMTP id z1mr13264790ilb.235.1585601166355; 
 Mon, 30 Mar 2020 13:46:06 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id k8sm5160637ilk.85.2020.03.30.13.46.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 13:46:05 -0700 (PDT)
Received: (nullmailer pid 13031 invoked by uid 1000);
 Mon, 30 Mar 2020 20:46:04 -0000
Date: Mon, 30 Mar 2020 14:46:04 -0600
From: Rob Herring <robh@kernel.org>
To: Igor Opaniuk <igor.opaniuk@gmail.com>
Subject: Re: [RFC PATCH v1 1/5] ARM: dts: imx6: Dual license adding MIT
Message-ID: <20200330204604.GA11575@bogus>
References: <20200317101947.27250-1-igor.opaniuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317101947.27250-1-igor.opaniuk@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_134607_111121_2AE0A09F 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 12:19:43PM +0200, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Dual license files adding MIT license, which will permit to re-use
> device trees in other non-GPL OSS projects.

Are you the only author on these files? If not, you don't have rights to 
do this.

> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> ---
> 
>  arch/arm/boot/dts/imx6dl-pinfunc.h | 2 +-
>  arch/arm/boot/dts/imx6dl.dtsi      | 2 +-
>  arch/arm/boot/dts/imx6qdl.dtsi     | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6dl-pinfunc.h b/arch/arm/boot/dts/imx6dl-pinfunc.h
> index 9d88d09f9bf6..960d300ea9ba 100644
> --- a/arch/arm/boot/dts/imx6dl-pinfunc.h
> +++ b/arch/arm/boot/dts/imx6dl-pinfunc.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-License-Identifier: GPL-2.0-only OR MIT */
>  /*
>   * Copyright 2013 Freescale Semiconductor, Inc.
>   */
> diff --git a/arch/arm/boot/dts/imx6dl.dtsi b/arch/arm/boot/dts/imx6dl.dtsi
> index 008312ee0c31..77e946b3d012 100644
> --- a/arch/arm/boot/dts/imx6dl.dtsi
> +++ b/arch/arm/boot/dts/imx6dl.dtsi
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>  //
>  // Copyright 2013 Freescale Semiconductor, Inc.
>  
> diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
> index e6b4b8525f98..75d746952932 100644
> --- a/arch/arm/boot/dts/imx6qdl.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl.dtsi
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0+
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  //
>  // Copyright 2011 Freescale Semiconductor, Inc.
>  // Copyright 2011 Linaro Ltd.
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
