Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310AE18EDFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 03:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anbrE/5tsTHVVfB/FA539NEvDqKN9GPpTb2zNGRiA9o=; b=RI1JhZpi+QXbgo
	fitW+0jPL8acuVd9Kn2JZpDdl5uxyQ/40gyi7GjoF2liZ7N+zezJ28JoM4uow0wUoKMZdw4y9OUcw
	/rBhmS6S0sbTiN+Py3kVGXK90QsTgR7F4H2LSjIh6fFdFFVaVkMUPcs+MINaatoDJJE8DF+Su5eQ3
	4JpQKYQNv7tMuZjWAlMkowLDuKchPJSmSNsK19uL6VSba1LeWJ16ZMd955HK/n0Tj37c26Mv/UIul
	dNDnQSAzGlB+GIFY5XlcTwzMtn6+U4TcYHWuXgCjR/OG+PzsZ1dUFMSA1rZ5eSkunNsEHruGGosX9
	G7gH7LOSiR+8+W1kysYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGCnM-0001aN-6m; Mon, 23 Mar 2020 02:26:28 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGCnG-0001Zq-9V
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 02:26:24 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 23 Mar 2020 11:26:17 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id C16FC180BCB;
 Mon, 23 Mar 2020 11:26:17 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Mon, 23 Mar 2020 11:26:17 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 4C5014034F;
 Mon, 23 Mar 2020 11:26:17 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 2B05112013D;
 Mon, 23 Mar 2020 11:26:17 +0900 (JST)
Date: Mon, 23 Mar 2020 11:26:17 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH v2 1/6] dt-bindings: dma: uniphier-xdmac: Remove extension
 register region description
In-Reply-To: <CAK7LNASmZRszPB-o4pzeu0aQM4_cQBkRxwFM2T4_onHA4-1r8w@mail.gmail.com>
References: <1584604252-13172-2-git-send-email-hayashi.kunihiko@socionext.com>
 <CAK7LNASmZRszPB-o4pzeu0aQM4_cQBkRxwFM2T4_onHA4-1r8w@mail.gmail.com>
Message-Id: <20200323112616.E512.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_192622_450230_36E80FC9 
X-CRM114-Status: GOOD (  21.64  )
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

On Thu, 19 Mar 2020 23:18:29 +0900 <masahiroy@kernel.org> wrote:

> On Thu, Mar 19, 2020 at 4:51 PM Kunihiko Hayashi
> <hayashi.kunihiko@socionext.com> wrote:
> >
> > The address of the extension register region in example is incorrect,
> > however, this extension register region is optional
> 
> 
> On which SoC is it optional?
> 
> In your previous DT submission, every reg was,
> like this:
> 
> reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> 
> 
> 
> and you meant
> 
> reg = <0x5fc10000 0x1000>, <0x5fc12000 0x800>;
> 
> ?

Yes. 'Optional' might not be appropriate because all SoCs has the region.

> > and isn't currently
> > referred from the driver, so the description of the region should be
> > suppressed until referred by the driver.
> 
> This sounds like you plan to get it back
> as you extend the driver.

Right, however, it isn't desiable that the description of the region is
changed by extending the driver.

> I checked the datasheet. This controller has more registers,
> so you split the reg into small chunks, the final form will look scary:
> 
> reg = <0x5fc10000 0x1000>, <0x5fc12000 0x800>,
>       <0x5fc14000 0x100>,  <0x5fc15000 0x100>;
> 
> 
> My question is why you did not use a single reg tuple
> that covers the whole registers.
> 
> Is any other hardware reg interleaved in between?

No, there is no other hardware reg between each region.

Surely it seems pointless to divide all tuples individually.
I'll rewrite it to cover entire xdmac reg region.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
