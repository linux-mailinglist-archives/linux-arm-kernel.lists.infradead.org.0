Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EED1A296D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 21:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BysQ3HDFmDs2RtJTNXiLI6xHB0r4fXVK6/G3TBTnUYM=; b=a+p+ty9/0qHvY7
	nZbmhc8PFd63RtDm/dwluWfrH5JjQmQCOQAKsxgUAH0zbYhrva16p9KXxrieT/ijQd2qazrzTvbQO
	tRgkgKv2itdpixBGaA7clQ8AilrlzsDTccP4hTvs5EG7+/VLovrJC8h7MR7CJ4SHq+XZMVSCBVLCS
	0ZcIVXJ0EMRXaOvH9FEYKRhJXyPjdpmjrjmFgZZvSVlD0VMnDhXoIGmbpeV7Jl2qlb/5CemHtse+O
	Ar1JEXHUJgTof5DshnYP7Fd8VO0nfDIfL2aATHuVuPQHXaVI1xEpxOLc/syk7uLJ1RVbgnh1zKXvt
	F6m+xx2KTwqzqhmfmSQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMGXP-00010E-KF; Wed, 08 Apr 2020 19:39:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMGX9-0000vV-ND; Wed, 08 Apr 2020 19:38:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 2D46728917A
Message-ID: <58f011c7bd67c886892ac98505b916cc95adf495.camel@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: avoid unused variable warning
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 08 Apr 2020 16:38:30 -0300
In-Reply-To: <CAK8P3a1K5T2e2kAQMVi=ubPN3v4rYgtb9TaGC6evNXSUc4embQ@mail.gmail.com>
References: <20200408155325.2077345-1-arnd@arndb.de>
 <3336c3105120d2f90dbc20d47ff98e722a123d5b.camel@collabora.com>
 <CAK8P3a1K5T2e2kAQMVi=ubPN3v4rYgtb9TaGC6evNXSUc4embQ@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_123847_884374_148AE36E 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Eddie Cai <eddie.cai.linux@gmail.com>, Jacob Chen <cc@rock-chips.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Yichong Zhong <zyc@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, "open list:ARM/Rockchip
 SoC support" <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Allon Huang <allon.huang@rock-chips.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-04-08 at 21:08 +0200, Arnd Bergmann wrote:
> On Wed, Apr 8, 2020 at 7:56 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > On Wed, 2020-04-08 at 17:52 +0200, Arnd Bergmann wrote:
> > > When compile-testing with CONFIG_OF disabled, we get a warning
> > > about an unused variable, and about inconsistent Kconfig dependencies:
> > > 
> > > WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
> > >   Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y]) && OF [=n]
> > >   Selected by [m]:
> > >   - VIDEO_ROCKCHIP_ISP1 [=m] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && VIDEO_V4L2 [=m] && VIDEO_V4L2_SUBDEV_API [=y] &&
> > > (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y])
> > > 
> > > drivers/staging/media/rkisp1/rkisp1-dev.c: In function 'rkisp1_probe':
> > > drivers/staging/media/rkisp1/rkisp1-dev.c:457:22: error: unused variable 'node' [-Werror=unused-variable]
> > >   457 |  struct device_node *node = pdev->dev.of_node;
> > > 
> > > Simply open-coding the pointer dereference in the only place
> > > the variable is used avoids the warning in all configurations,
> > > so we can allow compile-testing as well.
> > > 
> > 
> > Hello Arnd,
> > 
> > Thanks for your patch.
> > 
> > I believe this is already fixed here:
> > 
> > https://patchwork.linuxtv.org/patch/62774/
> > https://patchwork.linuxtv.org/patch/62775/
> 
> Ok, sorry for the duplicate. I only tested on mainline from a few days ago,
> so I must have missed it getting merged in the meantime.
> 

No worries!

Those were was sent very recently, and won't be
merged any time soon :-)

Ezequiel



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
