Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D47E7B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtDuwGVTk+t0r8DUBGYltnADRb1ZTC4eZ/lX4OgpMn0=; b=GDNL/u7JIO8g+C
	C7POh3DvRJuyPXEXpKll7NMwui8VVddS2DF1EbfRdtQdrdjdgCEcl1+Z9JZgXoWCKgryyNX9PapZF
	WEzdJvWezbahWGUIGaYS7izcILjPROusCVRKUbCDWVmKuosiNsHAMqhmZ/R5RlW97jOZOxY2Ss9p+
	HKARs1hI2RfQZDoF2PyK3XmGKujvftWZjqD00FlSpRsS9FJzGuvvtXc2p/I7hu2FROaY7nzXqcJIe
	cDjYjsgbnf27lNMxdZHZDGiwHOo+Yqf8Anr+Uy3bTSSDl/+jQlu11kgTk9Feitzcp0PSxwBM5yCCG
	43TlqUXWstJLVbkrSu8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL96e-0004Lm-Bo; Mon, 29 Apr 2019 16:26:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL96V-0004Kz-Fl; Mon, 29 Apr 2019 16:26:10 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDC4E216FD;
 Mon, 29 Apr 2019 16:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556555167;
 bh=bj7+n3P2zt1GsKkIXPcHMBO06qBROIEGOQ+zCdPaqFs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Yxj4nj4RhtP2Dp8y/Di6Rzz6NsAcd3KJTq9TajPpD+r5Gpv8iiusYuRWYLRP/Ev17
 OJkUjzbPoUFvwDC86helwDwR7/ou0qo/ZS3tLiMZsOVx+/oeRBhg1DxHke921YYTcA
 i+JXFDh2Yjnbl5k3YHlkRVjeV0rA3JZobObf87P8=
Received: by mail-qt1-f170.google.com with SMTP id h16so6940880qtk.6;
 Mon, 29 Apr 2019 09:26:06 -0700 (PDT)
X-Gm-Message-State: APjAAAWX8U+mHLlvBYh644hqAdI3JyDT9SuE7PySJ0Hh5cSuZEarZIxu
 2m5p9+Y3zPdgap6e84bhtEU5I+DvQUFRyOwghw==
X-Google-Smtp-Source: APXvYqxmrpfobhstOL9g61ZfeyOcZLaz4w2E+msmiFaUvM+oogy+DnVE7G6vyrl1NOxtstfN8MjFYEzeOYV5F2BJoGI=
X-Received: by 2002:a0c:d2f2:: with SMTP id x47mr48617546qvh.90.1556555166043; 
 Mon, 29 Apr 2019 09:26:06 -0700 (PDT)
MIME-Version: 1.0
References: <1556261237-13823-1-git-send-email-chunfeng.yun@mediatek.com>
 <1556261237-13823-4-git-send-email-chunfeng.yun@mediatek.com>
 <20190426204906.GB15074@bogus> <1556453788.10179.224.camel@mhfsdcap03>
In-Reply-To: <1556453788.10179.224.camel@mhfsdcap03>
From: Rob Herring <robh@kernel.org>
Date: Mon, 29 Apr 2019 11:25:54 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKXKRetoy4u_yAMgS+RA0vaRhzjR0zpLjKMtgRvFHXn7A@mail.gmail.com>
Message-ID: <CAL_JsqKXKRetoy4u_yAMgS+RA0vaRhzjR0zpLjKMtgRvFHXn7A@mail.gmail.com>
Subject: Re: [PATCH v4 3/6] dt-bindings: usb: mtu3: add properties about USB
 Role Switch
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_092607_561962_7C64493A 
X-CRM114-Status: GOOD (  25.34  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 7:16 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> On Fri, 2019-04-26 at 15:49 -0500, Rob Herring wrote:
> > On Fri, Apr 26, 2019 at 02:47:14PM +0800, Chunfeng Yun wrote:
> > > Now the USB Role Switch is supported, so add properties about it
> > >
> > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > ---
> > > v4: no changes
> > > v3: no changes
> > >
> > > v2 changes:
> > >   1. fix typo
> > >   2. refer new binding about connector property
> > > ---
> > >  .../devicetree/bindings/usb/mediatek,mtu3.txt          | 10 ++++++++--
> > >  1 file changed, 8 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt b/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
> > > index 3382b5cb471d..6e004c4a89af 100644
> > > --- a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
> > > +++ b/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
> > > @@ -27,7 +27,9 @@ Optional properties:
> > >   - ranges : allows valid 1:1 translation between child's address space and
> > >     parent's address space
> > >   - extcon : external connector for vbus and idpin changes detection, needed
> > > -   when supports dual-role mode.
> > > +   when supports dual-role mode; it's consiedered valid for compatibility
> > > +   reasons, and not allowed for new bindings, use the property
> > > +   usb-role-switch instead.
> > >   - vbus-supply : reference to the VBUS regulator, needed when supports
> > >     dual-role mode.
> > >   - pinctrl-names : a pinctrl state named "default" is optional, and need be
> > > @@ -36,7 +38,8 @@ Optional properties:
> > >     is not set.
> > >   - pinctrl-0 : pin control group
> > >     See: Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
> > > -
> > > + - usb-role-switch : use USB Role Switch to support dual-role switch, but
> > > +   not extcon
> >
> > Coordinate with the Renesas and HiSilicon folks implementing the same
> > thing and put this in a common spot.
> I'll prepare a patch for it, and CC Biju and Yu
>
> > However, I think this should not
> > even be needed as knowing the controller capabilities (based on the
> > compatible) and knowing the type of connector should be enough
> > information to tell you if dual role is supported or not.
> Some Dual-Role controller drivers already used extcon framework to
> handle role switch, if try to support the new USB Role Switch framework,
> the driver may want to know which way will be used.

Wouldn't it know by presence of 'extcon' property or not?

> Sometimes users also want to use dual-role even use the type-A, such as
> use sys interface to handle role switch, so only knowing the connector
> type can't tell driver which way to use

That use case doesn't sound like something that should be in DT
though. That would be possible for any controller that supports
dual-role. Though perhaps that requires some specific Vbus wiring? Or
a cable with Vbus disconnected. Either way, doesn't sound USB
compliant.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
