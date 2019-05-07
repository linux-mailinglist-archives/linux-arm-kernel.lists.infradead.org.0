Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D66C1680F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 18:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLVvlzIuOEQ6UZmW2X+16Gu7sR3kbPNcep0vLh33ZD0=; b=F8oljxsvABa2zZ
	8g7dBn3HukNN0UDLKVESIA8oIlEBojV/3/IauwfqK9NuH/4/VtZdr2fpMo0TkCfAqcwMrWN/XkGgX
	4zPTiylwnn8y39HMV7DQSx8B/Sp/tPcV33Mw5iHfW1YT89sBmChO1DVWhhE6Ulb6M7UV/5aPwxO4E
	BkHvYY2kKM//ZAZjzsJyZBn5limlus8nGI4crtj/fXzZg9jFfrl+Ni3ueBXnfVJq9z3VV3Pp0m9lA
	PulWPUw1uzM4+H1pCZ6w2HGk4IGaJFUwmtG36eoC7QfCOq/BsBkrQKI7BxdIkUFkWEoxHT4+gBU1v
	uiOMk2xXsP9a2Jz63iKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO38g-00008x-JI; Tue, 07 May 2019 16:40:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO38Z-00008Y-L0
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 16:40:17 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E2652087F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 May 2019 16:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557247215;
 bh=bvy3TxkD6QYNRWZoUtKKAkzQfSrcSJIcIGTYRGnLKug=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JTCJWQqMALzVnz8pn0XWSps1BGXqUlUzq+/+NT/Ch42t/H9o2FEbSvt7oC++u0ThX
 0LqL/ynMHT3x9ny1Txnf+8YJ2NzB7zdliZvC6DP6MdKAQSEWt6XwZOqSXvm/uK3iJX
 N9Cmj98zvy+F+ywMFFWm43oZlpxOWVcThstqdmVA=
Received: by mail-qt1-f174.google.com with SMTP id m32so16710099qtf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 09:40:15 -0700 (PDT)
X-Gm-Message-State: APjAAAXCVwpBhXg/ML9gimdEqXfd0JiKPv9dmttSc2UkbBznG19/Kz7i
 bVh3W9tvJ4v7dMn4cJG8Go7rMMiir9laBK1DHA==
X-Google-Smtp-Source: APXvYqwp5oN/U/L3GW2JMFZpyrG4LHPEVHaqtylnCTc4SbNGRF2GMOSnOZpjLlwUzTir6yXm3AenT0Q78p+6iSnukXE=
X-Received: by 2002:ac8:641:: with SMTP id e1mr27627572qth.76.1557247214367;
 Tue, 07 May 2019 09:40:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190426055558.44544-1-ran.wang_1@nxp.com>
 <20190501235410.GA25492@bogus>
 <AM5PR0402MB286539A070BDEEDFC3304F0EF1310@AM5PR0402MB2865.eurprd04.prod.outlook.com>
In-Reply-To: <AM5PR0402MB286539A070BDEEDFC3304F0EF1310@AM5PR0402MB2865.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 7 May 2019 11:40:02 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+tmUCjZw7ybhKTGg0NNfc+JsOQ30vArfHzdw14XoWm5A@mail.gmail.com>
Message-ID: <CAL_Jsq+tmUCjZw7ybhKTGg0NNfc+JsOQ30vArfHzdw14XoWm5A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: ls1028a: Add USB dt nodes
To: Ran Wang <ran.wang_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_094015_707500_0A439AC3 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 3:48 AM Ran Wang <ran.wang_1@nxp.com> wrote:
>
> Hi Rob,
>
> On Thursday, May 02, 2019 07:54 Rob Herring wrote:
> >
> > On Fri, Apr 26, 2019 at 05:54:26AM +0000, Ran Wang wrote:
> > > This patch adds USB dt nodes for LS1028A.
> > >
> > > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> > > ---
> > > Changes in v2:
> > >   - Rename node from usb3@... to usb@... to meet DTSpec
> > >
> > >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   20
> > ++++++++++++++++++++
> > >  1 files changed, 20 insertions(+), 0 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > > index 8dd3501..188cfb8 100644
> > > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > > @@ -144,6 +144,26 @@
> > >                     clocks = <&sysclk>;
> > >             };
> > >
> > > +           usb0:usb@3100000 {
> >                      ^ space needed
>
> Yes, will update this in next version.
>
> > > +                   compatible= "snps,dwc3";
> >
> > Needs an SoC specific compatible.
>
> Do you mean change compatible to "snps,dwc3", "fsl,ls1028a-dwc3" ?

Well, that's the wrong order, but yes.

> As I know, so far there is no SoC specific programming for this IP, so do
> you think it's still necessary to add it?

Yes. All the bugs and quirks are discovered already?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
