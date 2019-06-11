Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C73E3D19B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muU6COKUZ1RlANnztasjjGwDuTm3Bxv10QVMdV0Td/w=; b=mYOLULkI0mvvoP
	xqbysANLrSXeMMthuFmC7lqCdaM5k+ZHlAiCiz1X/OFMZ6sT12ZQ4QvRJkhwJp64KimksijbymJS0
	5Zku0McHWsRXdo5O/AgFW+RlDwGdfjtU4kmo0bbSa6HH5XlOJSVTPVrkOKgpEfDfMfQApFuIkEMuC
	cGRoi0zgaCvyfg1WAxs85SMQdEs/vpd86eEEClvK3QH3QbSaJ0DjsVwkmkAl2pTnHuVsjCWeN0YTe
	zuPi5Jw32ouGFpaE/ImC2HS0kAlcAkTuNMlQ6N+bnnvlewLa062mr7xKa9Av1cib1m8VsXNeJpLEG
	xaXjuFvPvwmdoyOpqaxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajDn-00020N-NR; Tue, 11 Jun 2019 16:02:03 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajDd-0001zb-DW
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:01:54 +0000
Received: by mail-lj1-x241.google.com with SMTP id a21so12187160ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 09:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=26bbmtxXOJyY8N47HEW02fS/RJ36aAsn2edvgu3kR/Q=;
 b=kxSAFUyXCR/ZITQ4nMHjx72+UcwqH6Em59goohv6EvmNVmO1iPWvQKrlj48FEaWjzF
 HfWTfoSHrvqI2pueWXSMZH6jycHd7lF+btC2PWymdR/SKr12C1KnhbQd5QMcZshr6Xh7
 BiB7KQjnvAx2yJbfD8rvyPIyMPB0LhgluCZmRwn10iW0uFEOZmkeaCj8HLNQRGpGqaKU
 vMFtp0pWXYF/hSLGdgRRz/iM3gUG2b/se6Vsej8EBx7ab6E1qRhzZ5bhexwVvK17hHCI
 QajxmMBKso5WuHHaJWHNqFdVQCzsQn5N8qjyoStQPyhgHtU133V1l9PiBYfYOme2qucF
 se0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=26bbmtxXOJyY8N47HEW02fS/RJ36aAsn2edvgu3kR/Q=;
 b=EXlQUBVSvamNTYm4lrxLU+Ljg3pA8zkLCk+cEPmVJTr5g8wk17cvSk0mTfZTT+dTLE
 lK6dMgHOi5jwAZe43Etqxwm3gmMtcziyD91ssoVAx+LtC5lDWSia2aVENZ2FepC9vxc1
 mDtYMPBqV+AJNInFGOoqjV7TYznKaWWsFBJf0CmZk5Eum9eRLcvJ8cx0a2QceVpuslXc
 DJP1pOHr/G9j43qtFx9AU0jNPerg+rd2Mfc/I6G3gJyj+2mvA1gU5lj208PRDnN67sQx
 j5NETWEjIoAcZFWBYz1VltPywKcJuHxqkr/QSD3bDc1ewHqJjWi+Gvic/wFuVsW9pEn1
 3PDg==
X-Gm-Message-State: APjAAAVHOuiYW9Ff6HbUJsPCnGeYU5WyH/grxzvtILh3WnWOiWayJa1S
 gKb3v4CSC55r/WMAtKsOVbxDrYWLBPEl2XnzUbB3dA==
X-Google-Smtp-Source: APXvYqx6Zyw6k7ktWfeFF2r+YwhlBxFZxaQiK+x6AhML42vVuWgezfZ5idk+Li58YpSowx4YLXEIM/M85D3+c+YcaXY=
X-Received: by 2002:a2e:5c88:: with SMTP id
 q130mr11691520ljb.176.1560268910098; 
 Tue, 11 Jun 2019 09:01:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190606094722.23816-1-anders.roxell@linaro.org>
 <d6b79ee0-07c6-ad81-16b0-8cf929cc214d@xs4all.nl>
 <CADYN=9KY5=FzrkC7MKj9QnG-eM1NVuL00w8Xv4yU2r05rhr7WQ@mail.gmail.com>
 <c2ff2c77-5c14-4bc4-f59c-7012d272ec76@thinci.com>
 <1560240943.13886.1.camel@pengutronix.de>
 <221c8ef8-7adc-4383-93c9-9031dca590f0@xs4all.nl>
