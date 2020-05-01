Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3131C12B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 15:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCbPK1PuoUSZrPwXnb1f2Eb3QyY82EgHvUwiCXYH1lo=; b=Woko10WN65opq9
	AlgUyj//s42VFgaXU6XuaUrx50/bE5+eQNuVH+Fr8yB+0kTBNHYXXpIDDaqzo/CWQd8CbZZsh3VC6
	k1ryaxnNqMWn/Dj01H0pzCPzJQk+rUljuCtA+GglvULSppCYbGeoPdAaypce5nFx1sWGZXPQzv49o
	u424GKQ0S46ZLhI5TtRA2RMIxF/dUPPYxrn7oExLK0HigLI0DpbSp1m9aR89QAwKrhaxOjrAMOZHq
	ME/NNkY5trfI2duG9sxpsJ+X4/xn//aNyyrFsSFciJOucj2E6CA6xWtKsdn8TMR7a494oe+5TvvYu
	3JQMs/qk4OenIk3illZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVXA-000542-8Y; Fri, 01 May 2020 13:16:52 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVX4-00053Y-8T
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 13:16:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id r4so4554464pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 06:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b2+/9XXY8Y1RxQllaPBwEstw2gB8BpLP9hF+BFGMRto=;
 b=GCmm1wMVqYxnGfNpvKp1cw9fbv2U2gMWk1CMbTh48Hm7wPNMne/GbW31xoR7mD00S6
 +uYXr4iDO7nSP6i6NtmbZ50/3IbLNNl4H21oYebEd34ccm62tuScRjfDRf1UWetYkb65
 odnWO7yMmFF0syGwu/kMQNNJLwLW9Ij93HzkYPKmRli9xqzyC1VZ3EEehyJPysb8KWdz
 T+7Umkferm/ayeT9tP5ghbICCAKDJv7XaRspMAl82ljUL/xT1Jwb2cPlduJ7JsQ0OhsH
 Ld0vBtmY9g6MuytPotItD3U+UU2gcrdRAg8rKiiJr6QVPNe7h5eDislLZN2nuhtD84Cl
 FNAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b2+/9XXY8Y1RxQllaPBwEstw2gB8BpLP9hF+BFGMRto=;
 b=iapxugj2HuMaM95mNkFtbTXWpV5l9GvkA3wodgzm1W+FmsfAvNQyscjS5tw4WboIAN
 /CgERZ8qDroh1VJbKZ/F+1sdT6DI/lUKSDYr3yLFmDWl+Wb+MYy0/Y0TUBA9dgH1H2T5
 IGudrFsjGK7WPnB3l/JkYwdljq3odwouUEMZtV+rjr/uy+RrNpqQbBVnQKSlEgqet2Ce
 CJUJjn7ZhMEJo2sbfjbVWHwvRvr7N3CBAtvoDRPbQePuDv3Zzr3aGBuT2UnoxudxheVm
 pzZPNZ/dXeW3u0qlbIdcPxGTq4yHnetNDbrfPAYO8ho+WZ20B+85HMtfhZUF1BwQuwxL
 Xyxg==
X-Gm-Message-State: AGi0PuYaMNUvKae3Zc/Nd19zfHpiVfHj5VithvbzTIQe2An21pWnO/LH
 AvivJ0y3zPEr4wp9yo27qgQV8VlOGb+OWhqvges=
X-Google-Smtp-Source: APiQypKHDrDQjerRe+W1cA8mxnGSdNgtk0He587ZvD8AdxHMslTtV5DWvxC7LaTDqCSIrv6W6qI497cIXQBPbgQab8o=
X-Received: by 2002:a62:f908:: with SMTP id o8mr4034258pfh.170.1588339005327; 
 Fri, 01 May 2020 06:16:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200501013044.GA288759@jagdpanzerIV.localdomain>
 <818ba356-ba35-68de-b7bf-f145a89280f1@gmail.com>
In-Reply-To: <818ba356-ba35-68de-b7bf-f145a89280f1@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 1 May 2020 16:16:33 +0300
Message-ID: <CAHp75VeZRwUp+CpOct4dCAQAfyJZBAY7=qSKwRQh935KEMWw+g@mail.gmail.com>
Subject: Re: [RFC PATCH v2 0/3] Prefer working VT console over SPCR and
 device-tree chosen stdout-path
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_061646_304128_94173B92 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, Feng Tang <feng.tang@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Eric Biggers <ebiggers@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, Grzegorz Halat <ghalat@redhat.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Lukas Wunner <lukas@wunner.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 1, 2020 at 2:11 PM Alper Nebi Yasak
<alpernebiyasak@gmail.com> wrote:
> On 01/05/2020 04:30, Sergey Senozhatsky wrote:

> I'm assuming "by default" here means "without console arguments"
> regardless of firmware requests. This paragraph (with small changes) is
> repeated on many other Kconfig descriptions (drivers/tty/serial/Kconfig,
> drivers/tty/serial/8250/Kconfig, arch/sparc/Kconfig from grepping for
> '/dev/tty0' on **/Kconfig).
>
> From Documentation/admin-guide/serial-console.rst:
>
> > You can specify multiple console= options on the kernel command line.
> > [...]
> > Note that you can only define one console per device type (serial, video).
> >
> > If no console device is specified, the first device found capable of
> > acting as a system console will be used. At this time, the system
> > first looks for a VGA card and then for a serial port. So if you don't
> > have a VGA card in your system the first serial port will automatically
> > become the console.
>
> and later on:
>
> > Note that if you boot without a ``console=`` option (or with
> > ``console=/dev/tty0``), ``/dev/console`` is the same as ``/dev/tty0``.
> > In that case everything will still work.

I'm wondering if behaviour is changed if you put console=tty1 instead
of console=tty0.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
