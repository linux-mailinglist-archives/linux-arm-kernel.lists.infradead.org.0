Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B601616AE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yTEBFQcrScUTSwUkeUJN91cohI6uX0VPX/9TE0Rb5uc=; b=Om1JuN9lw49DE2
	BW+iNVXLBw+8EI7rjOE9Q3sXfzX7sSgkoiZO7q6wzooxEEpHqfBOMZWB8HiRdfTVBUrf707Rm38oL
	Cu1ToDJ6GqXK81fb1jmXyoxKRMUhmfnJYACT/CP6zBXlqv9tLQiq+jn3wFLhqe8qbWxlDS52HfvFH
	2zoPD6BdZUCB3TvxkPWRJjHmMpARu13XegFIWoD/FAbp3i2DYocHhEH2QOEvp6fpG2l6/E+Mq5avS
	xbUwwyvqtHmNcz+y7pFkZju0a8W8nKD0JlBKebgT2L3x0UJ/6EH0UYNUXOAhPk8jxxLbi2+Ofjkgp
	peFLa2dNT5c8k7iC2gAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5VI-0004UA-6t; Tue, 07 May 2019 19:11:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5VC-0004TU-37
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:11:47 +0000
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 453BB2087F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 May 2019 19:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557256304;
 bh=wxpXfzeg30yJtwBVcZ2RBcfKvzzxvZGj2gBh+TKdTX4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OCR6dZOs4P+GND4bvJzaCsljYD/F0uho8FZ+4Fq8u6UGz34YDf/GyQ85cvSrFw17l
 5kbbMsjJzKhNs8UaD6bvxK+WAORzsBtb5k2eQPp5S7m/NRjFIbaNSAXWd2a3vGKnji
 KDdj66SH73CtwcNwFFyE2DI4h4jgcNw2dIVmShRU=
Received: by mail-ed1-f45.google.com with SMTP id a8so19770060edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 12:11:44 -0700 (PDT)
X-Gm-Message-State: APjAAAUjTj5PoSrkSon0hbXWwO5tPjatyhGpLS0lfyT8tmK7tfI2/fZ9
 n7sakihNNaEXGDmzcSfMaPEJr/SfU3jLMIF7Lm0=
X-Google-Smtp-Source: APXvYqy8VJWtc2XAI3FPIFZGm2gZs0vdSYDJAB7WgpG8fhGAb0Uto6woRbO6Whyz8RVZTeoDDxa5nTSkJ7Sf+McNSBM=
X-Received: by 2002:a17:906:66da:: with SMTP id
 k26mr10524492ejp.292.1557256302802; 
 Tue, 07 May 2019 12:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190507170257.25451-1-mdf@kernel.org>
In-Reply-To: <20190507170257.25451-1-mdf@kernel.org>
From: Alan Tull <atull@kernel.org>
Date: Tue, 7 May 2019 14:11:06 -0500
X-Gmail-Original-Message-ID: <CANk1AXS2m+v2uMoE0gLhKqYhn_NcbV8gZq+ogMsC_Zp81ZHAow@mail.gmail.com>
Message-ID: <CANk1AXS2m+v2uMoE0gLhKqYhn_NcbV8gZq+ogMsC_Zp81ZHAow@mail.gmail.com>
Subject: Re: [PATCH] fpga: zynqmp-fpga: Correctly handle error pointer
To: Moritz Fischer <mdf@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_121146_152114_8CDE9083 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-fpga@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 12:03 PM Moritz Fischer <mdf@kernel.org> wrote:

Hi Moritz,

>
> Fixes the following static checker error:
>
> drivers/fpga/zynqmp-fpga.c:50 zynqmp_fpga_ops_write()
> error: 'eemi_ops' dereferencing possible ERR_PTR()
>
> Note: This does not handle the EPROBE_DEFER value in a
>       special manner.
>
> Fixes commit c09f7471127e ("fpga manager: Adding FPGA Manager support for
> Xilinx zynqmp")
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Moritz Fischer <mdf@kernel.org>
> ---
>  drivers/fpga/zynqmp-fpga.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/fpga/zynqmp-fpga.c b/drivers/fpga/zynqmp-fpga.c
> index f7cbaadf49ab..abcb0b2e75bf 100644
> --- a/drivers/fpga/zynqmp-fpga.c
> +++ b/drivers/fpga/zynqmp-fpga.c
> @@ -47,7 +47,7 @@ static int zynqmp_fpga_ops_write(struct fpga_manager *mgr,
>         char *kbuf;
>         int ret;
>
> -       if (!eemi_ops || !eemi_ops->fpga_load)
> +       if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_load)

This if statement also happens in fpga_mgr_states
zynqmp_fpga_ops_state(), so we'll need this fix there also.

>                 return -ENXIO;
>
>         priv = mgr->priv;
> --
> 2.21.0
>

Alan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
