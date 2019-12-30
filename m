Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E5212D2F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 18:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pgqOP4yWlY7bkbeZDWD5XLa9jLw+ZzTTtHbqIq1fThg=; b=ExQD9nHmCBN838
	mVzuJdhW4AzN5H4xhilIbvtsTn7P42FmjmB9Dg8HR18mQviGmg/YSkjjNGXqoQg9I79LhHajxD6S+
	xQtP9nICSfWq0FOs6FnB9JQ2hgfCgCss4n/IeiqrPx8HUWiyXlsTxpznI+7ALxsPoqWCLw1rbvT5O
	UHNKuyV/w/5dshocIDW71lucytuNE4XS3pAmoUF6OBsvuLk959TqiIVvr9tpb4UwVy6vxODlS9bdv
	xcRduepwizoZrc6Yzhj2Z++KjFg6DW48B11Ev6z/WGKQSjfe9p7AFkcDd7sElBbl2UvoPtBr3zbwi
	bWy/F91VSGHkqRCqqV/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilzED-0005AJ-1Q; Mon, 30 Dec 2019 17:53:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilzE1-00059c-L6
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 17:53:07 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CBA220748
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 17:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577728384;
 bh=qiX/ki1VZ10dHl+G3bmaxWsgUgJaJdPyetC5TOSqHeo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fYlbAl/999Il/xXeYC00+VWL3M154DKx/6rNFXomPd20BDV31BDm0LjotziGAJsGw
 X2TK1VOOtFUnn7NY/8sgs5AqG4MKsV8kdTc5raNXboKso5z0AcnpUGgBNYJ6wXnUW7
 xQAmwkL4nWfGUohfqQwBwXkzdchfKpy6l4EBiYUc=
Received: by mail-qt1-f171.google.com with SMTP id n15so30113262qtp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 09:53:04 -0800 (PST)
X-Gm-Message-State: APjAAAWabjdJEyZwLpDZIBOFnHgK9kKcJ/dvHq546CcKbYMeScY8u+CI
 j8UcbErQXFBBsvUdwBee9KC6WXMk4I412YURfQ==
X-Google-Smtp-Source: APXvYqyaZydxwFW02BlCZCg9ra5E5cTvKaoWIYuHbN3644YIXtRs5mhdInVI5/ETrktTRqg3jjzf+amLHcIDIwstXic=
X-Received: by 2002:ac8:59:: with SMTP id i25mr49935662qtg.110.1577728383766; 
 Mon, 30 Dec 2019 09:53:03 -0800 (PST)
MIME-Version: 1.0
References: <20191224010020.15969-1-rjones@gateworks.com>
 <20191224010020.15969-2-rjones@gateworks.com>
 <20191226232625.GA2186@bogus>
 <CAOMZO5Aj+PfzXrYoV8LxKStdQ-B0BLdMV16L3ya0NokozG479g@mail.gmail.com>
In-Reply-To: <CAOMZO5Aj+PfzXrYoV8LxKStdQ-B0BLdMV16L3ya0NokozG479g@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Dec 2019 10:52:52 -0700
X-Gmail-Original-Message-ID: <CAL_Jsq+8tpxUqzPt2wP668_GTmtaSuaBRSO_k7db4Jt06MWk9g@mail.gmail.com>
Message-ID: <CAL_Jsq+8tpxUqzPt2wP668_GTmtaSuaBRSO_k7db4Jt06MWk9g@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] dt-bindings: arm: fsl: Add Gateworks Ventana
 i.MX6DL/Q compatibles
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_095305_734153_A3F7DE7E 
X-CRM114-Status: GOOD (  16.29  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Robert Jones <rjones@gateworks.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 5:34 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Rob,
>
> On Thu, Dec 26, 2019 at 8:26 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Mon, Dec 23, 2019 at 05:00:16PM -0800, Robert Jones wrote:
> > > Add the compatible enum entries for Gateworks Ventana boards.
> > >
> > > Signed-off-by: Robert Jones <rjones@gateworks.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > index f79683a..a02e980 100644
> > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > @@ -126,6 +126,7 @@ properties:
> > >                - toradex,apalis_imx6q-ixora      # Apalis iMX6 Module on Ixora
> > >                - toradex,apalis_imx6q-ixora-v1.1 # Apalis iMX6 Module on Ixora V1.1
> > >                - variscite,dt6customboard
> > > +              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana
> >
> > Keep entries sorted.
>
> Just for clarification: shouldn't the entries inside fsl.yaml match
> the dtb file names?

No. They should match top-level compatibles. However, I'd expect a 1:1
relationship of dtbs to top-level compatible entries.

> In case of the i.MX6Q based gateworks board, this should be:
>
> gw,imx6q-gw51xx
> gw,imx6q-gw52xx
> gw,imx6q-gw53xx
> gw,imx6q-gw5400-a
> gw,imx6q-gw54xx
> gw,imx6q-gw551x
> gw,imx6q-gw552x
> gw,imx6q-gw553x
> gw,imx6q-gw560x
> gw,imx6q-gw5903
> gw,imx6q-gw5904
>
> Please advise.

Yes, if this is 11 different boards, then yes, I'd expect 11
permutations for the schema.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
