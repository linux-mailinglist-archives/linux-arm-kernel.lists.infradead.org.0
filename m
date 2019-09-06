Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF07AC0DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 21:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XkvH69XMI2XXH7hOmOabC0NK9WkFKbmbggpcrAViuxQ=; b=ILgUGKbY8+01Fi
	D/q+cDHj2wi5E7JzK+awGSf8SkvKDh55b4HyNJ0bNUmAJc+yqx+hIyRBZqv1+Y/odEHPZ/4TnTuTw
	a9rbCkDXgAbpGyp1PZ5RNySgg3gZy3vcEhPrGhz4s1C4VQA+R/tuu81LAs6p0Y5mqeqnCmmNzAMDR
	P9koEmGs/w6w7b3GFc8EgW+1N4u7+Ah7UGx1+U26Z5lhwveV7dyLYQ2Nbt4nTVO+IZnVTfacgrtvY
	HNs9TSpmSVg+BuCEGMB2Al63KTBmdkB5gnHCZSJTjZuJoQ2o5uVN+y4WuJR40Oxj6smZp27maKvZ0
	93PYiapX0kKhliVoZ8qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6KDn-0004He-Ky; Fri, 06 Sep 2019 19:48:39 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6KDa-0004Fx-SL
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 19:48:28 +0000
Received: by mail-qt1-f196.google.com with SMTP id k10so8517803qth.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 12:48:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=yxMUYYTEpdgLLHvSUH5Uh9JMJfdGB0yddxYTqYtuf0E=;
 b=s4nDFqy/Rwvr3zyZm3GhNoXjyuDfzvTLDDG7nCSfxRDvg26/khitA6X9F5PYPCYety
 U/eg5T1dOvMByZHiPDW5BP5h9Zd5+X/CYQQjKeA7td0NqOwyB/T7He2lOG+wnmWdkmTR
 so1UnidQX3f1OIOaSTF9F/7ruAiKOh+Mw8JGxvofTmdqV9DnTRuERqhxWD4fMUE8/o33
 xZVE9Hby6Gx0RKx95GuqSDDm2o5k5asH1cXdRE9P8kGPvKO8hYEcepiKoNDuwCX4Gd49
 QB/salWFr2FrfJRVeuy6crRlFVZxc4oRQtVx6kQSKEDDlYShN6zFX+HxefLpb5DMNVrq
 j9IQ==
X-Gm-Message-State: APjAAAVjYNrexyilt2lOZPh5dPLnKdsAlKr2QfTsdbWe/6LjMbzfQtTf
 Ge78tzPA58FhqkeM/DqcVDTiYG3T7OHaOcz+dyg=
X-Google-Smtp-Source: APXvYqyH772GapIqmZBvti+w1T7U/d8foRokKXMGEjzPAsmgsLo8wFjr0ZXbWuzLNUK6j9RWLhfMKqxZnaahHTF4IC4=
X-Received: by 2002:a0c:e0c4:: with SMTP id x4mr6830761qvk.176.1567799305468; 
 Fri, 06 Sep 2019 12:48:25 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 6 Sep 2019 21:48:09 +0200
Message-ID: <CAK8P3a0MsTFjqChoz+DLSC8nVnBuvqQdYx6V0SuCybg7MZ79mQ@mail.gmail.com>
Subject: [GIT PULL] ARM: SoC fixes for -rc8
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_124826_916176_F8ABE5C7 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Simon Horman <horms@verge.net.au>,
 Andy Gross <agross@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 089cf7f6ecb266b6a4164919a2e69bd2f938374a:

  Linux 5.3-rc7 (2019-09-02 09:57:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to 8928e917aeafaf38d65cc5cbc1f11e952dbed062:

  soc: qcom: geni: Provide parameter error checking (2019-09-06 11:08:08 +0200)

----------------------------------------------------------------
ARM: SoC fixes

There are three more fixes for this week:

- The Windows-on-ARM laptops require a workaround to
  prevent crashing at boot from ACPI
- The Renesas "draak" board needs one bugfix for
  the backlight regulator
- Also for Renesas, the "hihope" board accidentally
  had its eMMC turned off in the 5.3 merge window.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>

----------------------------------------------------------------
Arnd Bergmann (2):
      Merge tag 'renesas-fixes-for-v5.3' of
git://git.kernel.org/.../horms/renesas into arm/fixes
      Merge tag 'renesas-fixes2-for-v5.3' of
git://git.kernel.org/.../horms/renesas into arm/fixes

Fabrizio Castro (1):
      arm64: dts: renesas: hihope-common: Fix eMMC status

Geert Uytterhoeven (1):
      arm64: dts: renesas: r8a77995: draak: Fix backlight regulator name

Lee Jones (1):
      soc: qcom: geni: Provide parameter error checking

 arch/arm64/boot/dts/renesas/hihope-common.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r8a77995-draak.dts | 6 +++---
 drivers/soc/qcom/qcom-geni-se.c                | 6 ++++++
 3 files changed, 10 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
