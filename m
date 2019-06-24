Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C152250E0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auo0cwecyKe7qQiUfw3jzpZWNV0+CSizySkZJk4nl80=; b=gM+d++CMn7u8Fq
	HaW64HsA0PpyO47wyPCsEYFm/jG5gTUg47bLlNw+T6ECdNqA2C2DQ/VDnyFGFlQJxlpu2w+hR2q+g
	lWdKh+OE7NcZ2uhuM9RSlshuf1kwB5b+bwH0lip9Aq5xFsxt3s+p55NXN3Ug6K/b+LXfjAXaDko/h
	yaNxhHWPQ752/f+43w/P0AcdZ4mxnbizPSG7eU+rtxvSzwhPzy5OW/MsUJr1KCMLx11KbQOdSiACw
	SnmBkGF3ciOoKWeOKUMQLdCPne+T/99maMDNlWKEazxfC9fxav/QsnZbae5t//ZGhzcvyVWw1wh02
	IuhLxD2M0LHClpXuD/Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPzG-00022y-4E; Mon, 24 Jun 2019 14:30:26 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPyJ-0001Yy-07
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:29:39 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so483474iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bg8o0TV3rl+/VKttiDPK3VMyoDu2ITQEsxVf+Ll/rpU=;
 b=yEPRXI3rULUdbi2ITc6KkMDN4xkdGUkBTlV6YC+4rSXSrLfb29JLl5gUZZqQaR571O
 BSfbH6S1zEVgZbY2QWs9E47HIteUyd+fDSXR0XEjGiD20N37+bUHxfmWxZUs9wDm0sCX
 5lUiFzKYQxj0cXIktIXMQ9mxuwKcBv+g1hPrIYOkAMXcn10xhOmvhfpO2kCYQ/MNSrKA
 PCMRx75hert+PT9ZDuQKpW0fI/aELrrXhLAioQuDTC+ETcKSq0dpitSKHUyOQbHJpr5U
 LhPP46NX6nAAOLnRRWAiFhveQIAZ17l75iv/w9xkFQxPBXmP2n4wD4gWjBb0JCx3qgtP
 alUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bg8o0TV3rl+/VKttiDPK3VMyoDu2ITQEsxVf+Ll/rpU=;
 b=Asdit3+vzurqxuAbrhiDoj5jpAShNMDPUtCdlLdJ3QfwKV6EbLdXEabyA3F/uAps+k
 cREColwLheMPyvx7Tmf763KSDHi7Bk7U1uFUjfG83JpuhHUkICCRsAPccA5zczIYDXjX
 OY/4s7JWldKlhax8AqWEAmOAg/vT6acxz0kgTNGyhyLw0nLNevFADDcQiKwRlljlQ1OS
 TgA+q8+bd3xOQ1CqE7oXqe8h9xHRiF/fIj9HDgtAbgf2/kQ3VB8+Un1a3fLCofP4Gtrw
 w0BElrGg2NuCNOB7gvgSluiwrlr+AQ+DRdKI6NRflw8S6RII2W7y4bjt/WKGqAvhymCr
 w2tw==
X-Gm-Message-State: APjAAAUpPj4RMrjblbaQ/JKahPfPnHqJlctTt9TYxNlw1ZF2VErCeWSO
 YVld8Iid8QXloI/w3Al2lgbuKopuW6X2Hkmp9xheSgnIUR0=
X-Google-Smtp-Source: APXvYqxeKCkTkADHMYQbLWulHTIp0Eggbqc1Y7D+EBmGgpOFtVvES97uXOIQdH5g+Ye7pyPi1FijGRptfi6OGGVXBRY=
X-Received: by 2002:a5d:94d0:: with SMTP id y16mr11885523ior.123.1561386565007; 
 Mon, 24 Jun 2019 07:29:25 -0700 (PDT)
MIME-Version: 1.0
References: <CACRpkdYLcCB6zA2dYj9A0bJU-gQF3QuhmFd0oGt++oa+gSE_Cw@mail.gmail.com>
 <20190619131559.7x5mbfwlzp6psjql@localhost>
 <CACRpkdZ4y3Wg55si2UF9Fkx5Gcm41jyNGLsct4OO52bVdbUfrA@mail.gmail.com>
In-Reply-To: <CACRpkdZ4y3Wg55si2UF9Fkx5Gcm41jyNGLsct4OO52bVdbUfrA@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 24 Jun 2019 16:29:12 +0200
Message-ID: <CAOesGMhOiV1vVOe5k8oL=Fi2ef2+JFVUmTd9OFw43VZ0zFhkvg@mail.gmail.com>
Subject: Re: [GIT PULL] Integrator DTS updates for v5.3
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_072927_354611_BDE69B64 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 4:17 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, Jun 19, 2019 at 3:39 PM Olof Johansson <olof@lixom.net> wrote:
> > On Mon, May 27, 2019 at 11:19:00AM +0200, Linus Walleij wrote:
> > > Hi ARM SoC people,
> > >
> > > please pull in these DTS changes to set the flash partition information
> > > right on the Integrator boards for kernel v5.3.
> > >
> > > Yours,
> > > Linus Walleij
> > >
> > > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> > >
> > >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> > >
> > > are available in the Git repository at:
> > >
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git
> > > tags/integrator-dts-v5.3-arm-soc
> > >
> > > for you to fetch changes up to 62a5017bf825c9e4d3176eb975a01c329a9f364b:
> > >
> > >   ARM: dts: vexpress: specify AFS partition (2019-05-20 16:40:38 +0200)
> >
> > Merged, thanks!
>
> Hmmmm something is fishy! I can't see these patches in linux-next?

I wonder if it's because linux-next still has arm-soc in it, not the
soc tree. I'll ask Stephen to update the link.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
