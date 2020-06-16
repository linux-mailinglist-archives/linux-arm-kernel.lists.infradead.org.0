Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB971FBB0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lt9jQGzQzEU1IKbjgS8FfcXMEa5+oJ0kHp5RNnOF2tE=; b=E8/G7vpvUAAxhA
	ubFAtCc9yShlMug0/GwSOt1aYgGVsA1PbMqGEKfOc7YghHiyph2N2TukyLOJT5fZUVXE0CesNYN7K
	9KPURje22qN/zMdVKIC2ruPKm61W4ab0F7p30PSrfzeqNZZiLT38l7LJbxK74dgu9k163m/opC9wK
	jCNbKtTuLfANVdEWoWT+I5pALNLJa+EHXdTGYpFfFy7lKxEAaw8A4eEiNDDPoalNuaSs8T7JLGic9
	QXftlxlqXQhzKxv4UIhevSw7soyS17WzrPG0qQO16SeilFo2409jCQBKxNdt1sr0lko8+A3BA2fLN
	GjVH7c/js44onXd5PXXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEGS-00014R-9F; Tue, 16 Jun 2020 16:16:44 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEGI-000148-PV
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:16:36 +0000
Received: by mail-vs1-xe44.google.com with SMTP id c1so11737401vsc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 09:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j0f7aQbEfhsw24ZMy40vxFz161lgqQWF2rmVXfxppeU=;
 b=mH9A5mQ3ouroig2SXDtIPCJ2Xh+w/YtCly1FlWr0h6/txUnYBBZdQcU9XKf2FhrlJU
 W53l5Mp6VTv694VILrKENUTo30e1FeQi5CLtdbc2gh/CzkY8ZrMMpxsROT2zHf8Ml0nf
 TCbSMG7Qcsykr4zHuBNb4uJBqX2SJwz0yQciutxchw1fi4ByfPmHGMbpBeI+/ygEFfMK
 pOYoxY4dM7Y6pjNIlYoCZQozLVop1Kw+lckxIwjX33448TvZec9MunV5S0p52f1SFGsz
 8KMVPlWibjuMbMZiHAc+hSYymGMmnIzFEpN7JxY5Klo/o/n2ScZOmXDolAxqpiWvNs2S
 KkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j0f7aQbEfhsw24ZMy40vxFz161lgqQWF2rmVXfxppeU=;
 b=ErYMFX3mILpgbvl5mGyjndWxAiEAROluAhHjP6Mgd2bc/0qgiX4DoLr/X/1p44EPkQ
 zR5lMKnETfQeLIEOEOL00RQbGbF5BfCEWEYHXMGBifPIp5q3J2+fxrYwzrP9GajpHkUu
 C7jgslbJ1sxWTZxM+iCYvg/l448Qdy8bHrskYsCDUrBg2yAnX5QrHllfJ3Fl7EEINMHS
 JNcxG0V8obCKZK4v5tvkFw5tOk4byrLfIQSdOTGXBD3I5Vj8g57IqsEQu6bQzTwiNlfE
 +1nAr7J7OkS8i1Xy4Y8C9i9kLcCX2UdpU6ORu2Vw2Oj+KECs439Kog4VI1KPo3TSjB0Z
 DIJA==
X-Gm-Message-State: AOAM532mpHawpmzCWioWnlpPpbppH5MnglyeXOjrdWcMja77jVm6Iahn
 YA0mxBCfvxHQ0NYbsU7kdDbGUNnv5awlp3IMNlo=
X-Google-Smtp-Source: ABdhPJwEOfuAZpDyAicRuaHACbGkk742F1Urk0jRcNhWYHdVilvKR9a1h7RpgtkV/So8XeSKrSzT5XbL89p/SceswGI=
X-Received: by 2002:a67:c18a:: with SMTP id h10mr2320162vsj.186.1592324193305; 
 Tue, 16 Jun 2020 09:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200609200446.153209-4-linus.walleij@linaro.org>
 <202006101538.mV5c2loX%lkp@intel.com>
