Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09D015984C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8l6u4f0gvZGQWeQkt8Y6yta14EBPNlIT67g6GwANoE=; b=h/DFM7E70FMgGE
	b9BZkCyMpDKmMnBjSVc7AQm0P5SPS3Jc5Q33VaIXOik/jg4qa6Aj9uaukXp5farLavJNfsLNKipqz
	ERC18pSO5hm6HURQaoSbZDQP1L5L8MKLF7K+fT3H2li65lkmeln9/PkraUcAaLsIC4CG6omAXV5bS
	S7WJKuMR0l9roOt/sPaoQh6uYInFiWUOQUqHmxf2OWKu+3UwRdxcNsbJ7Or0pePGY1KiIup4GqqB6
	D+soL5C8g5ZQdgIti92OSwnPC+3pxCPUf8hxRFQpokk+IRnG8DhU1ETj/k5eMIuBsRYq1LRzIgjkt
	2oKQJmXeT7vZnsHQBi5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a9f-0007W4-P1; Tue, 11 Feb 2020 18:21:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZuN-0000VD-73
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 18:05:17 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A82E20714
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 18:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581444313;
 bh=6PE1cQDVRluOgEBrX4BbGhN0yYnAPz0zqhe0TovaI5o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=l1Sa6LV29Nk2K2rAs5pOGEdWBrK7blZ394zkXkcKtGeTSea4pto6xOb1UC68LvoCb
 rQcQkopTRHIkdvHboYFj7gcwFDBRV0Ay8v9AXIo6AahAcEAMIjHAGoo+hvdXaboJ8K
 /FUJ5aUHuqo8wnpZQT4pyg7N6GzSzhJ0h0lMCm4M=
Received: by mail-qk1-f181.google.com with SMTP id q15so10967741qke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 10:05:13 -0800 (PST)
X-Gm-Message-State: APjAAAXr26qB0jWHL82rxYkKkLAaDPhQUriCpe/05Ic4fUBvrLFGjGMy
 7SixXU8vWiZEScnroDIAkWdKJ49Vp0Gx/BH7YQ==
X-Google-Smtp-Source: APXvYqzAAdsaAknJAJ5NQJ1yPYP+6XiEu2QBieclv1o0pXq2SzMkQhREIj0fKiHyiUC2B4XLKseSBuDPfByqgqJIuII=
X-Received: by 2002:a37:85c4:: with SMTP id h187mr7476483qkd.223.1581444312635; 
 Tue, 11 Feb 2020 10:05:12 -0800 (PST)
MIME-Version: 1.0
References: <20200202125950.1825013-1-aford173@gmail.com>
 <20200202125950.1825013-4-aford173@gmail.com>
 <20200206184030.GA11381@bogus>
 <CAHCN7x+uCwyJ60ZG_0m5SgNmqUAyEwxqXVTL7nQzJLXxXrh+Tw@mail.gmail.com>
In-Reply-To: <CAHCN7x+uCwyJ60ZG_0m5SgNmqUAyEwxqXVTL7nQzJLXxXrh+Tw@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 11 Feb 2020 12:05:01 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLJweVLgYhoU-3cmg1aFwRNtAehx2-Euy-cwUsRy2jsgw@mail.gmail.com>
Message-ID: <CAL_JsqLJweVLgYhoU-3cmg1aFwRNtAehx2-Euy-cwUsRy2jsgw@mail.gmail.com>
Subject: Re: [PATCH V2 4/5] dt-bindings: spi: spi-nxp-fspi: Add support for
 imx8mm, imx8qxp
To: Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_100515_307569_869E1D6F 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 linux-spi <linux-spi@vger.kernel.org>, Yogesh Gaur <yogeshgaur.83@gmail.com>,
 Mark Brown <broonie@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 4:49 AM Adam Ford <aford173@gmail.com> wrote:
>
> On Thu, Feb 6, 2020 at 2:46 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Sun, Feb 02, 2020 at 06:59:49AM -0600, Adam Ford wrote:
> > > Add support for nxp,imx8qxp-fspi and nxp,imx8mm-fspi do the bindings
> >
> > s/do/to/
>
> Oops.  Thanks for catching that.
>
> >
> > > document.
> > >
> > > Signed-off-by: Adam Ford <aford173@gmail.com>
> > > ---
> > > V2: No change
> > >
> > > diff --git a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> > > index 2cd67eb727d4..7ac60d9fe357 100644
> > > --- a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> > > +++ b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> > > @@ -2,6 +2,9 @@
> > >
> > >  Required properties:
> > >    - compatible : Should be "nxp,lx2160a-fspi"
> > > +                         "nxp,imx8qxp-fspi"
> > > +                         "nxp,imx8mm-fspi"
> >
> > All 3 are different and no compatibility?
>
> This was all based on a series from NXP's repo where they have some
> data tables all associated to the various compatible entries, and they
> created a place holder for quirks.  Based on an older NXP repo, it
> seems like there might be some quirks associated to the different
> families, but the newer repo where I got this patch series didn't
> implement them, however, it's possible the quirks may enhance
> functionality later. If that's true, I think this is the best solution
> for future enhancements without having to change the compatibility
> names down the road.  Maybe someone from NXP can comment?  I am just
> trying to help push things upstream so we can support QSPI flash.  I
> would prefer to keep them separate for now, because we might have
> these improvements later. However, I'll do what you request.  Do you
> want me to drop the additional compatible flags and just use the
> original, or create a new one that's a bit more generic?

Neither.

If you already know that they have differences, then as-is is fine.

If they are believed to be 'the same', then you do:

compatible = "nxp,imx8qxp-fspi", "nxp,imx8mm-fspi";

assuming i.MX8MM was the first version.

This allows a MX8QXP to work without OS changes if the driver already
supports the previous chip. And if any quirks are found, then the OS
can handle them without a DT change.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