In-Reply-To: <221c8ef8-7adc-4383-93c9-9031dca590f0@xs4all.nl>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 11 Jun 2019 18:01:39 +0200
Message-ID: <CADYN=9K7GwPGM_Eh5q-OZ9rcEPAjXw4BXy-m3a=QxmGuVruCUw@mail.gmail.com>
Subject: Re: [PATCH 5/8] drivers: media: coda: fix warning same module names
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_090153_488032_9374C656 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, "stefan@agner.ch" <stefan@agner.ch>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>, Lee Jones <lee.jones@linaro.org>,
 "marex@denx.de" <marex@denx.de>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "vivien.didelot@gmail.com" <vivien.didelot@gmail.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "b.zolnierkie@samsung.com" <b.zolnierkie@samsung.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Mark Brown <broonie@kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Matt Redfearn <matt.redfearn@thinci.com>, Daniel Vetter <daniel@ffwll.ch>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 David Miller <davem@davemloft.net>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019 at 10:21, Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 6/11/19 10:15 AM, Philipp Zabel wrote:
> > Hi,
> >
> > On Mon, 2019-06-10 at 13:14 +0000, Matt Redfearn wrote:
> >>
> >> On 10/06/2019 14:03, Anders Roxell wrote:
> >>> On Thu, 6 Jun 2019 at 12:13, Hans Verkuil <hverkuil@xs4all.nl> wrote:
> >>>>
> >>>> On 6/6/19 11:47 AM, Anders Roxell wrote:
> >>>>> When building with CONFIG_VIDEO_CODA and CONFIG_CODA_FS enabled as
> >>>>> loadable modules, we see the following warning:
> >>>>>
> >>>>> warning: same module names found:
> >>>>>    fs/coda/coda.ko
> >>>>>    drivers/media/platform/coda/coda.ko
> >>>>>
> >>>>> Rework so media coda matches the config fragment. Leaving CODA_FS as is
> >>>>> since thats a well known module.
> >>>>>
> >>>>> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> >>>>> ---
> >>>>>   drivers/media/platform/coda/Makefile | 4 ++--
> >>>>>   1 file changed, 2 insertions(+), 2 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/media/platform/coda/Makefile b/drivers/media/platform/coda/Makefile
> >>>>> index 54e9a73a92ab..588e6bf7c190 100644
> >>>>> --- a/drivers/media/platform/coda/Makefile
> >>>>> +++ b/drivers/media/platform/coda/Makefile
> >>>>> @@ -1,6 +1,6 @@
> >>>>>   # SPDX-License-Identifier: GPL-2.0-only
> >>>>>
> >>>>> -coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
> >>>>> +video-coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
> >>>>>
> >>>>> -obj-$(CONFIG_VIDEO_CODA) += coda.o
> >>>>> +obj-$(CONFIG_VIDEO_CODA) += video-coda.o
> >>>>
> >>>> How about imx-coda? video-coda suggests it is part of the video subsystem,
> >>>> which it isn't.
> >>>
> >>> I'll resend a v2 shortly with imx-coda instead.
> >
> > I'd be in favor of calling it "coda-vpu" instead.
>
> Fine by me!
>
> >
> >> What about other vendor SoCs implementing the Coda IP block which are
> >> not an imx? I'd prefer a more generic name - maybe media-coda.
> >
> > Right, this driver can be used on other SoCs [1].
>
> Good point.

OK, so I'll change it to 'media-coda'.

Cheers,
Anders

>
> Regards,
>
>         Hans
>
> >
> > [1] https://www.mail-archive.com/linux-media@vger.kernel.org/msg146498.html
> >
> > regards
> > Philipp
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
