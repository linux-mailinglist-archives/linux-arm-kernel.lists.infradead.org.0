Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58177147730
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 04:37:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9+r94aTNTAfQ88cgtqw3HFb/O2l/0Ecra39FwGiMpP0=; b=mIAoywB3wEQRdl
	VarfzIcjItbegtu9BjyyyhGp3qP0/Vz+RktFAB9Faw8WO+FPqQpsEWtZ9ZEu34vWDmnPEvjCL1nk4
	kFDN0dikIPYx9Eea+9MwlzUKRT7sNusg2mPoOcVHxYMuvmrYRP6vZj8rzDGyDHC/SH8Myngdv4+it
	IVD36A6CxN+Y1k08Hzr9yZ7uxcSuWq3+qH7bd7oVwiaa1PrzNWEiZ7FmeQWMKfwxL/Yghi9gRiUzC
	FCXY99yHrm5d4ddqk7Q88b2outnGlvce6YPKCXTQERC59Cl7VP5xpYYi/t9LThtEBP7zp5wRz6Gh7
	gxWQ7VzADQMLvUxISbnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iupmh-0005r7-3W; Fri, 24 Jan 2020 03:37:27 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iupmU-0005qA-It
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 03:37:16 +0000
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 00O3akO1006095
 for <linux-arm-kernel@lists.infradead.org>; Fri, 24 Jan 2020 12:36:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 00O3akO1006095
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579837007;
 bh=chlER5pUjChdgEZWVw3HaCka4WX6vPliYp05kErac5o=;
 h=From:Date:Subject:To:Cc:From;
 b=nbvWfBFzvpK3rBSHRcDyY6BifgF2wf7pdh4HhvtpXS3FVfChwHp90JapqE6ZvylkA
 bRssfQo8kACXA/5B/R+sWFjmF4iXwfhZDwiPJV9O90nsessrIDOq1gL3bWIHR1gR2C
 6+VxD2y9W/V45BWfpCyAeHQ1tF5Tx3ihyvpe7lhx4/btiT7dS5WYyIsdT9DdEK8YZX
 tBl8joox2T7IgoWUg0luWr5braI2u89kLdFsl+Rnrm34mLBfHvlCyyeLVnTTk4t2tM
 A7e+fvNey310JF5jQczNzeRKCyOGtsnt0yHwRnQPAkRKzYfSobvqEr0KgvU+qNknZk
 hIrQKsDPHMm1A==
X-Nifty-SrcIP: [209.85.217.41]
Received: by mail-vs1-f41.google.com with SMTP id p6so389989vsj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 19:36:47 -0800 (PST)
X-Gm-Message-State: APjAAAV3xWyIytDOyzC6n7gGWSDrc34a0dZKoGcKqygogO6W8OJG6mrs
 heuOc5CuOyo/8s3NVKI4kQSxnPZCy1TV9Ft6vwk=
X-Google-Smtp-Source: APXvYqy/3sLs4nkX6yiO6kZcQfWXSBoGVFCwBd5TPBt7Lt2QNvKAs4sEQNUn1y8usOFTg4JrXZXwSAZs+XCXhbtM1d8=
X-Received: by 2002:a05:6102:3102:: with SMTP id
 e2mr949801vsh.179.1579837006036; 
 Thu, 23 Jan 2020 19:36:46 -0800 (PST)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 24 Jan 2020 12:36:10 +0900
X-Gmail-Original-Message-ID: <CAK7LNARYrzv4QU-eXxqYCcC9dziJmx9F02YNZ3mMnF47EfL3fA@mail.gmail.com>
Message-ID: <CAK7LNARYrzv4QU-eXxqYCcC9dziJmx9F02YNZ3mMnF47EfL3fA@mail.gmail.com>
Subject: [GIT PULL (RESEND)] ARM: dts: uniphier: UniPhier DT updates for v5.6
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_193714_851694_2A601C91 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Arnd,

Here are UniPhier DT (32bit) updates for the v5.6 merge window.
(I am resending this with soc@kernel.org in the To: list)

Please pull!


The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
tags/uniphier-dt-v5.6

for you to fetch changes up to 37f3e0096f716b06338a4771633b32b8e2a36f7f:

  ARM: dts: uniphier: add reset-names to NAND controller node
(2020-01-18 00:56:09 +0900)

----------------------------------------------------------------
UniPhier ARM SoC DT updates for v5.6

- Add pinmux nodes for I2C ch5, ch6

- Add reset-names to NAND controller node

----------------------------------------------------------------
Masahiro Yamada (2):
      ARM: dts: uniphier: add pinmux nodes for I2C ch5, ch6
      ARM: dts: uniphier: add reset-names to NAND controller node

 arch/arm/boot/dts/uniphier-ld4.dtsi     |  3 ++-
 arch/arm/boot/dts/uniphier-pinctrl.dtsi | 10 ++++++++++
 arch/arm/boot/dts/uniphier-pro4.dtsi    |  3 ++-
 arch/arm/boot/dts/uniphier-pro5.dtsi    |  3 ++-
 arch/arm/boot/dts/uniphier-pxs2.dtsi    |  3 ++-
 arch/arm/boot/dts/uniphier-sld8.dtsi    |  3 ++-
 6 files changed, 20 insertions(+), 5 deletions(-)

-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
