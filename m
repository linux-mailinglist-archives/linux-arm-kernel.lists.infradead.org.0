Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79571F8311
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 13:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=of8M+KSfcJwcCHq6ncSRpmAS5D43Pe+MkcNU1qnDTCQ=; b=m/377dH1td+wd0
	q3ofKMfQJLLa0eb2zyDQPGsKaSqAjPQcFDhOGTznoTGbxSqkJuu3jkCT/wrB20AwQdltbicDT5q2H
	5Qqp4zd4ECID44xQ/5qWJhu3CFyVhUSynEUQqNyE607YjIjlZxEopIYM+dgMmAhddRctKKlQY2aU3
	1M8wma0X3LNV/9cxLukNx1vhDhlty5+fwHLo4igYpHb5KCQk0QJbdYvWRluS17RF3woL3wBhbZwlu
	a9arNNAHLsSzwQGd3kEPPUUnC8Ibsggpe8+ZRbPTOCUCiyyJwpDtsiGNyyBLFeXUUC1q4/1sG9Hr4
	tGZOi3A29dQPBK6NNajw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk43r-0005D0-UC; Sat, 13 Jun 2020 11:10:55 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk43k-0005CF-SS
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 11:10:50 +0000
Received: by mail-io1-xd43.google.com with SMTP id p20so12886034iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 04:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OfwgZGxqgOQqlfdsbrVmrJYBmDVjYO5l26ONiG/HNmI=;
 b=hTzviXfnQMMBsbnXT/MMCNfVogrI2B8Q81Hyf4gKf+mEg0SvNCdFaphFvyWTxmWuUW
 PKDZao280LrHa5+AHZLQGqnFnC0pM3xAiBe5EM4e7BGWCY89GtPWpHW4jtmqTmNl22ja
 Q5lF1GCifXqPSKUNxmXduqrvSDGo1SXi0boGEdHD7g5lzTrfUrFkYLw0M73nsO5WUJ61
 aiB0x0l4HMt6K+msOHSDJnHnNCEcvvIh6oFiLey0dtigyYc3qCsus4CO1pqC9Kla1FKR
 b/OD+eHjgvitj6mcH9ayQ72zR+rO9KvVUOyxRFq8Nva0XvF3n8x43nCxXx3Poq7pmjP8
 gVMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OfwgZGxqgOQqlfdsbrVmrJYBmDVjYO5l26ONiG/HNmI=;
 b=HQ4vUwSG18NtPNhZVL+fODhFn2U4dgIxGm4OAn0IQ7fQ0a2J+/0STyB4WgjtZG0e+o
 lzdRRSq/coVqM+MeDWQniNsfWsG+FZRFlLB1ds10TMqECZ/lyi5EpanqlPwWqaFh/lFc
 93stOGMZBdxCS8/RFyUKxWfndyxvSFAY+nFJ0ntHKKebuy577kFtd23DL6gfjCNBZkGk
 BpIYG9AC2idRehUXSUmyt64AeOrU8sZ5UA7+zV9v8lcb6/Q6RKTSsbmjs8ErTXM3h/v9
 PiCGjDdFwr/ieNpynrw2VOGawBv8pbsrUdBnSYNeLUtP5/rljNBcIOjKRSEKcgRA0QGb
 KjeQ==
X-Gm-Message-State: AOAM532kKFwS2IuMkX67SVeR32PhPDXjnwBs5reuCOMivCLFKwXTUKsU
 PhqUaTSV4GIc5jhWSgzPFuUDNlSbAUYxBNKFmo0=
X-Google-Smtp-Source: ABdhPJzfNmWpmXODYBXE9MO17hXKsSRyxKjtcDMu6I34oal91Ru8QR474bDJlRYWV2P67w77MQOE75EWxC200ucPdSQ=
X-Received: by 2002:a02:b0c4:: with SMTP id w4mr11941834jah.45.1592046647428; 
 Sat, 13 Jun 2020 04:10:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230100.181926-1-aford173@gmail.com>
 <20200505184223.GR37466@atomide.com>
 <CAHCN7xJxg+uO4h2RcapyjormTMzXFwoMUOi7rh2hUsScJtK56Q@mail.gmail.com>
 <20200505233408.GS37466@atomide.com>
In-Reply-To: <20200505233408.GS37466@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 13 Jun 2020 06:10:36 -0500
Message-ID: <CAHCN7xJnBkihY0XwNw+7xj5qZhwz_Up-b_LEt3PY8aFWVYsnrQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: omap3: Migrate AES from hwmods to sysc-omap2
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_041048_920682_40749F33 
X-CRM114-Status: GOOD (  22.86  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Adam Ford-BE <aford@beaconembedded.com>, Russell King <linux@armlinux.org.uk>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 6:34 PM Tony Lindgren <tony@atomide.com> wrote:
>
> * Adam Ford <aford173@gmail.com> [200505 21:18]:
> > On Tue, May 5, 2020 at 1:42 PM Tony Lindgren <tony@atomide.com> wrote:
> > >
> > > * Adam Ford <aford173@gmail.com> [200504 16:02]:
> > > > Various OMAP3 boards have two AES blocks, but only one is currently
> > > > available, because the hwmods are only configured for one.
> > > >
> > > > This patch migrates the hwmods for the AES engine to sysc-omap2
> > > > which allows the second AES crypto engine to become available.
> > > >
> > > >   omap-aes 480a6000.aes1: OMAP AES hw accel rev: 2.6
> > > >   omap-aes 480a6000.aes1: will run requests pump with realtime priority
> > > >   omap-aes 480c5000.aes2: OMAP AES hw accel rev: 2.6
> > > >   omap-aes 480c5000.aes2: will run requests pump with realtime priority
> > >
> > > Great :) Looks like I'm getting the following though:
> > >
> > > DTC     arch/arm/boot/dts/am3517-craneboard.dtb
> > > arch/arm/boot/dts/omap3.dtsi:160.39-184.5: ERROR (phandle_references):
> > > /ocp@68000000/target-module@480a6000:
> > > Reference to non-existent node or label "aes1_ick"
> > >
> > > Is this patch maybe missing a change for am3717 for the aes1_ick?
> >
> > I am guessing it's the same issue that plagues the am3517 with a note
> > in the hwmods that stated noone seems to know which am3517's support
> > it and which don't.  The RNG was disabled on the 3517, so I am
> > guessing I'll do the same for AES.
>
> OK, I have no idea what modules might be there on am3517.

I'm going to repost a V2 with the node removed on am3517.

>
> > I should have posted it as an RFC, because I don't have the proper IRQ
> > setup for the newly supported AES engine.  The interrupts that are
> > used for the original AES are listed as 'Reserved' in the AM3517 TRM.

Through trial and error, I think I have the right IRQ for OMAP3630 for
the 2nd instance.

> > I assume the second engine uses different interrupts.  I don't suppose
> > anyone know what it should be?
>
> Sorry no idea, usually the secure accelerator documentation is just
> left out it seems. My guess the values are the same as on omap3.

Tony - Could you review the hwmod transition I did for the first
engine to make sure I did it right?

If you think I did it right, I'll post my V2.

adam
>
> Regards,
>
> Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
