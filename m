Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 368DF87315
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 09:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uh+qKPDGyHxTbVRQ+FF3KGKc5OstmA89kWCZ6b7Ra2k=; b=AJCX0CVSaHUNfs
	c4oY5mgf2wDvgvlwbbz2q7QZLf1/2HBPjWbIGfEZP6uV5/MMl1fyNImIfaIHTZBWPnJPIJ+kY7n4a
	/vAewFWd8p5i8MDKKZCOxJuomxVc4LvrKMxjwtsZhLQc70OqPRc/TIIpxiJ7yFkfFLQ44g9f6fXod
	NG6vL/gjfVTL4uOkal6dXo/VcPu4V6SD+EeNRHxTY/5gW3Py9bfQXL2c54mAi7FwyTCBbp5Z1A1PG
	4DgqehT9q06vrVWB5590ZcRSSzigB72WezjVuSUPovuAd+6FsbwQqtNMpuMtTGUiRBYwol2eQ0yh0
	iFckCQnswpfS/r2iJ1ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzPY-0005a3-RZ; Fri, 09 Aug 2019 07:34:04 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvzPK-0005ZU-Bz
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 07:33:51 +0000
Received: by mail-qt1-f193.google.com with SMTP id l9so94861440qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 00:33:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ON/xqYzzKXuXRxyKs1x68eVhu8CvgAUdmMapXGjP2EY=;
 b=npsGMdRwA8nloUcHy6vLb/UBK7cSo0v6PaCi2dTZ/YtFqIVOrMLQiWdGys4u87vSeO
 F4VQndFNfxfEFO4Fm25wVDazuZCYfnvQLOgRL/mXh2338DE788AhlkzYkbARn/wmmxmX
 f2diqnettH0AiwOCEbHgfE7QIthKSW5z2U2Ud+hu/hbR8dg92TBWr2tz6bB1HqtPhHXl
 8Oim5icQE26GeL/6Y9mfL52xr5vQxwv4g4y8YgXIp0dgI6xjMztuZTVRWR15Axa+uDYy
 cW9gFbFgscI6+/2/kVwAAfOvOWnbH8n6KoqsevQ34E8lN+2/K+xslhI5KfIfIcGJsGeS
 cQDg==
X-Gm-Message-State: APjAAAXRuqx2vFumJWfqojwm3li5xEOtOMoVpEbFtVmEd9sq4w4f3EuR
 baw6DDTSUH3X9j4ZM4iXNbYlO22zsSJtxXLiN+U=
X-Google-Smtp-Source: APXvYqwB0sAxZO9jp3JM+qdA+V7oGn7Em1pifk8qI0wN0R49zku5U8wwUBPF9nBoeNL4u7gsVezah3x6CgITVFfdFLo=
X-Received: by 2002:ac8:6684:: with SMTP id d4mr11580322qtp.204.1565336029037; 
 Fri, 09 Aug 2019 00:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-12-arnd@arndb.de>
 <ba446856-0fa1-d06d-9e74-18ed9d630376@linaro.org>
In-Reply-To: <ba446856-0fa1-d06d-9e74-18ed9d630376@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Aug 2019 09:33:32 +0200
Message-ID: <CAK8P3a0cDSr=nyaTFPywnYzUNdeJEhNBDkmWxBhVgXL+2vSyfg@mail.gmail.com>
Subject: Re: [PATCH 11/22] clocksource: ti-dmtimer: avoid using mach/hardware.h
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_003350_407991_9EF30FA9 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 9:01 AM Daniel Lezcano <daniel.lezcano@linaro.org> wrote:
>
> On 08/08/2019 23:22, Arnd Bergmann wrote:
> > As a preparation for future omap1 multiplatform support, stop
> > using mach/hardware.h and instead include the omap1-io.h
> > for low-level register access to MOD_CONF_CTRL_1.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
>
> Do you want me to apply it through me tree?

Sorry, I should have included you in the cover letter. I would
like to take the whole series through the soc tree, as there are
dependencies between the patches and this cannot be applied
by itself.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
