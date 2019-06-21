Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0CE4E33F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ssc3kFrm/2V1qRNCPQTjXm976m+6Pry0Aq+4SItEyig=; b=PeT
	SwFs9ox16xcuUL+f63i6gLmAsiELvuKPxvorDtrUCCdjv73rx55OEJkCMfNZRheSqND4V68OJKwm+
	c16wFXxnfKeo5r64kmrCFuRxtgSSnE39YK9ZCydfFio/Z8sxQYFW88rgaGPgKSgkKkR2SOsp8pePo
	EC53o3YmYQOtUzEFhXbLxQP2JiTlb4Tomuz2FE9BR5g1R80wCuEGHRT/K11IdLUJKOXxu3XoHWRaZ
	u2/XWqYvfrz4nFbxmOfWmlewthCGLd8X1iTMlWvFpzTUMly/sy8Z5q82XFvCAtyRwbTvU/NEMntkt
	LRTLqUn7+ywU5YQs+/IKxgyyXEU9jJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFg5-0003Dh-QN; Fri, 21 Jun 2019 09:17:49 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFae-0007RN-25
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:12:13 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 29ABA25AEE7;
 Fri, 21 Jun 2019 19:12:11 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 309569408C4; Fri, 21 Jun 2019 11:12:09 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: arm@kernel.org
Subject: [GIT PULL] Renesas ARM Based SoC Updates for v5.3
Date: Fri, 21 Jun 2019 11:12:04 +0200
Message-Id: <cover.1561105093.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021212_409144_79629C43 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, Simon Horman <horms+renesas@verge.net.au>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Hi Kevin, Hi Arnd,

Please consider these Renesas ARM based SoC updates for v5.3.


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm-soc-for-v5.3

for you to fetch changes up to 02af9f90941b6cce5fb672ee058c142adcc11a2f:

  soc: renesas: Enable RZ/A1 IRQC on RZ/A1H and RZ/A2M (2019-06-06 10:37:06 +0200)

----------------------------------------------------------------
Renesas ARM Based SoC Updates for v5.3

* Auto-enable RZ/A1 IRQC on RZ/A1H and RZ/A2M
* Don't init CNTVOFF/counter if PSCI is available

----------------------------------------------------------------
Geert Uytterhoeven (1):
      soc: renesas: Enable RZ/A1 IRQC on RZ/A1H and RZ/A2M

Oleksandr Tyshchenko (1):
      ARM: mach-shmobile: Don't init CNTVOFF/counter if PSCI is available

 arch/arm/mach-shmobile/setup-rcar-gen2.c | 17 +++++++++++++++++
 drivers/soc/renesas/Kconfig              |  4 +++-
 2 files changed, 20 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
