Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF9957B50
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dEExXKBwtoNgV4D9oVJpgGeEA36jAU1e1Uf8PmhBj5A=; b=a2WwA1lwhiZQ9S
	VViernNIm8RU87v6KTAzIiuW9VzH9RbP/ZuAvtgc6E7AMO7Fw05q0bO3z5EClozRj9G5DITMtbvkK
	6yZSwu2NGulfHXAJLjkZ1cb9jB6Jh6xRI2VNgtEchan8zW6wG0Rz2JGJfC2Uy22ehkTfLjqyrWame
	kKwLwxMdFOCM8ZqlDhjAs0J2Uw3xih9SNZLi0G8G1PdEh9vf4lmgjMRkDsWj1n2cxXtzBJHGcV6lr
	70Bxw02GM1j3znY3uAWJJqtcYkgPqs9EoikYCm6X8iUi540mISkzOptdlWta/nLh+uau+zz1LPlze
	XsW/zZvHQo5y7sJY+QGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMuo-0005rp-Es; Thu, 27 Jun 2019 05:25:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMpO-0006ep-7l
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BTKCxnhTazrPesoHKDV4p8sRapqVbrsGw9bOncK6AZU=; b=Ohy7KFF+VSNIWjRSzvtUB30GyE
 ELNu0OD+fJdGgcosKy60qjE/p92M/rAkszLFoRyzMmfkWyQECHqtMN5tXiECffGHM2X2uPMoXRSU3
 hsHzV9vIF7CAnXrKakzAGcNAPeH4Ww9ADDPjSCgcfT/+WFE5ItXYNwk++7lYxHvkHd10SSUyKgY1q
 v24eAcxUUdKS/ew+EuWA4yd5y4lwOzp9CFwUPepuGFtXQnXu1QAPCqVEg0ORrBAnTeuLE6/I8EnMl
 wzN2UEUvB/J9OSPRLv9b6qfvuwibxp0U9llEd8XhqDwApD0IdbZO/ZnUCmVcHVgK3L/2RS39CIgcE
 s6oEbL6A==;
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKVk-0004zY-EI
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:51:46 +0000
Received: by mail-lj1-x241.google.com with SMTP id k18so646971ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=BTKCxnhTazrPesoHKDV4p8sRapqVbrsGw9bOncK6AZU=;
 b=gO9JdY7D9q0BkzIBQI9C0ktBuctOyqDjPah6J+45Rj43WFfPDhuCyeicU4enOUY7dm
 VuIyQqJxWnIaqzMkznyd2uO7XSahMortHR8YUaG7dOv+zCmmJ1Y5eauotob7cR/Fhb5L
 jFqiM8NrmAZAiUMZPgccGP9QABRsB2l3TGnhyfYqVFeObOsabYQoXlipLoE+C17oT6JQ
 4zvPZFUI4RneAwmz1DI/eqPpfh20xre5+hOY/hCX4s1JxzqgMEXwfBIZ6HSG2js3uXB6
 dLDFyLYu+Q5PLs40TzONI8rcJRjDLyJ5Iz7buRXtJbYjJcEzM+R2CEUAvHQKrpwPA0hj
 auyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=BTKCxnhTazrPesoHKDV4p8sRapqVbrsGw9bOncK6AZU=;
 b=NypGEUPOgFi6/CCzeePifo2/M9p0S/KMtl8Lv5mEpwmOlQmT8+o9pc3dxphJS3Hz4n
 G5Eo1R38t3aSvfV/2/oX80VfJ7ITj+7OgH7Wpo0vco64vP6fm6MCDUMlV13ed8pnqWSz
 NdRExzU++PRGcmZiRJHO4s2I2vHknZZicX7GPJ+UPvaupWMN/W4uMruk6EH+djimLvrc
 mqCXozRU5xRDZSVE6qmhZlhDmqSqsJikzfZrYCQ35B773Cb870BKFkKXjZllwr7XAlwW
 hVoWj+0qrj3v9HkHNHvmCnoI+s3xfh5w3GoryjfaxH4grIWIgsQzFoHbW0QfShC5XsG9
 BWdw==
