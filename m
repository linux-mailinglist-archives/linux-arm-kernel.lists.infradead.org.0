Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A780BBD6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 22:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krWWUMuzuCnNDbMi6BBN6FUW00KcoJ+LyIb6+8Si0Cg=; b=ie6hNP6NkW99MK
	KIqJy0/1w1ulGYHqUBvOETXxL382q7gkslQ2hZJ78Ua9nvGC4a8HsrgqWY6SfvLJl4+YKWUGVHUzm
	YZgbh0bk/4z+DN/WdOsRf+OWE76tJEVFrU1H8G1TRcfIrGl6HlzMfx5aWLR3BsuvbNuQ72QEMznvR
	DCTiKObasR1c5uRoroiutXXK7ql71CMPTqOa5Typ9cNTE3cbvOdj6XhfQeW1ZNhAHUpI+KVq2EEFB
	T7Jnb3J6OEHo5GCk3REcjAGp93uaSq/1AUyEijEpNCEN/ILhn9tYT2KSH7R3jGg2fmVcXbuYECKpI
	Fk24eSFlVg59Ncd+hXlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCVOw-0007Rt-Ge; Mon, 23 Sep 2019 20:57:42 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVOl-0007Q6-7F; Mon, 23 Sep 2019 20:57:32 +0000
Received: by mail-ot1-x344.google.com with SMTP id c10so13396861otd.9;
 Mon, 23 Sep 2019 13:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6c25qQsTeIPE9y+3+ZT0AbIPmrbpxHVzGa7akuxeXBU=;
 b=u0KoNwONLVDAye4B3NjPMQ0GIaXgrAmo677MziXVwc764mY7LMwTeDRHZwk1Q47ozk
 y9L8n4cGn9k8n0tsNkAUhQMErMbFm9EVlmHMcECZGs8gxDCgpCUYXXcWKlJb01S/ontV
 iJ/MfYNg0kaVadJBS5nehHQRaIbVQ9M8psrma9m3cCoyAJDD65MKOGgDapVVVYZcEFf+
 pa7hj1X/GyknoHHerWjEMPqGG4pI0e3SXekz0FoaYWezcIq1bv6W/lE8D/d1dVLiSeOr
 HjGRf6zGSHd6AWwWrAUtCIMg3COMZSx1qBmi4mh/w88UqvaR+gdHxnOm/6B96OH9k6bl
 c0UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6c25qQsTeIPE9y+3+ZT0AbIPmrbpxHVzGa7akuxeXBU=;
 b=JUK2pCGRwynyh2Zjn6liysZoOp1H2TqPeUnv3x5gi/DRnVNaBge8+9Fz1EDrFBZsdP
 VROHaLUnbjO8slSyFozfgYFx7+NxCJCeMS8HuvEdRlFhxUjiScEWWkLKxF934hXG+SGn
 SO1Pm0mFs3luYS/o/vincD/pXCbr3KaEd8XZyHLsmfjtwEStVlW2NSMZKTjxN8dOyy0/
 alpWCBukj4PHXSQgDzREmecIrjM0YsODA9W3Yis2W9Lk9Npamr59+a1R7jd59OtUbUNx
 IB7KrC2u6+xSQMomDarnhQ6caP/tTLms5Y2OlLNB62JVLD/WdJNz7qs7NwWEkJUFyf2f
 G67A==
X-Gm-Message-State: APjAAAXUrdM9WKd+eOyegO/HEpParIKdslvtQuqb4BQAujHEemGueW+L
 Uhje8Tm3gqsj27lxciLTlwA3c3cODUL1YNKp6zQ=
X-Google-Smtp-Source: APXvYqx9NdiDBVuyqZt9xSlPQAPNa3d0edQayrOgAnpbJnLWMpJMaNDfO9DISDG4XF7q6HeXFGHY3XzGml8EDUXbPgE=
X-Received: by 2002:a9d:7d17:: with SMTP id v23mr181560otn.81.1569272250579;
 Mon, 23 Sep 2019 13:57:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
 <20190921151223.768842-5-martin.blumenstingl@googlemail.com>
 <1jwodzs6ir.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jwodzs6ir.fsf@starbuckisacylon.baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 23 Sep 2019 22:57:19 +0200
Message-ID: <CAFBinCDrN2Rvu6ry+voB5itU6X+ezCzT=ZkQ6Qz8rz_+1kCLCg@mail.gmail.com>
Subject: Re: [PATCH 4/5] clk: meson: meson8b: don't register the XTAL clock
 when provided via OF
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_135731_266125_3546F866 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 11:31 AM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
> On Sat 21 Sep 2019 at 17:12, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>
> > The XTAL clock is an actual crystal on the PCB. Thus the meson8b clock
> > driver should not register the XTAL clock - instead it should be
> > provided via .dts and then passed to the clock controller.
> >
> > Skip the registration of the XTAL clock if a parent clock is provided
> > via OF. Fall back to registering the XTAL clock if this is not the case
> > to keep support for old .dtbs.
> >
> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > ---
> >  drivers/clk/meson/meson8b.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
> > index b785b67baf2b..15ec14fde2a0 100644
> > --- a/drivers/clk/meson/meson8b.c
> > +++ b/drivers/clk/meson/meson8b.c
> > @@ -3682,10 +3682,16 @@ static void __init meson8b_clkc_init_common(struct device_node *np,
> >               meson8b_clk_regmaps[i]->map = map;
> >
> >       /*
> > -      * register all clks
> > -      * CLKID_UNUSED = 0, so skip it and start with CLKID_XTAL = 1
> > +      * always skip CLKID_UNUSED and also skip XTAL if the .dtb provides the
> > +      * XTAL clock as input.
> >        */
> > -     for (i = CLKID_XTAL; i < CLK_NR_CLKS; i++) {
> > +     if (of_clk_get_parent_count(np))
>
> If we are going for this, I'd prefer if could explicity check for the
> clock named "xtal" instead of just checking if DT has clocks.
OK, I'll wait a few days and then fix this in v2


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
