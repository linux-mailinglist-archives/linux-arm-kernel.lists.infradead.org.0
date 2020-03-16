Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C953218694E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 11:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRLhWO3RMI7lmuK7GT0+6iBm7NBzzyFDceD8PH6Jxek=; b=Lz+Pchje/BnYiM
	+6UcFjQWH/eXJAfMTL/iQhq7fN0pICG1JQcMU3WdfOMPP0eToT96GCeRabvMfhglMCCOHZGWEhEad
	+VJsJiX2FhdHu8Ge2dLz3iGIEo88TH9rEqZiK3hFhEBFncxOjLnxDw9jHZlNZItGo1z6E+i1JXghL
	Y8qImWArB7vZCjEgswlvZcDBGf1xrgq35nWhwcdah8P8FP6VSNUg279hVedZb2wvu7fj6hYEa1zPN
	P0UYcNkx1fBUilnvkKtEGgDAp6aPzhkW9wVlPECy7oZAQidb2VVFXo+Qxu5V8atdlXYnbkBHfMcoa
	7Y9FWvxr4E/qKYaNEGNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDnDq-0005Rh-OT; Mon, 16 Mar 2020 10:43:50 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDnDZ-0005Kb-R3
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 10:43:35 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 16 Mar 2020 19:43:31 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 5E0A76002C;
 Mon, 16 Mar 2020 19:43:31 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Mon, 16 Mar 2020 19:43:31 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id C95E540350;
 Mon, 16 Mar 2020 19:43:30 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id A467A12013D;
 Mon, 16 Mar 2020 19:43:30 +0900 (JST)
Date: Mon, 16 Mar 2020 19:43:30 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 01/10] ARM: dts: uniphier: Add XDMAC node
In-Reply-To: <CAK7LNASCOhZ5BMWWCA1zKep-sXra1pBBTxjsDp816k8Ph1m1Pw@mail.gmail.com>
References: <1584061096-23686-2-git-send-email-hayashi.kunihiko@socionext.com>
 <CAK7LNASCOhZ5BMWWCA1zKep-sXra1pBBTxjsDp816k8Ph1m1Pw@mail.gmail.com>
Message-Id: <20200316194330.B482.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_034334_020770_A72B0755 
X-CRM114-Status: GOOD (  18.40  )
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
Cc: DTML <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 14 Mar 2020 11:14:09 +0900 <yamada.masahiro@socionext.com> wrote:

> On Fri, Mar 13, 2020 at 9:58 AM Kunihiko Hayashi
> <hayashi.kunihiko@socionext.com> wrote:
> >
> > Add external DMA controller support implemented in UniPhier SoCs.
> > This supports for Pro4, Pro5 and PXs2.
> >
> > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > ---
> >  arch/arm/boot/dts/uniphier-pro4.dtsi | 8 ++++++++
> >  arch/arm/boot/dts/uniphier-pro5.dtsi | 8 ++++++++
> >  arch/arm/boot/dts/uniphier-pxs2.dtsi | 8 ++++++++
> >  3 files changed, 24 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
> > index 2ec04d7..a1bfe0f 100644
> > --- a/arch/arm/boot/dts/uniphier-pro4.dtsi
> > +++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
> > @@ -426,6 +426,14 @@
> >                         };
> >                 };
> >
> > +               xdmac: dma-controller@5fc10000 {
> > +                       compatible = "socionext,uniphier-xdmac";
> > +                       reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> 
> 
> 
> This is odd.
> <0x5fc20000 0x800> causes reg overwrap with
> aidet@5fc20000 below.

Thank you for pointing out.

Indeed, the address is wrong. I'll fix it.
And I'll also fix the example of dt-bindings.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
