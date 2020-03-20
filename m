Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BD918DB25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 23:29:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v47BAWL0LbcD8sHkxMyXDhbDSzEIRe8kIHL4JsljWdg=; b=OWjSordGg1PlsK
	I6QnBzLdHHcDgRsF4IzTfs0oQtKBuG9hCsITALhbZX1cjFtv5aQ0/VVeGazuKK8w193RuZmKFr1js
	341lPKh4tvAMvE/H7ZgwKOltNsxwWYZhRtzPn+c4LFk2CIAqy1zzj0JQNC8mCrHkLXm7Gv9h3gZTo
	fQ4vVmKPB6SJX7eGazv7ErocfR4ipa+IVz2Bpk4zOKEywBXdF3ErQqsyU/BV5nbqBJPWkAfeVwwIk
	IZj06b5MALBETE8BSiKl+k9bYMCC286ozrg5OzpR3hzUFgRlOg5PlxuiYksETsxCYtbnZi9z+SWGC
	z/exvsFLXEz1Q/GXKV5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFQ8d-0003ux-Lb; Fri, 20 Mar 2020 22:29:11 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFQ8T-0003uc-ND
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 22:29:03 +0000
Received: by mail-lf1-x144.google.com with SMTP id s1so5797281lfd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 15:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=XFfPLsHLHYcnE6P4LIXZApRXS630OpyDeOldPQgF8NQ=;
 b=Zw7NEEizsh3E0AXwCse5GUGMDFSCimKoyH7L83ttVKUCBzCNNK/R8vib6ySu6R6sPu
 DEiko0j4Z6ZimxN3h1optLHmpn/dLyyI7nEIcvZS+cVOUrtogZGHjV+CFDrovX9+KbJe
 cuPAXayuBoFEr3SQRA1WLm6WcZVP2vTW03TlHp4FhDOGQJ0FI0T6zrCdf/fPHsvXkA9s
 9OdQ9Ifgebb6hGNsfgWdSYK3ua3VRzORCDSj8qTE6S0/dwuoh5SPup3ogOnh0OipfNSG
 VYBry0y54NvIKXVFp6TtX1hsXS6tz8LcglME1Cwq88CQUDOKFaxgIRzEbk4Nkr6BAX3N
 4cyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=XFfPLsHLHYcnE6P4LIXZApRXS630OpyDeOldPQgF8NQ=;
 b=Y3HwYfbOCishX4t+PQlMjsHdoiFRpeKRaeX/0H5YY5A7O+BC2xVYz24KXbD7sU8BgI
 dgbvXmHPtiVA0ylK9LZnEDjMQQyJRLJ4grLgeqkDMorDoXdOv8KxEtGhA4bFZRRe6VLV
 PaN+T7EFwkmqk4CtEMorJYRpNqt0dkJiovJIft/7NPzc8F1euxkB27x+NgvP3kwGFOwj
 8mpdWhA83KH+7h35AmmtdxZAwKDUpRcVYp+mW/MaBCV/P1ADqR2uPaEDNWe0nq1IyTH/
 zlW6Wr6QkpClGihPUwdrfdp+E/55ww7YxE5KNer4QQBCqqkuh3zM+QaSyQ1CtINmutOx
 ItUA==
X-Gm-Message-State: ANhLgQ1CNTd3y9/TJ9Su0twUXAL8jNMgVEwjCdx3t90NARGOORly48sz
 IUmyRqTN3d86h8hvH3gOr4QV9Y1rpSka6bZfVNqYyA==
X-Google-Smtp-Source: ADFU+vtr8hhwZYyDPXIQGj2MSdiOiigs7LlD8RsicF42T4ccTLDeQMIapUNyBnE84F/Z2m7meneuQf8gIgBQYnFm04o=
X-Received: by 2002:a19:2353:: with SMTP id j80mr6303798lfj.4.1584743338839;
 Fri, 20 Mar 2020 15:28:58 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Mar 2020 23:28:47 +0100
Message-ID: <CACRpkdbvgqCVuoMCHJrCZ0J+3NrwdrBnwBz+BJrSE=hqYh2j+Q@mail.gmail.com>
Subject: [GIT PULL] Gemini DTS changes for kernel v5.7
To: arm-soc <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_152901_790172_CD5168AE 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi SoC maintainers,

please pull in these Gemini DTS changes for kernel
v5.7. We make a first example of how to use the
temperature sensor in a hard drive to control the cooling
device (fan) on a NAS enclosure. In this case the
NAS does not have a sensor itself and vendor userspace
hacks relied on SMART tools to read the sensor in the
harddrive and control the fan. With all stuff upstreamed
in the kernel, all the pieces fall into place and we can
now control the temperature in the enclosure using nothing
but the kernel. Pretty neat!

All dependency patches are pending in hwmon and
libata trees and landed in linux-next.

Please pull it in!

Yours,
Linus Walleij

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git
tags/gemini-dts-v5.7

for you to fetch changes up to 6e97f0aaca4ca778905dd1dc667cbf379f4cae15:

  ARM: dts: gemini: Add thermal zone to DIR-685 (2020-03-20 23:20:31 +0100)

----------------------------------------------------------------
Gemini DTS changes for v5.7:
- Rename the IDE nodes to match the YAML schema
- Add a temperature zone to the DIR-685, use hard drive
  as sensor and cool the case using the fan.

----------------------------------------------------------------
Linus Walleij (2):
      ARM: dts: gemini: Rename IDE nodes
      ARM: dts: gemini: Add thermal zone to DIR-685

 arch/arm/boot/dts/gemini-dlink-dir-685.dts | 50 +++++++++++++++++++++++++++---
 arch/arm/boot/dts/gemini-dlink-dns-313.dts |  2 +-
 arch/arm/boot/dts/gemini-nas4220b.dts      |  4 +--
 arch/arm/boot/dts/gemini-sl93512r.dts      |  4 +--
 arch/arm/boot/dts/gemini-sq201.dts         |  2 +-
 arch/arm/boot/dts/gemini.dtsi              |  8 +++--
 6 files changed, 58 insertions(+), 12 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
