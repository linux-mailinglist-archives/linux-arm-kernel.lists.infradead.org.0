Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3024D1C9608
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tie/ujuAVfrTfDdW3NjyT687N38++uk1Rb4oAKz4YGM=; b=mUPqDQbibytGdd
	9vEKiPax6+mF3BJvMHovTle3yKXaOQgb8ivhyHdVFLauh70uNvRigXOqbMllTbO7pyAHyEJreDGvs
	tq15KLG6EzuslqqMqsiQrU7enerrsPdfYDBjLGgW7dgQirXEuU4sRwsyvE+R6v4Pc0I2u0KcEC3M2
	tp3mz+DgV1pybsfxNn7Xaaig5W95OD1gDqo+h3KS0WEJLnn/LVivEtXRCtydAQWYRxVkrURpdy1f8
	Ftbst2DAaCZnGJ3zSvw4ok/cIDogjFOOGHPmVzK3cL8K646LQKyVnvT1Oe5hcnQecNAxVwzhtMqse
	zRf4Oy8HqfR67ZBg8zrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWj5A-00033L-GH; Thu, 07 May 2020 16:09:08 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWj54-00032t-Bb
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:09:03 +0000
Received: by mail-ot1-f67.google.com with SMTP id e20so4908304otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 09:09:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t0K8vs72yigTHRzm0BSfWUHqQ0xe0cRz3PNKTO88ZD4=;
 b=B8cdMowYAzxDOieEeXFw1fuY3NCunDPxldiA/+WElmApY+infPnRcWIpxQ7V9b+axB
 KGVwWX1NmXbUMrP/vlv2RYkwkipFfoobFV5jqt7Z2sZw24PnEho8qTfPdlaFcrDMV1By
 a4yu2oNmGJCFtdHwZR+VU2i9CmnpBrfwjnSh7xr68VkVruRxqWR6NYWN3wVWMJlV7UJz
 M9J0NaBPBr3e8wB+g4BgFzUwc8pF6+zCtt1dCDy4NRvhWLg6Y7lYiTlULoUSvKJe7wDD
 61I/i0bTtKBri037+9GPOhVzrHj8cVb/AhPtrhyA+lqLrn2NTZbc5WKwHHypoTxTP37C
 FPOg==
X-Gm-Message-State: AGi0PuZPB5jWpiH5aSfNJwxm6OB9IxdAM702MXMDCsPRq10p6NSfhOoG
 HyUzSXPO6k4YjeoEJOjOr9V4P+RA0QVzR6cdzyFyKA==
X-Google-Smtp-Source: APiQypKboo6HnKejXqdk1NgWdxPwPTzOwiSIdgcKXBZANn92+pyqbneMiJ3vWt531aGuATbyy/UmGiGRM2c/eP7Qpyo=
X-Received: by 2002:a9d:7990:: with SMTP id h16mr10670188otm.145.1588867740863; 
 Thu, 07 May 2020 09:09:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200507080528.547-1-geert+renesas@glider.be>
 <nycvar.YSQ.7.77.849.2005071056450.5637@knanqh.ubzr>
In-Reply-To: <nycvar.YSQ.7.77.849.2005071056450.5637@knanqh.ubzr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 7 May 2020 18:08:29 +0200
Message-ID: <CAMuHMdXgpR6HDQs_NS4W2C8NxqJp3g1DjR2VneUF5Rvun-L4jQ@mail.gmail.com>
Subject: Re: [PATCH/RFC] ARM: dts: rza2mevb: Upstream Linux requires SDRAM
To: Nicolas Pitre <nico@fluxnic.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_090902_394705_540BEAE1 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Magnus Damm <magnus.damm@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Thu, May 7, 2020 at 4:58 PM Nicolas Pitre <nico@fluxnic.net> wrote:
> On Thu, 7 May 2020, Geert Uytterhoeven wrote:
>
> > As upstream Linux does not support XIP,
>
> What?

Not for an ARM v7 platform:

    config XIP_KERNEL
            bool "Kernel Execute-In-Place from ROM"
            depends on !ARM_LPAE && !ARCH_MULTIPLATFORM

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
