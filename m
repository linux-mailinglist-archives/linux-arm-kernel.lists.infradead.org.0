Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC392C54C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wKdpWuCziNZiRWDp3ZDEq8F5XQUw2jJQ3Bu1ITcZcpY=; b=qHXFlH23QQD9RJ
	CeY1Tm89bbvfsXvzhO12mk5etwID3InzaWgkjPOPp/zEI2EKhaejMXkA9E4H37suAzXW1ITfW6O/M
	e+mmgvmZJAt2dEhpDAw2sapV4/TN9c3BkcgPKOIz996/4reKvoNpuy4bYJuCGhR67B+YprL3H5RMD
	jSrShS0yLcjHu9L/z1R1cQdvrqyMaOp9dFvfiotWdlN/6LghSxyy/KKQfdEh+76TvfkkX0Vej4VzY
	5w1gqn1/q9hSp2Rwap8DjPJEG8oJOsYGwZJBEu2A+kxS5fMvIGyxAFreCHgKUzz3ytzDUkzX6oNie
	h/32AY/ayh3T5TUJ1YKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVaAp-00010O-1s; Tue, 28 May 2019 11:21:43 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVaAh-0000zv-D2
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:21:36 +0000
Received: by mail-lj1-x22e.google.com with SMTP id a10so6535275ljf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 04:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=zgoMsUTh5NGt0zszF94GpqHE3BsCQXKZPJmARGI/6pk=;
 b=v3/Bx6N4l86XWfAiVYz5ndxwcZMAjKyoNoZAy66XkJ1nEhEuHmGxOyiMyPRo/T1wlB
 uTQBTUGjF4Behf825Hiad9xjQCVh49riVuyH/27SKxopUQWGdXzfwubxBa3ZBlUMOY8c
 DwT7ypYKEPsGcy9l80OXwXzXReRpW/3eCIB6d90d3SQ3V4kJMhfhe8v2QEqLBLQhk+tM
 PKASNA4gAAAHQbL7C3gMJqD7VPLIFmJuTKiO0B3f7SwRnEXXTEsnSjOijlCfs3ltYe3l
 AzSOCXPVkhPeihbUA5Rw5cdaFys0lguxSXQWFpPzU9oQ5s+Wk01d4sLd1yWx6EiuxYml
 N40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=zgoMsUTh5NGt0zszF94GpqHE3BsCQXKZPJmARGI/6pk=;
 b=sDj71z3LmwDxRCKEjcJ6pmwKf+9urO8TIV2KiFgh+ny6UWJf0KfW7IH8st68t4TK/Z
 ZwjbVM0crn1WfE+tdyNvidCLkozrWJSXAfVQT7JuZgPS7GEcZPMw9cZ72T3IJyYWcNG8
 n4ImUWBuvqM1UEa1S6upuAUOwAdQ29payE3QQsGgbmCkMMTMAtjs653s3ABOB/xEmE2X
 32EVNuuaDzPZmUuaFgqXUXveXxaA86LYAuy+MD9Jr/NctO1eorfOR98coRcayGRYadAo
 D98oy9CDbdJd309PazvVN+OMQ954v2lSpf08sIBLxU/KvxTiu6jYTqb+2nfYVspuKc/Q
 1pnA==
X-Gm-Message-State: APjAAAVt4+9bezK8DRoPN1nKS4tbZwQHLumKYqdKze24yE7b1uSiPIsS
 RaneBEXUGliDYb3ZnHX/mheYd7e2tBY55wFQ0s0DczQwFo8=
X-Google-Smtp-Source: APXvYqz9sKQQgDBeGcFpJzj4C5uoiM0R3q2NpBqHdXyl7W+m6K8ZZ0JBS0fej6CKRv002wOPxvl4Z23jWMEUOpJIMuU=
X-Received: by 2002:a2e:5c1:: with SMTP id 184mr56455816ljf.94.1559042492171; 
 Tue, 28 May 2019 04:21:32 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2019 13:21:20 +0200
