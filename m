Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9C8701B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFEcMcv/fnY2bkyNTMO/PQYATxfpelK+IvXCV7Iapkk=; b=eFO9gkNjRwXqKj
	pcXsI1MScYtEew32/nUhY3dPPEUDDAHpkoSMvuZDOCqLRFICHgvfKHt+qD0VIEPHYd3mjw2eZu64k
	JPq9/3suDy+TcKWHFyq4d2LR9rtGZUbnp0ZK8Fdt6PyDADBdTtlfCmPRcDL5pzqJxhylOZ7FlX1Sg
	Bs3jrIps2W8vFIo1Y+Y5j7NLQIRXl3N3DDI+7Z2yXE5lgZaUxUc4dX1iTKLijLnYbnpqRnruK9Pxz
	+JbM/Qty5wErMP6RgEli84zkM2pEiCxBg1d8yXhxCLzOcmLaZWb+ZSMtczZ2qjxtsXVUQc4CaFHVM
	9O/3YVMrQGdoHwArZ5Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYid-00089p-DK; Mon, 22 Jul 2019 13:51:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYiM-00088f-FX
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:50:55 +0000
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2277E21993
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563803453;
 bh=hDcfTcAyKk/cAZbs70RcptCtShegPKeJ1uI1eY8FuPA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xMKjxarVo4A+BUbOI3rs05QqlUUfVfZZp9djm0P0PirgBrwD2cRKtqA2jbIgBCzSz
 i8joprx8AW5LlTSAFSnQHlr6uZ056LPEL8R1t6AJdCbYw+Y74+3nzPBn1+pGPloaST
 aHfg48KjDgWi/mhFckIEPe8wL7XzF9mKxJZPRgPU=
Received: by mail-qt1-f172.google.com with SMTP id l9so38528255qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:50:53 -0700 (PDT)
X-Gm-Message-State: APjAAAWv5v8SVG2XmKhregC6n8FO3FzifdRywNwQ+ON/b1vEe0IUJYHd
 U03Ir7GtR0njBHBxaDbX1eZAt7tLX+9vWaJtjg==
X-Google-Smtp-Source: APXvYqwflr7eEPfqc65hiWx8dqu/FZ0+6ATGFTjcgLb/3+BvCbBiSuD7MOb4l57MYbVJ9vrYKKqkbj/a1UxlqwUjTPM=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr4648619qtb.224.1563803452314; 
 Mon, 22 Jul 2019 06:50:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190720092607.31095-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190720092607.31095-1-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 22 Jul 2019 07:50:40 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL2dxZMpwP08xMjwdkv5kdeZGrTYwdHuvqAcY-nBuZ+fA@mail.gmail.com>
Message-ID: <CAL_JsqL2dxZMpwP08xMjwdkv5kdeZGrTYwdHuvqAcY-nBuZ+fA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: dma: Add YAML schemas for the generic
 DMA bindings
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_065054_531816_8BE74F03 
X-CRM114-Status: GOOD (  15.62  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Chen-Yu Tsai <wens@csie.org>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 20, 2019 at 3:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The DMA controllers and consumers have a bunch of generic properties that
> are needed in a device tree. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Added a select statement.
>
> Changes from v1:
>   - Dropped the dma consumer schemas
>   - Fixed the node name of the examples
>   - Enhanced a bit the description for dma-requests in case of a router
>   - Split the bindings in two to handle the router and controller case
>     separately
>   - Made #dma-cells required
> ---
>  .../devicetree/bindings/dma/dma-common.yaml   |  45 +++++++
>  .../bindings/dma/dma-controller.yaml          |  35 ++++++
>  .../devicetree/bindings/dma/dma-router.yaml   |  50 ++++++++
>  Documentation/devicetree/bindings/dma/dma.txt | 114 +-----------------
>  4 files changed, 131 insertions(+), 113 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/dma/dma-common.yaml
>  create mode 100644 Documentation/devicetree/bindings/dma/dma-controller.yaml
>  create mode 100644 Documentation/devicetree/bindings/dma/dma-router.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
