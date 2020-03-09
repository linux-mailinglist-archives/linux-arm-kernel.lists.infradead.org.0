Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8AB17DE88
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 12:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yacbFPYnqmLJ2IajZ1xXwh/f6ENC+k5qSd9hFYEJrwQ=; b=P/EMXV5F4blpzE
	coqnsCsdOZq+SYz8J3mDG26rS4OYv2C+vBK7J/04YXbFL/o0MVDn5qQolvXFAXqOOokbPb9zf8eVs
	70VkR6aabvBeKGJw6i0EDEKqzZ+n0q86CMTM0YJuYJ0cMTP+wYCDQS4pDHwNlCY5m0E1gFRUIVVyP
	1p0vGuS3uuI1i0Ghxxp8cTMev7k++Jc5YUIyBq7HIv5yJ7ACB7CNfoYGuzM1H37Hba02E3flH1vrU
	NAiHhCrGLDTy9g7ft07yuLf014MWSAan9ka4tVKcIe8GhjJqB00gFSuf3bWJl7M+aWnCV3akYakmK
	vsziuz9q1iMEnOkig+OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGNy-0008D1-HJ; Mon, 09 Mar 2020 11:15:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGNr-0008CX-Ix
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 11:15:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id a132so9378575wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 04:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/Z9IntIaAH0gIeT3+u7wpsy0raBlZ5rU0UOJH1kx/N0=;
 b=fEhO9+lHjep+JjEc7uneYDDO1Ri2n5X4rLu0msbWHrfcEJqgwj9DhmiKriYDiubLiT
 qv53KMLQWdh0dcpQNfWct4l8BAN5EoKiDxpMBIpOotQxG5tDyY3UHKuvU5eexPsnE0yS
 sbhz0+n37JoEC2FCjVAm7CnL31Bzfch3QPsyyyaGlUYc8HhRNmEKtD143hbaBigob3ZZ
 kfkLzgP03LxK+JojSmpe4X7sOuXTScbKtYzUObY7+cmjeSDoUHA2qhYZtiC5bPRvrRf4
 QpUva4ZsnEVH86ZuGdN1BxxEUKfVjrVpRf4nPGCTWWfn5Zv2iY0CKNVNLEI7y3lKpNrr
 sinA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/Z9IntIaAH0gIeT3+u7wpsy0raBlZ5rU0UOJH1kx/N0=;
 b=rC11eTZhOkpAUq9Y1Onf01CFSLGT+94QCWc2UMFRnhZHYllaV8IEiZM9Dl7uCvgXSH
 bATVhK/VLLfzt7zlasy9k6Xto9h3w/DMp1HBrNQq+ITXuml3qRGaLCAITbh9T1STicge
 1yhtm2+z3R31ZGfqwoKRzIcR6ORLfMkOJyT54ujbz4MzidSM9Qx7uWDwTtK8hfyXcPKL
 mWef2Tsf1QCm982jxHgf4G8/UYMY4dZKS7p76FCMrY3dEqp6cwYfnaGPoGdq5mrlPkpx
 XGFYah5O4aZ/hMJRcbvgIhFLwE4+YgU8/lU+6DgJrcBMu/vcJ/797UTDedjXBzCmWUhG
 3MbA==
X-Gm-Message-State: ANhLgQ0aXIOx1NNP44ChY2ZiNBB3WItTwjLuwrSKNn09N/DlriISz7r6
 viMVMe4wJiFLIbthhun93LsgBDzAl8eREZiNJOU=
