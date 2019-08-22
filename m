Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469C099405
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 14:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKJ/E/pqVxOklCvq0VU2fLnoyYnvAxJ4OGVVTv3RCt0=; b=CUEANTl83MoyJm
	bPspvjbZVgJuFDXnY+R2erMs+IcdJMpNioY0NwdnhbSjFYpI81NL7KXXZRo7H/fN7ppmssEd3mXLM
	XY1h7TWv3PucsAs2lG6VjBvRbElnX7ZBTRgZjRqX1RUb9l0UQ2a5lG/5Sf7XHdlk/O4XwuQnmwRFd
	DmPsdcwG64iwBayL8k8ooTFQu+nned8W7P8/i5T0S7XkT3nuAG02J0/r96NmGZwSNLSGyRxGh3QtT
	taTwhP8szbqEAIT+MzuxbvR15y2aNPfbXFqcRdq+eXC6XaTQlHwcSdhCLSXeETX2KbBsqRL/Ci8A0
	4aNpRhHmpcmXqoV0ak6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mQr-0007Pl-7D; Thu, 22 Aug 2019 12:43:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mQb-0007Ox-9T
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 12:42:59 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 286B423405
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 12:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566477774;
 bh=u1d+yxJsT1RUvhBvbQpkk+Lf5Hdd3NIZBjhPGRaoLq0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=edR3/F8kHjufAIzXmL5EPLQL9s+FkyXsTgFLD3pGhyRokP1bjNEbtCpYRTsZQWFxU
 hhpHuv5/XDfytUXLzvVwVR2im285sPfm3Nmu0StCVp6XXQrXbuEoGXtcgLHeoikLEN
 o6Gey1aefucRSEdl8XNh3eBlPk+tmGJn6uhnA4Kk=
Received: by mail-qt1-f179.google.com with SMTP id 44so7406069qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 05:42:54 -0700 (PDT)
X-Gm-Message-State: APjAAAWGAEb2p010iBjOjNOey2IPRw88hdXFRmn8Cky7bMguEGn+h/dt
 +gQopMQ7TwFspUVMkGuTDWiTdCaduIZDIPZjRQ==
X-Google-Smtp-Source: APXvYqxC0xb53h6O4RvVMfpbGb5MhrE12k/FG4k5FZrxkO1CLd25XOg+b1pujVZE4NJPmG2GhguxmB+9CL3m/MBOJiI=
X-Received: by 2002:ac8:386f:: with SMTP id r44mr37134933qtb.300.1566477773293; 
 Thu, 22 Aug 2019 05:42:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190809093158.7969-1-lkundrak@v3.sk>
 <20190809093158.7969-3-lkundrak@v3.sk>
 <20190821210349.GA29732@bogus>
 <c859d12167d18c21dda13b30c2dd3256f407d1d9.camel@v3.sk>
In-Reply-To: <c859d12167d18c21dda13b30c2dd3256f407d1d9.camel@v3.sk>
From: Rob Herring <robh@kernel.org>
Date: Thu, 22 Aug 2019 07:42:42 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+BVUX3MMjsjK+hhjgDzdiqoo8dwEMD_98OrkGMOQf8GA@mail.gmail.com>
Message-ID: <CAL_Jsq+BVUX3MMjsjK+hhjgDzdiqoo8dwEMD_98OrkGMOQf8GA@mail.gmail.com>
Subject: Re: [PATCH 02/19] dt-bindings: arm: mrvl: Document MMP3 compatible
 string
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_054257_353936_2C5A71CB 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 3:12 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> On Wed, 2019-08-21 at 16:03 -0500, Rob Herring wrote:
> > On Fri, Aug 09, 2019 at 11:31:41AM +0200, Lubomir Rintel wrote:
> > > Marvel MMP3 is a successor to MMP2, containing similar peripherals with two
> > > PJ4B cores.
> > >
> > > Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> > > ---
> > >  Documentation/devicetree/bindings/arm/mrvl/mrvl.txt | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt b/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> > > index 951687528efb0..66e1e1414245b 100644
> > > --- a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> > > +++ b/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> > > @@ -12,3 +12,7 @@ Required root node properties:
> > >  MMP2 Brownstone Board
> > >  Required root node properties:
> > >     - compatible = "mrvl,mmp2-brownstone", "mrvl,mmp2";
> > > +
> > > +MMP3 SoC
> > > +Required root node properties:
> > > +   - compatible = "marvell,mmp3";
> >
> > Please convert this file to DT schema before adding new SoCs.
>
> Is this something that should generally be done for all new or changed
> DT bindings?

Preferred, but not quite yet required everywhere. It depends on the
maintainer/subsystem still. But for board level bindings, you'll
notice most of them are converted. Marvell, Broadcom, and TI are the
main ones left.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
