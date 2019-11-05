Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BB4F038B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 17:57:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hjNk224E2yXi9ScsQtx1LBQUR0TVJ6PRIQfneu4zO8=; b=WScHwQdSrFEoGC
	bfkTSPtd8pV/c6qvgKr3B9evyqYPqa1Tg49L1Sv0HSwy5RXJR9ntKNNDX4BhF/CDuDMu+rjD3KHs/
	E3uCnJdvDkRwx2z9zal9c5e93La65Imawbdjrl+nlBII0Fh7C2qhroi+H4x8UW76Jd8H+SQvmkGBc
	8+yEjs90yJdDJUMCj/xNOfkQGm1aer3Rng1vlh1AbgHP3JbZO9/NjYJcXoLAHCkayznvO3o1Kq/X5
	aORYMkmiOO6akavcCTKuAxz3WKblDlnfC1tyEX2u0catDlzZSmt7F9zceHQKHJZVW4QzFXopFlyBB
	FjPCmMUdhDl85EhdHiyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS29J-00051s-3i; Tue, 05 Nov 2019 16:57:45 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS299-00051J-Jw
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 16:57:37 +0000
Received: by mail-lj1-f194.google.com with SMTP id l20so4016821lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 08:57:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bOVYf2vdaSL/RWJvi5inztDYzFK8sbHwNSUro0lwIhE=;
 b=JuoeOufotHeUbgV4Q/wHNEBC25gj24A6lblZAFo88oFVU/J7QYLqL0rSaIguQS80CC
 N+BHhxwtLpwsghfmeYJosiz2RawqOG5WsZK5H9+jeRXPMRKHWqM3Kmgx9CPDlrqWZ8Xv
 KVtpd+cB+gnoP7NEajV5f8+MLNOab9jbjnKUgE7Hu0fAQDG6N9ooNvbg0i/E4gn1jBk7
 /z9PvYSihul+mKdLUcgZZCqVPFO45stOoIJz6y1TClGtEwz6r8FrfEubmBMN84nhkUNC
 NnO0gVUAz2UR0rJNlizthv9AVC/u2pOGfXw2bTJFm1E8Zh5cTUk+J9SRSnL48FDg5bFW
 +7Dg==
X-Gm-Message-State: APjAAAUX2l/BZpLnyxa4HQ1Nzvra2x8SK/rx6VKZbsbx3IbTWHok2ABA
 6KH7/UhIRpcImQ+850YUfnlVq1/McQR0Ifqg8/k=
X-Google-Smtp-Source: APXvYqx1q5h25O1Avl1/rNRBA2TpfZ8vpThwQmiaeaIk1Z4Qvm+oVdx2IoV+LaUJUqn8XFTKqkgazKObjHqA+PE3MKU=
X-Received: by 2002:a05:651c:20f:: with SMTP id
 y15mr8682641ljn.31.1572973052825; 
 Tue, 05 Nov 2019 08:57:32 -0800 (PST)
MIME-Version: 1.0
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191104151310.GA1872@bogus>
 <CAK8P3a1B5v_3p0XhddoeWu7wChr6BndfqVVjPUvWYC6=aRfLXg@mail.gmail.com>
In-Reply-To: <CAK8P3a1B5v_3p0XhddoeWu7wChr6BndfqVVjPUvWYC6=aRfLXg@mail.gmail.com>
From: Sudeep Holla <sudeep.holla@arm.com>
Date: Tue, 5 Nov 2019 16:57:21 +0000
Message-ID: <CAPKp9uZ8OMhsXvF4m8=M+5QKHFGPK4ZmM_+eHt_perRQng9J8g@mail.gmail.com>
Subject: Re: [PATCH 1/6] ARM: versatile: move integrator/realview/vexpress to
 versatile
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_085735_653540_2F2F329F 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sudeepholla.maillist[at]gmail.com)
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 3:26 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Mon, Nov 4, 2019 at 4:13 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Fri, Oct 18, 2019 at 06:29:14PM +0200, Arnd Bergmann wrote:
> > > These are all fairly small platforms by now, and they are
> > > closely related. Just move them all into a single directory.
> > >
> > > Cc: Linus Walleij <linus.walleij@linaro.org>
> > > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> >
> > Looks good to me, so for vexpress part:
> > Acked-by: Sudeep Holla <sudeep.holla@arm.com>
> >
> > As Linus W requested, if you share a branch, I can give it a go on
> > Vexpress TC2.
>
> You are of course both right, I should have split this out into a separate
> branch, rather than sticking it on the end of the completely unrelated
> pxa-multiplatform branch.
>
> For testing the changes, this should be fine in the meantime:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/log/?h=pxa-multiplatform

Thanks, tested this branch and found no issues.
So in addition to ack:

Tested-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
