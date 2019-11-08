Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D174F58F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 21:59:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lijY6Y6GQiBKIwO6DwY5zqXPLZpGh4yVPwJZBGqICE=; b=BuzEhxwZS7BPuE
	d28jjn09R14oHeU4aEr1R4gPlSBQJhcR5hhOIdzKGrPCcqFn8ZeVBk54EGPI9HoYBgLoO0c9med8l
	ycj42saf6E0Tdd+Z7MxeKWozBByFw6titzZQFQffExdVHXjmGZfblNwXZiJfiZ6SicY/KmjF3ahGT
	4vFRzInE/BGwjPUqx1ivSm0bPIt6/CovL2sWRAjpzgYXdJtkaFa7l6JHncGTJpl4M3dcF8Wizk1qY
	GlPysutT1Ge66BxWf9jb2POMC15DkC+BkmqUGnPZif6XtR7pMZVAYQ9DA6XzJimhWMGdnGxYm3BSS
	UCrOMHDvQOJrQ4y7LXFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTBM5-0003Tb-Ji; Fri, 08 Nov 2019 20:59:41 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTBLx-0003Se-Va
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 20:59:35 +0000
Received: by mail-ot1-f66.google.com with SMTP id m15so6360915otq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 12:59:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iHMB6rGLleO6OxcrYYe8ZvDxdU9fIQ0DXLT+ABSPcOU=;
 b=fzkrE+jWvcHkzRycnI/DaNGIMXrLkdNWyodcbWcEqwUa1ctqfZmr6dYAGaQ06HI3Ls
 wpx+WRAmzLbLGOOzpbzUIwjqLlJT+qQV1E7vd3zrBvg/FZE0ms4wTLgJQxgTuu1I26y3
 diDbY+v6NAZKZBYwsXcPzsUW0/nCuJdwzrw5iCK6Iqva+zSrEZLqvK9aQze0jsIdEv6j
 ZOj0KnHM+sQqpajUGbSfI72J1sojG1obU+2eaPWTnp+Yhq4wsfymKTBpjng/GNTjGHxq
 1lA/AH9BwWVu+H/TX+DZcbTOpI+qleXBhqGPOvpBxh+P03aZUcQJBFbcArGlrJsPjd22
 3q3w==
X-Gm-Message-State: APjAAAVphMquLwlZWWvrrBjpOVfQUDkK9BFNgtMfMWrjwoD+pUvT7X4G
 CMEzSwiEF6eRpX0SOG6/J3Fh95yB
X-Google-Smtp-Source: APXvYqzhD3Kd3PhnB3aD7Nb3q+qgeKA/buIPBC3+9C0eOBOPkMHJHLBSC6SBYYQ1uIoAOyMjcBSYug==
X-Received: by 2002:a9d:6e88:: with SMTP id a8mr9968569otr.113.1573246770136; 
 Fri, 08 Nov 2019 12:59:30 -0800 (PST)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com.
 [209.85.210.47])
 by smtp.gmail.com with ESMTPSA id 62sm2233091otq.78.2019.11.08.12.59.29
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 Nov 2019 12:59:29 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id f10so6385783oto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 12:59:29 -0800 (PST)
X-Received: by 2002:a9d:173:: with SMTP id 106mr10294718otu.205.1573246769515; 
 Fri, 08 Nov 2019 12:59:29 -0800 (PST)
MIME-Version: 1.0
References: <20191108130213.23684-1-yuehaibing@huawei.com>
 <20191108151720.GB216543@piout.net>
In-Reply-To: <20191108151720.GB216543@piout.net>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 8 Nov 2019 14:59:18 -0600
X-Gmail-Original-Message-ID: <CADRPPNS0z913xkwJwZRU_37RHOs_-AjivR_aqOh-LGZPm607iA@mail.gmail.com>
Message-ID: <CADRPPNS0z913xkwJwZRU_37RHOs_-AjivR_aqOh-LGZPm607iA@mail.gmail.com>
Subject: Re: [PATCH -next] soc: fsl: Enable COMPILE_TEST
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_125934_010228_7AE0E7B1 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 YueHaibing <yuehaibing@huawei.com>, lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 9:20 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> Hi,
>
> On 08/11/2019 21:02:13+0800, YueHaibing wrote:
> > When do COMPILE_TEST buiding for RTC_DRV_FSL_FTM_ALARM,
> > we get this warning:
> >
> > WARNING: unmet direct dependencies detected for FSL_RCPM
> >   Depends on [n]: PM_SLEEP [=y] && (ARM || ARM64)
> >   Selected by [m]:
> >   - RTC_DRV_FSL_FTM_ALARM [=m] && RTC_CLASS [=y] && (ARCH_LAYERSCAPE || SOC_LS1021A || COMPILE_TEST [=y])
> >
> > This enable COMPILE_TEST for FSL_RCPM to fix the issue.
> >
> > Fixes: e1c2feb1efa2 ("rtc: fsl-ftm-alarm: allow COMPILE_TEST")
>
> I've removed that patch until the fsl maintainers apply this one.

I think it is wrong to have RTC_DRV_FSL_FTM_ALARM select FSL_RCPM from
the begining.  The FTM_ALARM is primarily used as a wakeup source for
the deep sleep.  But it shouldn't be depending on it or selecting it.
I will create a patch to move that.

Regards,
Leo

>
> > Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> > ---
> > In commit c6c2d36bc46f ("rtc: fsl-ftm-alarm: Fix build error without PM_SLEEP")
> > I posted a wrong kconfig warning(which PM_SLEEP is n), sorry for confusion.
> > ---
> >  drivers/soc/fsl/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/soc/fsl/Kconfig b/drivers/soc/fsl/Kconfig
> > index 4df32bc..e142662 100644
> > --- a/drivers/soc/fsl/Kconfig
> > +++ b/drivers/soc/fsl/Kconfig
> > @@ -43,7 +43,7 @@ config DPAA2_CONSOLE
> >
> >  config FSL_RCPM
> >       bool "Freescale RCPM support"
> > -     depends on PM_SLEEP && (ARM || ARM64)
> > +     depends on PM_SLEEP && (ARM || ARM64 || COMPILE_TEST)
> >       help
> >         The NXP QorIQ Processors based on ARM Core have RCPM module
> >         (Run Control and Power Management), which performs all device-level
> > --
> > 2.7.4
> >
> >
>
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
