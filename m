Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931871BE2EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 17:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uUhn8y4wW6SMA2PqFUOCAfg2jctjGKwvQHuB1Kk3s4M=; b=NYMhdKxgSKwZNt
	Ercf3rod1Qg5tXKRyE+3SW1NCfXTwHVNB1NAnQCSepjk8x9bXRGu5BEOJ4VUs/veptssMDx4ikzDX
	S3vSPMuaLvCj5ZLf38YM4n4UuK0KgLvIktcu6jfzqfk81KaeAgSX0S6zO3TUV8zdVu8eKoJ7RjBQm
	eS3pKJoyMaihjBUHa4lI4p8BOCiKAy6BHptUfLxtc1STpuXQJ44eufIEcFH75hBrD5yzd8RBHjjBz
	tX3nbJZjGZbF8TCnPT8Vs8+XyDxaM5X+hkiIlM7g17h+NPCMph8J6PSFpd2z6JT6cUykbswZ1ADN0
	YVigl2NZeGJFI0rSKd0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTonj-0006XF-40; Wed, 29 Apr 2020 15:39:07 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTonZ-0006Wo-6P
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 15:38:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id u15so3127503ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 08:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ObNvrHZvGkc7BRY/JK7PHf3avGroDc7e58wb/JCzxAE=;
 b=Wi1K46mfWuuwYPnQT8bV5a/M7tMtP8YrOJMvHOIchSAdc1rSzdrNKfDdn96Gxz0W/w
 +/BJqYHYIIvTvR+2LtQI22Ar8iTerMOzrgMv4qNx2t5Vp2xvqUPJETtprD9OWZf/7a0u
 1AYEoV2ijaukLjFRnSuZpfo/foXhBXmM5Ln+0+rAn1U6wQYIEOF4uV1aRMRu9aYTtOaI
 nsZn97miT74m2JEJ3QTFEBqtR4WhtFvnPsVcLqu2U0gdAcO3He3vdjisSQiHqX2PtRkW
 WRf5hLNDgzZSqZQw1TmvJTzSKi7X3Go0tWJ2bc/tdM8dwmfcLrlXZgM7GvvcAGHrDP7m
 ixBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ObNvrHZvGkc7BRY/JK7PHf3avGroDc7e58wb/JCzxAE=;
 b=ehTfQ5Fqlh44d7idqzVblLGPP5/lmIZTCk4E4symrB7psi61bN6wlMBhICWyKEZqex
 zZd0isWhKaQMg+y+h53/PRGMerjXPMw7jzOSwZtk+o6rj/DPTODRVzoogfPA/D6sWbG3
 7p3vpxaSZAX7LU1ouL3b4xU57Zpl/3KqeiT470dZfb24ofZMLdEssbQD8YaJIm+rz402
 oqmEo/DWQs8OK07k6lMlxdRbFSQ0Lf6r52tDxCbEwzuYBO0+uA3QgHao4NMCrlXTTQaV
 LcwXHif0gWPRX5sp621tXeLEaltOI9aQijlvwTW1C6OgtIycJVRc2FGy8blQpaqm3wlL
 1kcg==
X-Gm-Message-State: AGi0PuYSYdFnVKVRSEHHO/xO3C77h+25oPCKH8rmequbFfiQQbNERJ77
 YcoZWyjF098HQ3dXe83Eiecaj2MefsKwM9d77wzvJ4rO8hE=
X-Google-Smtp-Source: APiQypKSOoLUqLdKxe20sNuCSZsgqMg2vP2900hOITp06c1LuQoQrgZCYhuX1cmWdQ3JqGzI+8h6B6LAxOd4Z9RIjB0=
X-Received: by 2002:a05:651c:1058:: with SMTP id
 x24mr22156604ljm.39.1588174733012; 
 Wed, 29 Apr 2020 08:38:53 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 Apr 2020 17:38:42 +0200
Message-ID: <CACRpkdaxT8dc=mhAd51+KtQ0K4Uj5tttt36bYJLqP_hNfWXP8w@mail.gmail.com>
Subject: [GIT PULL] Ux500 defconfig changes for v5.7
To: arm-soc <arm@kernel.org>, SoC Team <soc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_083857_262614_D99658DD 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephan Gerhold <stephan@gerhold.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC folks,

these are defconfig changes for new drivers and devices using
Ux500 that appeared in the v5.7 merge window.

Please pull it in!

Yours,
Linus Walleij

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git
tags/ux500-defconfig-v5.7

for you to fetch changes up to 288d3f142bd64abf1f99c6e06109c67811ab94a7:

  ARM: defconfig: u8500: Enable new drivers for ux500 (2020-04-29
17:32:42 +0200)

----------------------------------------------------------------
Ux500 defconfig changes for functionality merged in the
v5.7 merge window:
- Enable drivers for the Golden and Skomer mobile phones.
- Enable drivers for the HREF520 reference design.

----------------------------------------------------------------
Linus Walleij (1):
      ARM: defconfig: u8500: Enable new drivers for ux500

Stephan Gerhold (1):
      ARM: defconfig: u8500: Enable new drivers for samsung-golden

 arch/arm/configs/u8500_defconfig | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
