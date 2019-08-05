Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175AC81756
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96zhFyU5RiF+2P7u0haD4C4CzlbX4vfgaGjbYdEsg3A=; b=ZKDyZVobe4tHQp
	1OhEgf9k2vhiDIqoP91/Zjy8CAQt5+czxqSUWVq7y05VyfTcROpMZ/8iy67AEz8kjv5itM/BmCHeS
	qOoKokFavAyUaBS4lEyPn8MGfUzVlWe6DqIGbSeYZLwL9qONqncDf271gmrHlzjUJT9DKrgf4ZC8o
	vEWXmfDW+J4IUZ4iFCx1iAl7arXIEoG/RMhsVJGCoyRL/uS5M0HUO7P5njD7H1ee8YRm/xY4K1Oa9
	bUhrWcKC6f7pHHeMAAUCMAQrReFraiW6bBuVxT/xq8XHK29XLSZ5N36soHsQK8ajEeC2IaPTnvp9o
	iSK+x/hKIZKCIwtseMaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaVv-0001Fa-PD; Mon, 05 Aug 2019 10:46:51 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaVJ-00012J-Bz
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:46:15 +0000
Received: by mail-lj1-x241.google.com with SMTP id k18so78855927ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=azjj3TFeiqdmOl8nmyercmf7iB34KF89eZoGG/R6Zs4=;
 b=gaWYUfwJYyttQBMe2nY+8yFL/8R5jK6AQk8xvuMDqQn5mcexQfU+ZUUBmyu+uJP9FD
 AmKll1bIV4/biJ6Qu5g1juCqirMX0AA9Y7O0FMduDj8D0GDyQdzizwqMTlzy5Bu9gjWv
 1HnI+DOVGuN2KsQjDbjg/5PnQh5CXxe8LbU1I1jgmfyS4ER7mB+VkEGz9UWTkkKnvIDb
 AE8kGu/a+T/WRFmIyQppd735PPaioAy1djy1ixvflToH7U7NTeqAlF3eQ9nOCL1KN0gH
 0asNpJXWqNkEs/u5hVmU5YZuz2wSW0AKsmclxTy6HUY95ONFEY6k/YlWjvb91w9mQ4xa
 GrwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=azjj3TFeiqdmOl8nmyercmf7iB34KF89eZoGG/R6Zs4=;
 b=QXIGgStagms7yboPSaY9iuUuO8PwewOo4dINw7lIJ0JmKNa1R1C8s93/MpzbDj8K1U
 fcLT6vhh118U4LwGT505e6HiDBDhDUQKDT73FlEzxam82V5Y6/tl+73IA9hcpegop1aa
 ubIZqc3q4cKceibiwdwW239DeyjO+VBXAAq+XxBTjAr8ElE0QVikq7AGqFYB5hyjp4hs
 e1h9L0OleNNQbj1y/1eiPnjGyAASn5EaEO84/oiZxPneAaWQAsgBgWnVUbow/AanJTws
 m/c5bEWrl4V18zZwpZA0PoJG0XkZc89/aXjbnv3/kCYbGFzmAPITSZ/+UsOB5PSgZ3Xa
 xavg==
X-Gm-Message-State: APjAAAWYAYHey+cCuJv1qrD49A8hstn9pjh45lhzHr7T2498ZzalTil/
 2kfVHc98IV14DQJxPtMYBDADe2X5PFqSUHlOCKH/dg==
X-Google-Smtp-Source: APXvYqyclUQUuvXpJI3a3I9xyKZ6YIBTCazGIgPNcBnTvtEx+0Gv4bfEuR07MD49TkWuHW7hIeykHmoPhEdmQSSmqjQ=
X-Received: by 2002:a2e:781a:: with SMTP id t26mr29583690ljc.28.1565001969218; 
 Mon, 05 Aug 2019 03:46:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190724081313.12934-1-andrew@aj.id.au>
 <CACRpkdapypySGPrLgSMSNy1fzkca2BfMUGzf3koFWQZ-M5VOvg@mail.gmail.com>
 <9d0f2b20-e6f6-419c-a866-c4a0dd92aa63@www.fastmail.com>
 <3691f6cb-2451-43f7-9f00-d5693071ba59@www.fastmail.com>
 <CACPK8XcWK9Gf=pW5ds=3muoXHAWnyYfHcVSVh+anaTigtMO8yA@mail.gmail.com>
In-Reply-To: <CACPK8XcWK9Gf=pW5ds=3muoXHAWnyYfHcVSVh+anaTigtMO8yA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:45:57 +0200
Message-ID: <CACRpkdbb9OFnnG6rN0fL-qA7vBsGze23GgOifAHqxhod=0kRpQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] ARM: dts: aspeed: Deprecate g[45]-style compatibles
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_034613_522749_06852C90 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 8:15 AM Joel Stanley <joel@jms.id.au> wrote:

> > Joel, do you mind if Linus takes this series through the pinctrl tree, given
> > the fix to the devicetrees is patch 1/3?
>
> It depends if you plan more changes to that part of the device tree
> this merge window :)
>
> Linus, perhaps the safer option is for me to take 1/3 through my tree
> and you can take the rest through yours?

OK let's proceed like that.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
