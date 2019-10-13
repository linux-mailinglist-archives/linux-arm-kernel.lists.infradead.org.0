Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D6DD56F3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 19:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFW3m/ZhewLS/xtCwlRXNFG65RseFs31leFnk8bHN6Q=; b=MQKRyAnzItnTH6
	4sydEzANgUtjYdtghvcQxKt0K7aFRt/dOITt/ZcTwUoo03/KgSyy9S8Gb6G37Qg+wKcjRVSyaolld
	BNzFzBwEGWpeHubFpm7VUdoP9CBXy9cywOUrtNSLSI/mX7+SEejb5Km0rM4A5z42vPc8mOR3Y877n
	HfKyUB8+qpeU9VeAlWpM8abkWhTslG4erFUfFRbgBb7ianpJfZUtRILw6jrJfpOB5jABdAEu6u3Lr
	6cmRM1xwQzscoPT4gF3xHSCR05veJA+VZbk4V2+hegr6y6Zn0Pxhfgpfg2OWJkS7NOo6VSM1HYHZ+
	/fYTHeNadRk79eOMwVPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJhGU-0008Ms-Dk; Sun, 13 Oct 2019 17:02:42 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJhGK-0008MF-5b
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 17:02:34 +0000
Received: by mail-io1-xd43.google.com with SMTP id q10so32497840iop.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 10:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y5EXXBAwwQtPJ53xui2dWiC39EIVV1N/CWUXrjlPr7o=;
 b=aaz/dotn+umYNxbMf0N27lTns2rUEnRXr3ncyAS8unjQPXipinDv30U1G3pR/NaY5x
 5TQlgYYDRtl50mIFY6g/ZFU/rETQ0X9RMjm6VgXusBevN254jSYYkPM2GM7E7BGBDJCc
 RmwkhOVMrLkI1mZ4BKvd/MXUBhijYnSSgj1vc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y5EXXBAwwQtPJ53xui2dWiC39EIVV1N/CWUXrjlPr7o=;
 b=SntPpgRc3r5Smd/64vTNWS1qzl/G6pEyl0zbrBkhnt+4w39Q6gDUssTp+Lr9abg4tA
 dNfi3Oz1zsa30AkX0PFZKA+MvSk4+rPANv9lJ7ha+dcyTH2BwMPai0HSWN3VdaocZQZ7
 1kxWhMq67xfshOwQiZm6G8G83Xwska6Ry0rZ6/LNZBDuzQ/VIHaS6nj+ferpv2CxfL91
 PdUOHVLOjqJ26BrP3AfhKatLEGggnjwukpRUNRK7wArt1XAZsEOVYBzdF+ernA84PQQx
 iUSOvDooWdy3iTyJjqNVSZ75Tknt7MLQA8RZ3RnADUkrG5kZIg9eygufcwhnqLU7Gu0m
 j38Q==
X-Gm-Message-State: APjAAAUOP3P7ol/UIxqj9DkfTCX3RXfEkLF8XHBbQq7/e24aRDXVS2eI
 VpzYzmWcHiLHkkbcAS0+flaKkwujUbY4RzhtKgP13K0xUzE=
X-Google-Smtp-Source: APXvYqxe8O/zqzfE+BE/bWBaXmZwc8ddmkzF2zTRQsw5hvZGzCCUSKkZI14FxXesaHp6rT1xlHYB8wKYoOJ+CQ4U80w=
X-Received: by 2002:a6b:5c0f:: with SMTP id z15mr23291130ioh.173.1570986150676; 
 Sun, 13 Oct 2019 10:02:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
 <20191005141913.22020-2-jagan@amarulasolutions.com>
 <20191007093122.ixrpzvy6ynh6vuir@gilmour>
In-Reply-To: <20191007093122.ixrpzvy6ynh6vuir@gilmour>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sun, 13 Oct 2019 22:32:18 +0530
Message-ID: <CAMty3ZA1azP3kkJPw6oZudcSQksF6i+STeW=oOh65cfHsj0QrQ@mail.gmail.com>
Subject: Re: [PATCH v10 1/6] dt-bindings: sun6i-dsi: Add A64 MIPI-DSI
 compatible
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_100232_635735_31C7917F 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 3:01 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Sat, Oct 05, 2019 at 07:49:08PM +0530, Jagan Teki wrote:
> > The MIPI DSI controller in Allwinner A64 is similar to A33.
> >
> > But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
> > to with separate compatible for A64 on the same driver.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml        | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > index dafc0980c4fa..cfcc84d38084 100644
> > --- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > +++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > @@ -15,7 +15,9 @@ properties:
> >    "#size-cells": true
> >
> >    compatible:
> > -    const: allwinner,sun6i-a31-mipi-dsi
> > +    enum:
> > +      - const: allwinner,sun6i-a31-mipi-dsi
> > +      - const: allwinner,sun50i-a64-mipi-dsi
>
> How did you test this? It will report an error when running the
> validation

I did follow the v9 comments [1] and forgot to do dt-doc-validate.
will send the v11 for this patch alone, will that be okay?

[1] https://patchwork.freedesktop.org/patch/307499/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
