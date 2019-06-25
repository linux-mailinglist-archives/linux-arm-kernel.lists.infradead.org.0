Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8745455615
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 19:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzYjGwscTU8p6xwFLgpSuJzyiVo3mhEtu/yabE1Is3Q=; b=Tsl8ufZ2dYSX8F
	+nhi4+syIVKl00E8yXi7S7IPF3Xoehhus2tza3ECZFlXDw/CPzbpcymVR9SzQbjYpCBciNCFXH3CV
	+ivtzTcwSjuWJ5kzl3pwI9D2bQnTW5TOvWrPlpgV+IQxYZc7H1YwVf5lkpvSF0v+VhdGWLlC9jlC+
	JHxHoeHdcXtqiI9bsrspMcUhbk0uondqdEksCm3PiM3kh3OT0k3xiuhKtO1yYNDNZ2MEalX2bHi57
	R8rUEg7u5na+hAR21E/9IC8L/IbVapCSnBwrs8VVfI8XjXMzOi7ffi3SH73yfY8wfvID88mjDqzTp
	caGa7uL10jrDvVAvpCoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfpPk-0004IL-3R; Tue, 25 Jun 2019 17:39:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfpPX-0004Ho-Lh
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 17:39:16 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABDF02084B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 17:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561484354;
 bh=uN+wDDacNJwqx+v/3/n9nLahoHqzeiFAwdlzYipdI4Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DZClxw/ihopBvtSbOR8Z1H0A4Pac9E37GVJDGLb5uGZFu+kZDSY5rK6XQLgx77MGu
 PZWac+VgZuLeOQlZkw5MTWkK76V3Cvn5l724U3UUKKRahQ4StmpEdHw7+tMuFEZ35w
 f0pAHmJoix4gJmL4t9ALd8FeAQUbyBDdcKOUDJ8U=
Received: by mail-qt1-f170.google.com with SMTP id x47so19305829qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 10:39:14 -0700 (PDT)
X-Gm-Message-State: APjAAAWlsjzQUc4JJ6e1+Cs+KlHFq7Fsyd0mSflRBaQx6mHC+z8JcMkx
 zVY90B0k7csr8gJxgzS7Eb+Y4eKybYtnPuy7pA==
X-Google-Smtp-Source: APXvYqyklRzybJRVDTEpfp0SeahUkH+awTTyyTlDMslpGY15qipWFkQLHnSeins0DWa3Bf2iY4HJCCw2GsgIen75KcU=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr65154134qve.72.1561484354003; 
 Tue, 25 Jun 2019 10:39:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190623043801.14040-1-icenowy@aosc.io>
 <20190623043801.14040-6-icenowy@aosc.io>
 <CACRpkdbbxgeGPh1oKfyKKOMhpXiz4sQWjZv23FbYaafCz6NyCQ@mail.gmail.com>
In-Reply-To: <CACRpkdbbxgeGPh1oKfyKKOMhpXiz4sQWjZv23FbYaafCz6NyCQ@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 25 Jun 2019 11:39:01 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+w-+cRwfAMu=kZPK=e85ujq8hu9Lh=jjf+Qy=R7C-AQA@mail.gmail.com>
Message-ID: <CAL_Jsq+w-+cRwfAMu=kZPK=e85ujq8hu9Lh=jjf+Qy=R7C-AQA@mail.gmail.com>
Subject: Re: [PATCH v3 5/9] dt-bindings: vendor-prefixes: add SoChip
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_103915_723482_CBE9D4EB 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 7:55 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Sun, Jun 23, 2019 at 6:39 AM Icenowy Zheng <icenowy@aosc.io> wrote:
>
> > Shenzhen SoChip Technology Co., Ltd. is a hardware vendor that produces
> > EVBs with Allwinner chips. There's also a SoC named S3 that is developed
> > by Allwinner (based on Allwinner V3/V3s) but branded SoChip.
> >
> > Add the vendor prefix for SoChip.
> >
> > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> > No changes in v3.
> >
> > Changes in v2:
> > - Add the review tag by Rob.
>
> Should I apply this to the pinctrl tree? Rob?

I'd like to take these 2 because we have lots of vendor prefix changes
(adding a bunch of undocumented ones) this cycle.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
