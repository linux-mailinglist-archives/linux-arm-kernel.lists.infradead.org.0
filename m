Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A6D1C9869
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R47Mv5CXhMxwkuSwPF284bF9sNfSbkMt/stlCKiewEw=; b=I1nfMDUIxF4W9d
	lZqSJFqxXAluOU8HACA1TH14mJx2ra5HVNPB1Y9SZp9NjECohBc3CNr4XtItUQCVW0+XrgzxZ1zgQ
	Fz/Q63YjzQ62tMdL5Kvw61Ip1YV2wlDhsSZ5VsRiuyxZY89hFovqRWWgJQxsXGbQHyBJ4j3eDV3Yp
	Auf0CCXX2C/xCGOw+8ORPPBe2rFFjodEJDdLsIr21+xExhuAK+HWYuH7aFDmr8U5M7zFcatcg/Wj5
	XippwyocBHx9vodnFbu4fvX+6wfkUuc+th8Aar7pZLCdHdw6T1Hd7oNOMjmYHB5EWuOYqd8q1r7i2
	diOjWUtuY3XfXrRXKPOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkj4-0003sj-DZ; Thu, 07 May 2020 17:54:26 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkiu-0003qQ-L7; Thu, 07 May 2020 17:54:18 +0000
Received: by mail-ot1-x344.google.com with SMTP id m33so1738591otc.5;
 Thu, 07 May 2020 10:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K9qTr+beRcohA6PMx27iJvmErOKyI82EyxD1O5Dcxzk=;
 b=SVsD6C63OiLwNbOKAQM5ZFhQakJf5wmETFQL9x+dixJ/i776z1xlYBs4MsH37nM2Q/
 rN20lR9IsgpWIANGiiWVwGlmETI6MlQhpuSRDvTmx+GG6KHHYSzcUoNVSnvvH7krGkvj
 Q43/nk2XB+fPJ3E2IE3bqXw22a9vnsjtN/mdP8+cPQfVIfxvSJy+aNEnvd9ILL9vOdUm
 5La8QEzc3kfhqomZWhA2DoXxQkPpXhtMplOVm0qU37uRCu8S1TmTFKpmv5czDR9NGbtZ
 LigoAd2EISFD3oT6dUZbKvD8dcwnV4wuzzivD++70wK7jNSwQiHi++7UHGS5HfwfnQvw
 i8GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K9qTr+beRcohA6PMx27iJvmErOKyI82EyxD1O5Dcxzk=;
 b=Ef1lH9meHvE8HXWa5FK4pxR78nK3qJrE00PFPCN5oHLwTTcZanujmNdIf4LJtLP6n5
 9LplMi22Q60FGFYGG30T0w0Vc7oS0SQoc/xbkO1Ce8ePqxT4boPV45YdoFkIeJspxxZP
 7aN76VN7IjvCf03oZqBIlIGLqa+dfrBvdkLPGOwVTTrx/Aoaw1zTjv6yhNQeIZhZzQvj
 SXHHl1+Mg9pIsko44GAScN3EMGbDruvK7L2dv18bgxX2BnFoKPvgvyQt027J00bQcFih
 PrlX4LkQkUK2RMk9VrrmOw57/brv13MHH7EGjBsY/dUSKmGG04rfG2MZR2PXxchaFPWg
 969Q==
X-Gm-Message-State: AGi0PuZHQwIURi1bnmqwEDN484MDkvdkEqQYs+m9r7QO5jqGyg2cQWoW
 Hso84doRDIi6D3VqCuqpMmvsx738RF9QPHrmwlE=
X-Google-Smtp-Source: APiQypIsmJ2T5664lpXTF/RWS8/eux+ZnXoiFN88OHtyHhUrSboY+wgSVo2JHDzVRl08o0T/GlQRWx6bo0sL6qxy4RY=
X-Received: by 2002:a05:6830:108b:: with SMTP id
 y11mr11230755oto.88.1588874053316; 
 Thu, 07 May 2020 10:54:13 -0700 (PDT)
MIME-Version: 1.0
References: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200507174446.GC1216@bug>
In-Reply-To: <20200507174446.GC1216@bug>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 7 May 2020 18:53:46 +0100
Message-ID: <CA+V-a8u00kfN=rNs72y-R4-8fpz4rPYX8xf+DoBMmYYVjUS8fg@mail.gmail.com>
Subject: Re: [PATCH v9 0/8] Add endpoint driver for R-Car PCIe controller
To: Pavel Machek <pavel@ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_105416_716493_0AC3AE86 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On Thu, May 7, 2020 at 6:44 PM Pavel Machek <pavel@ucw.cz> wrote:
>
> Hi!
>
>
> > R-Car/RZ-G2x SoC's, this also extends the epf framework to handle multiple windows
> > supported by the controller for mapping PCI address locally.
> >
> > Note:
> > The cadence/rockchip/designware endpoint drivers are build tested only.
> >
> > Changes for v9 (Re-spun this series as there were minimal changes requested):
> ...
> > * Replaced mdelay(1) with usleep_range(1000, 1001) in rcar_pcie_ep_assert_intx()
>
> Are you sure that is good idea? You are requesting 1ms sleep time with 1us tolerance,
> I dont believe common systems can do that.
>
Agreed the systems cannot do that, but the main reason of replacing
mdelay(1) with usleep_range(1000, 1001) was since  pci_epc_raise_irq()
calls mutex_lock() and then this function rcar_pcie_ep_assert_intx(),
so we can assume this function also can sleep. And, according to
Documentation/timers/timers-howto.rst, we should use usleep_range()
instead of mdelay().

Cheers,
--Prabhakar



> Best regards,
>                                                                         Pavel
>
> --
> (english) http://www.livejournal.com/~pavelmachek
> (cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
