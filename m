Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43344199362
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 12:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rc332lONX8atZm7csJm4Dxogve/nyaBpgF/U1tLaoE=; b=FlBp9QHg/kVOgh
	tMm7g2vZcpONYmvLRKfxauihY42pre3uK6gZbvJjslm3hE8NLFVeTYbLXGkm/lw7fz5r4s0BtDOi9
	atLdMw4V1pRHSHWl0QfWAKlIdyuvD1PwJLUre4YofgCESqZmaOslIMkMwvraEw5tMZiSyiBZ3j/aF
	O7jTW66XZL+F3qOpKHlHUGv6C6e0JXTfvpCyhB8ppY3SZ4bblU48PghlG8GwhflqOSCQ5P/0G81JD
	vmTIa8JS+0/L5I2yK1QqAkn++WM3C0O2v4pMoqSb2ryEoNYfyx9viS/aVVj+n7l2cD9BM4JwUHyN4
	1sMPfetl/S1Y7aCToiJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJE8v-00016g-Qw; Tue, 31 Mar 2020 10:29:13 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJE8i-00016K-Dh
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 10:29:02 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 31 Mar 2020 19:28:57 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id C3E3F60057;
 Tue, 31 Mar 2020 19:28:57 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Tue, 31 Mar 2020 19:28:57 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 6A380403AF;
 Tue, 31 Mar 2020 19:28:57 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 481BA12013D;
 Tue, 31 Mar 2020 19:28:57 +0900 (JST)
Date: Tue, 31 Mar 2020 19:28:57 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: dma: uniphier-xdmac: Consolidate
 register region description
In-Reply-To: <CAK7LNARyRcxR0nhPWo9mY=tahGtwY2E8A50X_Tv4VhFfM-WLGQ@mail.gmail.com>
References: <1584955970-8162-2-git-send-email-hayashi.kunihiko@socionext.com>
 <CAK7LNARyRcxR0nhPWo9mY=tahGtwY2E8A50X_Tv4VhFfM-WLGQ@mail.gmail.com>
Message-Id: <20200331192856.1B77.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_032900_691722_D69954BB 
X-CRM114-Status: GOOD (  27.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

On Mon, 30 Mar 2020 19:20:35 +0900 <yamada.masahiro@socionext.com> wrote:

> On Mon, Mar 23, 2020 at 6:33 PM Kunihiko Hayashi
> <hayashi.kunihiko@socionext.com> wrote:
> >
> > The extension register region isn't currently referred from the driver, so
> > this consolidates the extension register region description into the base
> > register region, and spreads the region size in example.
> 
> 
> You should not say this in the commit log.
> 
> The DT binding is hardware description.
> Whether it is used or not in the driver is not a primary reason.

I see. I forgot that this also applies to commit logs.

>
> I recommend you to read this:
> 
> 
> Documentation/devicetree/bindings/writing-bindings.txt:
> 
> - DON'T refer to Linux or "device driver" in bindings. Bindings should be
>   based on what the hardware has, not what an OS and driver currently support.

Thanks for your suggestion.

> 
> > Fixes: b9fb56b6ba8a ("dt-bindings: dmaengine: Add UniPhier external DMA controller bindings")
> > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > ---
> >  Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> > index 86cfb59..830cd88 100644
> > --- a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> > +++ b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> > @@ -23,8 +23,7 @@ properties:
> >
> >    reg:
> >      items:
> > -      - description: XDMAC base register region (offset and length)
> > -      - description: XDMAC extension register region (offset and length)
> > +      - description: XDMAC register region (offset and length)
> 
> Now that the reg is a single tuple,
> the "items" is unneeded.

Okay, I'll notice it.

> 
> >    interrupts:
> >      maxItems: 1
> > @@ -54,7 +53,7 @@ examples:
> >    - |
> >      xdmac: dma-controller@5fc10000 {
> >          compatible = "socionext,uniphier-xdmac";
> > -        reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> > +        reg = <0x5fc10000 0x5100>;
> 
> 
> Checking the datasheet (LD20), this seems still wrong.
> 
> The last register is XDMAID3 : 0x5fc1520c
> 
> So, reg = <0x5fc10000 0x5300>;

Hmm, You're right.
I missed the information somewhere.

> 
> I attached a patch, which I think more correct.
> Please check it, and I will send it to the correct ML.

I checked it. This looks good to me and thanks for your help.
I'll fix the remaining patches next.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
