Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F011497F3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 22:37:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wyfJeaHYlitIH64QxPbYcwcm+OKXEj4ZCBOYqBjd/mU=; b=oReKKkLRjFRiVW
	cTMKzAlHbuL6b2+RE9sGWt+mjvyv+m5l+tKHThe3w3oabo2/SHgbSwshPr8HzCKbJRdPrXhYZ3yTV
	yGVriOcJXvdZkAzl4p/FQfeJCtDjItyP1Uwk0CcfHjXtpoNO6eXnpB6DgHHI1aWuAH9/L61z4igw5
	TtYjgJn8F8TGSGPuiJoF3UoH7aeTisCtqw4lhsmpFJSfTFCKzqJujofIsNn2rbVz6ntH9Z7h5wH/l
	gnQfAkIpXc/dmFxFPgUeTW9C1Ns76Z2xNsreD+EODMGCZhNhVpPqWSOVRTkLGO9tyNn6fhjyua5KP
	xsebIl4TmCz3zG26YRoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivT7N-0002dm-Kb; Sat, 25 Jan 2020 21:37:25 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivT7E-0002cv-8N
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 21:37:17 +0000
Received: by mail-lj1-x244.google.com with SMTP id q8so6615771ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Jan 2020 13:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=TredOH208DKnhbFDRXnNH5BXYnFDCKQqBXa/FTFb7XA=;
 b=Cpdf/RrDA9RO/ZC4J1eaVFNZhyNsjb75UqcCZ/aMMWhVusr3PZOgZDOcYXp66FXvC3
 IG8Q6b5teFRfa7+jeIrtb11/yQ9ncgnQwagM3+EcX+v2aujd93TLeq2WlALwX2FpF28v
 zGyDNCvYrjI28qHenKlpPqEf1phyky1eylbnOLOSK/vCk+O6Z89LUb529UbXrvF0MIGs
 eEUWZiCnFVVUhca8CiGfS9BMfvnaeW4tfgblHeiH37h0OyVRCU8diZd38kZQ+Q0zl+KJ
 ESSMnyjqmKPxT/ynpJjsuiRx2KcshO1oAGLFnsIgNu6XTSWWtTUw8OAkhoYY6589599b
 YUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=TredOH208DKnhbFDRXnNH5BXYnFDCKQqBXa/FTFb7XA=;
 b=Snbrb0YatvRzxGrZyMU5VwidBwMtLmoG0UnQLW99vw/xagmnFK7Wxid0R1qDz7PyS6
 33tcnFpXrN6HrqfgCZSVZZwWmw01eGZUsVLvCpoawVqwSRQ+5kGaXjDKI6owN2xbbhLI
 EP1f+Fby/Y2KGypB+LDMD36JX8t4Y3Kcm5EkA1brxkYy238TXO30l++HcbP7MlsiKdxD
 Toi5xLv5/6KdKOZmjNtNX009IHjTYsdMQdKO5IM1vEfMKNCcqIjfTvElhlHdY1eqvM8c
 UyFCkoGs4wsWbEoiUvrpjp7oa4ey4HgG+sQoafAfW+OaeeUx1uACYaUg6id2qv9IncbX
 /SbA==
X-Gm-Message-State: APjAAAVirOWUPZ5xbX1smv/UNGebB6RUf6nYVgBbIfIc+yTxPXg4K3Qk
 BQKxzD73vwR0qZ305080IyCjnw==
X-Google-Smtp-Source: APXvYqxD/TqbPpt3M6oYdLe2qwGJ+NqM//WkrYW9spkhDw6BmeJcjpbyfMxFsfA9IF/01mKAubzLDg==
X-Received: by 2002:a2e:6c13:: with SMTP id h19mr6126118ljc.221.1579988232494; 
 Sat, 25 Jan 2020 13:37:12 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id n30sm6494809lfi.54.2020.01.25.13.37.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 Jan 2020 13:37:10 -0800 (PST)
Date: Sat, 25 Jan 2020 13:37:02 -0800
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20200125213702.tkh5afxz6ao5rsw2@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_133716_436008_03382E86 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: olof@lixom.net, soc@kernel.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The following changes since commit 70db729fe1b30af89e798d16c1045846753e5448:

  MAINTAINERS: Add myself as the co-maintainer for Actions Semi platforms (2020-01-16 15:49:19 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to 6716cb162deb9d474095a57d7a515edc13926ea7:

  Merge tag 'omap-for-fixes-whenever-signed' of git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into arm/fixes (2020-01-24 12:05:33 -0800)

----------------------------------------------------------------
ARM: SoC fixes

A couple of fixes have come in that would be good to include in this
release:

 - A fix for amount of memory on Beaglebone Black. Surfaced now since
   GRUB2 doesn't update memory size in the booted kernel.

 - A fix to make SPI interfaces work on am43x-epos-evm.

 - Small Kconfig fix for OPTEE (adds a depend on MMU) to avoid build
   failures.

----------------------------------------------------------------
Matwey V. Kornilov (1):
      ARM: dts: am335x-boneblack-common: fix memory size

Olof Johansson (2):
      Merge tag 'tee-optee-fix2-for-5.5' of https://git.linaro.org:/people/jens.wiklander/linux-tee into arm/fixes
      Merge tag 'omap-for-fixes-whenever-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/fixes

Raag Jadav (1):
      ARM: dts: am43x-epos-evm: set data pin directions for spi0 and spi1

Vincenzo Frascino (1):
      tee: optee: Fix compilation issue with nommu

 arch/arm/boot/dts/am335x-boneblack-common.dtsi | 5 +++++
 arch/arm/boot/dts/am43x-epos-evm.dts           | 2 ++
 drivers/tee/optee/Kconfig                      | 1 +
 3 files changed, 8 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
