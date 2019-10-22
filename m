Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ED7DFBB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8QRmthpTAvTtX7U+8r2zHO8npbnpSuL/uBqsKRxOL4=; b=Ko4i5q6wJI0eDp
	5620/duYKqQ7DEFUuK0IyHyz6/Kk+tWJENzUyZXMLCXu6L/LjVQQkPjCvv1cnrRkcn0Bbzk7r3S76
	/+qRZ9n95t3ZNCDd9Rl/DstoZi3iBjRWYfwEEfG1tEVjxwTzLcX3XuFeDRbjnYxXTvE5kvqd604UJ
	iciMU1eBD228LlkJwt7TkL0D5x6VngB8fiAwEhIh6s+7fcc7Jo1HMFQNYAWIc2Hv6VMiT1wfq0w46
	5kSk8sbJD9jspGjQ457czy4T83ipSEBvg1O3sJbn2sQ0urbCh+2ocSIZZLihlsDfZK/fc5VKNTvSn
	/s9Yqx2nkWFmRu+7Ayxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMk3J-00042t-TF; Tue, 22 Oct 2019 02:37:41 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMk3A-00042J-Rq
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 02:37:34 +0000
Received: by mail-io1-f67.google.com with SMTP id y12so941509ioa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 19:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wD3owoO7Hcsn6F+M0fWwB4WG/OmBuK67PCnu7DWOZmU=;
 b=ie+2tCNcKz9mP/KkQWPiaUGNmyidSAwBeBase/uGdtDoTUxon6/PB/kX22S1H9IbOW
 vHfHyt3QUDMPPTCdW+uswBM4XwNspRZtY0I9uf8UNZ33Vw5hF1r5HGYoJBRBkPp9+opZ
 1EQqLqt7qhbuvBe7Dap5VI3MsP8DLbekJIyikbCR6T0Ki59mJ8bflxG4wcyLAQb3jMso
 VvXQ7sDs9Be+917+iEc73wlT8PGlXb09XIQJn7X+DJC97k4Fh5WPlM4ea4DSAhmV2Otv
 GpWJssGwJhAOzC/Hok/Y7woKfl2/FdptNLkH7n5+4FySNM//Fjm+Fc+cegWjeFmJXxed
 8OsQ==
X-Gm-Message-State: APjAAAW/jMddk9AjOPLBaaudoKZks8ujNxlJLj+zeob02IAeMWW3Guvq
 k2eiaZsky3731sRA/lAHt8zG3GhFX/HNpEPAsEc=
X-Google-Smtp-Source: APXvYqzXfIsGMFvjAZ7AUYcylJqFT1rB9WKhtgf2N4eZKTgy1KjKCQwtphZt8HrV8RX4H8uLZpnd8bOs4Pcvj+d0Zv0=
X-Received: by 2002:a02:cc4e:: with SMTP id i14mr1545623jaq.32.1571711847683; 
 Mon, 21 Oct 2019 19:37:27 -0700 (PDT)
MIME-Version: 1.0
References: <1571662320-1280-1-git-send-email-chenhc@lemote.com>
 <alpine.DEB.2.21.1910211648200.1904@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1910211658040.1904@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1910211658040.1904@nanos.tec.linutronix.de>
From: Huacai Chen <chenhc@lemote.com>
Date: Tue, 22 Oct 2019 10:42:55 +0800
Message-ID: <CAAhV-H4PEcCgOBL8ksjc+4LC9VPoCRBMtuGEK6ckmdJYXjdcSg@mail.gmail.com>
Subject: Re: [PATCH 110/110] lib/vdso: Improve do_hres() and update vdso data
 unconditionally
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_193732_902631_167085E7 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chenhuacai[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Andy Lutomirski <luto@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Thomas,

If we use (s64)cycles < 0, then how to solve the problem that a 64bit
counter become negative?

Maybe we can change the "invalid" value from U64_MAX to 0?  I think
the performance of "cycles == 0" is better than "cycles == U64_MAX".

Huacai

On Mon, Oct 21, 2019 at 10:58 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Mon, 21 Oct 2019, Thomas Gleixner wrote:
>
> > On Mon, 21 Oct 2019, Huacai Chen wrote:
> > > @@ -50,7 +50,7 @@ static int do_hres(const struct vdso_data *vd, clockid_t clk,
> > >             cycles = __arch_get_hw_counter(vd->clock_mode);
> > >             ns = vdso_ts->nsec;
> > >             last = vd->cycle_last;
> > > -           if (unlikely((s64)cycles < 0))
> > > +           if (unlikely(cycles == U64_MAX))
> > >                     return -1;
> >
> > That used to create worse code than the weird (s64) type cast which has the
> > same effect. Did you double check that there is no change?
>
> It still does for 32bit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