X-Google-Smtp-Source: ADFU+vt6I91CwVNgM6NGjmlLea01N4tLsGPz6lgr4s6/6dSnTK0Eo+uQT+uUNJ7Qxquzez1kNQV5507pUbSD/R0ONSY=
X-Received: by 2002:a1c:7e08:: with SMTP id z8mr5445439wmc.166.1583752541669; 
 Mon, 09 Mar 2020 04:15:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <20200305103228.9686-2-zhang.lyra@gmail.com>
 <CAMuHMdU-gAhupHotQTHAZfopkGF_jQc-VrVxb24caw_BfzWd6g@mail.gmail.com>
 <CAAfSe-sonfA=6x9uvQXaHniQaXR8hWZa4uOcWxoo+Z_XT9QNhw@mail.gmail.com>
 <CAMuHMdUBkS+pPyPid2K=40jaTOSnAE_L-vJP5knmyVr8Fr5_hg@mail.gmail.com>
 <CAAfSe-uZSYZopDCGxQbGBQQ5+NZK6L79P+T62nfnL9CiZka++g@mail.gmail.com>
 <CAMuHMdXY5=QS4FA0T55_G=ARPs9V0NLbWwF3hd76rwO=8ahZbA@mail.gmail.com>
In-Reply-To: <CAMuHMdXY5=QS4FA0T55_G=ARPs9V0NLbWwF3hd76rwO=8ahZbA@mail.gmail.com>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Mon, 9 Mar 2020 19:15:05 +0800
Message-ID: <CAAfSe-tbKVQX=796q-8vM=_B9JbDj0q9F514D3bG0+WMZ6Sacw@mail.gmail.com>
Subject: Re: [PATCH 2/2] tty: serial: make SERIAL_SPRD not depend on ARCH_SPRD
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_041543_650780_77A919A2 
X-CRM114-Status: GOOD (  26.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Mar 2020 at 18:32, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Chunyan,
>
> On Mon, Mar 9, 2020 at 9:43 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > On Mon, 9 Mar 2020 at 16:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Mon, Mar 9, 2020 at 2:18 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > > On Fri, 6 Mar 2020 at 20:41, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > > > > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > > > >
> > > > > > Remove the dependency with ARCH_SPRD from sprd serial/console Kconfig-s,
> > > > > > since we want them can be built-in when ARCH_SPRD is set as 'm'.
> > > > >
> > > > > Why would you want a serial driver for a specific platform to be builtin,
> > > > > while all other platform support is modular?
> > > >
> > > > Oh, that's not this patch means.
> > > >
> > > > We just want serial driver can be builtin for any platform, so it
> > >
> > > What would be the benefit of the user to be able to have the SPRD serial
> > > driver built-in on any platform?  AFAIU, it supports only Spreadtrum
> > > platforms.
> >
> > Right, it does support Spreadtrum platforms only indeed.
> > Like I said on the replay to patch 1/2, simply because I want serial
> > driver can be builtin all the time, no matter ARCH_SPRD is m or y.
>
> OK.
>
> So shouldn't the dependency become
>
>     depends on ARCH_SPRD || ARCH_SPRD=m || COMPILE_TEST

Oh, right, this's better than just removing dependency to ARCH_SPRD,
but considering that this patch has been merged into Greg's tree, I
will post another patch to add this.

Thanks for your comments!
Chunyan

>
> instead, to avoid asking the question when you're not building a kernel
> plus modules for Spreadtrum platforms?
>
>
> > > > should not depend on a config which can be set as 'm' (i.e. ARCH_SPRD)
> > > > , otherwise if the config was set as 'm', the serial driver can't be
> > > > selected as 'y' then.
> > >
> > > I ask about that as a reply to PATCH 1/2.
> > >
> > > > That's what I mean.
> > >
> > > > > > --- a/drivers/tty/serial/Kconfig
> > > > > > +++ b/drivers/tty/serial/Kconfig
> > > > > > @@ -1452,7 +1452,6 @@ config SERIAL_MEN_Z135
> > > > > >
> > > > > >  config SERIAL_SPRD
> > > > > >         tristate "Support for Spreadtrum serial"
> > > > > > -       depends on ARCH_SPRD
> > > > > >         select SERIAL_CORE
> > > > > >         help
> > > > > >           This enables the driver for the Spreadtrum's serial.
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
