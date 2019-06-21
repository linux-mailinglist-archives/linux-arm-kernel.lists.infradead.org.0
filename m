Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D424E381
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:27:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cbXUAaYGhX7zhCeDA/6p7Cc79RvizHeINAmoHVBsa4I=; b=X3i
	YJM6nKzq08eUIKc/MAc7Fvqjdnoio2Vsbeb0NX5Wu/k1e7ziLWq9gdJkl12hCshOZJ2ezIEXzONgn
	QWU3ZClvcjZwYR+KGZKZrYRoa9j2qQ3he4ory6cUYPDmzpu8Td5Dc+5gW3YhGUVG4kJfFThSapHK3
	FTAUECpagm/jEcGiz+gO7PUQs0H0/eGVlXYkxmgTNFzRiuG1L1/ydOhsV8uAarlwHfhut6yKi4W/8
	+sST5G4PfDSZgVedwSpaci90/bsUGKzlBctbU9IMs4v2HhCyeE8rDuExR38NXxOwrOcbxVWfH8cjx
	zAtG5jcPgnn4SSH29wOXZv+dqYEFkcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFpB-0004DA-Ao; Fri, 21 Jun 2019 09:27:13 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFdJ-0008OY-Cq
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:14:59 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id ABDE025BE7A;
 Fri, 21 Jun 2019 19:14:04 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id B06829408C4; Fri, 21 Jun 2019 11:14:02 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: arm@kernel.org
Subject: [GIT PULL] Renesas ARM Based SoC Defconfig Updates for v5.3
Date: Fri, 21 Jun 2019 11:14:01 +0200
Message-Id: <cover.1561101309.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021458_292277_3BBB1E79 
X-CRM114-Status: GOOD (  10.01  )
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

Please consider these Renesas ARM based SoC defconfig updates for v5.3.


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm-defconfig-for-v5.3

for you to fetch changes up to b995421faef5b24ee8ec60d66b356b57ca0c8b77:

  ARM: shmobile: Remove GENERIC_PHY from shmobile_defconfig (2019-05-20 13:24:06 +0200)

----------------------------------------------------------------
Renesas ARM Based SoC Defconfig Updates for v5.3

* Remove GENERIC_PHY from shmobile_defconfig as it is now selected

----------------------------------------------------------------
Biju Das (1):
      ARM: shmobile: Remove GENERIC_PHY from shmobile_defconfig

 arch/arm/configs/shmobile_defconfig | 1 -
 1 file changed, 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
