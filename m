Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F5F9943F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 14:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aW/MoF6FtRd7h5FljyK3g28UUfDyRVgfVcoURdHeMLw=; b=VqhHSTwU5ayo7V
	6SzLdVTnRJNM4BcOJpv1Y7CstaWWJY3UxYDNccF7HAU4MR0PfjGX73A6r4gQEJKZ5hR/Wgqk1bc3l
	KFv6MfDJ2R/UdPFjmskSsE6puuYL6NZnL5pjrl9HBlv+GOgYt6XXmOKwPEEjPiGd3VYP86Qc6IGLW
	myCHL9TSuJloVQo5/NfHp3Ki39gcsALjsF+aAltg4OF4Nus6HfuSnTaOqsnNUymfvctMJKXOnbkjd
	cVuXEJCg1ovtFx/+pBfz/JidY2fkATgYNatgUZbD5gAYP5cvqIqzrlFuyV6t+6fLNt5/RjgkXSwI7
	WvAVK/xF/EDN+4cd2uSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mZx-0003Gz-O1; Thu, 22 Aug 2019 12:52:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mZQ-00034y-Tf
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 12:52:06 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34C6B21726
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 12:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566478324;
 bh=M+Cv//+XfrETRuLsfLdPmRxWKe2q0redejZXokNjvFQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q2wTLVosMvILxnc9Lw9AIYfhRlWhXFI7PJchdrPati0756F0Lz9FjEGI7PQ9e16lC
 aS9vv0kEAUlHPrbAG9z8xFnPV7PEU3s7u1jQ0aCewbDybe52QMBrdetWAHg3y0hHK+
 h2g5SqKoLrGax+PD5EtieoOuK42O3+93WLXHlp/k=
Received: by mail-qt1-f176.google.com with SMTP id 44so7441732qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 05:52:04 -0700 (PDT)
X-Gm-Message-State: APjAAAXSPuJuztZEYqcLPMn9co5muR8rMfCi+AaQaqe7PN3N+GPuErUl
 ycpbrJj+LoSw6fKnnoO4szyX5K6V9c4DK/GIKw==
X-Google-Smtp-Source: APXvYqyud1uld7PRlHZyZGc9pJSR2E2SAPODxijwM1XUjXe1gqeZih14Umvdcphw6A3XJwJs9+MIzzyXSO4CKcIra7w=
X-Received: by 2002:aed:24f4:: with SMTP id u49mr36868968qtc.110.1566478323380; 
 Thu, 22 Aug 2019 05:52:03 -0700 (PDT)
MIME-Version: 1.0
References: <1566315318-30320-1-git-send-email-krzk@kernel.org>
 <1566315318-30320-3-git-send-email-krzk@kernel.org>
 <CAL_JsqJLSZ50tdFcdPFc2ifcDoFZFuw=SoKsunzjtAhZ-11fBg@mail.gmail.com>
 <CAJKOXPfkNcWw9sunwXGRz42jOL0cdRC-iiHLtWCYvo5oxCMwFQ@mail.gmail.com>
 <CAL_JsqKAH6n1sMoWOhfiHKxgREr-EN1tw0QtC1H8Fm=a7PNzOA@mail.gmail.com>
 <20190820202142.GA15866@kozik-lap>
 <CAL_JsqKBWB2FiVjYo9O7DPw1JYJvan7uRgbR0VBG=FfHDVYdZQ@mail.gmail.com>
 <20190821175458.GA25168@kozik-lap>
In-Reply-To: <20190821175458.GA25168@kozik-lap>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 22 Aug 2019 07:51:51 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+YZ9KdCCT1grtpf7Z1o=-mFuq3O=o7iVGSAhJYO1-=Ww@mail.gmail.com>
Message-ID: <CAL_Jsq+YZ9KdCCT1grtpf7Z1o=-mFuq3O=o7iVGSAhJYO1-=Ww@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310
 compatibles
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_055204_972273_BBAE8CAA 
X-CRM114-Status: GOOD (  16.43  )
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 12:55 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Tue, Aug 20, 2019 at 03:27:39PM -0500, Rob Herring wrote:
> > > I see. If I understand the schema correctly, this should look like:
> >
> > Looks correct, but a couple of comments.
> >
> > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > index 7294ac36f4c0..eb263d1ccf13 100644
> > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > @@ -161,6 +161,22 @@ properties:
> > >          items:
> > >            - enum:
> > >                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> > > +              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
> >
> > Is the SOM ever used alone? If not, then no point in listing this here.
>
> SoM alone: no, because it requires some type of base board. However it
> will be used by some customer designs with some amount of
> changes/addons.
>
> Looking at other aproaches, usually SoMs have their own compatible.  In
> such case - I should document it somewhere.

I wasn't suggesting not having the compatible for it, but you don't
need it in this list because that is not valid. You have to list it
with the base board compatibles.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
