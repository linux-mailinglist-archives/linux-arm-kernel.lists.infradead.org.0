Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CDE55013
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEVF/woI7we8SY14DQUcrn7TiaTs8R66WuF+iM2H47U=; b=K64cJlvuNSm7Mb
	zzjwppNfCGMkfhUZAw+10dKpHdghNusf7Jb78kf7L+FRnAd9MO9jRgmSBkhOkEMKDoibtSK5vbgLD
	pToqz1LNDGdHAsct5yr7MXKxipO608r3EIWojqQYkrQBLgruQyx8VKKBcrmEIIObffK/NFhuqAX02
	BMSQ1cRMqufuLMYcCweygXn+rQYaAW1mnwFcuNZcybfsegK64n+BHIzmwwmmW1nOp3ttaubsG7SyF
	jz79C48ld0eR/9MlknZfFahU5dIhl+QLbmO8ldc41iPC+0lqNkZcTv79XYsSHfGBhY7SuhVDm7seU
	35/UQOjIbleM96BnrBQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflLH-0003tw-Om; Tue, 25 Jun 2019 13:18:35 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflL6-0003tQ-Qr
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:18:26 +0000
Received: by mail-io1-xd42.google.com with SMTP id n5so769681ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A6UAI9WWXMf2Qu6aM/WVg80wL6CqlBhaWrohoeZmtwY=;
 b=xAhrWmo8R0p5m/XEwvf6mtW/z8H8tn6MSTYxZaMaqVGrFku4+Apv9I4W7entyO6YKw
 NcT3WTvRI7zN8WPcExzGBVU2Hw+91ynNggAOxCYsjXVD78JR2AU4wsca6qIllAk5T3OC
 1LvD0CjSDWukhZHBytLAOG3zTKw+NuvBtiO4rhTZM8mA1wBWksMIvNT2+I1wkJRDPZKU
 sGyllvg6ayS+UObypUBlmd4RrGA3VHjrwlHE05/pNemZLitqyxgHABOoV3ywisJ8GshW
 EjK0+jd1UiycJ0hFt3J+3kRjVemnTv8FV7oBSjNMwvTj89fgHKRHHSel6vdCfzEYyTbT
 Cl2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A6UAI9WWXMf2Qu6aM/WVg80wL6CqlBhaWrohoeZmtwY=;
 b=Bq69YXVv6t/JUSIZxGeq57vyojHSynb5mU5zX4WdWYo3w93O1oB6gdSb55F0l/figl
 ee2tz8PzkRoJJLcl63SB/ooVHXp9PD7ZO+dFEHFpfS4g1E+qF0H4QAN2pP3RxirXXZIG
 zrKENaP6lb3qRPQgDroh55lHHXPuqNBfplKX5Ql4y9y3uM+IuZzD1mslgxaYA8lY+UER
 jgEmmL1y1MF0avmSPmJn+HZ2GwZBKBEbWbY1LCgbtdy3ZKUjbG8JsjLDuHKUPwxOcmDu
 u1awPMFFmi+BrEh2XYipZhtHBI6G6whCfp3OI6sa6D3vHGpIx1OuIEbUXLGgYAcd76st
 3IGA==
X-Gm-Message-State: APjAAAXHd84gNqdXkTomT2bFvGp7jx67IIuGsQCWCTR4paiShPlJPbMN
 Lgz4jfYSjJjOIz0pXTCMDpb8EBSazOxZQpc718PFPw==
X-Google-Smtp-Source: APXvYqyvlNjne1jPy/BR9Wol/QJjFW5FsU51KCX3hS+df+11wY57vr0sqJtArQCmjQj/hDYaatXVG/kKPLLuG9Af2lI=
X-Received: by 2002:a6b:1494:: with SMTP id 142mr17350276iou.72.1561468703231; 
 Tue, 25 Jun 2019 06:18:23 -0700 (PDT)
MIME-Version: 1.0
References: <CACPK8XfL-U-BeynGQNBp5rPiv1gzD=7DVzyvrgtoL3njU1Kr_A@mail.gmail.com>
In-Reply-To: <CACPK8XfL-U-BeynGQNBp5rPiv1gzD=7DVzyvrgtoL3njU1Kr_A@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 25 Jun 2019 15:18:11 +0200
Message-ID: <CAOesGMjTBazjfMYEKww_dGuFAZYa7f6JBZDoyyCNaWKvKdpbQw@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: aspeed: defconfig changes for 5.3
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_061824_880322_A91D431B 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Jeffery <andrew@aj.id.au>, arm <arm@kernel.org>,
 linux-aspeed@lists.ozlabs.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Looks like the multi_v5_defconfig changes aren't producing the results
you're probably expecting -- unless the drivers are pending in
linux-next?

arch/arm/configs/multi_v5_defconfig:257:warning: override: reassigning
to symbol ASPEED_LPC_CTRL
arch/arm/configs/multi_v5_defconfig:258:warning: override: reassigning
to symbol ASPEED_LPC_SNOOP


-Olof

On Sat, Jun 22, 2019 at 9:59 AM Joel Stanley <joel@jms.id.au> wrote:
>
> Hi ARM maintainers,
>
> Here are some defconfig updates for the ASPEED machines. I haven't
> sent one for a while, so there's a nice collection of drivers to add.
>
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
>     tags/aspeed-5.3-defconfig
>
> for you to fetch changes up to 2d8bf3404bb0e65dffb7326f7fb6e96fa3cee418:
>
>   ARM: configs: multi_v5: Add more ASPEED devices (2019-06-22 17:12:17 +0930)
>
> ----------------------------------------------------------------
> ASPEED device tree updates for 5.3
>
> Add new drivers to the ASPEED G4 and G5 defconfigs, and to the armv5
> multi defconfig.
>
> ----------------------------------------------------------------
> Joel Stanley (2):
>       ARM: configs: aspeed: Add new drivers
>       ARM: configs: multi_v5: Add more ASPEED devices
>
>  arch/arm/configs/aspeed_g4_defconfig | 10 ++++++++--
>  arch/arm/configs/aspeed_g5_defconfig | 14 ++++++++++++--
>  arch/arm/configs/multi_v5_defconfig  |  8 ++++++++
>  3 files changed, 28 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
