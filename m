Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96F6118F2C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 18:41:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXtEBVwUPqfy3O15aq2Kt18aBYFQP3QQFX2JF/bBEPw=; b=F7Iuby6DIWnN46
	SSSUcFPyAAorJgD6hbx9CD0FMFIlG9KQ2QNNNR3gPZS4wLpzbAvEr+WhFTb3Hx+gW352xADD8awTH
	HkaofLGx9gkO0Hlzfh8twr2EexDgAwzVIGGOFnzDR3KDsx8SzdcYYwNQ2IrfLX6stjkihuXdN6w0Q
	XA0UDbo1BaIdFnwYhbVKl7wc7yXV9ks0C9ASAWyYyYwrNLf/x+Q7uMW3f6kQUvJ6UThYEWCTNv4vF
	zUJ6rI0uuyrqAwurF51nF5+li79hYPxHqMgio9ShVL50/pOvdWUPpocUgwcXqIAtUuOJEyWl0EHje
	+Ka3spVfjl4bF6fj2ftg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iejVJ-0004m7-Oi; Tue, 10 Dec 2019 17:40:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iejVA-0004lO-RL
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 17:40:50 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F259C207FF
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 17:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575999648;
 bh=whY+UczReApYurdxQ/i4Wyw13rqi5K2A0iRjpnJiQXU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RSLM2wWovn5TjinsaHi4oXldr2FYpJfczva1XSQczXHZXcVtTmuJMeI3o/2qVvxrg
 CWCcB8LWB6w3lF46eJOj9whirJqaigBHXXBUwLcA6g5S9jtwZA5NEY5CkFji3C/+m6
 SxJYRaoVWYZJo8AvidxxNbtlyCWGOsRLffmC0KyI=
Received: by mail-qt1-f173.google.com with SMTP id q8so3508941qtr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 09:40:47 -0800 (PST)
X-Gm-Message-State: APjAAAWUbXoOuLJwHmnfMRCUHDSfjKphHG3leY4OAgSEnzDX8eOxmKBH
 wGMBO8B2t7rKneQiW2kBUa1a5+cZWnYswJ/dMQ==
X-Google-Smtp-Source: APXvYqyzyYY82vf1hRBGQbrkKaCwyz61tPWJCZ5gDYUZdarnDGl6QMWtYZm4OY3BWhQ7GfEcsKv3xMQ+0OMymbZUAcE=
X-Received: by 2002:ac8:5513:: with SMTP id j19mr31095838qtq.143.1575999647203; 
 Tue, 10 Dec 2019 09:40:47 -0800 (PST)
MIME-Version: 1.0
References: <20191120145536.17884-1-robh@kernel.org>
 <20191210110419.GI1463890@piout.net>
 <0ea488f6-adf9-d2fe-ef55-373a70cf04fe@axentia.se>
 <20191210111452.GJ1463890@piout.net>
In-Reply-To: <20191210111452.GJ1463890@piout.net>
From: Rob Herring <robh@kernel.org>
Date: Tue, 10 Dec 2019 11:40:36 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKjiFG0oi22iTa4m9rdZY_d8mepdhrQT0czcGX=EryheA@mail.gmail.com>
Message-ID: <CAL_JsqKjiFG0oi22iTa4m9rdZY_d8mepdhrQT0czcGX=EryheA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: Remove leftover axentia.txt
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_094048_913209_C65BD7C6 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Peter Rosin <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 5:15 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> On 10/12/2019 11:10:33+0000, Peter Rosin wrote:
> > On 2019-12-10 12:04, Alexandre Belloni wrote:
> > > On 20/11/2019 08:55:36-0600, Rob Herring wrote:
> > >> The bindings described in axentia.txt are already covered by
> > >> atmel-at91.yaml, so remove the file.
> > >>
> > >> Cc: Peter Rosin <peda@axentia.se>
> > >> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> > >> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > >> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> > >> Signed-off-by: Rob Herring <robh@kernel.org>
> > > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> >
> > Right, this one fell of out of my memory due to overload. Sorry.
> >
> > Acked-by: Peter Rosin <peda@axentia.se>
> >
>
> Rob, I assume you are going to apply it in your tree. If you want that
> to go through arm-soc, tell me, I can apply it too.

It's already in v5.5-rc1.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