In-Reply-To: <202006101538.mV5c2loX%lkp@intel.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Tue, 16 Jun 2020 17:12:51 +0100
Message-ID: <CACvgo536CxAynhx3zcamS2-e=a7j++X7X66N4zG_L_HrjLk77A@mail.gmail.com>
Subject: Re: [PATCH 4/4] drm: pl111: Update documentation
To: kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_091634_842777_9FBE9D86 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.l.velikov[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbuild-all@lists.01.org, Linus Walleij <linus.walleij@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Russell King <linux@armlinux.org.uk>, Maxime Ripard <mripard@kernel.org>,
 Eric Anholt <eric@anholt.net>, ML dri-devel <dri-devel@lists.freedesktop.org>,
 Sean Paul <sean@poorly.run>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Inspired by Linus and my personal confusion with the report, allow me
to put some suggestions. Followed by an illustrative example.

On Wed, 10 Jun 2020 at 08:38, kernel test robot <lkp@intel.com> wrote:
>
> Hi Linus,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on drm-exynos/exynos-drm-next]
> [also build test WARNING on drm-intel/for-linux-next tegra-drm/drm/tegra/for-next linus/master v5.7 next-20200609]
One thing which was always inclear me - is the warning identical in
all the branches listed.

> [cannot apply to drm-tip/drm-tip drm/drm-next]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
Reference to the manual tends to be better than an old SO thread.

> url:    https://github.com/0day-ci/linux/commits/Linus-Walleij/drm-pl111-Credit-where-credit-is-due/20200610-041025
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/daeinki/drm-exynos.git exynos-drm-next
> reproduce: make htmldocs
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
Please do not list old warnings/errors. They only distract and dilute
what/where the problem is.


> vim +1 drivers/gpu/drm/pl111/pl111_drv.c
>
> e559355a9da60a Thomas Gleixner 2019-06-01  @1  // SPDX-License-Identifier: GPL-2.0-only
> bed41005e6174d Tom Cooksey     2017-04-12   2  /*
> bed41005e6174d Tom Cooksey     2017-04-12   3   * (C) COPYRIGHT 2012-2013 ARM Limited. All rights reserved.
> bed41005e6174d Tom Cooksey     2017-04-12   4   *
> bed41005e6174d Tom Cooksey     2017-04-12   5   * Parts of this file were based on sources as follows:
> bed41005e6174d Tom Cooksey     2017-04-12   6   *
> bed41005e6174d Tom Cooksey     2017-04-12   7   * Copyright (c) 2006-2008 Intel Corporation
> bed41005e6174d Tom Cooksey     2017-04-12   8   * Copyright (c) 2007 Dave Airlie <airlied@linux.ie>
> bed41005e6174d Tom Cooksey     2017-04-12   9   * Copyright (C) 2011 Texas Instruments
> bed41005e6174d Tom Cooksey     2017-04-12  10   */
> bed41005e6174d Tom Cooksey     2017-04-12  11
>
> :::::: The code at line 1 was first introduced by commit
> :::::: e559355a9da60a2388893d9e9da66c79fd604b9a treewide: Replace GPLv2 boilerplate/reference with SPDX - rule 443
>
> :::::: TO: Thomas Gleixner <tglx@linutronix.de>
> :::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
All of this seems useful when debugging the kernel test robot itself.
Which in this case is misleading as hell.


Here is something which is much shorter, with clearer structure and
reads much easier.

---
Hi Linus,

This is an automated message from your friendly test robot.
We've noticed some issues with your patch although being a robot,
kindly double-check the results.

Branches:
[if the warning/errors are the same group them, otherwise split them
in separate sections]

- drm-exynos/exynos-drm-next [1]: WARNING
- drm-intel/for-linux-next [2]: WARNING
- .... : WARNING
drivers/gpu/drm/pl111/pl111_drv.c:1: warning: 'ARM PrimeCell PL111
CLCD Driver' not found
- tegra-drm/drm/tegra/for-next [3]: WARNING
some other warning
- drm-tip/drm-tip [4] drm/drm-next [5]: cannot apply series

Note: when submitting patches, please use `--base` as documented in
https://git-scm.com/docs/git-format-patch.


To reproduce:
 - wget https://url/to/build/toolchain // when applicable
 - wget https://url/to/config // when applicable
 - make htmldocs // use explicit make command instead of magic shell
script, as seen in the cross build reports


If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Thank you
The LKP team

[1] URI to the drm-exynos/exynos-drm-next repo
[2] URI to the drm-intel/for-linux-next repo
[3] URI to the ...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
