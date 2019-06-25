Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C0452676
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrOjm8BbCduzXzgoKruDJS3y0IyXX/ZeIvahXlpxplg=; b=QRlHjWzD0UvwTn
	tbCi8U3TAlzxed3ZH7bM31S5tun++kHesAfP9iSPjHj3Yj9t81DnGo3zx4BEt5dknSSVQ2IZ+gOPG
	wFf5gZpMgqVkCT1UhQrUG86xZxu/q7yG0nHIcnuxtw5Z2ZCQ4UXSq1o7yofDCMkMbUqI02bOmtgKS
	HOfqqb1lqjb/w9PAYtgicxz2ANy6YsoNA7hyDzqmQmWbpN1BINsc5A14VuOkHYt9YJEBxPf+ueBcV
	MtDytXwXERKs67RoVuGIyER3jO5Jicdh9hEc60kVwjq0VYIIBTTQ3AcY3Z7b9pUcfWBpMTBOLxhE9
	/6J4Mese1El3oeeVcQ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgkg-0001Ea-Jh; Tue, 25 Jun 2019 08:24:30 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgkS-0001Cq-7T
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:24:17 +0000
Received: by mail-lj1-x243.google.com with SMTP id i21so15337240ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 01:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kyNh64vzFXSeI1tkchYjecumEHdzHA1vMGmESae1z+g=;
 b=IpI4ANDyiicb/utKnOp5TkfTybrppK8AjxMLIU2tQSvFgwuIoy916NAoQTqc1fbX0N
 qvYSJ+kBzSzuLw6DKIlYTWxOtxI3RJ1kT0G07asE4h9bobJiX/yzyyS03NTzo6NFMUl3
 PRN17upKCeHENCK8Ti3jxFGegC2ePIP62qmtlwIYFxadxFpM3FimKg/n/S0+1jRsdjna
 7r4l7RHkXQYSYJTqgTaEgpNuBvrTENX2L7GHATbTzX3ZK7ZCzhcGuvFD9xSuvqyNv5Xh
 jE7eeejg8k4x0ZWsZEgpfKpaQYZtYcgwS72pZXhLYyUEoSLnJtgvjNhgAg5EVSx/CFXx
 ZeTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kyNh64vzFXSeI1tkchYjecumEHdzHA1vMGmESae1z+g=;
 b=G8MuzZBOFUFoIysXDeml9ubNdFOat4V2wTtKQtNfiHqy5hcQrDTxZs2F1EeCR8Kg2C
 +Z7XXS5VH/jl+VU5+LpnESB8485+GbJk9Pvu+AIzB/Pxw0UytcIhANn2ORdxCWsv3/AM
 P9YmFTeIv0GqYXef2IxLGZGt7X07Bve/i1j/OsKJErjofaC9xoynUQhGaQWmotEl5x1n
 28cCNY3yNtsTjW4ZPq3UGjJ3F1DE3v/k0QBW64YjhBa06U95WhM17NkP9tafc+VV6shZ
 tnNVT836qQIIh5P5x7x0ovBvpgV3q7DIs0zKufypdaf02qaFXgjTL5zHdgb3Yo0PKlR/
 XdFA==
X-Gm-Message-State: APjAAAU2mn0+iOUuj9MpCzYwqfWuOHjgzwD6OTsnfKxfmCjwypA9qRAK
 Xw0DiTQK4ksyCOTrqJYM23PEd+cz++RJ6Lfwjk4Llg==
X-Google-Smtp-Source: APXvYqzMQ1jqy6BTXdm0qPFneYC0Sj4kOm+3+r9eFU23I/xT5CMTJkUNJrOdLfUbxn8VZbDBNcr8J9R8jkuRkzDR24I=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr15065319ljs.54.1561451054468; 
 Tue, 25 Jun 2019 01:24:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190618115245.13915-1-linus.walleij@linaro.org>
 <20190618123045.GF18776@kadam>
 <CACRpkdaqKzF=WaRiDPi6XmV_=30=A2rigWLSjuFw=PdG=cG4OQ@mail.gmail.com>
 <20190625071354.GW18776@kadam>
In-Reply-To: <20190625071354.GW18776@kadam>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 10:24:03 +0200
Message-ID: <CACRpkdZBsM8wob7bDuVOgG1eE8UUJURURjx4XLKdAtnDnMwmNQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/mcde: Fix uninitialized variable
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_012416_289840_BDE1BF88 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 9:14 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> On Tue, Jun 25, 2019 at 12:09:54AM +0200, Linus Walleij wrote:
> > On Tue, Jun 18, 2019 at 2:31 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > > Thanks!
> >
> > Recording this as Acked-by: when applying.
> >
>
> That's is an honour for me.  I figured that your Signed-off-by dwarfed
> my Ack.  :P

Not at all. In DRM we have a rule to not push any changes without
a proper ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
