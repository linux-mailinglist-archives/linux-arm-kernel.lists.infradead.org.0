Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F58F3B5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 23:25:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LDysP7dA+ym2M3S0KCHDYDAN57ZUj2n8yGq10BCbK+c=; b=MTJN0hq9FwQ/tk
	dzBpRh7ZvefVq2Avx0162CamInmrgAaRjk/Ve+m6lVZDBtXlyWeAQE/Leu5TRt1sVAXAsa1lMt82v
	U4MdF/SM6PZaxPYjr0hfgNTxexNflWc7AP9UE2BNIXUJ1irY+24mARJgl/lFVFqCZ96eZe/+6G4xi
	rd9FUtNrvXCjPBf97QEeP60HyvBsPkOUQTWydj8kefQsInl3K31TGbb7FOq/Y3Oe2cCgBFszl7//F
	njk5RQYcZ3lw+jUz8FbjhWurVbIqQ3u9jQpt14EyQiavesiVD66aCE/ErtR3/6VE+XMuP8HOwDmpy
	oHa8hTaFmhp+hOQsu0Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSqDt-00060g-Dt; Thu, 07 Nov 2019 22:25:49 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSqDn-00060Q-EM
 for linux-arm-kernel@bombadil.infradead.org; Thu, 07 Nov 2019 22:25:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ateyf74i5WtFMEsc2OR0IVuYm0AsEScvKhnnIhlzYD0=; b=ouceL5+ndKa5Xo2Y3CUyM4nHCZ
 GPaJD7jeKMdycvMgx0R5nEPu5cyCdT3cU+NBxsWhgLWsHvrarVKqzQF0O7vAmiCLF7eqaxVka7m92
 afE8FjoU0Giwu9ag4+Hecdo37pEgei7IwLJlgGdMp8LxO9Zw0reMHs2W2XPivT7VO9Vec5w4SiEET
 EEkmqX5185qOzG20KCu50hsCN0hmgNQziise/RXJQ1ljZbK7juparbwBvGCpPeBkGNE3pzHMo1gzT
 Wx7LF+05DBWgE6I63e0VSUBBmHHJMkxLi6kLfCyimMulItgQbjKPU2Yckw28jyY+GkKawqyWNpo3Z
 Jvepn74w==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSqDj-0002W8-W6
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 22:25:41 +0000
Received: from localhost (unknown [92.184.100.203])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7E6B1240007;
 Thu,  7 Nov 2019 22:24:58 +0000 (UTC)
Date: Thu, 7 Nov 2019 23:24:45 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: defconfig for 5.5
Message-ID: <20191107222445.GA202433@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

A single patch unselecting the PIT driver to improve the boot time on
at91 platforms.

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.5-defconfig

for you to fetch changes up to 0fc21fdf4e1023d0e5f8d42a42cdd372177699e2:

  ARM: configs: at91: unselect PIT (2019-10-14 17:05:25 +0200)

----------------------------------------------------------------
AT91 defconfig for 5.5

 - Unselect PIT now that the TCBs can be used at boot time

----------------------------------------------------------------
Alexandre Belloni (1):
      ARM: configs: at91: unselect PIT

 arch/arm/configs/at91_dt_defconfig | 1 +
 arch/arm/configs/sama5_defconfig   | 1 +
 2 files changed, 2 insertions(+)

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
