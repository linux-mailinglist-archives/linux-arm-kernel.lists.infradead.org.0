Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3261B16AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 22:07:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=237r7vvACcDfM5GZfiM5XKAELSzFFy2V5rLY/6jB2iQ=; b=Zgj8gQcPD+oyC4
	sW578ji4EHZA02109d9w608ADhBMycEVTcWXM5ydOyETWSTCzjL7DgymyMDgWaEhHdC8naxDZsVuK
	y6/fJXwBPxtWtO8IuAT7hzdhrcLDtcGYhhn63GFpysVP3FwKtxM96TDPHIvHZhWLnvAGdZvg1MIG7
	w97udtP5P/tQD17+OSw5lQiYN+YQlKapmHdefboOUcoGUFcxScIoaCGxZAir1JujXSMskAxT7uYhp
	pWayOwEMkKe2W83NUngKHqYLaHxQhrODwcVtjkzE7ovKL9hzQR2i3KbRD+lFJ4RWh4uNINCBUvYLQ
	RnqUYZOXrkqD4q3kqC9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQchU-000320-5d; Mon, 20 Apr 2020 20:07:28 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQchL-00030F-J3
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 20:07:21 +0000
Received: from mail-qk1-f174.google.com ([209.85.222.174]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MZCSt-1jn19g2kaH-00V99c for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 22:07:17 +0200
Received: by mail-qk1-f174.google.com with SMTP id x66so12135236qkd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 13:07:17 -0700 (PDT)
X-Gm-Message-State: AGi0PuapE2NqejNZBSVMpfRlNh/SDs29RYnhsn60g4Ufgpj1PEMsCOoV
 rayLF7otZaliULyOwS3hpaOYiddrQxnPW5lS8Oc=
X-Google-Smtp-Source: APiQypIAhB8mGz6XM0SD8ArnZJY6aRKd7XU6MxbJm3d0s6y853Y/+oeV+mBwceNCaK3NIlM89N1GSdGstRKXiXTq2KM=
X-Received: by 2002:a37:a046:: with SMTP id j67mr18240249qke.286.1587413236560; 
 Mon, 20 Apr 2020 13:07:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-7-robh@kernel.org>
 <CAK8P3a2cxU3UYSj19Rt6pcUAtA1uTiQx46MF=92q_asmMOXMnA@mail.gmail.com>
 <CAL_JsqJS5o7_Ep50vfhNBOQ2sczgD+dNuiF8+GwjHUu7tN9j7Q@mail.gmail.com>
In-Reply-To: <CAL_JsqJS5o7_Ep50vfhNBOQ2sczgD+dNuiF8+GwjHUu7tN9j7Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 22:07:00 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3YQaQESsb61rZKopddmiKdm2qK_mS+yiBY5th0xSHOjw@mail.gmail.com>
Message-ID: <CAK8P3a3YQaQESsb61rZKopddmiKdm2qK_mS+yiBY5th0xSHOjw@mail.gmail.com>
Subject: Re: [PATCH 06/17] clk: versatile: Only enable SP810 on 32-bit by
 default
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:KYk4U3Q7kBFjeHc3Ec3L20ciFKq1JDv5PEVhn/EohfJ0cJJ6rzW
 Z/6Rc/lxlUIYbQ/on3p6Fza0owpLDf4yAufOvdaWKrZ4Mwht6s/N81GrQ14cxwfI56Je80x
 Ryfqz2xYyo+5WOiV2d4XiJ5QLV1iljfeRrLZm4J4Qj0ml+9k4UnLrdX7qgtd+UNthIakUQP
 d4KKsdv+W0jZ75FbtPZxg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C6+ZHoMPcgY=:VONbaj7NzLOUG28YtE4XVe
 uQN6MhM1xE+c4y+1kWhBsoc6yKI/eVlp4aq5OJflj0bE5efUTC7oMjwGL8fpk3lzOivSldJGc
 OGdyfx5Eb99heRY5+w/6FhqTbsQAtyKbFS7F57tlnP8nQy4U7Fv3d3VGh+FWjBrG+VlrkP/Lf
 oVw7+xeqZsBWpwn9vIB53NV9BbWZNoA/G8fDm/LmpArl3C134K6XkOTWpP+kimvBsSOqCjHeM
 x+kP/onvTVB3kYOLkp2jHWvkU+vZU9qFv68jaCHDACjymTG7eReXTZOaE4Oi6YEM26qN91mk0
 DC80U+3lheYtly6fwSx/mC/HuHekR8fXpzW8lsvwQqwiylPhS3NEdg0SexceFmGtSEpm/mjRz
 kYVnxJU/9IYguupTa5MNEIwjgiAldNgko8PDVYTXqAfq6ib7EAy6FFiQkl/UKGgPwLodIeT/q
 kpKz1LLEzy1966lQ/eHk7G5Oy8gCdgz7qM5J82I6+3JGJUSNdEJoWe1wsTDtPJMtYP3SMEUWF
 Y77JpPS3NWBbYLsfWK52N0nd5gN19E6oDP7/nPdF/Xb+LyMNVuIjmc70JgXCY5g6CZTdrR19J
 +/m0J6I+YNzMqtDfjULiJRrzcmOx5+5mPNFoyu6u8a/wyGhlAUPWOc+MW6vD3TCx8iUglac3X
 fBE6NKglNMIrR/kh5P/F2b/JQIc+mFosiLNqaZI7KP4wRDpGxkiKP+HhzeeFoexS6WvsKZNJS
 5mPQ4abw4B4Q8TtsiSiHDzw+udC0RO7836HQy5xH03noMXnK2XTA4bqBvFlHvA0rwKT9qPnD7
 tGtohSm9stFNeSiLDlEWuvodjYqSIGh7u9ywMEVj09p4NBsh5s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_130719_923860_3D852B6D 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 7:48 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Apr 20, 2020 at 10:26 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
> > >
> > > While 64-bit Arm reference platforms have SP810 for clocks for SP804
> > > timers, they are not needed since the arch timers are used instead.
> > >
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: Linus Walleij <linus.walleij@linaro.org>
> > > Cc: Stephen Boyd <sboyd@kernel.org>
> > > Cc: linux-clk@vger.kernel.org
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> >
> > Acked-by: Arnd Bergmann <arnd@arndb.de>
> >
> > >
> > >  config CLK_SP810
> > >         bool "Clock driver for ARM SP810 System Controller"
> > > -       default y if ARCH_VEXPRESS
> > > +       default y if (ARCH_VEXPRESS && ARM)
> >
> > But maybe add "|| (COMPILE_TEST && OF)" for extra points.
>
> On a 'default y'? Not necessary.

Ah right, that would indeed result in negative points.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
