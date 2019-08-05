Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5476F8278D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 00:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAL/epUIn8WIgh3TuwVm3cNZwnNHVbZrpqg4iUjg2FU=; b=LXmqB9v9CKTFiN
	cvmVa4m4OiPJgwDLDtcQHUxh2SoG8jYVBCUbE2E7Kagp9DIZlnF74hpdEOwLGo/9umz6l6QVV+sGz
	pPfe13gP5LecPCFm2UB6Wyuyrq6ojpf4VBENHmV6+QW48mDsak9v2zCCloXh2HWByCf9I++tPBR69
	aV7Y3+WUORh6ILkZBIEOl/jca0LAgsSlhworwJR0CGOORWlWLSiRZ2/i+CFcWeWpB/biwycbhkSTT
	Fbp+KECWGuGHtzi+GtvkPrypy3ZLfr6tRveJyG2vErf1qDCmAJ9mGwtmeHEWcFCA46PAdgcnaPn9i
	I3LRZNMiu6ONb2+PWKTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hulM7-00086i-O7; Mon, 05 Aug 2019 22:21:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hulLy-00085K-4r; Mon, 05 Aug 2019 22:21:19 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CDA0216F4;
 Mon,  5 Aug 2019 22:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565043677;
 bh=Y+a5+dRoi0YVw6gPz9RVozw6iDMpBq9OZh+AXfZi5Is=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=z/afeF4DRV9zUHEkPb+3qW3XLRei+MecL3vBZUcAqIZnRVD3TzEdFABt9R7Gyx8+2
 mC4ULdgCWDa0KHGMotuto6AT7glPsJk8Gi4J1S9XTjokZW1S8RGbjpGIhEFQH2mQAx
 3owQagg6CtWhorEXMf6owMkDj/bpNJ8iOYzIe//g=
Received: by mail-qt1-f169.google.com with SMTP id 44so51560327qtg.11;
 Mon, 05 Aug 2019 15:21:17 -0700 (PDT)
X-Gm-Message-State: APjAAAUZFG2/FaUHjvPO7uOsjLNKzu9CF+I5wOtA0bc1r2ScFIgqQdAK
 DrdJHxD+pF7Vbb8hROTF/MHrFkedKx6zaDK6Gg==
X-Google-Smtp-Source: APXvYqyG5ow10xlO87/4O5/N0US5x/vWmMvRNW7227/h0HIqSzUYZ0L7Wk/nO+vhCYUgRIXKhM/9We9oSL2w6AZTwf8=
X-Received: by 2002:a0c:8a43:: with SMTP id 3mr283692qvu.138.1565043676810;
 Mon, 05 Aug 2019 15:21:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190731124000.22072-1-narmstrong@baylibre.com>
 <20190731124000.22072-3-narmstrong@baylibre.com> <7hblx3gua3.fsf@baylibre.com>
In-Reply-To: <7hblx3gua3.fsf@baylibre.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 5 Aug 2019 16:21:05 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL_L2qHe334sB57hR_coRhawKiqXYjKAQDJt_DHfBamBQ@mail.gmail.com>
Message-ID: <CAL_JsqL_L2qHe334sB57hR_coRhawKiqXYjKAQDJt_DHfBamBQ@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: arm: amlogic: add bindings for G12B
 based S922X SoC
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_152118_211624_1C259D76 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-amlogic@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 3:46 PM Kevin Hilman <khilman@baylibre.com> wrote:
>
> Neil Armstrong <narmstrong@baylibre.com> writes:
>
> > Add a specific compatible for the Amlogic G12B family based S922X SoC
> > to differentiate with the A311D SoC from the same family.
> >
> > Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> > ---
> >  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> > index 325c6fd3566d..3c3bc806cd23 100644
> > --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> > +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> > @@ -139,6 +139,7 @@ properties:
> >          items:
> >            - enum:
> >                - hardkernel,odroid-n2
> > +          - const: amlogic,s922x
> >            - const: amlogic,g12b
>
> nit: in previous binding docs, we were trying to keep these sorted
> alphabetically.  I'll reorder the new "s922x" after "g12b" when
> applying.

No, this is not documentation ordering. It's the order compatible
strings must be in.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
