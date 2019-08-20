Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C10596597
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIrhBJOwyczeXZUFGEgFuw3McpWgTi2ppFaa0JgtLgs=; b=YaX3Uk8iQwlWfZ
	2sTWRlZ8Z+wO0mXm9Y5/W9rkaPM243l8r3qp4GBsQoTFt4cGuyiouGdEss2gfT/k1zxJmbWceg+sX
	KlpDFFIR3cwXasQhPwueOhJy09TReezPOsDtr5dwXHVhzarmsTzuzONZ850QiyyzJKUeRk6aSdHZh
	+U58+6Has5d9bNuO0l/3bt9xUuNIlOLKMYHXqRxzw8ypuW1+6l+ZyqfaXqVio2P2P0OcQVzKZIY6I
	CLV9PfLYt7ZPHWBYvxUAzOaUG5Q4E+1JvG/Sof6BMrgjHUV+kVgUVu7S0t/AGBVhCShm/swOAMDTU
	wruiFVebzNnExm8z3qDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06RJ-0004n5-M2; Tue, 20 Aug 2019 15:52:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06R8-0004mf-I7
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:52:43 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E9FB2332B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 15:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566316362;
 bh=zPFkoWhazwcOswQIN11F8cssHIWjMjC+C4+Eu5Mdx+0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ORMIJlxQPFacuquMw7UB2DxzpaaTlObm4ySkNhhB/hNiv5/0fvois8SDaC4TfL/uN
 WL+ih+nxz4DVDaqLRHtNoT57fb+la/+wSGO/Pch8t+HRK08tGpL/+bGSggDTFRfAka
 KNrnzjF1pNUwWnI/quOFditGLxfVIBDIkedLKuHs=
Received: by mail-qt1-f170.google.com with SMTP id y26so6582235qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 08:52:42 -0700 (PDT)
X-Gm-Message-State: APjAAAVLr1Jzjh+Mxbl4Q4WFCHRrOO7BTwm9vzeU1f/xyT97bblr4IPP
 tA0dNgZeDmIxXBPshVCtYIkrbpx5UOnqMWTSqw==
X-Google-Smtp-Source: APXvYqwtJUmVtro6jUEBE02WMEyBqqIruc8G65ghUIvXNND3CcohL1oCB2ITHWFckP8WQC8dUJVX22usvAwBDybS4VY=
X-Received: by 2002:ac8:7593:: with SMTP id s19mr26870702qtq.136.1566316361289; 
 Tue, 20 Aug 2019 08:52:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190819182619.29065-1-mripard@kernel.org>
 <20190820081525.celdosrgcvwoq6e7@gofer.mess.org>
 <20190820095028.l74sfvipwjjla6kq@flea>
In-Reply-To: <20190820095028.l74sfvipwjjla6kq@flea>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 20 Aug 2019 10:52:29 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJaH5wWCHScNZwN4jxqY5Q_UDZLnq+fghecBgYY752Lnw@mail.gmail.com>
Message-ID: <CAL_JsqJaH5wWCHScNZwN4jxqY5Q_UDZLnq+fghecBgYY752Lnw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: media: Add YAML schemas for the
 generic RC bindings
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_085242_621580_5324C430 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Sean Young <sean@mess.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 4:50 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi Sean,
>
> On Tue, Aug 20, 2019 at 09:15:26AM +0100, Sean Young wrote:
> > On Mon, Aug 19, 2019 at 08:26:18PM +0200, Maxime Ripard wrote:
> > > From: Maxime Ripard <maxime.ripard@bootlin.com>
> > >
> > > The RC controllers have a bunch of generic properties that are needed in a
> > > device tree. Add a YAML schemas for those.
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > For the series (both 1/2 and 2.2):
> >
> > Reviewed-by: Sean Young <sean@mess.org>
> >
> > How's tree should this go through?
>
> Either yours or Rob's, I guess?

Sean's because there are other changes to
Documentation/devicetree/bindings/media/sunxi-ir.txt in -next.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