X-Gm-Message-State: APjAAAWjWpgsvJhHq1AFVMklQ/jqfj6QBqhdxKs7LNGD7EZhyaqUHKtv
 vRGQK8+vNHPyRd6FkWC4Rqk8x3F0bz5BlQ==
X-Google-Smtp-Source: APXvYqwhLURgl+MsgWvofjbyRiAKbfjz5hDylTAkGa/+UG0J4j7UGT0bxctq8zcKUe2fAy2VfDC4bg==
X-Received: by 2002:a2e:9198:: with SMTP id f24mr914481ljg.221.1561603838424; 
 Wed, 26 Jun 2019 19:50:38 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id g68sm111896ljg.47.2019.06.26.19.50.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:50:37 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:45:08 -0700
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org, gregkh@linuxfoundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20190627024508.x5opgsq4tjk32m6j@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_035144_531588_8805A1DF 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: olof@lixom.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus, Greg,

The following changes since commit cd3967bee004bcbd142403698d658166fa618c9e:

  soc: ixp4xx: npe: Fix an IS_ERR() vs NULL check in probe (2019-06-18 06:4=
7:59 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fix=
es

for you to fetch changes up to e73f65930f8880fafaccf2cc1e5c44272e9523ec:

  Merge tag 'imx-fixes-5.2-3' of git://git.kernel.org/pub/scm/linux/kernel/=
git/shawnguo/linux into arm/fixes (2019-06-25 04:20:08 -0700)

----------------------------------------------------------------
ARM: SoC fixes

A smaller batch of fixes, nothing that stands out as risky or scary.

Mostly DTS tweaks for a few issues:
 - GPU fixlets for Meson
 - CPU idle fix for LS1028A
 - PWM interrupt fixes for i.MX6UL

Also, enable a driver (FSL_EDMA) on arm64 defconfig, and a warning and
two MAINTAINER tweaks.

----------------------------------------------------------------
Arnd Bergmann (1):
      ARM: omap2: remove incorrect __init annotation

Florian Fainelli (2):
      MAINTAINERS: BCM2835: Add internal Broadcom mailing list
      MAINTAINERS: BCM53573: Add internal Broadcom mailing list

Li Yang (1):
      arm64: defconfig: Enable FSL_EDMA driver

Linus Walleij (2):
      ARM: dts: Blank D-Link DIR-685 console
      ARM: dts: gemini Fix up DNS-313 compatible string

Martin Blumenstingl (3):
      ARM: dts: meson8: fix GPU interrupts and drop an undocumented property
      ARM: dts: meson8b: drop undocumented property from the Mali GPU node
      ARM: dts: meson8b: fix the operating voltage of the Mali GPU

Olof Johansson (5):
      Merge tag 'imx-fixes-5.2-2' of git://git.kernel.org/.../shawnguo/linu=
x into arm/fixes
      Merge tag 'gemini-dts-v5.2' of git://git.kernel.org/.../linusw/linux-=
nomadik into arm/fixes
      Merge tag 'arm-soc/for-5.3/maintainers' of https://github.com/Broadco=
m/stblinux into arm/fixes
      Merge tag 'amlogic-fixes' of https://git.kernel.org/.../khilman/linux=
-amlogic into arm/fixes
      Merge tag 'imx-fixes-5.2-3' of git://git.kernel.org/.../shawnguo/linu=
x into arm/fixes

Ran Wang (1):
      arm64: dts: ls1028a: Fix CPU idle fail.

S=E9bastien Szymanski (1):
      ARM: dts: imx6ul: fix PWM[1-4] interrupts

 MAINTAINERS                                    |  2 ++
 arch/arm/boot/dts/gemini-dlink-dir-685.dts     |  2 +-
 arch/arm/boot/dts/gemini-dlink-dns-313.dts     |  2 +-
 arch/arm/boot/dts/imx6ul.dtsi                  |  8 ++++----
 arch/arm/boot/dts/meson8.dtsi                  |  5 ++---
 arch/arm/boot/dts/meson8b.dtsi                 | 11 +++++------
 arch/arm/mach-omap2/prm3xxx.c                  |  2 +-
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 18 +++++++++---------
 arch/arm64/configs/defconfig                   |  1 +
 9 files changed, 26 insertions(+), 25 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
