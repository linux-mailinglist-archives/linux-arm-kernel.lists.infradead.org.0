Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 797DC1AE6BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 22:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSZGzWqBui2a3AUnp+eQPAeDAXPsZ4Uphy4Lti0N5eo=; b=NVvknB+b7e2cTX
	qQ8NVkiekCLxOWHjUp/eXjZ6tA7ytPd4CSXgSX8QKx69fQhmNhEXvVNpRk3idtkEYdHaV/xMZRnLz
	gU10Mv7ow8vSUORFyZ0ozGC0zw96efIhAtwOSxpTfhLxOuk9KT5eYjNAJeOuDdvT0f7fazwvQ0f1f
	wsus5byayVznnOW4orwbnpjE6UW29kXurZe3oxGPu+Ql/yI5MsORGgYsvjQYKVeby8GvdkmgUjcvm
	3uiAtd75BCOwrLJ3F27Zy7N3wH+rh3fXxBBmR4ht66e0Hn2cr2zq4z4y2TjGH3gj6f3iHpzyWewW0
	Gcya+ksdSJAy27mWVH6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPXaJ-0003Tc-Ml; Fri, 17 Apr 2020 20:27:35 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPXa5-0003SQ-Jo
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 20:27:23 +0000
Received: by mail-lf1-x141.google.com with SMTP id u10so2844881lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 13:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sFVeP60ycMsUVn8rAG+W7sV8htYi61dn7Bz9V8tHbJY=;
 b=GF/O9I9YEBFtOzdDBV7vdlfDMNLjhMF3VMZcgQoGj3iSlXijVXvPwhS8hZoL2iZlIt
 nWKNoLXNftYapV6G943ffgnn7ikiBhUxuUPMWwlSrD6psFHTM1IscvNzMOKc6I4xbuF2
 Ie5q4F7s2pJQE7HTgy7zl457yksbjjXUxyfbUijIxRr0MEJwY1q/yk37G+CGNcPNOsfB
 tPzCvWq9GitY00yuSE66BE8jW3qSIyfAhHcMiaBEFyXs34oOeebixWQ/HwN/KUCDimUd
 iW0448Il0Qt5dSdL7E5V2sj0KK8YnAqAmNeMAkA9+U6CvYyGNYf/Ze2MBi4Ji7KKOXP2
 D+4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sFVeP60ycMsUVn8rAG+W7sV8htYi61dn7Bz9V8tHbJY=;
 b=BBRAhPTyzE2TOgXVNUmLYpYKckrTzI+i1xPyDl6jCqD86kuc2IsIkBKdyEg+vKj3B/
 dIZ5eaoXGOzMMZs8/R7jh4mKb6cblGD5l4tmPYvHche+F2UHozit0E3V/h3taBsSb7Cv
 KzDJEp67RNF9Jumx3LQo8m9poUZJriZtQSIub6ESVjm5Kr34T3LflY65zyWxWvwfGJTX
 R8fGl8TwpHxxO+9hVO9ux1cbDeuNk4q9t8atLxAvwzUseZ8TYbgUlprWBOAKTCbtPb1/
 J9EjLpcZ7xogjpA+4fzYZ2Th701zqVsCend81rgUZ2jhvS395/qCQeeOeHI/GBU5O2XU
 VmGQ==
X-Gm-Message-State: AGi0PubgxfdCco8DUooCH6x4dehAZz7JMqFJMDBRFftvDvznv47V+OP/
 CEMmnI3s523B4YcpBaD+3ZCFOGQ9rSvFMSgJ4ya8FN+G
X-Google-Smtp-Source: APiQypIwXsxqULDsgITbS/cOPiGXDq1WRUsu9PtBlGV978qY3TXn8oQz2KBm4oUwDN+6veOIq1QkFziCf4uLCuZoQ68=
X-Received: by 2002:a05:6512:685:: with SMTP id
 t5mr3088797lfe.47.1587155239924; 
 Fri, 17 Apr 2020 13:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200409013947.12667-1-robh@kernel.org>
 <20200409013947.12667-4-robh@kernel.org>
In-Reply-To: <20200409013947.12667-4-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Apr 2020 22:27:08 +0200
Message-ID: <CACRpkdZaxKxF9QuAH8D78C8L0f-01a0V+w5tSGYLvGajYh6nPA@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm: pl111: Move VExpress setup into versatile init
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_132721_658333_357B0431 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Eric Anholt <eric@anholt.net>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 3:39 AM Rob Herring <robh@kernel.org> wrote:

> Since the VExpress setup in pl111_vexpress.c is now just a single
> function call, let's move it into pl111_versatile.c and we can further
> simplify pl111_versatile_init() by moving the other pieces for VExpress
> into pl111_vexpress_clcd_init().
>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Yeah that's much nicer, the other boards get a copy of the
Vexpress code but it's so little so it doesn't matter and besides
the Vexpress already had copies of the other boards init code.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
