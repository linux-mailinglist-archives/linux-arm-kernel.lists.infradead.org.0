Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4898616705E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 08:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pM/myMQbrdCzA5qMA4lOYpDyQVgtFl2TSuQUE3uwyYc=; b=IsOpYccDPZzVu2
	REvHmTmCi2+v9Xm1GDBz7zQiHOcHyFgqStF2snjVVeEYGHyLWCvXoXohR74jZUvGWSgrUkOwNxkmn
	TL5DmmqGGrsP8Wm1mLMjU0QZ5YgaiLz0bK8Zafr6UoiJYEzs+1CdHP6urFaDs9HFnN25GuGPYSLBT
	luQ9PLw0qT/SnU8zSrZObRV42ycnfaR1ZDVhPDtu+AsZsLSIyFPX9V5y9hA48k9v+uxb1lYpM+K8u
	EsE34k6kGtGPjTWZDfaQ1Mj79RO6KcctG5XQsRCClSAylcvdB6g1/VYzXId/8wLkmN4IO8mOqoo0u
	fO2tLOi1EDOC0KxAN+6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j52zG-0007Qb-4Z; Fri, 21 Feb 2020 07:44:38 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j52z7-0007Pm-Fr
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 07:44:30 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 21 Feb 2020 16:44:28 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id BE6F5603AB;
 Fri, 21 Feb 2020 16:44:28 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Fri, 21 Feb 2020 16:44:28 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 4FCED403B2;
 Fri, 21 Feb 2020 16:44:28 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 1AC8E12047F;
 Fri, 21 Feb 2020 16:44:28 +0900 (JST)
Date: Fri, 21 Feb 2020 16:44:28 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v4 0/2] dmaengine: Add UniPhier XDMAC driver
In-Reply-To: <1582270646-29161-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1582270646-29161-1-git-send-email-hayashi.kunihiko@socionext.com>
Message-Id: <20200221164427.32C3.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_234429_650026_EC20A861 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry for my mistake in this v4.

I'll resend it.

On Fri, 21 Feb 2020 16:37:24 +0900 <hayashi.kunihiko@socionext.com> wrote:

> Add support for UniPhier external DMA controller (XDMAC), that is
> implemented in Pro4, Pro5, PXs2, LD11, LD20 and PXs3 SoCs.
> 
> Changes since v3:
> - dt-bindings: Fix typo
> 
> Changes since v2:
> - dt-bindings: Fix SPDX and some properties
> - Fix iteration count calculation for memcpy
> - Replace zero-length array with flexible-array member in struct
>   uniphier_xdmac_device.
> 
> Changes since v1:
> - dt-bindings: Rewrite with DT schema.
> - Change return type of uniphier_xdmac_chan_init() to void,
>   and remove error return in probe.
> 
> Kunihiko Hayashi (2):
>   dt-bindings: dmaengine: Add UniPhier external DMA controller bindings
>   dmaengine: uniphier-xdmac: Add UniPhier external DMA controller driver
> 
>  .../bindings/dma/socionext,uniphier-xdmac.yaml     |  63 +++
>  drivers/dma/Kconfig                                |  11 +
>  drivers/dma/Makefile                               |   1 +
>  drivers/dma/uniphier-xdmac.c                       | 611 +++++++++++++++++++++
>  4 files changed, 686 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
>  create mode 100644 drivers/dma/uniphier-xdmac.c
> 
> -- 
> 2.7.4

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
