Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2C2186A9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aELPr5tLmrXb8xGLeirAct1rtxvegZDjgeBzGfr5ZzQ=; b=qPtz7OJLyIIaKI
	JLfo+/mh4cU7GD+g7LZOj907S89jUkCIIQnFh/hM5gs5erlmNYpXVC3o1WsQzLb7JVw+6LjMwiVYj
	pdx97Pxkz635yueksEapIgwjsXtWsCVQ21acWqoIzNKhI7IpN5Fqia6sc3I3p4+VQM4KVpLLm1DcM
	4LcKhSRaNuqDG7vUokjIruGwMRRdyyJ9xtLrWxGt3HGZTIkqwRC4ORl9k3NcDs5VyI4Y/PBsP4KD6
	IHFXKKtQYpyjz9ereuyoEs5eH0L2fcsAJlOloV2TXyt0UXj3MSMWC0nBHKt8qaDurYIEQGJmIqyhl
	LbE3TMiD5XLQCLb3TZpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDoX4-0004NL-W0; Mon, 16 Mar 2020 12:07:46 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDoWv-0004MV-Fn
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 12:07:39 +0000
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 02GC7H8K011611
 for <linux-arm-kernel@lists.infradead.org>; Mon, 16 Mar 2020 21:07:18 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 02GC7H8K011611
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1584360438;
 bh=1WdVoD2GR3rsf9LOOCviumyPaCeZIZzcSnPah9GyQRo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AUi5omdfuSn7fW9rIh8cuNHJWA0zaQvmfoAu6FSyf+rA74wjPaBnwEwYFIyT5gKb1
 3taHlgNI8Nk9rzPXIs81zDPWrW4v3FOWnWTiZgEQwdX7W7SEDVa2WUcGlWLfisA846
 b8y5O10v/valqjW9DRcltYRBWCl7W46OLKc0T2CYSb3KH+ykxvTFuZ7/Ej3rtOAD2x
 xuEg38G0GnMpLQ/AGQl84RT8CCSORedML1RmAeet7LZiOMqeOWi2SyERorPKuSMPqg
 QqijorSqJ7CBixaPkPjtl16x5XnxB8st7OS5KkpWwtVdirMkLwqnQaysX0RiLLUPHP
 KE94L1sXvTIuQ==
X-Nifty-SrcIP: [209.85.222.49]
Received: by mail-ua1-f49.google.com with SMTP id h32so6403269uah.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 05:07:18 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0atH2pfWny6zY02m0k61H98dERJt3+dXNJbCcC5EXaoajXTKT9
 WniT548IKyRrs66ykhPLc0bwG3Spus5oJSeX1xo=
X-Google-Smtp-Source: ADFU+vu+aiZaKzn4yQzmAfKsZEABMNGMwf1PqYMa2CZTlxIl9JDGIpCD9f5PgcYDxiJ9WvpEnqc4kwlvAq5+7XSqkjc=
X-Received: by 2002:ab0:28d8:: with SMTP id g24mr13929982uaq.121.1584360437287; 
 Mon, 16 Mar 2020 05:07:17 -0700 (PDT)
MIME-Version: 1.0
References: <1584061096-23686-2-git-send-email-hayashi.kunihiko@socionext.com>
 <CAK7LNASCOhZ5BMWWCA1zKep-sXra1pBBTxjsDp816k8Ph1m1Pw@mail.gmail.com>
 <20200316194330.B482.4A936039@socionext.com>
In-Reply-To: <20200316194330.B482.4A936039@socionext.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 16 Mar 2020 21:06:40 +0900
X-Gmail-Original-Message-ID: <CAK7LNATmxhLn6fg8+5RAKcw+_-75SDN0dG=E1e8H2yrYU3p5Eg@mail.gmail.com>
Message-ID: <CAK7LNATmxhLn6fg8+5RAKcw+_-75SDN0dG=E1e8H2yrYU3p5Eg@mail.gmail.com>
Subject: Re: [PATCH 01/10] ARM: dts: uniphier: Add XDMAC node
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_050738_475768_55128D9C 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Mar 16, 2020 at 7:43 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> On Sat, 14 Mar 2020 11:14:09 +0900 <yamada.masahiro@socionext.com> wrote:
>
> > On Fri, Mar 13, 2020 at 9:58 AM Kunihiko Hayashi
> > <hayashi.kunihiko@socionext.com> wrote:
> > >
> > > Add external DMA controller support implemented in UniPhier SoCs.
> > > This supports for Pro4, Pro5 and PXs2.
> > >
> > > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > > ---
> > >  arch/arm/boot/dts/uniphier-pro4.dtsi | 8 ++++++++
> > >  arch/arm/boot/dts/uniphier-pro5.dtsi | 8 ++++++++
> > >  arch/arm/boot/dts/uniphier-pxs2.dtsi | 8 ++++++++
> > >  3 files changed, 24 insertions(+)
> > >
> > > diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
> > > index 2ec04d7..a1bfe0f 100644
> > > --- a/arch/arm/boot/dts/uniphier-pro4.dtsi
> > > +++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
> > > @@ -426,6 +426,14 @@
> > >                         };
> > >                 };
> > >
> > > +               xdmac: dma-controller@5fc10000 {
> > > +                       compatible = "socionext,uniphier-xdmac";
> > > +                       reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> >
> >
> >
> > This is odd.
> > <0x5fc20000 0x800> causes reg overwrap with
> > aidet@5fc20000 below.
>
> Thank you for pointing out.
>
> Indeed, the address is wrong. I'll fix it.
> And I'll also fix the example of dt-bindings.
>
> Thank you,



You did not notice the over-wrap
because the second region is not used
from the driver.

Why did you define the unused region?


--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