Message-ID: <CACRpkdYTgA1i_uFC7NVYVmXf4WhoPHucC11-SrTRYFDUWLtXNw@mail.gmail.com>
Subject: [GIT PULL] Delete the mach-netx machine
To: arm-soc <arm@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_042135_451811_12FED334 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC folks,

let's pull this in and get rid of the unmaintained mach-netx
machine so we don't see more occasional maintenance
for this unused platform.

Please pull this into the ARM SoC tree.

Yours,
Linus Walleij

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git
tags/armsoc-drop-netx-v5.3

for you to fetch changes up to ceb02dcf676f41d281af84c9d6000fe27651ebb0:

  ARM: delete netx machine (2019-05-22 13:55:50 +0200)

----------------------------------------------------------------
This deletes the NetX 100/500 machine support.

----------------------------------------------------------------
Linus Walleij (1):
      ARM: delete netx machine

 arch/arm/Kconfig                             |  11 -
 arch/arm/Kconfig.debug                       |   7 -
 arch/arm/Makefile                            |   1 -
 arch/arm/configs/netx_defconfig              |  80 -----
 arch/arm/include/debug/netx.S                |  36 ---
 arch/arm/mach-netx/Kconfig                   |  21 --
 arch/arm/mach-netx/Makefile                  |  12 -
 arch/arm/mach-netx/Makefile.boot             |   2 -
 arch/arm/mach-netx/fb.c                      |  77 -----
 arch/arm/mach-netx/fb.h                      |  24 --
 arch/arm/mach-netx/generic.c                 | 194 ------------
 arch/arm/mach-netx/generic.h                 |  26 --
 arch/arm/mach-netx/include/mach/hardware.h   |  39 ---
 arch/arm/mach-netx/include/mach/irqs.h       |  70 -----
 arch/arm/mach-netx/include/mach/netx-regs.h  | 432 ---------------------------
 arch/arm/mach-netx/include/mach/pfifo.h      |  54 ----
 arch/arm/mach-netx/include/mach/uncompress.h |  75 -----
 arch/arm/mach-netx/include/mach/xc.h         |  42 ---
 arch/arm/mach-netx/nxdb500.c                 | 209 -------------
 arch/arm/mach-netx/nxdkn.c                   | 102 -------
 arch/arm/mach-netx/nxeb500hmi.c              | 186 ------------
 arch/arm/mach-netx/pfifo.c                   |  68 -----
 arch/arm/mach-netx/time.c                    | 153 ----------
 arch/arm/mach-netx/xc.c                      | 258 ----------------
 24 files changed, 2179 deletions(-)
 delete mode 100644 arch/arm/configs/netx_defconfig
 delete mode 100644 arch/arm/include/debug/netx.S
 delete mode 100644 arch/arm/mach-netx/Kconfig
 delete mode 100644 arch/arm/mach-netx/Makefile
 delete mode 100644 arch/arm/mach-netx/Makefile.boot
 delete mode 100644 arch/arm/mach-netx/fb.c
 delete mode 100644 arch/arm/mach-netx/fb.h
 delete mode 100644 arch/arm/mach-netx/generic.c
 delete mode 100644 arch/arm/mach-netx/generic.h
 delete mode 100644 arch/arm/mach-netx/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-netx/include/mach/irqs.h
 delete mode 100644 arch/arm/mach-netx/include/mach/netx-regs.h
 delete mode 100644 arch/arm/mach-netx/include/mach/pfifo.h
 delete mode 100644 arch/arm/mach-netx/include/mach/uncompress.h
 delete mode 100644 arch/arm/mach-netx/include/mach/xc.h
 delete mode 100644 arch/arm/mach-netx/nxdb500.c
 delete mode 100644 arch/arm/mach-netx/nxdkn.c
 delete mode 100644 arch/arm/mach-netx/nxeb500hmi.c
 delete mode 100644 arch/arm/mach-netx/pfifo.c
 delete mode 100644 arch/arm/mach-netx/time.c
 delete mode 100644 arch/arm/mach-netx/xc.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
