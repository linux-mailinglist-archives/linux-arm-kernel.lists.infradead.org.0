Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2742F1B26DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 14:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1MfW2XID87163DKeP06B57f8XyC9zVd0/ork7E0BLY=; b=ms5JAjJEL2g+vN
	VoFJJUHjX6av52JeJ5FSysm/yNDtULy8pyykwgL+B/ctp/G1pc3M46tGMEGsepj9GTGAvnanvl8we
	Q5kKOgQQg4LAdRxCntK+SrLG41XAKNzhm0eXtxLT6bYCVWakCmphmPLWxM/yp01qm6nQV2jOPNR+4
	CW/8+UI35Mc9KO4hYGPEcNS9Hr3xxFwZEhf1wqCVkgwY6cHnbZW0DNXWzooLjMKazdUfKt4xVbAz5
	vgJOxnVPgZ5GoRCGhjPgDDvgQ9GTQWpK+V/JdzdFZ64shOr6g1dZF7/5Okc6TiLEY8eukeNPCcr9P
	UDGzhj3O1LdQWzlcAKMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQsTL-0004Da-Lc; Tue, 21 Apr 2020 12:57:55 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQsTA-0003v2-TM
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 12:57:46 +0000
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com
 [209.85.221.176]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 03LCvFRx000384
 for <linux-arm-kernel@lists.infradead.org>; Tue, 21 Apr 2020 21:57:15 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 03LCvFRx000384
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587473836;
 bh=9UQpcRvUemaHFo7L5Odh9LS7PYBKVGflzlH8vlG+LVg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZnrvpskK19jcp87FYObOSmn8s0vCYicKFdaOsd0iFTeNVWqXM1HFiH6DBZsgQllZF
 6+jW+5aMUWd1dfMIGECANxko1j7ArpXZ37a5Ofi10gkzk7tlzt7BQI4GKMof4Z3F40
 XuQ3O0/Oq6e0H4Nx67hDdfNbN5HvZby3JM+A+fSHJjExf3iVjLscDyiY+JCv4+rs89
 ZP3pB5cxN5bA5zJgHqG9c/W5qooFq0nG7829HeZPgQK9y/u8WFpe+sM1JPbKjzu/xY
 +jqRQoMHDGhkzxhDFNOjC6WYYOxf92Y2T6rgSfWSUricatwzsevuhx5ZzOsIJvUrBS
 q5zLJd8XxwtQg==
X-Nifty-SrcIP: [209.85.221.176]
Received: by mail-vk1-f176.google.com with SMTP id n128so3562811vke.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 05:57:15 -0700 (PDT)
X-Gm-Message-State: AGi0PubH6erur8OdAE/FzZUDJSzwzxj/c2OLEGETiL8jeYhGOv7sa4l8
 LnK3j2ixJaTbUt2Tw/Upk8x596Hp6LzZWFuFVyE=
X-Google-Smtp-Source: APiQypIFObNeifQg7K56qQ6Q0t2K2BsBNuMJSZC/7uLKgOT/hbDbDAq/b+UNL2D89DT7u5415ggoOFVevCaGcrIYn8Y=
X-Received: by 2002:a1f:1e11:: with SMTP id e17mr14979491vke.73.1587473834593; 
 Tue, 21 Apr 2020 05:57:14 -0700 (PDT)
MIME-Version: 1.0
References: <158737719165.27947.6617937231903079086.stgit@localhost>
 <20200420190749.b508c7e6d60a8203360178ec@linaro.org>
 <CAK7LNAQtTPLdKN8cz842gvoS36GVQvk2ztahGp8XWoW3C8BzQg@mail.gmail.com>
 <CAA93ih0TNEfU_fiS_43+H6+UWrP2b8zh+PxMiiKBg3pZW8Jo8g@mail.gmail.com>
In-Reply-To: <CAA93ih0TNEfU_fiS_43+H6+UWrP2b8zh+PxMiiKBg3pZW8Jo8g@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 21 Apr 2020 21:56:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNASjoM1vr6=nSfs76yauC+QChKC6VX_pZkq1rhXDnJE5+A@mail.gmail.com>
Message-ID: <CAK7LNASjoM1vr6=nSfs76yauC+QChKC6VX_pZkq1rhXDnJE5+A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: uniphier: Add support for Akebi96
To: Masami Hiramatsu <masami.hiramatsu@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_055745_186140_D96455F3 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 DTML <devicetree@vger.kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 10:21 PM Masami Hiramatsu
<masami.hiramatsu@linaro.org> wrote:
> > index f93519793bfb..afa90b762ea9 100644
> > --- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
> > +++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
> > @@ -337,7 +337,7 @@ gpio: gpio@55000000 {
> >                                                      <21 217 3>;
> >                 };
> >
> > -               audio: audio@56000000 {
> > +               audio@56000000 {
> >                         compatible = "socionext,uniphier-ld20-aio";
> >                         reg = <0x56000000 0x80000>;
> >                         interrupts = <0 144 4>;
> >
> >
> > Lastly, is the pin-setting "aout1", "aout1b" correct ?
>
> Yes, according to the schematics of Akebi96(*), it is connected to
> aout1b(XIRQ*) instead of aout1(AO1*).
>
> (*) https://www.96boards.org/documentation/enterprise/akebi96/hardware-docs/akebi96-schematics.pdf



So, I was asking about "aout1", not "aout1b".

According to the schematic, nothing is connected to AO1*.
See sheet 6.

Why do you need to assign the apparently unused pins?



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
