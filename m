Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E4049F0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 13:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycFqoT51/lb26ETdTr23jp2ciXLd5MWW/N2LJwl/esE=; b=bgACOarIcoq/T7
	A3fS3wfJNnU60rdwew3vcHJU1iwVyDZgFGUAPBYV6M4fT1pDxKEp/8m2bHXXNwjbG/2/OMOkQAqBW
	3yu+mWjTVFf03F3sG/MY2HY6XE6SZgfvA53GTy3VGCHXrncV3T18EA/4sZUFschfCnj1PmLYF0P1F
	U3e2nv7gTqoxy9OO3A2M4Nk3bDolF96dSJaEacNrtKZgpBZdR1ZuZRacCoVr9BQdQ0vP4Y1qh4D4J
	J7QLZbzM4kgL9ycLoKb6NgLVzFXDDSQdsTTH7fNmQN68J80c0r7184HBlZGvMlFMyrBiiB4jDt+/m
	CglhjAErNe+2X3GpNaYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdC99-00073n-Hy; Tue, 18 Jun 2019 11:19:27 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdC8z-00072i-UY
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 11:19:19 +0000
Received: by mail-lj1-f195.google.com with SMTP id s21so12690615lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 04:19:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4qoZlqk786u0ouo5C1bSIhLOmlf/OwDifTle645F2Ao=;
 b=WKwqWv3wvdbiUHSO9rNrm63Wsm/mi/rV+YajWcRkwPaIWAosRXQHxzXsUjDxAZL5fS
 +loovhgMqXEx8xqeFNCChvq6B5vYtog2gyCzq1PPckZdakB+CTgNjW6pFA6Zv7Oi1NdA
 JXYWGr654ewmVbzfD3r0pJj1XTIapnS1GxWbzAy7XRhgXqkQNNu5YPGEuJ5tdmikMkTh
 pcYVB5bEubxA6X1zWc9lDNHc7/tx+vjBFi+PRmfvi32KUCe0iAv++upJh0d0TUL9P0Nq
 vfKpXxPCw6y+b2PNsJk4dvzNWxnIJWOzsKEcZyNyOGV4K92cseZUtGr88YcuXU83axJk
 kbMg==
X-Gm-Message-State: APjAAAWlMCJksbf4fPN3rGQ0oJbOJliZ8SOhOOl8frmW6Iq7Axur1RCF
 VgcWv2DaeBIKU5nxoj8pB6cyolSFkklwITHB8+s=
X-Google-Smtp-Source: APXvYqyaAsONWcgbY2o5yFZeMPs1jPVCvqjLmSUQYkv8lHgrbhoZJSavDZReKMqZGPesSXIq2YQ7Bz2IfCq51tvkl/0=
X-Received: by 2002:a2e:2b57:: with SMTP id q84mr15735189lje.105.1560856755698; 
 Tue, 18 Jun 2019 04:19:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190617083704.3941-1-horms+renesas@verge.net.au>
 <20190617083704.3941-2-horms+renesas@verge.net.au>
 <CAMuHMdUu2T2+Ri_xEq+Nr1qD_Dm067TDkfxTDpduX4xia2FGDQ@mail.gmail.com>
 <20190618104455.72jyrvwf2vut76hy@verge.net.au>
In-Reply-To: <20190618104455.72jyrvwf2vut76hy@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 18 Jun 2019 13:19:02 +0200
Message-ID: <CAMuHMdVFn+sTXhbsM_tUsqSPeAG4b=zbUne=FaQedZgCBo4_oQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: renesas: r8a77990: Add cpg reset for
 LVDS Interface
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_041917_988331_FC5A585D 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Takeshi Kihara <takeshi.kihara.df@renesas.com>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

On Tue, Jun 18, 2019 at 12:45 PM Simon Horman <horms@verge.net.au> wrote:
> On Mon, Jun 17, 2019 at 10:43:09AM +0200, Geert Uytterhoeven wrote:
> > On Mon, Jun 17, 2019 at 10:37 AM Simon Horman
> > <horms+renesas@verge.net.au> wrote:
> > > From: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> > >
> > > It is necessary to reset the LVDS Interface according to display on/off.
> >
> > This is not the LVDS interface.
> > The LVDS interface has its own device node.
>
> Thanks, how about a changelog more like this?
>
> arm64: dts: renesas: r8a77990: Add cpg reset for DU
>
> Add CPG reset properties to DU node of E3 (r8a77990) SoC.

Thanks, much better.

> According to Laurent Pinchart, R-Car Gen3 reset is handled at the group
> level so specifying one reset entry per group is sufficient. For this
> reason <&cpg 724> is not listed as a reset for "du.1" as was the case in an
> earlier revision of this patch.

Do we need this last sentence?

Note that "dt-bindings: display: renesas: du: Document optional reset
properties"
hasn't been accepted in -next yet.

> Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
>
> > > Therefore, this patch adds CPG reset properties in DU device node
> > > for the R8A77990 SoC.
> > >
> > > According to Laurent Pinchart, R-Car Gen3 reset is handled at the group
> > > level so specifying one reset entry per group is sufficient. For this
> > > reason <&cpg 724> is not listed as a reset for "du.1" as was the case in an
> > > earlier revision of this patch.
> > >
> > > Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> > > Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> > > Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> > > ---
> > > v2 [Simon Horman]
> > > - only add one reset entry per group

> > > --- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> > > +++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> > > @@ -1766,6 +1766,8 @@
> > >                         clocks = <&cpg CPG_MOD 724>,
> > >                                  <&cpg CPG_MOD 723>;
> > >                         clock-names = "du.0", "du.1";
> > > +                       resets = <&cpg 724>;
> > > +                       reset-names = "du.0";
> > >                         vsps = <&vspd0 0 &vspd1 0>;
> > >                         status = "disabled";

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
