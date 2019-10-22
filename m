Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6D6DFC7E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 06:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqXFpYQhZ3MdSLoHNp41Z92udhTAxEEmEn5AfMIfCLs=; b=N8TfA/CfWd/ReH
	jg+d9E9OHaamDww9o/+HX0z1juc4pJmTnogu43sm36tryTSGp3qLd/qbJIANmn6DYt+M+rBn0nuUH
	RXSP745YAH5rodBcNIBpL/8x8Nxd9rRecFfX2am/82czgu/ZMmO6qcS7vMlMUJ7z0E5ylARTGKUZk
	6tEJIY6FcfZXCOfXX2lP1Iw/eKjfrJv8xJ0UuwnXqzvKODI1ETIw7DbAJ1S6dQANTvZHmRgkN9wi+
	TtTsm49z/cN6umLZ0N0U3JuShFopgRg/yqeQpOlqcJEB2ct6vP+36LacFdv3guXkEfxjOGaFkVpXv
	r2QB1IiatS01LcnDD3qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMlek-0001hb-SA; Tue, 22 Oct 2019 04:20:26 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMleb-0001gz-Qw
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 04:20:19 +0000
Received: by mail-io1-xd43.google.com with SMTP id i26so9411398iog.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 21:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wp8wy/spwh9Zthw1zbjo3jFQXzwnNkB/MNGLS3X0R2Y=;
 b=kK0pBRS+ksAkOYZhENcTO83Lm34CJFk4blDQ/o75EKpXDk23HG/vB1ukJhckWse+c+
 0NSGjZIkA4EZdxG+MtmprR319Wssf9w2lx9OgXgCRxyBfqrjQhBiJT+hYYCsgVSraZ1t
 XIqm340XNtgW9zxZOEumHDt/3WC2G0fAH3kmc1k/yjAeVQqNEl/tiP3qz+xiEwg0mQ5U
 jxxcWFzsMIIGxt+nYT6V9Q3mcL7ItIvjCCsLa1THQtooG4a4wSoK2vC47xWLqm/mrcv2
 FSI0DUcVLC/TciCL1fMDd2lIeIVKYAdsk+7InK+czHJBLmjBThCTj6q2D8ICJabvvhsm
 Z5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wp8wy/spwh9Zthw1zbjo3jFQXzwnNkB/MNGLS3X0R2Y=;
 b=riCO2W8qTOcuVlZvRcL+8C7R3pTP9x8pQOCxXdWFPSAgkeC0uT0hCY9YCqV6pRNvZK
 AiQVp93OWAnmunGV0tSEn4VoWCeFqUaRH10U1b5ATVKXN9sPaByjb7pqQYi9B6JKPSpa
 Elo1jG2rIjDoR9Mliy6n/aCdP41lKFp2rcMmvphcTLIQtVTDvFctugg1mdfjEWEArbuq
 A6BaD2c0rTwnjl64NG1chf63B5z2DubKpIFJHnoKzCBVGN4Cjg26bwRkAe4WkeTnuarL
 t1YJUgLhwWMOTBh/POK7BkwXsPPMDAMvKMAtH1iYEHO++4NSfQgyWnYNeVTue9wMI64F
 fDOg==
X-Gm-Message-State: APjAAAXQLgu8sznhss95Zr5nqwgBUYP4xYoVVjUVt3/KsMv5QN4tQYfe
 NNxtluA0gB2qMcxkV1qNAnTWRx/9XtF0RZwGPOt+dg==
X-Google-Smtp-Source: APXvYqzYWgB1PtMtq4nnNfPKWor2fWw/zG/ojnrO3w/NOV2GRoDJlHgeD0JuBgKT4rxqNWDEGfYcoevSrS2OWeQcC90=
X-Received: by 2002:a05:6638:60f:: with SMTP id
 g15mr1872269jar.21.1571718016274; 
 Mon, 21 Oct 2019 21:20:16 -0700 (PDT)
MIME-Version: 1.0
References: <201910221118.wjEmsUlx%lkp@intel.com>
In-Reply-To: <201910221118.wjEmsUlx%lkp@intel.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 21 Oct 2019 21:20:05 -0700
Message-ID: <CAOesGMgBVNhgWvN=__+rV5+p-Orn_5XByApoSVkp0AGxHeSwQQ@mail.gmail.com>
Subject: Re: [arm-soc:mmp/drivers 11/12] include/linux/soc/mmp/cputype.h:5:10:
 fatal error: asm/cputype.h: No such file or directory
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_212017_933180_48D3D3E1 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lubomir Rintel <lkundrak@v3.sk>, ARM-SoC Maintainers <arm@kernel.org>,
 kbuild-all@lists.01.org,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 8:30 PM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git mmp/drivers
> head:   13bec6d6822ca0349dbba14e2e8e2f80e1aacbd7
> commit: 08f13e7c3430889621dcefd1b1e52490f654a285 [11/12] phy: Add USB2 PHY driver for Marvell MMP3 SoC
> config: x86_64-allyesconfig (attached as .config)
> compiler: gcc-7 (Debian 7.4.0-14) 7.4.0
> reproduce:
>         git checkout 08f13e7c3430889621dcefd1b1e52490f654a285
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from drivers/phy/marvell/phy-mmp3-usb.c:12:0:
> >> include/linux/soc/mmp/cputype.h:5:10: fatal error: asm/cputype.h: No such file or directory
>     #include <asm/cputype.h>
>              ^~~~~~~~~~~~~~~
>    compilation terminated.


Fixed a few hours ago.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
