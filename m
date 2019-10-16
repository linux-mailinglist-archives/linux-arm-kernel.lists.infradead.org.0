Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F33D9463
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88Ds7y6SEZo5ynH3y5hGEbLKxFyE9s8CJR/w3Q1mihw=; b=oSy3FH+B4SdqjE
	2VgrKR6eQtjlEh5iy0eNk+cf/pPAYZJ5w8q0VZ8NLhQ8k5lFnlUPHrdV6Hm9ynlG9lInnwRAUXs+N
	D9Jbfoosin4legrnUlAqYxFbKJ1Qea5FZgs60tUVPsJmDSeKAAMzA8tu2Dp03RiN9JcPzArlZvSut
	AO9qh2A6/OZP97wJPpBN0yirjvVerp5RCkFmpKrseQzzz2VIIPPMIIIRfr0sTsrjM/K83NsgRhejF
	bkJTZveJx8PruOH1RxAQCTJiM2GpeBfviHJPItDU8y4b7xkMfFX4LPKs0Vq//X8zQzxuY6M5pB/x1
	k2IL0M6q8uvRc+alMbpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkhU-0003Fm-0u; Wed, 16 Oct 2019 14:54:56 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkhG-0003Cf-Fy
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:54:44 +0000
Received: by mail-ed1-f65.google.com with SMTP id f20so21541649edv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 07:54:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ge8y9M+PbIEIsapWKOry+7z8a5UxWiYE6qcowbBaIEY=;
 b=r2hjmlbxlG+7TiXo2bLJB6KAUOpvTvMHCm/QS8MJCo1cRyq2juIF8sseGLtcDGYoEN
 UQgrOfeWjCqyvhSrOcEvABKz83riJ2g5FSfc0aUhv5OKkqS0e0nhQ+l/4SHoeYok6x3X
 OBP2rQ0RSIJG8+dXNmvlFdw/gaQ47GP869hqLPstL8BSLgqULRehf6iw6L7Ur7GPBoRr
 nOKY/L/UIBgZtnBrzKlc/41JPcwoR1521g9F6M0TIvUgMe00q5vrMkvTf7dOmEzonXLL
 SbhCNuff2pJ7MF06wrdkggltqm/hJsWXo6aR0GGESH2K9HaZKQsCEPDo19eLIjjxK0jE
 83MA==
X-Gm-Message-State: APjAAAVAFvj4Q8YTiuoB6WPmNqoEu5FkpCYUZdLTWxbPqcPBozblcIJ0
 oDliDTd5dzrEvYEANai1MdTbq7xS7cw=
X-Google-Smtp-Source: APXvYqzH0a3MC2aL9WejS6p4vQyu5h5QtjbatGvZKhMrowk+UudD2WEpHrK+mkvydIt2t1zPDhgnaQ==
X-Received: by 2002:a17:906:1342:: with SMTP id
 x2mr39924979ejb.304.1571237680146; 
 Wed, 16 Oct 2019 07:54:40 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id s26sm4115988eds.80.2019.10.16.07.54.39
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Oct 2019 07:54:39 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id p7so3258232wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 07:54:39 -0700 (PDT)
X-Received: by 2002:a1c:a9c5:: with SMTP id s188mr3395636wme.61.1571237678969; 
 Wed, 16 Oct 2019 07:54:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191012200524.23512-1-alistair@alistair23.me>
 <20191016144946.p3tm67vh5lqigndn@gilmour>
In-Reply-To: <20191016144946.p3tm67vh5lqigndn@gilmour>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 16 Oct 2019 22:54:27 +0800
X-Gmail-Original-Message-ID: <CAGb2v67QrTJjSO99UNs-=3ZZnK948am11=izRTHT6gZ06E28eA@mail.gmail.com>
Message-ID: <CAGb2v67QrTJjSO99UNs-=3ZZnK948am11=izRTHT6gZ06E28eA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sun50i: sopine-baseboard: Expose serial1,
 serial2 and serial3
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_075442_530782_3357BF24 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: alistair23@gmail.com, Alistair Francis <alistair@alistair23.me>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 10:49 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Sat, Oct 12, 2019 at 01:05:24PM -0700, Alistair Francis wrote:
> > Follow what the sun50i-a64-pine64.dts does and expose all 5 serial
> > connections.
> >
> > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> > ---
> >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > index 124b0b030b28..49c37b21ab36 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > @@ -56,6 +56,10 @@
> >       aliases {
> >               ethernet0 = &emac;
> >               serial0 = &uart0;
> > +             serial1 = &uart1;
> > +             serial2 = &uart2;
> > +             serial3 = &uart3;
> > +             serial4 = &uart4;
> >       };
> >
> >       chosen {
> > @@ -280,6 +284,27 @@
> >       };
> >  };
> >
> > +/* On Pi-2 connector */
> > +&uart2 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&uart2_pins>;
> > +     status = "disabled";
> > +};
> > +
> > +/* On Euler connector */
> > +&uart3 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&uart3_pins>;
> > +     status = "disabled";
> > +};
> > +
> > +/* On Euler connector, RTS/CTS optional */
> > +&uart4 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&uart4_pins>;
> > +     status = "disabled";
> > +};
>
> Since these are all the default muxing, maybe we should just set that
> in the DTSI?

Maybe not, since people may want to only use RX/TX, and leave the other
two pins for GPIO?

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
