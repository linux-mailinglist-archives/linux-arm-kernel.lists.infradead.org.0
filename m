Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267181F7065
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 00:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Epbx3F3PD/wsWfOx4Rwb6qphjKYqyFodc2tXY2Ncj2I=; b=LOTxECJPaIpgzk
	TXK8Mt6NjCN7aLr3TtubOP1Dac7HPfYa80kOHPHs59cg7Sugo+mIpBoppVtKIdhOCZKOWGn3Y+aq3
	1FZ7zfQx9oSVU2QQx1zAyZou90Z+BmS3bEAMyu1TiljLq8VPBxueQWmqhXIf4yU0yD9xS0MAgzYW/
	k4nWdasg6WhVqSKfQhU8MfccSOuaEa4u/do1V2WCbTiAQ2w4HWJ6cqWmN+D26B/jXSAhXdFlIlkFV
	2EYZ6+KJ5tnd6v2STjCIEVC7HgM9zaKWv6dqTTY1OPDfknVGKpu/vcHG22sZBxF2kc28sk02a5EU3
	yDO6HYmPsetIU1RGCxsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjVrD-0002Ka-N1; Thu, 11 Jun 2020 22:39:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjVqy-0002Ji-Hc
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 22:39:24 +0000
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com
 [209.85.161.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15DF120823
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 22:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591915160;
 bh=HBbpxuPy4IQcGtrkGpRbuKnNpPVCJCSL/JSzmiPB+Hc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VDm8SveDJ3su8/MsGDMMHmzdTaPVb5WtcLTNer0VucDc+Wt5yrVtuUEHP34MEaVQQ
 U9Oj6zoWRXmoA/N26OOraDYIl0l6kpXYQb1Ax+tllhlr1I82Ja1VOSC5E7Ck9KhRyJ
 YtNx35AyegoQWB4DtMs4VD0diqZk3K76A+oMEckc=
Received: by mail-oo1-f53.google.com with SMTP id y45so1556017ooi.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 15:39:20 -0700 (PDT)
X-Gm-Message-State: AOAM531nyLjmC5R088hN/X6K1cJO7fthJw6p0exLgBkIbw0m0VKbXcvC
 ym9t/ZIP/Wu7snWPQumYWAjjw80W819RCrkFovs=
X-Google-Smtp-Source: ABdhPJxbrTl96LE5CGY5bB/Vvn0p/rGMbXaHS9Yk91JFHuzA0BWVkW8e9wC7xMSczU0L024lUpYVVCAXmzmSzf/bS5U=
X-Received: by 2002:a4a:896e:: with SMTP id g43mr8468004ooi.13.1591915159403; 
 Thu, 11 Jun 2020 15:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200607135834.898294-1-ardb@kernel.org>
 <20200607135834.898294-2-ardb@kernel.org>
 <96a36110-68e1-89e3-2d59-b16f01abae21@gmx.de>
 <CAMj1kXG9XTtsyLQ=njM8LPCYCE2tOrrYQtctU_acNAxLfe=5oQ@mail.gmail.com>
 <f8a485d2-1e00-1d02-58a4-2e1684bfbfb4@gmx.de>
 <CAMj1kXGLoKDLJAihThkkcYwNpr12inneEB3dMOqvcZFm9oR5_w@mail.gmail.com>
 <CAMj1kXFjuMy6+amsMmmepkNATCec4vsxeiVVFq9CFZ64wbmGaA@mail.gmail.com>
 <20200611223800.GZ1551@shell.armlinux.org.uk>
In-Reply-To: <20200611223800.GZ1551@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 12 Jun 2020 00:39:08 +0200
X-Gmail-Original-Message-ID: <CAMj1kXE+y=Q+-wZaPT6ap278OfP2wbBM3CCvyHCL9K=AaBbO=A@mail.gmail.com>
Message-ID: <CAMj1kXE+y=Q+-wZaPT6ap278OfP2wbBM3CCvyHCL9K=AaBbO=A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] efi/arm: decompressor: deal with HYP mode boot
 gracefully
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_153923_483898_56308745 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>, Chen-Yu Tsai <wens@csie.org>,
 linux-efi <linux-efi@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 12 Jun 2020 at 00:38, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Jun 12, 2020 at 12:18:43AM +0200, Ard Biesheuvel wrote:
> > I've given this a spin myself on a RPi4 running 32-bit U-boot, and
> > everything works as expected, both with and without the GRUB hack
> > enabled.
> >
> > Russell, given that this only affects code inside #ifdef
> > CONFIG_EFI_STUB, do you have any objections to me taking this as a fix
> > via the EFI tree? I have a set of fixes I need to queue up and send
> > out anyway, and I intend to do so early next week.
>
> Please don't, I'll be basing my branches off -rc1 (as normal), and if
> you then submit this as a fix through the EFI tree for merging after
> rc1, and then send me further EFI work to go through the ARM tree,
> we'll end up in exactly the same merge issues as we did prior to this
> merge window.
>

Fair enough. What do you suggest instead? Shall I drop this into the
patch system?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
