Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AC166FAC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 15:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMkVMUoFrMZnG71Ikdd17AbO27vNyjWVCnDU8Xolwz8=; b=pQp5TUrY3SOaTw
	OWHCvZTK0oQm8Y35TJWhV7qlUXDhymUUauCzWGBpngp1dO9EiDRDqiurBUdyAuZITjjT3qKylMBIc
	Es+sSE5er5jOVMXK7+1b7fn05wsdBi8YVTUOJyBrh/mJIEui0DmjWm995ahJUvakZjOGr8gApPdbK
	H5wmLTVashEbn/DI4Ab9xMQrdaCqy7HTej89vWyHozuilASeBLal/m22SR/Qn3oysWsHy+5VukVmZ
	Y5wWwu+qfv3hAgTwsICVOunRCDGKl5Mi0c9e2rvo+iaOlT+2HbQ3T+rY6H0+n6U67uNG/mnckE+NJ
	WVsVsHgUpYVHdD5mllUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlvIh-00078R-Fc; Fri, 12 Jul 2019 13:09:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlvIZ-00077m-8u
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 13:09:16 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFC9E216C4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 13:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562936955;
 bh=W6YIjaFSzzjtMDBKWJodMGbfMMX0VBoh4+APVLIt+SA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vUVTFwqC/zGAaW1/n5WXHjBkKD5Ypuvc083w2flxQ9TarX9sAG9ByX+2dIPw1VnBQ
 /YYcR5XF85+qqJPxwWh9K7AmlV/l9CLUb3ty/1nToUwE0YKacb3+faHzp4yrfjm+yu
 HU5arit/ux127/xK/l9dqc7i4fVFk64VHicdMbxY=
Received: by mail-qk1-f173.google.com with SMTP id s22so6289769qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 06:09:14 -0700 (PDT)
X-Gm-Message-State: APjAAAV7dmHJ49VIOsxB4IFF/u+eadIS2NX8xfw1muOB7Vfc1yMGyG6N
 5v+mxPC6ywtpRFBiiM0Ay6vR5MD+rYWdVSUMCg==
X-Google-Smtp-Source: APXvYqwjdoQwR8x8UTFOyyGiPA50uzJD5f6PGF0aB6Ty2QtFOm2DGDacJSD7J67xZOfZmZOUg59B3SH4VdFNnGwzYkM=
X-Received: by 2002:a37:a010:: with SMTP id j16mr6412048qke.152.1562936954182; 
 Fri, 12 Jul 2019 06:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190711092158.14678-1-maxime.ripard@bootlin.com>
 <20190711092158.14678-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190711092158.14678-2-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 12 Jul 2019 07:09:02 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLJkoudu3mw9wVuN1RM-VPGSWj+Vv6L=C=N-DtW_vOAdA@mail.gmail.com>
Message-ID: <CAL_JsqLJkoudu3mw9wVuN1RM-VPGSWj+Vv6L=C=N-DtW_vOAdA@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: dma: Convert Allwinner A10 DMA to a
 schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_060915_326809_C1024C3D 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Vinod Koul <vkoul@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 3:36 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The older Allwinner SoCs have a DMA controller supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../bindings/dma/allwinner,sun4i-a10-dma.yaml | 55 +++++++++++++++++++
>  .../devicetree/bindings/dma/sun4i-dma.txt     | 45 ---------------
>  2 files changed, 55 insertions(+), 45 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/dma/allwinner,sun4i-a10-dma.yaml
>  delete mode 100644 Documentation/devicetree/bindings/dma/sun4i-dma.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
