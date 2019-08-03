Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB58980663
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 15:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3AP6FgnrGtnKuOhSHbnAMr7FWA2dd8kwb1vzV3KSEs4=; b=HEKEMG5qI/LzDM
	WlrWzawueA4Igt+Yg+PXLQeQkQEPLwoR9gIixuAP242mTmWjm4DhQ29LPw/deFHK8B9cOPP3w+Qmw
	3CNtsaqvnEQHZ/zu0IMwS1SD444tuR7R2uCbZ7+P+x6swylhfIxKXkiIK6uc213UpKGu6vM7EC/ZE
	hO4S8s0xzJrYLNlue1ZaFTbAMkjEJDv9WxpiF2i9D9jKUFuCL6ojW82KaNVlclOaa4uRdDhxYs0uu
	N6dGdGLBrUOGbWdh9WUMlAkLZ0h7P8nuiamnRL2DpJafHC/iHBEEvYCwstwTYIv7+Wd2HPWVSSho3
	xwuz+MTbt5SwCi60auNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htuTt-0004Li-9J; Sat, 03 Aug 2019 13:53:57 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htuTd-0004Ko-Bs
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 13:53:42 +0000
Received: by mail-lf1-x143.google.com with SMTP id z15so50602319lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 03 Aug 2019 06:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=p/278qb+dkDcrSmGijVwI4CFUjGAE1B5Z40kqDhDG4k=;
 b=evf4A8dNbrqfXCpo9cYd3DeLcdgbjYClgQ74CHv5/0Ul6E7vOj98ImebGFdDvfFuiE
 s09Qt4DK3ztHilKpsH30dbpW2MLphlIc1mDItT/MR6V99rkUH8UFe3PFJJp3ecKSUch0
 l2R8PJe1+f443QQ/I/lCY1SloO9Gl0YacSkJUKG3gOPw1CRYsEplzVgi4qPBsxl/e6LC
 n8Hg7wsuswLRXNngv2+2QpXF9qZVHttb3Qe1Yc1qkb0HtRpYw3oL6Bg2i0J8qkDgaqPe
 Mlekkq83gkLyQb+aKN+0r7NoOP678soHGyORCBhuS3Po1K2/TZqkwt2CJa4Y8OlWzUCi
 9A0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=p/278qb+dkDcrSmGijVwI4CFUjGAE1B5Z40kqDhDG4k=;
 b=sZ/IsxEOA0gafe4/vxnzdw/rztKaJE8XeisqsQXQwyLuNCqi7KtF3C1p1IHuAjJ+ju
 5XOKNntfleCEGtA/u2rDu9+8bWiLwQYvrOrXqNLxRXQgZlzXuZHyVj1taTXFZ5V60Ceg
 OInGqbJdRgbWxPH2JacMdndzGDQDA5JPSnqXF2Rdaji/sE7xAEHDvbQqnCqf/ZDUJZAW
 rBYQozmIkt7fKNAgaRIoaBXMD5GvYOQD364OaB3+35UjUPj8V68pyhWKDkNzGBOv1SGf
 RZyV4O+85Wf9FNBwIQ8crIBPzrryoSqbzPpvkm9B4d5C5PDoJtcKVTCIxePxcoPbTJsR
 oK7g==
X-Gm-Message-State: APjAAAW9PLBTVRRlwaL+yIcPlEjq5XXGUGvGDJ4iJq6vlmk6IhPSblKP
 rnDlcXsmTR/3355gmUdeE24Xo7+tPFFDZ9dGBRhqsSUfwsI=
X-Google-Smtp-Source: APXvYqx6cNyks8Cnj41JWNnnS97o/I/eCEj6GVfFeUZBmPznjfi0SljNo8TmEa2iZZ4SWm/mIe+xM+BAoGGOaoJpYxg=
X-Received: by 2002:a19:7616:: with SMTP id c22mr3135239lff.115.1564840419642; 
 Sat, 03 Aug 2019 06:53:39 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 3 Aug 2019 15:53:27 +0200
Message-ID: <CACRpkdarsQNfXgXMQKfYwOyiqhKY67gKd3ufQ+wexwO3v=LE5w@mail.gmail.com>
Subject: [GIT PULL] Gemini updates for v5.4 take one
To: arm-soc <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_065341_430614_B7D17EC7 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC folks,

here are some Gemini patches for the v5.4 kernel cycle,
maybe there will be more, who knows.

Details in the signed tag, please pull it in!

Yours,
Linus Walleij

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git
tags/gemini-dts-v5.4-1

for you to fetch changes up to e8547e12d5d6a40a16263cc8678d7025e54c379a:

  ARM: dts: gemini: Mount root from mtdblock3 (2019-07-26 13:42:57 +0200)

----------------------------------------------------------------
DTS updates for the Gemini platform:

- Fix up some pin config confusion

- Use redboot partition parsing on the SL93512r

- Mount root on mtdblock3 by default

----------------------------------------------------------------
Linus Walleij (3):
      ARM: dts: gemini: Fix up confused pin settings
      ARM: dts: gemini: Switch to redboot partition parsing
      ARM: dts: gemini: Mount root from mtdblock3

 arch/arm/boot/dts/gemini-nas4220b.dts | 37 ++++-------------------
 arch/arm/boot/dts/gemini-sl93512r.dts | 56 ++++++++++-------------------------
 2 files changed, 21 insertions(+), 72 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
