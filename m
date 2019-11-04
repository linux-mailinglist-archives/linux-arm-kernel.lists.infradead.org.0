Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7D0EE2F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:58:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfsjeO8kwt3Ociln6hnjyaJQKn8w/Fvz7pTtk8RTVmY=; b=d7/6EScUAD1N1l
	5jZvW5nQv8+OA618R8pyHzLXwZro6fLiQxRalAKxCLcI5r9yXPrGQH1CPP2P5oj+dZL+9c9BhbrPR
	rhMZU1XGpnpsCAY76Ec+9yF+N1gLf60TtAa+W58nHz88yAdagv4902CCpHdaOwKzDGyPSmACkww4n
	jfRDMtx8cqJGcuvZowNYKgMsxSsshXOfon7O3f/c1dvR39nwLwgDZQ14XAnFjVU85eGXs1nkFSDMZ
	G3xQ83Kt6t1stQZF9mQQoRbVJvLicdSE9arA4P0EbgioDRR8s+In2u3synZsu5gtGU7ubB7oDiqqP
	pebDMAhiLN/RdJdH8D6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRdo5-0004Mf-Fw; Mon, 04 Nov 2019 14:58:13 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdnw-0004Lk-Cg
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 14:58:05 +0000
Received: by mail-lj1-x244.google.com with SMTP id e9so4654589ljp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 06:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uQT3fS5S41/nDc9PxWx6AfzSE0EBcmwMovDDeO7/F0o=;
 b=qCo2LsiFG4nolA/iR7fmRONVtZ56CRD0DEtH4z3fn3kFPR54PXNXhdNtoSpdtI/BC3
 Pxnf3UnZm6bAhBy5937xGDhmpVia5IMJnzyuiIqlA9iWIqhUUGQpOiK6qAXWtoNvXsKu
 CFw5vciS3yqoxC5XbBHlzIYv2dypYYKD5PF0HIZAYeslHRDyICRooHTY87mxRE/rQ1oR
 kTpFGFVW6Ec+guHV8sudEaMF2iqMviMGBwEmrWmGGlRjthRP3Lt3zFZ4ZMWfqaeaWhkY
 RgIash3fp6ZWU0z1tzcxbJdZ7KRweEIJT5AyvVEcXf98ZYOukhveYalznLsBqjD0uCoI
 qLkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uQT3fS5S41/nDc9PxWx6AfzSE0EBcmwMovDDeO7/F0o=;
 b=FVfBrmJg2Uha9VrnZPxW5v6Muh05DyERimM4p9WlLNUtDRQzYgAFHNkxRWBsgDpcru
 oSgo9BdJxuwwFHDJLJiNhL7RvsVnj9Il7QQ7Ct5WDMXzLp4REo+EJRykatiawOKKo+j3
 LijMFbIufPu+GJHXSL+IkPITKcZfCDWvnkmImA7Aog3OWoxwm7KkF0XFzavH5wyY3kzA
 yTJTHSaTPWsYxRADDp6++uuZK3AIQLs6ooHLgTSkoxGVsDUdsf8EvkkT/TRNEXjBgAC5
 mmICYc2cKM6wd09V4w5HjXFtpf0Bq+pCxuQd3zNzAHSjvv7ge62TZz+7mnoWhelP8jJx
 TfSw==
X-Gm-Message-State: APjAAAWj9rhYm2hpWDjBtsw+r8ian5NYl0o0ez2+S6IzInj8d312JQek
 uh1ZnSNPxOlTvVbDkOViqY/Va4SAlJqZ4iGLOnnAEA==
X-Google-Smtp-Source: APXvYqwqzFe/WynJv7uysnlQKS5aaNgXiv3b6dRiA+EEVT7ttVdXg9c0o8gOsCY+vJ9sFd16TD8qcWvJsKTk5BCaIUQ=
X-Received: by 2002:a05:651c:1202:: with SMTP id
 i2mr19180665lja.218.1572879482204; 
 Mon, 04 Nov 2019 06:58:02 -0800 (PST)
MIME-Version: 1.0
References: <20191018163047.1284736-1-arnd@arndb.de>
In-Reply-To: <20191018163047.1284736-1-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Nov 2019 15:57:50 +0100
Message-ID: <CACRpkdbb=kazUgwx5nJyv7rOvtuDXQ_1mpz=U8tio8Om4j5pHg@mail.gmail.com>
Subject: Re: [PATCH 1/6] ARM: versatile: move integrator/realview/vexpress to
 versatile
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_065804_431827_268DF9AA 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 6:30 PM Arnd Bergmann <arnd@arndb.de> wrote:

> These are all fairly small platforms by now, and they are
> closely related. Just move them all into a single directory.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Hi Arnd, it looks OK but is this one of those patches that are
only formatted for review because I just can't seem to apply it :(

Do you have it on some branch I can pull in?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
