Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B3E1FFFC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 03:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcKDXkQu2nCfSGa70XoMBb+KH/V1ltxXIAR53RHUtn8=; b=HgCjSgOX+Iw6JN
	Fk4yay2XqeO+325+RSgox2BjCL1xR56c5a2oqbGaDoG+wuTZmIicylHVc6Fwmgo7TKUP/UFbdXiBX
	H2R3cXr7yPLAajActLac6w/p+Vqvf14dhDEza7wPeA4VMvJeAQ3FPpl6mZ/zfterHrqDJKOImjMLg
	/4omreLSfj6TxWCqY/VBsuORC8/J3ces+i+3LHpUGePaO6I9oRVOa9jtKgQQvgMlO7CSuvJatsWna
	WZwNIK6a7OwKkq1ZEKL4wnnmTyQTwkpGtMvDq5M8x4GRsHVtsBvL26BoTV3r9IQp5gF2PeZWzYCx6
	f2PVFdZP6OXqpSRWG6IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm5z6-0002x7-26; Fri, 19 Jun 2020 01:38:24 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm5ys-0002wF-Sc
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 01:38:12 +0000
Received: by mail-il1-f195.google.com with SMTP id 9so7835928ilg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 18:38:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ipp8uVtoQzp7J8CQ83R/TtPzLH+p8MFeBwT9doR7Bw8=;
 b=KCNiTGhrSx9rl3gL10eymLMqQWkYiZrHUiwk2kbibfT7hqJbJjmOMIYixSItJPCBCn
 y5mVLsK6YwRjYXTTOJNJO+z3fkHBMt9ACn4HQVZcKVQV09Z6bQVv3tr5CnxTQVDiCHuL
 LT6BaysWdj7GB2t2lpBiiW++K95hUwTy6c4juedeASBQ5zXeiU36cb4S6KWLeyWMELuh
 BtxXxoOuCAOcc0iKPjsGz+xzDmPqHXGQ18i/Amz1763T6RMEqF83+04Z7AOnXmgEH8Cq
 rQtzgrstbOInR5w0pBu77DSA7yOkeUef6wOLV2D1u4Lfsn2DAwWjx9l5o8yiugCvxmA1
 RNnQ==
X-Gm-Message-State: AOAM532HhVkqZkFgnMV4FfNj3iNig2nqTODmMJIg1dNkH0RWLcQO/CPG
 rMfvRNIAhLEmm9nlq8qy2Ag=
X-Google-Smtp-Source: ABdhPJyMasH+ZMphKT3AZHNSh9RoTjEPaUpLIsSQB9A+7bEUSCOiWkJq+p4UzJxMEzOYsMS9CZkwxw==
X-Received: by 2002:a92:5b15:: with SMTP id p21mr1456935ilb.22.1592530689102; 
 Thu, 18 Jun 2020 18:38:09 -0700 (PDT)
Received: from localhost ([2601:647:5b00:1161:a4cc:eef9:fbc0:2781])
 by smtp.gmail.com with ESMTPSA id a187sm705318iog.2.2020.06.18.18.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 18:38:08 -0700 (PDT)
Date: Thu, 18 Jun 2020 18:38:07 -0700
From: Moritz Fischer <mdf@kernel.org>
To: Luca Ceresoli <luca@lucaceresoli.net>
Subject: Re: [PATCH 2/5] fpga manager: xilinx-spi: valid for the 7 Series too
Message-ID: <20200619013807.GB3685@epycbox.lan>
References: <20200611211144.9421-1-luca@lucaceresoli.net>
 <20200611211144.9421-2-luca@lucaceresoli.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611211144.9421-2-luca@lucaceresoli.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_183810_920539_B0D8B100 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [moritz.fischer.private[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-fpga@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 Anatolij Gustschin <agust@denx.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 11:11:41PM +0200, Luca Ceresoli wrote:
> The Xilinx 7-series uses the same protocol, mention that.
> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> ---
>  drivers/fpga/xilinx-spi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/fpga/xilinx-spi.c b/drivers/fpga/xilinx-spi.c
> index 272ee0c22822..79106626c3f8 100644
> --- a/drivers/fpga/xilinx-spi.c
> +++ b/drivers/fpga/xilinx-spi.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
> - * Xilinx Spartan6 Slave Serial SPI Driver
> + * Xilinx Spartan6 and 7 Series Slave Serial SPI Driver
>   *
>   * Copyright (C) 2017 DENX Software Engineering
>   *
> -- 
> 2.27.0
> 

Applied to for-next,

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
