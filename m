Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 042B218E7AC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 09:57:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qvmfbNCqul3Pdw/P0jRjrTJPjCe0OWsMD05xc1eyuT4=; b=ke/PIexHygoY6s
	Ap8ZVQSQLVduU9y6hC7DfwDjBn88tpvlsWFAnRfyG1htRUCi/GFfTNxG24oCWwiDtCMHdUoYWE6HM
	xNAcQoh/A6+zfAqRbEkXbbXW5rvkpAHY5R0KnOvyasRUhXOm5atUNaxJeqz63d9Rvu9m469lUxL13
	bhnACnixdbrv1AtU+cZfomf9PYLbVSl77MnqghooxbwtFvzYOfXzkLmq8vmNanz+P2Rz4RuJ6uz+c
	d0o670vzh8SuEKOxpNfUCmPNrjp/nq+e9yw+GUYafmal0fynt3Xa5YaSF6H+tyUJR/MtmMFFVIszM
	jGwlF4UD/hf2E8tOn+Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFwQH-0000Qa-6q; Sun, 22 Mar 2020 08:57:33 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFwQ8-0000Ej-P1
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 08:57:26 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id B8AE0200003;
 Sun, 22 Mar 2020 08:57:11 +0000 (UTC)
Date: Sun, 22 Mar 2020 09:57:11 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: defconfig for 5.7
Message-ID: <20200322085711.GA208700@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_015724_953017_1FFDBB33 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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

A single patch enabling the sama5d4 watchdog driver in
at91_dt_defconfig.

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.7-defconfig

for you to fetch changes up to 91d14ab8d913e798b3f68663ffc2e1f7dc8c4a8b:

  ARM: configs: at91: enable sama5d4 compatible watchdog (2020-02-12 12:29:22 +0100)

----------------------------------------------------------------
AT91 defconfig for 5.7

 - Add sama5d4 watchdog to at91_dt_defconfig as it is present on sam9x60

----------------------------------------------------------------
Eugen Hristev (1):
      ARM: configs: at91: enable sama5d4 compatible watchdog

 arch/arm/configs/at91_dt_defconfig | 1 +
 1 file changed, 1 insertion(+)

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
