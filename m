Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB0B17D7B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 02:18:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxx+sihITKZAZBeDgwifb/6eCgp1u+o13RlTw97ojeQ=; b=fSGIMdcZuw481Q
	rhW79UpSp6Iy3m/Nf8rKVdMlh1flpAj1pxyGSJS/7ou+OB82eidGwI40zSjO2cpX+SSgDDQ19h8Fg
	qErLECXfcWveSpycfayotGh5z9AvNBJhu25z7NFj+wPx7ErV9eENLtO3dfTbY5rCpDAYiKd4SpCig
	wZA2S7dcCnT5x5zGPqdHJrFyisdwk/fvCjgX9NYpsvJcA20Vv/JKkNGrXHUnckqlXO5R1Jis2O0CU
	Z9DEo3VrXtKY88GXP/ICI/B5ornqKlmLP7zPjIhGlITiKQj6ZTqiMkE2bDF1g8rSH/0XlSXYISCLQ
	6Ed9Dvl3KnwqfXN4AL/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB73q-0000SA-0A; Mon, 09 Mar 2020 01:18:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB73j-0000Rl-8p
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 01:18:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id r7so1336090wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Mar 2020 18:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K0FbYoD5QyM3mQ46mDO2FdxxLRF6uzspSD/4xNSFbC8=;
 b=CyYwlzj49u8GrKRQL9BsLmZV7lQiGiWaWLAe5hyiFYdg7KXdy+EXm57nMYAI39jhDB
 3GMCtRWEnSrb98gjefecnVi9y53deQw29YBwwlY//Zj/1yo73Ig5lDEMcjJ59gpR+7q6
 YyGBokBL74/WPAfguEMpXq9K4m0bufJLCzHab5G9QOa2MQ+M6ck4QapHMzjH/FKFMP+R
 e1/T6bxw9ueONiNXHzba3GjdBKuvjMd40BswVaDHj81+7T545jxIzkjVLA8mnL0ZJQSL
 6ky7SM6OVaTa0raVtngW3nrY4VGfy6Xu9RLNh9dofVrJyfX7acXtV9UTQk+5sPYN9Kjz
 cKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K0FbYoD5QyM3mQ46mDO2FdxxLRF6uzspSD/4xNSFbC8=;
 b=jnjrQMJUu/QJzYK7CMFiKWf8yTmhhjWmJAhqKmjfjWlI26Hv2MyTWqjTS8xbw4vtho
 9rVdfmpkzCFJTPun5fUaXs/eWOwvaReYj1jiIubVRlGeCAh7T6YZsfcb4cyf3ACxGL6V
 R9JCmLJjlYIFvCPYP2lvXwkHKEot542hP1AQk0jGkO44qmq8HZ6xL1JlZWlnhRBoTJP7
 /yuJ22HdMlQ3jCii5GEv5/KLUMT2kiOTTR7xMOwAHB3r9cMCvog0lzOiz8TAPiLWUdhe
 uiHWlUFYKcoTp3//4gabja0iXVMqdOBP8NE2m52CdcM0UH3/feokJHgmJAeLDHDgwCxd
 mwwg==
X-Gm-Message-State: ANhLgQ1w/kNW7zdJDd7yrqW6h3DM0c8AWvZZ6TWKBJre83RN/lavm5Qq
 CJm4y6XRt8oi6zXV2CRGMOv3b8kKXjCM6I2YSRY=
X-Google-Smtp-Source: ADFU+vuLBG2IpnusekSVeJ89FMgBsZsGS2eZEdux1+VUGVpelAXDEcNf+IfvdrK2Q7FbGUFAy6WplTbrLTVwmH0Mfcw=
X-Received: by 2002:a7b:c446:: with SMTP id l6mr16475019wmi.3.1583716696466;
 Sun, 08 Mar 2020 18:18:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <20200305103228.9686-2-zhang.lyra@gmail.com>
 <CAMuHMdU-gAhupHotQTHAZfopkGF_jQc-VrVxb24caw_BfzWd6g@mail.gmail.com>
In-Reply-To: <CAMuHMdU-gAhupHotQTHAZfopkGF_jQc-VrVxb24caw_BfzWd6g@mail.gmail.com>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Mon, 9 Mar 2020 09:17:40 +0800
Message-ID: <CAAfSe-sonfA=6x9uvQXaHniQaXR8hWZa4uOcWxoo+Z_XT9QNhw@mail.gmail.com>
Subject: Re: [PATCH 2/2] tty: serial: make SERIAL_SPRD not depend on ARCH_SPRD
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_181819_339070_A3F7DC43 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Geert,

On Fri, 6 Mar 2020 at 20:41, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Chunyan,
>
> On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> >
> > Remove the dependency with ARCH_SPRD from sprd serial/console Kconfig-s,
> > since we want them can be built-in when ARCH_SPRD is set as 'm'.
>
> Why would you want a serial driver for a specific platform to be builtin,
> while all other platform support is modular?

Oh, that's not this patch means.

We just want serial driver can be builtin for any platform, so it
should not depend on a config which can be set as 'm' (i.e. ARCH_SPRD)
, otherwise if the config was set as 'm', the serial driver can't be
selected as 'y' then.

That's what I mean.

Cheers,
Chunyan

>
> > Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > ---
> >  drivers/tty/serial/Kconfig | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> > index 52eaac21ff9f..2b9addc0afb5 100644
> > --- a/drivers/tty/serial/Kconfig
> > +++ b/drivers/tty/serial/Kconfig
> > @@ -1452,7 +1452,6 @@ config SERIAL_MEN_Z135
> >
> >  config SERIAL_SPRD
> >         tristate "Support for Spreadtrum serial"
> > -       depends on ARCH_SPRD
> >         select SERIAL_CORE
> >         help
> >           This enables the driver for the Spreadtrum's serial.
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
