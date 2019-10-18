Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FD3DCB17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOmzC/lLkZaE6PqEDje0e1ov2h4LeJcmuqXBdx6l+O4=; b=i2I7+7tY2VShLi
	gXJ8+MJuSyEXKMpMLwV1ysx0mZHSZ9Yl8MJfyNm9c/LlgOd9FXie55YMtgsZHubO2JKBHZz9h2X2H
	NzFynAZQstWOOr2wmrQaroLtJw9pWGqjigmWxXAe0qovGOjinknZ0lhERWClfYy/eMLh0qF7MSdzO
	9+JIkZfMANdw7wNn2USlO1HNIGb7Xvq8JWeDhFKe8W9BN9BOacpRyRo9hkD2PdVMXv/M4966H4PKC
	Qpxov0giR7YDpLlOiQaRA4YeGV2esZRjdb0SWr4T81jwHqAQAxuV4+586DhsRxZnfBBjAjQveBKYX
	TS0oB6O+p2mXrRNM3M2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVBq-0001WA-Qy; Fri, 18 Oct 2019 16:33:22 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVAA-0000GW-8E
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:31:52 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M1IRY-1iJqTA31H0-002mPy; Fri, 18 Oct 2019 18:31:30 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/6] ARM: orion/mv78xx0/dove: move to a common directory
Date: Fri, 18 Oct 2019 18:29:18 +0200
Message-Id: <20191018163047.1284736-5-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018163047.1284736-1-arnd@arndb.de>
References: <20191018163047.1284736-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:sJRxlREPMM5i/b5zrUAPpoaQnnUxFau95Pf5wfEUJFSf78UpfUr
 M5sSmXMhRgnBvsbgCK/4NRKdfU66jOQk6MogmRWmxd+brH/ojbSi0M5swZwnuT8CJ3JpzPO
 LzbV9LNCoxJi96OiVCjQbg/ot9rzSFTxEkViYPBDE5oZXu4rqBT6MU7EbsKHzMHFRMlV4/T
 8CrZHzXSlfgeCpuhFeFHg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9ZAMntKezjM=:1bEu73cf8jpHCjb6LPYBdK
 YVY2PPROnvxIqGcWxcjc9a8OG9eczbKd6RJ6zoTVuojGymEokbQX1Iw1rlqRPGr7BJdVfnObg
 KwFWVzHIqnW4WnIS+Kd5kuT3DW5Lb8WQn1spVJIJPpz85iy2MLH+9m0R0eSgXygImbh78uK7P
 fi0x/d6DH1EJDRGxSovn7EtasNodWdu2ujGtt4YlRUb8TTZ2NDsLzfcZ/QMOw0Z8VCHK7NFsv
 k99oKXQhhtqQke0nw6/jyEuf2JdmL31a9nQFyP766sHtXJ3QYqq/4fdxs8AL4Fg6/IPZU6an/
 kqOzjnSaNZ6F6jq2Obtl5yjFjdHY6lSa85Gqc1mHe38VyAzn7XBGFih0dXdbISBclWryVmIAe
 ClyO6QgsyXvBnZnnOsxw++YnrkMwMab43tl2q6FZuKBWK+S+8crKgbI8UI7hUptqxUugC8HPy
 OqshKK3yNQAZ/DI01jD1yJ/qQqNv6JtL+MbvdO/RBigmj3p2C7SUWfLjnxZnkxbYQAidWLFm7
 n7M+8KppSYuuwrn0+4hB5m+yu4kmyltd+FiV6sNjt/kaTsG6IWDS4Kv4TDgRLkqPZfoFsPx4V
 wJx3nmq2G1UwA7rdMQiO2FM/EZHh+KOQWVkS6CIs6lm9G2XtagOrQiEupJoof5zwUKgM1oWZE
 tnrN4rdclPf/DEcwbY6UvEA18C/7fU8WMzK1/3v9th8iovp37uRzrdBt5fdsOHezB6ZG9eNPf
 75Euueq0KdAy5lPCYqZvvCzTlPz0MaXAVgGnG7AfPLMBwerjFZQAJCPLFuyXy4462Pxmwk6md
 wioKgl1glYGNz2CcLpASg4ILDEJfPLHx7vAdUiOXLmGFxc5cckjz2d7UDfabqMELucnQpCFhU
 inTbNrTrgEb8mLm+cjHg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_093139_558991_A64C297C 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, Gregory Clement <gregory.clement@bootlin.com>,
 linux-kernel@vger.kernel.org, Alexander Clouter <alex@digriz.org.uk>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are very vew contents left in mv78xx0, dove and the plat-orion
directory, but having the files spread over four places increases
the complexity and requires having shared header files.

Move everything to one directory, adapting the file names where
necessary, but not much else. Additional cleanups that are
enabled by this can come later.

Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Gregory Clement <gregory.clement@bootlin.com>
Cc: Alexander Clouter <alex@digriz.org.uk>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 MAINTAINERS                                     |  7 ++-----
 arch/arm/Kconfig                                | 17 +----------------
 arch/arm/Makefile                               |  5 +----
 arch/arm/mach-dove/Makefile                     |  8 --------
 arch/arm/mach-orion/Kconfig                     | 14 ++++++++++++++
 .../Kconfig => mach-orion/Kconfig.dove}         |  0
 .../Kconfig => mach-orion/Kconfig.mv78xx0}      |  0
 .../Kconfig => mach-orion/Kconfig.orion5x}      |  0
 arch/arm/{plat-orion => mach-orion}/Makefile    | 12 ++++++++++++
 .../arm/{mach-dove => mach-orion}/Makefile.boot |  0
 arch/arm/mach-orion/Makefile.dove               |  6 ++++++
 .../Makefile => mach-orion/Makefile.mv78xx0}    |  4 +---
 .../Makefile => mach-orion/Makefile.orion5x}    |  4 +---
 .../include/plat => mach-orion}/addr-map.h      |  2 --
 .../{mach-orion5x => mach-orion}/board-d2net.c  |  6 ++----
 .../arm/{mach-orion5x => mach-orion}/board-dt.c | 10 ++++------
 .../{mach-orion5x => mach-orion}/board-mss2.c   |  4 ++--
 .../board-rd88f5182.c                           |  4 +---
 .../buffalo-wxl-setup.c                         |  6 ++----
 arch/arm/{mach-dove => mach-orion}/cm-a510.c    |  4 +---
 arch/arm/{plat-orion => mach-orion}/common.c    |  4 +---
 .../include/plat => mach-orion}/common.h        |  2 --
 .../db78x00-bp-setup.c                          |  4 +---
 .../db88f5281-setup.c                           |  6 ++----
 .../{mach-orion5x => mach-orion}/dns323-setup.c |  8 +++-----
 .../dove-bridge-regs.h}                         |  0
 .../common.c => mach-orion/dove-common.c}       | 13 +++++--------
 .../common.h => mach-orion/dove-common.h}       |  2 --
 .../{mach-dove => mach-orion}/dove-db-setup.c   |  4 +---
 .../{mach-dove/irq.c => mach-orion/dove-irq.c}  | 12 +++++-------
 .../irqs.h => mach-orion/dove-irqs.h}           |  0
 .../{mach-dove/mpp.c => mach-orion/dove-mpp.c}  |  8 +++-----
 .../{mach-dove/mpp.h => mach-orion/dove-mpp.h}  |  0
 .../pcie.c => mach-orion/dove-pcie.c}           | 12 +++++-------
 .../{mach-dove/pm.h => mach-orion/dove-pm.h}    |  2 +-
 arch/arm/{mach-dove => mach-orion}/dove.h       |  2 +-
 arch/arm/{plat-orion => mach-orion}/gpio.c      |  4 +---
 arch/arm/{plat-orion => mach-orion}/irq.c       |  6 ++----
 .../include/plat => mach-orion}/irq.h           |  2 --
 .../kurobox_pro-setup.c                         |  6 ++----
 .../{mach-orion5x => mach-orion}/ls_hgl-setup.c |  6 ++----
 arch/arm/{plat-orion => mach-orion}/mpp.c       |  6 ++----
 .../include/plat => mach-orion}/mpp.h           |  2 --
 .../{mach-orion5x => mach-orion}/mv2120-setup.c |  4 ++--
 .../mv78xx0-bridge-regs.h}                      |  0
 .../common.c => mach-orion/mv78xx0-common.c}    | 12 +++++-------
 .../common.h => mach-orion/mv78xx0-common.h}    |  2 --
 .../irq.c => mach-orion/mv78xx0-irq.c}          | 10 ++++------
 .../irqs.h => mach-orion/mv78xx0-irqs.h}        |  0
 .../mpp.c => mach-orion/mv78xx0-mpp.c}          |  8 +++-----
 .../mpp.h => mach-orion/mv78xx0-mpp.h}          |  3 +--
 .../pcie.c => mach-orion/mv78xx0-pcie.c}        |  6 ++----
 arch/arm/{mach-mv78xx0 => mach-orion}/mv78xx0.h |  2 +-
 .../net2big-setup.c                             |  8 +++-----
 .../include/plat => mach-orion}/orion-gpio.h    |  2 --
 .../orion5x-bridge-regs.h}                      |  0
 .../common.h => mach-orion/orion5x-common.h}    |  0
 .../irq.c => mach-orion/orion5x-irq.c}          | 10 ++++------
 .../irqs.h => mach-orion/orion5x-irqs.h}        |  0
 .../mpp.c => mach-orion/orion5x-mpp.c}          |  8 +++-----
 .../mpp.h => mach-orion/orion5x-mpp.h}          |  0
 .../pci.c => mach-orion/orion5x-pci.c}          |  8 +++-----
 .../common.c => mach-orion/orion5x.c}           | 10 ++++------
 arch/arm/{mach-orion5x => mach-orion}/orion5x.h |  2 +-
 arch/arm/{plat-orion => mach-orion}/pcie.c      |  6 ++----
 .../include/plat => mach-orion}/pcie.h          |  2 --
 .../rd78x00-masa-setup.c                        |  4 +---
 .../rd88f5181l-fxo-setup.c                      |  6 ++----
 .../rd88f5181l-ge-setup.c                       |  6 ++----
 .../rd88f5182-setup.c                           |  6 ++----
 .../rd88f6183ap-ge-setup.c                      |  4 +---
 .../terastation_pro2-setup.c                    |  4 ++--
 arch/arm/{plat-orion => mach-orion}/time.c      |  4 +---
 .../include/plat => mach-orion}/time.h          |  2 --
 .../{mach-orion5x => mach-orion}/ts209-setup.c  |  4 ++--
 .../{mach-orion5x => mach-orion}/ts409-setup.c  |  4 ++--
 .../{mach-orion5x => mach-orion}/ts78xx-fpga.h  |  0
 .../{mach-orion5x => mach-orion}/ts78xx-setup.c |  6 ++----
 .../{mach-orion5x => mach-orion}/tsx09-common.c |  4 +---
 .../{mach-orion5x => mach-orion}/tsx09-common.h |  0
 .../wnr854t-setup.c                             |  6 ++----
 .../wrt350n-v2-setup.c                          |  6 ++----
 82 files changed, 147 insertions(+), 246 deletions(-)
 delete mode 100644 arch/arm/mach-dove/Makefile
 create mode 100644 arch/arm/mach-orion/Kconfig
 rename arch/arm/{mach-dove/Kconfig => mach-orion/Kconfig.dove} (100%)
 rename arch/arm/{mach-mv78xx0/Kconfig => mach-orion/Kconfig.mv78xx0} (100%)
 rename arch/arm/{mach-orion5x/Kconfig => mach-orion/Kconfig.orion5x} (100%)
 rename arch/arm/{plat-orion => mach-orion}/Makefile (62%)
 rename arch/arm/{mach-dove => mach-orion}/Makefile.boot (100%)
 create mode 100644 arch/arm/mach-orion/Makefile.dove
 rename arch/arm/{mach-mv78xx0/Makefile => mach-orion/Makefile.mv78xx0} (62%)
 rename arch/arm/{mach-orion5x/Makefile => mach-orion/Makefile.orion5x} (90%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/addr-map.h (96%)
 rename arch/arm/{mach-orion5x => mach-orion}/board-d2net.c (97%)
 rename arch/arm/{mach-orion5x => mach-orion}/board-dt.c (94%)
 rename arch/arm/{mach-orion5x => mach-orion}/board-mss2.c (97%)
 rename arch/arm/{mach-orion5x => mach-orion}/board-rd88f5182.c (97%)
 rename arch/arm/{mach-mv78xx0 => mach-orion}/buffalo-wxl-setup.c (97%)
 rename arch/arm/{mach-dove => mach-orion}/cm-a510.c (97%)
 rename arch/arm/{plat-orion => mach-orion}/common.c (99%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/common.h (98%)
 rename arch/arm/{mach-mv78xx0 => mach-orion}/db78x00-bp-setup.c (97%)
 rename arch/arm/{mach-orion5x => mach-orion}/db88f5281-setup.c (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/dns323-setup.c (99%)
 rename arch/arm/{mach-dove/bridge-regs.h => mach-orion/dove-bridge-regs.h} (100%)
 rename arch/arm/{mach-dove/common.c => mach-orion/dove-common.c} (98%)
 rename arch/arm/{mach-dove/common.h => mach-orion/dove-common.h} (97%)
 rename arch/arm/{mach-dove => mach-orion}/dove-db-setup.c (97%)
 rename arch/arm/{mach-dove/irq.c => mach-orion/dove-irq.c} (92%)
 rename arch/arm/{mach-dove/irqs.h => mach-orion/dove-irqs.h} (100%)
 rename arch/arm/{mach-dove/mpp.c => mach-orion/dove-mpp.c} (97%)
 rename arch/arm/{mach-dove/mpp.h => mach-orion/dove-mpp.h} (100%)
 rename arch/arm/{mach-dove/pcie.c => mach-orion/dove-pcie.c} (97%)
 rename arch/arm/{mach-dove/pm.h => mach-orion/dove-pm.h} (99%)
 rename arch/arm/{mach-dove => mach-orion}/dove.h (99%)
 rename arch/arm/{plat-orion => mach-orion}/gpio.c (99%)
 rename arch/arm/{plat-orion => mach-orion}/irq.c (92%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/irq.h (88%)
 rename arch/arm/{mach-orion5x => mach-orion}/kurobox_pro-setup.c (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/ls_hgl-setup.c (98%)
 rename arch/arm/{plat-orion => mach-orion}/mpp.c (95%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/mpp.h (95%)
 rename arch/arm/{mach-orion5x => mach-orion}/mv2120-setup.c (99%)
 rename arch/arm/{mach-mv78xx0/bridge-regs.h => mach-orion/mv78xx0-bridge-regs.h} (100%)
 rename arch/arm/{mach-mv78xx0/common.c => mach-orion/mv78xx0-common.c} (98%)
 rename arch/arm/{mach-mv78xx0/common.h => mach-orion/mv78xx0-common.h} (97%)
 rename arch/arm/{mach-mv78xx0/irq.c => mach-orion/mv78xx0-irq.c} (93%)
 rename arch/arm/{mach-mv78xx0/irqs.h => mach-orion/mv78xx0-irqs.h} (100%)
 rename arch/arm/{mach-mv78xx0/mpp.c => mach-orion/mv78xx0-mpp.c} (91%)
 rename arch/arm/{mach-mv78xx0/mpp.h => mach-orion/mv78xx0-mpp.h} (99%)
 rename arch/arm/{mach-mv78xx0/pcie.c => mach-orion/mv78xx0-pcie.c} (98%)
 rename arch/arm/{mach-mv78xx0 => mach-orion}/mv78xx0.h (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/net2big-setup.c (99%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/orion-gpio.h (94%)
 rename arch/arm/{mach-orion5x/bridge-regs.h => mach-orion/orion5x-bridge-regs.h} (100%)
 rename arch/arm/{mach-orion5x/common.h => mach-orion/orion5x-common.h} (100%)
 rename arch/arm/{mach-orion5x/irq.c => mach-orion/orion5x-irq.c} (89%)
 rename arch/arm/{mach-orion5x/irqs.h => mach-orion/orion5x-irqs.h} (100%)
 rename arch/arm/{mach-orion5x/mpp.c => mach-orion/orion5x-mpp.c} (92%)
 rename arch/arm/{mach-orion5x/mpp.h => mach-orion/orion5x-mpp.h} (100%)
 rename arch/arm/{mach-orion5x/pci.c => mach-orion/orion5x-pci.c} (99%)
 rename arch/arm/{mach-orion5x/common.c => mach-orion/orion5x.c} (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/orion5x.h (99%)
 rename arch/arm/{plat-orion => mach-orion}/pcie.c (98%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/pcie.h (96%)
 rename arch/arm/{mach-mv78xx0 => mach-orion}/rd78x00-masa-setup.c (96%)
 rename arch/arm/{mach-orion5x => mach-orion}/rd88f5181l-fxo-setup.c (98%)
 rename arch/arm/{mach-orion5x => mach-orion}/rd88f5181l-ge-setup.c (98%)
 rename arch/arm/{mach-orion5x => mach-orion}/rd88f5182-setup.c (98%)
 rename arch/arm/{mach-orion5x => mach-orion}/rd88f6183ap-ge-setup.c (97%)
 rename arch/arm/{mach-orion5x => mach-orion}/terastation_pro2-setup.c (99%)
 rename arch/arm/{plat-orion => mach-orion}/time.c (99%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/time.h (90%)
 rename arch/arm/{mach-orion5x => mach-orion}/ts209-setup.c (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/ts409-setup.c (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/ts78xx-fpga.h (100%)
 rename arch/arm/{mach-orion5x => mach-orion}/ts78xx-setup.c (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/tsx09-common.c (97%)
 rename arch/arm/{mach-orion5x => mach-orion}/tsx09-common.h (100%)
 rename arch/arm/{mach-orion5x => mach-orion}/wnr854t-setup.c (98%)
 rename arch/arm/{mach-orion5x => mach-orion}/wrt350n-v2-setup.c (98%)

diff --git a/MAINTAINERS b/MAINTAINERS
index a69e6db80c79..28aa06350435 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1889,10 +1889,7 @@ M:	Gregory Clement <gregory.clement@bootlin.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	Documentation/devicetree/bindings/soc/dove/
-F:	arch/arm/mach-dove/
-F:	arch/arm/mach-mv78xx0/
-F:	arch/arm/mach-orion5x/
-F:	arch/arm/plat-orion/
+F:	arch/arm/mach-orion/
 F:	arch/arm/boot/dts/dove*
 F:	arch/arm/boot/dts/orion5x*
 T:	git git://git.infradead.org/linux-mvebu.git
@@ -2050,7 +2047,7 @@ M:	Alexander Clouter <alex@digriz.org.uk>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 W:	http://www.digriz.org.uk/ts78xx/kernel
 S:	Maintained
-F:	arch/arm/mach-orion5x/ts78xx-*
+F:	arch/arm/mach-orion/ts78xx-*
 
 ARM/OXNAS platform support
 M:	Neil Armstrong <narmstrong@baylibre.com>
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index eb019bc7a370..f9db9f390c1b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -616,8 +616,6 @@ source "arch/arm/mach-davinci/Kconfig"
 
 source "arch/arm/mach-digicolor/Kconfig"
 
-source "arch/arm/mach-dove/Kconfig"
-
 source "arch/arm/mach-ep93xx/Kconfig"
 
 source "arch/arm/mach-exynos/Kconfig"
@@ -651,8 +649,6 @@ source "arch/arm/mach-mmp/Kconfig"
 
 source "arch/arm/mach-moxart/Kconfig"
 
-source "arch/arm/mach-mv78xx0/Kconfig"
-
 source "arch/arm/mach-mvebu/Kconfig"
 
 source "arch/arm/mach-mxs/Kconfig"
@@ -669,7 +665,7 @@ source "arch/arm/mach-omap1/Kconfig"
 
 source "arch/arm/mach-omap2/Kconfig"
 
-source "arch/arm/mach-orion5x/Kconfig"
+source "arch/arm/mach-orion/Kconfig"
 
 source "arch/arm/mach-oxnas/Kconfig"
 
@@ -764,17 +760,6 @@ config PLAT_IOP
 	bool
 	select GENERIC_CLOCKEVENTS
 
-config PLAT_ORION
-	bool
-	select CLKSRC_MMIO
-	select COMMON_CLK
-	select GENERIC_IRQ_CHIP
-	select IRQ_DOMAIN
-
-config PLAT_ORION_LEGACY
-	bool
-	select PLAT_ORION
-
 config PLAT_VERSATILE
 	bool
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index db39707fa600..f74668401ef6 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -171,7 +171,6 @@ machine-$(CONFIG_ARCH_CLPS711X)		+= clps711x
 machine-$(CONFIG_ARCH_CNS3XXX)		+= cns3xxx
 machine-$(CONFIG_ARCH_DAVINCI)		+= davinci
 machine-$(CONFIG_ARCH_DIGICOLOR)	+= digicolor
-machine-$(CONFIG_ARCH_DOVE)		+= dove
 machine-$(CONFIG_ARCH_EBSA110)		+= ebsa110
 machine-$(CONFIG_ARCH_EFM32)		+= efm32
 machine-$(CONFIG_ARCH_EP93XX)		+= ep93xx
@@ -188,7 +187,6 @@ machine-$(CONFIG_ARCH_LPC32XX)		+= lpc32xx
 machine-$(CONFIG_ARCH_MESON)		+= meson
 machine-$(CONFIG_ARCH_MMP)		+= mmp
 machine-$(CONFIG_ARCH_MOXART)		+= moxart
-machine-$(CONFIG_ARCH_MV78XX0)		+= mv78xx0
 machine-$(CONFIG_ARCH_MVEBU)		+= mvebu
 machine-$(CONFIG_ARCH_MXC)		+= imx
 machine-$(CONFIG_ARCH_MEDIATEK)		+= mediatek
@@ -200,7 +198,7 @@ machine-$(CONFIG_ARCH_NSPIRE)		+= nspire
 machine-$(CONFIG_ARCH_OXNAS)		+= oxnas
 machine-$(CONFIG_ARCH_OMAP1)		+= omap1
 machine-$(CONFIG_ARCH_OMAP2PLUS)	+= omap2
-machine-$(CONFIG_ARCH_ORION5X)		+= orion5x
+machine-$(CONFIG_PLAT_ORION)		+= orion
 machine-$(CONFIG_ARCH_PICOXCELL)	+= picoxcell
 machine-$(CONFIG_ARCH_PXA)		+= pxa
 machine-$(CONFIG_ARCH_QCOM)		+= qcom
@@ -233,7 +231,6 @@ plat-$(CONFIG_ARCH_EXYNOS)	+= samsung
 plat-$(CONFIG_ARCH_OMAP)	+= omap
 plat-$(CONFIG_ARCH_S3C64XX)	+= samsung
 plat-$(CONFIG_ARCH_S5PV210)	+= samsung
-plat-$(CONFIG_PLAT_ORION)	+= orion
 plat-$(CONFIG_PLAT_S3C24XX)	+= samsung
 
 ifeq ($(CONFIG_ARCH_EBSA110),y)
diff --git a/arch/arm/mach-dove/Makefile b/arch/arm/mach-dove/Makefile
deleted file mode 100644
index e83f6492834d..000000000000
--- a/arch/arm/mach-dove/Makefile
+++ /dev/null
@@ -1,8 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/arch/arm/plat-orion/include
-
-obj-y				+= common.o
-obj-$(CONFIG_DOVE_LEGACY)	+= irq.o mpp.o
-obj-$(CONFIG_PCI)		+= pcie.o
-obj-$(CONFIG_MACH_DOVE_DB)	+= dove-db-setup.o
-obj-$(CONFIG_MACH_CM_A510)	+= cm-a510.o
diff --git a/arch/arm/mach-orion/Kconfig b/arch/arm/mach-orion/Kconfig
new file mode 100644
index 000000000000..bad1fe673674
--- /dev/null
+++ b/arch/arm/mach-orion/Kconfig
@@ -0,0 +1,14 @@
+config PLAT_ORION
+	bool
+	select CLKSRC_MMIO
+	select COMMON_CLK
+	select GENERIC_IRQ_CHIP
+	select IRQ_DOMAIN
+
+config PLAT_ORION_LEGACY
+	bool
+	select PLAT_ORION
+
+source "arch/arm/mach-orion/Kconfig.dove"
+source "arch/arm/mach-orion/Kconfig.mv78xx0"
+source "arch/arm/mach-orion/Kconfig.orion5x"
diff --git a/arch/arm/mach-dove/Kconfig b/arch/arm/mach-orion/Kconfig.dove
similarity index 100%
rename from arch/arm/mach-dove/Kconfig
rename to arch/arm/mach-orion/Kconfig.dove
diff --git a/arch/arm/mach-mv78xx0/Kconfig b/arch/arm/mach-orion/Kconfig.mv78xx0
similarity index 100%
rename from arch/arm/mach-mv78xx0/Kconfig
rename to arch/arm/mach-orion/Kconfig.mv78xx0
diff --git a/arch/arm/mach-orion5x/Kconfig b/arch/arm/mach-orion/Kconfig.orion5x
similarity index 100%
rename from arch/arm/mach-orion5x/Kconfig
rename to arch/arm/mach-orion/Kconfig.orion5x
diff --git a/arch/arm/plat-orion/Makefile b/arch/arm/mach-orion/Makefile
similarity index 62%
rename from arch/arm/plat-orion/Makefile
rename to arch/arm/mach-orion/Makefile
index 4e3f25de13c1..ded450d9bda3 100644
--- a/arch/arm/plat-orion/Makefile
+++ b/arch/arm/mach-orion/Makefile
@@ -7,3 +7,15 @@ ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/$(src)/include
 orion-gpio-$(CONFIG_GPIOLIB)      += gpio.o
 obj-$(CONFIG_PLAT_ORION_LEGACY)   += irq.o pcie.o time.o common.o mpp.o
 obj-$(CONFIG_PLAT_ORION_LEGACY)   += $(orion-gpio-y)
+
+ifdef CONFIG_ARCH_DOVE
+include $(src)/Makefile.dove
+endif
+
+ifdef CONFIG_ARCH_MV78XX0
+include $(src)/Makefile.mv78xx0
+endif
+
+ifdef CONFIG_ARCH_ORION5X
+include $(src)/Makefile.orion5x
+endif
diff --git a/arch/arm/mach-dove/Makefile.boot b/arch/arm/mach-orion/Makefile.boot
similarity index 100%
rename from arch/arm/mach-dove/Makefile.boot
rename to arch/arm/mach-orion/Makefile.boot
diff --git a/arch/arm/mach-orion/Makefile.dove b/arch/arm/mach-orion/Makefile.dove
new file mode 100644
index 000000000000..1e85d595836a
--- /dev/null
+++ b/arch/arm/mach-orion/Makefile.dove
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-y				+= dove-common.o
+obj-$(CONFIG_DOVE_LEGACY)	+= dove-irq.o dove-mpp.o
+obj-$(CONFIG_PCI)		+= dove-pcie.o
+obj-$(CONFIG_MACH_DOVE_DB)	+= dove-db-setup.o
+obj-$(CONFIG_MACH_CM_A510)	+= cm-a510.o
diff --git a/arch/arm/mach-mv78xx0/Makefile b/arch/arm/mach-orion/Makefile.mv78xx0
similarity index 62%
rename from arch/arm/mach-mv78xx0/Makefile
rename to arch/arm/mach-orion/Makefile.mv78xx0
index a839e960b8c6..c56ee058808a 100644
--- a/arch/arm/mach-mv78xx0/Makefile
+++ b/arch/arm/mach-orion/Makefile.mv78xx0
@@ -1,7 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/arch/arm/plat-orion/include
-
-obj-y				+= common.o mpp.o irq.o pcie.o
+obj-y				+= mv78xx0-common.o mv78xx0-mpp.o mv78xx0-irq.o mv78xx0-pcie.o
 obj-$(CONFIG_MACH_DB78X00_BP)	+= db78x00-bp-setup.o
 obj-$(CONFIG_MACH_RD78X00_MASA)	+= rd78x00-masa-setup.o
 obj-$(CONFIG_MACH_TERASTATION_WXL) += buffalo-wxl-setup.o
diff --git a/arch/arm/mach-orion5x/Makefile b/arch/arm/mach-orion/Makefile.orion5x
similarity index 90%
rename from arch/arm/mach-orion5x/Makefile
rename to arch/arm/mach-orion/Makefile.orion5x
index 1a585a62d5e6..a36c5e504698 100644
--- a/arch/arm/mach-orion5x/Makefile
+++ b/arch/arm/mach-orion/Makefile.orion5x
@@ -1,7 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/arch/arm/plat-orion/include
-
-obj-y				+= common.o pci.o irq.o mpp.o
+obj-y				+= orion5x.o orion5x-pci.o orion5x-irq.o orion5x-mpp.o
 obj-$(CONFIG_MACH_DB88F5281)	+= db88f5281-setup.o
 obj-$(CONFIG_MACH_RD88F5182)	+= rd88f5182-setup.o
 obj-$(CONFIG_MACH_KUROBOX_PRO)	+= kurobox_pro-setup.o
diff --git a/arch/arm/plat-orion/include/plat/addr-map.h b/arch/arm/mach-orion/addr-map.h
similarity index 96%
rename from arch/arm/plat-orion/include/plat/addr-map.h
rename to arch/arm/mach-orion/addr-map.h
index b76c06569fe5..65fedcc1cf6f 100644
--- a/arch/arm/plat-orion/include/plat/addr-map.h
+++ b/arch/arm/mach-orion/addr-map.h
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/include/plat/addr-map.h
- *
  * Marvell Orion SoC address map handling.
  *
  * This file is licensed under the terms of the GNU General Public
diff --git a/arch/arm/mach-orion5x/board-d2net.c b/arch/arm/mach-orion/board-d2net.c
similarity index 97%
rename from arch/arm/mach-orion5x/board-d2net.c
rename to arch/arm/mach-orion/board-d2net.c
index a89376a5cd92..7dcd274bd6e1 100644
--- a/arch/arm/mach-orion5x/board-d2net.c
+++ b/arch/arm/mach-orion/board-d2net.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/board-d2net.c
- *
  * LaCie d2Network and Big Disk Network NAS setup
  *
  * Copyright (C) 2009 Simon Guinot <sguinot@lacie.com>
@@ -20,8 +18,8 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
-#include <plat/orion-gpio.h>
-#include "common.h"
+#include "orion-gpio.h"
+#include "orion5x-common.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/mach-orion5x/board-dt.c b/arch/arm/mach-orion/board-dt.c
similarity index 94%
rename from arch/arm/mach-orion5x/board-dt.c
rename to arch/arm/mach-orion/board-dt.c
index 3d36f1d95196..85368319342f 100644
--- a/arch/arm/mach-orion5x/board-dt.c
+++ b/arch/arm/mach-orion/board-dt.c
@@ -1,8 +1,6 @@
 /*
  * Copyright 2012 (C), Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  *
- * arch/arm/mach-orion5x/board-dt.c
- *
  * Flattened Device Tree board initialization
  *
  * This file is licensed under the terms of the GNU General Public
@@ -20,11 +18,11 @@
 #include <asm/system_misc.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
-#include <plat/irq.h>
-#include <plat/time.h>
+#include "irq.h"
+#include "time.h"
 #include "orion5x.h"
-#include "bridge-regs.h"
-#include "common.h"
+#include "orion5x-bridge-regs.h"
+#include "orion5x-common.h"
 
 static struct of_dev_auxdata orion5x_auxdata_lookup[] __initdata = {
 	OF_DEV_AUXDATA("marvell,orion-spi", 0xf1010600, "orion_spi.0", NULL),
diff --git a/arch/arm/mach-orion5x/board-mss2.c b/arch/arm/mach-orion/board-mss2.c
similarity index 97%
rename from arch/arm/mach-orion5x/board-mss2.c
rename to arch/arm/mach-orion/board-mss2.c
index b0f16d223adf..6ab26b2dac84 100644
--- a/arch/arm/mach-orion5x/board-mss2.c
+++ b/arch/arm/mach-orion/board-mss2.c
@@ -14,8 +14,8 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
 #include "orion5x.h"
-#include "bridge-regs.h"
-#include "common.h"
+#include "orion5x-bridge-regs.h"
+#include "orion5x-common.h"
 
 /*****************************************************************************
  * Maxtor Shared Storage II Info
diff --git a/arch/arm/mach-orion5x/board-rd88f5182.c b/arch/arm/mach-orion/board-rd88f5182.c
similarity index 97%
rename from arch/arm/mach-orion5x/board-rd88f5182.c
rename to arch/arm/mach-orion/board-rd88f5182.c
index b7b0f52f4c0a..b763229dfcdf 100644
--- a/arch/arm/mach-orion5x/board-rd88f5182.c
+++ b/arch/arm/mach-orion/board-rd88f5182.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/rd88f5182-setup.c
- *
  * Marvell Orion-NAS Reference Design Setup
  *
  * Maintainer: Ronen Shitrit <rshitrit@marvell.com>
@@ -18,7 +16,7 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
-#include "common.h"
+#include "orion5x-common.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/mach-mv78xx0/buffalo-wxl-setup.c b/arch/arm/mach-orion/buffalo-wxl-setup.c
similarity index 97%
rename from arch/arm/mach-mv78xx0/buffalo-wxl-setup.c
rename to arch/arm/mach-orion/buffalo-wxl-setup.c
index e112f2e7cc9a..72605a54becf 100644
--- a/arch/arm/mach-mv78xx0/buffalo-wxl-setup.c
+++ b/arch/arm/mach-orion/buffalo-wxl-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-mv78xx0/buffalo-wxl-setup.c
- *
  * Buffalo WXL (Terastation Duo) Setup routines
  *
  * sebastien requiem <sebastien@requiem.fr>
@@ -20,8 +18,8 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include "mv78xx0.h"
-#include "common.h"
-#include "mpp.h"
+#include "mv78xx0-common.h"
+#include "mv78xx0-mpp.h"
 
 
 /* This arch has 2 Giga Ethernet */
diff --git a/arch/arm/mach-dove/cm-a510.c b/arch/arm/mach-orion/cm-a510.c
similarity index 97%
rename from arch/arm/mach-dove/cm-a510.c
rename to arch/arm/mach-orion/cm-a510.c
index 9f25c993d863..3f1c03b3e0d4 100644
--- a/arch/arm/mach-dove/cm-a510.c
+++ b/arch/arm/mach-orion/cm-a510.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-dove/cm-a510.c
- *
  * Copyright (C) 2010 CompuLab, Ltd.
  * Konstantin Sinyuk <kostyas@compulab.co.il>
  *
@@ -23,7 +21,7 @@
 #include <asm/mach/arch.h>
 
 #include "dove.h"
-#include "common.h"
+#include "dove-common.h"
 
 static struct mv643xx_eth_platform_data cm_a510_ge00_data = {
 	.phy_addr	= MV643XX_ETH_PHY_ADDR_DEFAULT,
diff --git a/arch/arm/plat-orion/common.c b/arch/arm/mach-orion/common.c
similarity index 99%
rename from arch/arm/plat-orion/common.c
rename to arch/arm/mach-orion/common.c
index 8647cb80a93b..7f5a649d2ba3 100644
--- a/arch/arm/plat-orion/common.c
+++ b/arch/arm/mach-orion/common.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/common.c
- *
  * Marvell Orion SoC common setup code used by multiple mach-/common.c
  *
  * This file is licensed under the terms of the GNU General Public
@@ -21,7 +19,7 @@
 #include <linux/platform_data/dsa.h>
 #include <linux/platform_data/dma-mv_xor.h>
 #include <linux/platform_data/usb-ehci-orion.h>
-#include <plat/common.h>
+#include "common.h"
 #include <linux/phy.h>
 
 /* Create a clkdev entry for a given device/clk */
diff --git a/arch/arm/plat-orion/include/plat/common.h b/arch/arm/mach-orion/common.h
similarity index 98%
rename from arch/arm/plat-orion/include/plat/common.h
rename to arch/arm/mach-orion/common.h
index 3647d3b33c20..66e5d3503a1d 100644
--- a/arch/arm/plat-orion/include/plat/common.h
+++ b/arch/arm/mach-orion/common.h
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/include/plat/common.h
- *
  * Marvell Orion SoC common setup code used by different mach-/common.c
  *
  * This file is licensed under the terms of the GNU General Public
diff --git a/arch/arm/mach-mv78xx0/db78x00-bp-setup.c b/arch/arm/mach-orion/db78x00-bp-setup.c
similarity index 97%
rename from arch/arm/mach-mv78xx0/db78x00-bp-setup.c
rename to arch/arm/mach-orion/db78x00-bp-setup.c
index cf16e08d4cf5..b1c4870ab9ad 100644
--- a/arch/arm/mach-mv78xx0/db78x00-bp-setup.c
+++ b/arch/arm/mach-orion/db78x00-bp-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-mv78xx0/db78x00-bp-setup.c
- *
  * Marvell DB-78x00-BP Development Board Setup
  *
  * This file is licensed under the terms of the GNU General Public
@@ -18,7 +16,7 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include "mv78xx0.h"
-#include "common.h"
+#include "mv78xx0-common.h"
 
 static struct mv643xx_eth_platform_data db78x00_ge00_data = {
 	.phy_addr	= MV643XX_ETH_PHY_ADDR(8),
diff --git a/arch/arm/mach-orion5x/db88f5281-setup.c b/arch/arm/mach-orion/db88f5281-setup.c
similarity index 99%
rename from arch/arm/mach-orion5x/db88f5281-setup.c
rename to arch/arm/mach-orion/db88f5281-setup.c
index 39eae10ac8de..af97784a27f5 100644
--- a/arch/arm/mach-orion5x/db88f5281-setup.c
+++ b/arch/arm/mach-orion/db88f5281-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/db88f5281-setup.c
- *
  * Marvell Orion-2 Development Board Setup
  *
  * Maintainer: Tzachi Perelstein <tzachi@marvell.com>
@@ -24,8 +22,8 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
 #include <linux/platform_data/mtd-orion_nand.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/mach-orion5x/dns323-setup.c b/arch/arm/mach-orion/dns323-setup.c
similarity index 99%
rename from arch/arm/mach-orion5x/dns323-setup.c
rename to arch/arm/mach-orion/dns323-setup.c
index d13344b2ddcd..9c827f76ae75 100644
--- a/arch/arm/mach-orion5x/dns323-setup.c
+++ b/arch/arm/mach-orion/dns323-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/dns323-setup.c
- *
  * Copyright (C) 2007 Herbert Valerio Riedel <hvr@gnu.org>
  *
  * Support for HW Rev C1:
@@ -33,10 +31,10 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
 #include <asm/system_info.h>
-#include <plat/orion-gpio.h>
+#include "orion-gpio.h"
 #include "orion5x.h"
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 
 /* Rev A1 and B1 */
 #define DNS323_GPIO_LED_RIGHT_AMBER	1
diff --git a/arch/arm/mach-dove/bridge-regs.h b/arch/arm/mach-orion/dove-bridge-regs.h
similarity index 100%
rename from arch/arm/mach-dove/bridge-regs.h
rename to arch/arm/mach-orion/dove-bridge-regs.h
diff --git a/arch/arm/mach-dove/common.c b/arch/arm/mach-orion/dove-common.c
similarity index 98%
rename from arch/arm/mach-dove/common.c
rename to arch/arm/mach-orion/dove-common.c
index 01b830afcea9..6946741c6c08 100644
--- a/arch/arm/mach-dove/common.c
+++ b/arch/arm/mach-orion/dove-common.c
@@ -1,7 +1,4 @@
 /*
- * arch/arm/mach-dove/common.c
- *
- * Core functions for Marvell Dove 88AP510 System On Chip
  *
  * This file is licensed under the terms of the GNU General Public
  * License version 2.  This program is licensed "as is" without any
@@ -22,12 +19,12 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 #include <asm/mach/time.h>
-#include <plat/common.h>
-#include <plat/irq.h>
-#include <plat/time.h>
-#include "bridge-regs.h"
-#include "pm.h"
 #include "common.h"
+#include "irq.h"
+#include "time.h"
+#include "dove-bridge-regs.h"
+#include "dove-pm.h"
+#include "dove-common.h"
 
 /* These can go away once Dove uses the mvebu-mbus DT binding */
 #define DOVE_MBUS_PCIE0_MEM_TARGET    0x4
diff --git a/arch/arm/mach-dove/common.h b/arch/arm/mach-orion/dove-common.h
similarity index 97%
rename from arch/arm/mach-dove/common.h
rename to arch/arm/mach-orion/dove-common.h
index 1d725224d146..e79aac850f2a 100644
--- a/arch/arm/mach-dove/common.h
+++ b/arch/arm/mach-orion/dove-common.h
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-dove/common.h
- *
  * Core functions for Marvell Dove 88AP510 System On Chip
  *
  * This file is licensed under the terms of the GNU General Public
diff --git a/arch/arm/mach-dove/dove-db-setup.c b/arch/arm/mach-orion/dove-db-setup.c
similarity index 97%
rename from arch/arm/mach-dove/dove-db-setup.c
rename to arch/arm/mach-orion/dove-db-setup.c
index 418ab21b9d9b..e5c56c03c5f9 100644
--- a/arch/arm/mach-dove/dove-db-setup.c
+++ b/arch/arm/mach-orion/dove-db-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-dove/dove-db-setup.c
- *
  * Marvell DB-MV88AP510-BP Development Board Setup
  *
  * This file is licensed under the terms of the GNU General Public
@@ -25,7 +23,7 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include "dove.h"
-#include "common.h"
+#include "dove-common.h"
 
 static struct mv643xx_eth_platform_data dove_db_ge00_data = {
 	.phy_addr	= MV643XX_ETH_PHY_ADDR_DEFAULT,
diff --git a/arch/arm/mach-dove/irq.c b/arch/arm/mach-orion/dove-irq.c
similarity index 92%
rename from arch/arm/mach-dove/irq.c
rename to arch/arm/mach-orion/dove-irq.c
index 31ccbcee2627..052a88444fdb 100644
--- a/arch/arm/mach-dove/irq.c
+++ b/arch/arm/mach-orion/dove-irq.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-dove/irq.c
- *
  * Dove IRQ handling.
  *
  * This file is licensed under the terms of the GNU General Public
@@ -12,12 +10,12 @@
 #include <linux/io.h>
 #include <asm/exception.h>
 
-#include <plat/irq.h>
-#include <plat/orion-gpio.h>
+#include "irq.h"
+#include "orion-gpio.h"
 
-#include "pm.h"
-#include "bridge-regs.h"
-#include "common.h"
+#include "dove-pm.h"
+#include "dove-bridge-regs.h"
+#include "dove-common.h"
 
 static int __initdata gpio0_irqs[4] = {
 	IRQ_DOVE_GPIO_0_7,
diff --git a/arch/arm/mach-dove/irqs.h b/arch/arm/mach-orion/dove-irqs.h
similarity index 100%
rename from arch/arm/mach-dove/irqs.h
rename to arch/arm/mach-orion/dove-irqs.h
diff --git a/arch/arm/mach-dove/mpp.c b/arch/arm/mach-orion/dove-mpp.c
similarity index 97%
rename from arch/arm/mach-dove/mpp.c
rename to arch/arm/mach-orion/dove-mpp.c
index 6acd8488bb05..4b4f04e321c7 100644
--- a/arch/arm/mach-dove/mpp.c
+++ b/arch/arm/mach-orion/dove-mpp.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-dove/mpp.c
- *
  * MPP functions for Marvell Dove SoCs
  *
  * This file is licensed under the terms of the GNU General Public
@@ -11,10 +9,10 @@
 #include <linux/kernel.h>
 #include <linux/gpio.h>
 #include <linux/io.h>
-#include <plat/mpp.h>
-#include <plat/orion-gpio.h>
-#include "dove.h"
 #include "mpp.h"
+#include "orion-gpio.h"
+#include "dove.h"
+#include "dove-mpp.h"
 
 struct dove_mpp_grp {
 	int start;
diff --git a/arch/arm/mach-dove/mpp.h b/arch/arm/mach-orion/dove-mpp.h
similarity index 100%
rename from arch/arm/mach-dove/mpp.h
rename to arch/arm/mach-orion/dove-mpp.h
diff --git a/arch/arm/mach-dove/pcie.c b/arch/arm/mach-orion/dove-pcie.c
similarity index 97%
rename from arch/arm/mach-dove/pcie.c
rename to arch/arm/mach-orion/dove-pcie.c
index ee91ac6b5ebf..d3dbe0af6924 100644
--- a/arch/arm/mach-dove/pcie.c
+++ b/arch/arm/mach-orion/dove-pcie.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-dove/pcie.c
- *
  * PCIe functions for Marvell Dove 88AP510 SoC
  *
  * This file is licensed under the terms of the GNU General Public
@@ -16,11 +14,11 @@
 #include <asm/mach/arch.h>
 #include <asm/setup.h>
 #include <asm/delay.h>
-#include <plat/pcie.h>
-#include <plat/addr-map.h>
-#include "irqs.h"
-#include "bridge-regs.h"
-#include "common.h"
+#include "pcie.h"
+#include "addr-map.h"
+#include "dove-irqs.h"
+#include "dove-bridge-regs.h"
+#include "dove-common.h"
 
 struct pcie_port {
 	u8			index;
diff --git a/arch/arm/mach-dove/pm.h b/arch/arm/mach-orion/dove-pm.h
similarity index 99%
rename from arch/arm/mach-dove/pm.h
rename to arch/arm/mach-orion/dove-pm.h
index 01267746d707..ce3521e1ef32 100644
--- a/arch/arm/mach-dove/pm.h
+++ b/arch/arm/mach-orion/dove-pm.h
@@ -8,7 +8,7 @@
 #define __ASM_ARCH_PM_H
 
 #include <asm/errno.h>
-#include "irqs.h"
+#include "dove-irqs.h"
 
 #define CLOCK_GATING_CONTROL	(DOVE_PMU_VIRT_BASE + 0x38)
 #define  CLOCK_GATING_BIT_USB0		0
diff --git a/arch/arm/mach-dove/dove.h b/arch/arm/mach-orion/dove.h
similarity index 99%
rename from arch/arm/mach-dove/dove.h
rename to arch/arm/mach-orion/dove.h
index 320ed1696abd..9c62704a5edd 100644
--- a/arch/arm/mach-dove/dove.h
+++ b/arch/arm/mach-orion/dove.h
@@ -9,7 +9,7 @@
 #ifndef __ASM_ARCH_DOVE_H
 #define __ASM_ARCH_DOVE_H
 
-#include "irqs.h"
+#include "dove-irqs.h"
 
 /*
  * Marvell Dove address maps.
diff --git a/arch/arm/plat-orion/gpio.c b/arch/arm/mach-orion/gpio.c
similarity index 99%
rename from arch/arm/plat-orion/gpio.c
rename to arch/arm/mach-orion/gpio.c
index 26a531ebb6e9..8dc74e059fa2 100644
--- a/arch/arm/plat-orion/gpio.c
+++ b/arch/arm/mach-orion/gpio.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/gpio.c
- *
  * Marvell Orion SoC GPIO handling.
  *
  * This file is licensed under the terms of the GNU General Public
@@ -23,7 +21,7 @@
 #include <linux/of.h>
 #include <linux/of_irq.h>
 #include <linux/of_address.h>
-#include <plat/orion-gpio.h>
+#include "orion-gpio.h"
 
 /*
  * GPIO unit register offsets.
diff --git a/arch/arm/plat-orion/irq.c b/arch/arm/mach-orion/irq.c
similarity index 92%
rename from arch/arm/plat-orion/irq.c
rename to arch/arm/mach-orion/irq.c
index 5b63b28b00ac..7015d34b6f5b 100644
--- a/arch/arm/plat-orion/irq.c
+++ b/arch/arm/mach-orion/irq.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/irq.c
- *
  * Marvell Orion SoC IRQ handling.
  *
  * This file is licensed under the terms of the GNU General Public
@@ -16,8 +14,8 @@
 #include <linux/of_address.h>
 #include <linux/of_irq.h>
 #include <asm/exception.h>
-#include <plat/irq.h>
-#include <plat/orion-gpio.h>
+#include "irq.h"
+#include "orion-gpio.h"
 
 void __init orion_irq_init(unsigned int irq_start, void __iomem *maskaddr)
 {
diff --git a/arch/arm/plat-orion/include/plat/irq.h b/arch/arm/mach-orion/irq.h
similarity index 88%
rename from arch/arm/plat-orion/include/plat/irq.h
rename to arch/arm/mach-orion/irq.h
index 96be19e9bd93..892b95cfef47 100644
--- a/arch/arm/plat-orion/include/plat/irq.h
+++ b/arch/arm/mach-orion/irq.h
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/include/plat/irq.h
- *
  * Marvell Orion SoC IRQ handling.
  *
  * This file is licensed under the terms of the GNU General Public
diff --git a/arch/arm/mach-orion5x/kurobox_pro-setup.c b/arch/arm/mach-orion/kurobox_pro-setup.c
similarity index 99%
rename from arch/arm/mach-orion5x/kurobox_pro-setup.c
rename to arch/arm/mach-orion/kurobox_pro-setup.c
index 83d43cff4bd7..d936858b62f1 100644
--- a/arch/arm/mach-orion5x/kurobox_pro-setup.c
+++ b/arch/arm/mach-orion/kurobox_pro-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/kurobox_pro-setup.c
- *
  * Maintainer: Ronen Shitrit <rshitrit@marvell.com>
  *
  * This file is licensed under the terms of the GNU General Public
@@ -24,8 +22,8 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
 #include <linux/platform_data/mtd-orion_nand.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/mach-orion5x/ls_hgl-setup.c b/arch/arm/mach-orion/ls_hgl-setup.c
similarity index 98%
rename from arch/arm/mach-orion5x/ls_hgl-setup.c
rename to arch/arm/mach-orion/ls_hgl-setup.c
index 47ba6e0502f5..cce7696bd17a 100644
--- a/arch/arm/mach-orion5x/ls_hgl-setup.c
+++ b/arch/arm/mach-orion/ls_hgl-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/ls_hgl-setup.c
- *
  * Maintainer: Zhu Qingsen <zhuqs@cn.fujitsu.com>
  *
  * This file is licensed under the terms of the GNU General Public
@@ -21,8 +19,8 @@
 #include <linux/gpio.h>
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/plat-orion/mpp.c b/arch/arm/mach-orion/mpp.c
similarity index 95%
rename from arch/arm/plat-orion/mpp.c
rename to arch/arm/mach-orion/mpp.c
index 8a6880d528b6..d0736f22c824 100644
--- a/arch/arm/plat-orion/mpp.c
+++ b/arch/arm/mach-orion/mpp.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/mpp.c
- *
  * MPP functions for Marvell orion SoCs
  *
  * This file is licensed under the terms of the GNU General Public
@@ -13,8 +11,8 @@
 #include <linux/mbus.h>
 #include <linux/io.h>
 #include <linux/gpio.h>
-#include <plat/orion-gpio.h>
-#include <plat/mpp.h>
+#include "orion-gpio.h"
+#include "mpp.h"
 
 /* Address of the ith MPP control register */
 static __init void __iomem *mpp_ctrl_addr(unsigned int i,
diff --git a/arch/arm/plat-orion/include/plat/mpp.h b/arch/arm/mach-orion/mpp.h
similarity index 95%
rename from arch/arm/plat-orion/include/plat/mpp.h
rename to arch/arm/mach-orion/mpp.h
index 254552fee889..8100c82a2fa6 100644
--- a/arch/arm/plat-orion/include/plat/mpp.h
+++ b/arch/arm/mach-orion/mpp.h
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/include/plat/mpp.h
- *
  * Marvell Orion SoC MPP handling.
  *
  * This file is licensed under the terms of the GNU General Public
diff --git a/arch/arm/mach-orion5x/mv2120-setup.c b/arch/arm/mach-orion/mv2120-setup.c
similarity index 99%
rename from arch/arm/mach-orion5x/mv2120-setup.c
rename to arch/arm/mach-orion/mv2120-setup.c
index 2bf8ec75e908..9f001118e454 100644
--- a/arch/arm/mach-orion5x/mv2120-setup.c
+++ b/arch/arm/mach-orion/mv2120-setup.c
@@ -21,8 +21,8 @@
 #include <linux/ata_platform.h>
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 
 #define MV2120_NOR_BOOT_BASE	0xf4000000
diff --git a/arch/arm/mach-mv78xx0/bridge-regs.h b/arch/arm/mach-orion/mv78xx0-bridge-regs.h
similarity index 100%
rename from arch/arm/mach-mv78xx0/bridge-regs.h
rename to arch/arm/mach-orion/mv78xx0-bridge-regs.h
diff --git a/arch/arm/mach-mv78xx0/common.c b/arch/arm/mach-orion/mv78xx0-common.c
similarity index 98%
rename from arch/arm/mach-mv78xx0/common.c
rename to arch/arm/mach-orion/mv78xx0-common.c
index dd762d1b083f..b049b99527b7 100644
--- a/arch/arm/mach-mv78xx0/common.c
+++ b/arch/arm/mach-orion/mv78xx0-common.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-mv78xx0/common.c
- *
  * Core functions for Marvell MV78xx0 SoCs
  *
  * This file is licensed under the terms of the GNU General Public
@@ -21,12 +19,12 @@
 #include <asm/mach/time.h>
 #include <linux/platform_data/usb-ehci-orion.h>
 #include <linux/platform_data/mtd-orion_nand.h>
-#include <plat/time.h>
-#include <plat/common.h>
-#include <plat/addr-map.h>
-#include "mv78xx0.h"
-#include "bridge-regs.h"
+#include "time.h"
 #include "common.h"
+#include "addr-map.h"
+#include "mv78xx0.h"
+#include "mv78xx0-bridge-regs.h"
+#include "mv78xx0-common.h"
 
 static int get_tclk(void);
 
diff --git a/arch/arm/mach-mv78xx0/common.h b/arch/arm/mach-orion/mv78xx0-common.h
similarity index 97%
rename from arch/arm/mach-mv78xx0/common.h
rename to arch/arm/mach-orion/mv78xx0-common.h
index 6889af26077d..91164ef16030 100644
--- a/arch/arm/mach-mv78xx0/common.h
+++ b/arch/arm/mach-orion/mv78xx0-common.h
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-mv78xx0/common.h
- *
  * Core functions for Marvell MV78xx0 SoCs
  *
  * This file is licensed under the terms of the GNU General Public
diff --git a/arch/arm/mach-mv78xx0/irq.c b/arch/arm/mach-orion/mv78xx0-irq.c
similarity index 93%
rename from arch/arm/mach-mv78xx0/irq.c
rename to arch/arm/mach-orion/mv78xx0-irq.c
index 788569e960e1..e5a42c6fc7bf 100644
--- a/arch/arm/mach-mv78xx0/irq.c
+++ b/arch/arm/mach-orion/mv78xx0-irq.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-mv78xx0/irq.c
- *
  * MV78xx0 IRQ handling.
  *
  * This file is licensed under the terms of the GNU General Public
@@ -12,10 +10,10 @@
 #include <linux/irq.h>
 #include <linux/io.h>
 #include <asm/exception.h>
-#include <plat/orion-gpio.h>
-#include <plat/irq.h>
-#include "bridge-regs.h"
-#include "common.h"
+#include "orion-gpio.h"
+#include "irq.h"
+#include "mv78xx0-bridge-regs.h"
+#include "mv78xx0-common.h"
 
 static int __initdata gpio0_irqs[4] = {
 	IRQ_MV78XX0_GPIO_0_7,
diff --git a/arch/arm/mach-mv78xx0/irqs.h b/arch/arm/mach-orion/mv78xx0-irqs.h
similarity index 100%
rename from arch/arm/mach-mv78xx0/irqs.h
rename to arch/arm/mach-orion/mv78xx0-irqs.h
diff --git a/arch/arm/mach-mv78xx0/mpp.c b/arch/arm/mach-orion/mv78xx0-mpp.c
similarity index 91%
rename from arch/arm/mach-mv78xx0/mpp.c
rename to arch/arm/mach-orion/mv78xx0-mpp.c
index 72843c02e95a..2616b656d5f5 100644
--- a/arch/arm/mach-mv78xx0/mpp.c
+++ b/arch/arm/mach-orion/mv78xx0-mpp.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-mv78x00/mpp.c
- *
  * MPP functions for Marvell MV78x00 SoCs
  *
  * This file is licensed under the terms of the GNU General Public
@@ -11,10 +9,10 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/io.h>
-#include <plat/mpp.h>
-#include "mv78xx0.h"
-#include "common.h"
 #include "mpp.h"
+#include "mv78xx0.h"
+#include "mv78xx0-common.h"
+#include "mv78xx0-mpp.h"
 
 static unsigned int __init mv78xx0_variant(void)
 {
diff --git a/arch/arm/mach-mv78xx0/mpp.h b/arch/arm/mach-orion/mv78xx0-mpp.h
similarity index 99%
rename from arch/arm/mach-mv78xx0/mpp.h
rename to arch/arm/mach-orion/mv78xx0-mpp.h
index 3752302ae2ee..004f22d39c98 100644
--- a/arch/arm/mach-mv78xx0/mpp.h
+++ b/arch/arm/mach-orion/mv78xx0-mpp.h
@@ -1,6 +1,5 @@
 /*
- * linux/arch/arm/mach-mv78xx0/mpp.h -- Multi Purpose Pins
- *
+ * Multi Purpose Pins
  *
  * sebastien requiem <sebastien@requiem.fr>
  *
diff --git a/arch/arm/mach-mv78xx0/pcie.c b/arch/arm/mach-orion/mv78xx0-pcie.c
similarity index 98%
rename from arch/arm/mach-mv78xx0/pcie.c
rename to arch/arm/mach-orion/mv78xx0-pcie.c
index 636d84b40466..d852ec563879 100644
--- a/arch/arm/mach-mv78xx0/pcie.c
+++ b/arch/arm/mach-orion/mv78xx0-pcie.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-mv78xx0/pcie.c
- *
  * PCIe functions for Marvell MV78xx0 SoCs
  *
  * This file is licensed under the terms of the GNU General Public
@@ -14,9 +12,9 @@
 #include <video/vga.h>
 #include <asm/irq.h>
 #include <asm/mach/pci.h>
-#include <plat/pcie.h>
+#include "pcie.h"
 #include "mv78xx0.h"
-#include "common.h"
+#include "mv78xx0-common.h"
 
 #define MV78XX0_MBUS_PCIE_MEM_TARGET(port, lane) ((port) ? 8 : 4)
 #define MV78XX0_MBUS_PCIE_MEM_ATTR(port, lane)   (0xf8 & ~(0x10 << (lane)))
diff --git a/arch/arm/mach-mv78xx0/mv78xx0.h b/arch/arm/mach-orion/mv78xx0.h
similarity index 99%
rename from arch/arm/mach-mv78xx0/mv78xx0.h
rename to arch/arm/mach-orion/mv78xx0.h
index c1a9a1d1b295..e24dc03c2742 100644
--- a/arch/arm/mach-mv78xx0/mv78xx0.h
+++ b/arch/arm/mach-orion/mv78xx0.h
@@ -10,7 +10,7 @@
 #ifndef __ASM_ARCH_MV78XX0_H
 #define __ASM_ARCH_MV78XX0_H
 
-#include "irqs.h"
+#include "mv78xx0-irqs.h"
 
 /*
  * Marvell MV78xx0 address maps.
diff --git a/arch/arm/mach-orion5x/net2big-setup.c b/arch/arm/mach-orion/net2big-setup.c
similarity index 99%
rename from arch/arm/mach-orion5x/net2big-setup.c
rename to arch/arm/mach-orion/net2big-setup.c
index bf6be4cfd238..46eef09a0bad 100644
--- a/arch/arm/mach-orion5x/net2big-setup.c
+++ b/arch/arm/mach-orion/net2big-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/net2big-setup.c
- *
  * LaCie 2Big Network NAS setup
  *
  * Copyright (C) 2009 Simon Guinot <sguinot@lacie.com>
@@ -24,9 +22,9 @@
 #include <linux/delay.h>
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
-#include <plat/orion-gpio.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion-gpio.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/plat-orion/include/plat/orion-gpio.h b/arch/arm/mach-orion/orion-gpio.h
similarity index 94%
rename from arch/arm/plat-orion/include/plat/orion-gpio.h
rename to arch/arm/mach-orion/orion-gpio.h
index e856b073a9c8..5df030e391c9 100644
--- a/arch/arm/plat-orion/include/plat/orion-gpio.h
+++ b/arch/arm/mach-orion/orion-gpio.h
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/include/plat/orion-gpio.h
- *
  * Marvell Orion SoC GPIO handling.
  *
  * This file is licensed under the terms of the GNU General Public
diff --git a/arch/arm/mach-orion5x/bridge-regs.h b/arch/arm/mach-orion/orion5x-bridge-regs.h
similarity index 100%
rename from arch/arm/mach-orion5x/bridge-regs.h
rename to arch/arm/mach-orion/orion5x-bridge-regs.h
diff --git a/arch/arm/mach-orion5x/common.h b/arch/arm/mach-orion/orion5x-common.h
similarity index 100%
rename from arch/arm/mach-orion5x/common.h
rename to arch/arm/mach-orion/orion5x-common.h
diff --git a/arch/arm/mach-orion5x/irq.c b/arch/arm/mach-orion/orion5x-irq.c
similarity index 89%
rename from arch/arm/mach-orion5x/irq.c
rename to arch/arm/mach-orion/orion5x-irq.c
index ac4af2283bef..51ddf89dca00 100644
--- a/arch/arm/mach-orion5x/irq.c
+++ b/arch/arm/mach-orion/orion5x-irq.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/irq.c
- *
  * Core IRQ functions for Marvell Orion System On Chip
  *
  * Maintainer: Tzachi Perelstein <tzachi@marvell.com>
@@ -13,11 +11,11 @@
 #include <linux/kernel.h>
 #include <linux/irq.h>
 #include <linux/io.h>
-#include <plat/orion-gpio.h>
-#include <plat/irq.h>
+#include "orion-gpio.h"
+#include "irq.h"
 #include <asm/exception.h>
-#include "bridge-regs.h"
-#include "common.h"
+#include "orion5x-bridge-regs.h"
+#include "orion5x-common.h"
 
 static int __initdata gpio0_irqs[4] = {
 	IRQ_ORION5X_GPIO_0_7,
diff --git a/arch/arm/mach-orion5x/irqs.h b/arch/arm/mach-orion/orion5x-irqs.h
similarity index 100%
rename from arch/arm/mach-orion5x/irqs.h
rename to arch/arm/mach-orion/orion5x-irqs.h
diff --git a/arch/arm/mach-orion5x/mpp.c b/arch/arm/mach-orion/orion5x-mpp.c
similarity index 92%
rename from arch/arm/mach-orion5x/mpp.c
rename to arch/arm/mach-orion/orion5x-mpp.c
index 19ef18594415..512090fda50c 100644
--- a/arch/arm/mach-orion5x/mpp.c
+++ b/arch/arm/mach-orion/orion5x-mpp.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/mpp.c
- *
  * MPP functions for Marvell Orion 5x SoCs
  *
  * This file is licensed under the terms of the GNU General Public
@@ -11,10 +9,10 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/io.h>
-#include <plat/mpp.h>
-#include "orion5x.h"
 #include "mpp.h"
-#include "common.h"
+#include "orion5x.h"
+#include "orion5x-mpp.h"
+#include "orion5x-common.h"
 
 static unsigned int __init orion5x_variant(void)
 {
diff --git a/arch/arm/mach-orion5x/mpp.h b/arch/arm/mach-orion/orion5x-mpp.h
similarity index 100%
rename from arch/arm/mach-orion5x/mpp.h
rename to arch/arm/mach-orion/orion5x-mpp.h
diff --git a/arch/arm/mach-orion5x/pci.c b/arch/arm/mach-orion/orion5x-pci.c
similarity index 99%
rename from arch/arm/mach-orion5x/pci.c
rename to arch/arm/mach-orion/orion5x-pci.c
index 76951bfbacf5..cf7ed019b509 100644
--- a/arch/arm/mach-orion5x/pci.c
+++ b/arch/arm/mach-orion/orion5x-pci.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/pci.c
- *
  * PCI and PCIe functions for Marvell Orion System On Chip
  *
  * Maintainer: Tzachi Perelstein <tzachi@marvell.com>
@@ -17,9 +15,9 @@
 #include <video/vga.h>
 #include <asm/irq.h>
 #include <asm/mach/pci.h>
-#include <plat/pcie.h>
-#include <plat/addr-map.h>
-#include "common.h"
+#include "pcie.h"
+#include "addr-map.h"
+#include "orion5x-common.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/mach-orion5x/common.c b/arch/arm/mach-orion/orion5x.c
similarity index 99%
rename from arch/arm/mach-orion5x/common.c
rename to arch/arm/mach-orion/orion5x.c
index 7bcb41137bbf..d653c1713582 100644
--- a/arch/arm/mach-orion5x/common.c
+++ b/arch/arm/mach-orion/orion5x.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/common.c
- *
  * Core functions for Marvell Orion 5x SoCs
  *
  * Maintainer: Tzachi Perelstein <tzachi@marvell.com>
@@ -30,11 +28,11 @@
 #include <asm/mach/time.h>
 #include <linux/platform_data/mtd-orion_nand.h>
 #include <linux/platform_data/usb-ehci-orion.h>
-#include <plat/time.h>
-#include <plat/common.h>
-
-#include "bridge-regs.h"
+#include "time.h"
 #include "common.h"
+
+#include "orion5x-bridge-regs.h"
+#include "orion5x-common.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/mach-orion5x/orion5x.h b/arch/arm/mach-orion/orion5x.h
similarity index 99%
rename from arch/arm/mach-orion5x/orion5x.h
rename to arch/arm/mach-orion/orion5x.h
index 2b66120fba86..8eb42e7d6d14 100644
--- a/arch/arm/mach-orion5x/orion5x.h
+++ b/arch/arm/mach-orion/orion5x.h
@@ -12,7 +12,7 @@
 #ifndef __ASM_ARCH_ORION5X_H
 #define __ASM_ARCH_ORION5X_H
 
-#include "irqs.h"
+#include "orion5x-irqs.h"
 
 /*****************************************************************************
  * Orion Address Maps
diff --git a/arch/arm/plat-orion/pcie.c b/arch/arm/mach-orion/pcie.c
similarity index 98%
rename from arch/arm/plat-orion/pcie.c
rename to arch/arm/mach-orion/pcie.c
index 8b8c06d2e9c4..f5dd78160a81 100644
--- a/arch/arm/plat-orion/pcie.c
+++ b/arch/arm/mach-orion/pcie.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/pcie.c
- *
  * Marvell Orion SoC PCIe handling.
  *
  * This file is licensed under the terms of the GNU General Public
@@ -12,8 +10,8 @@
 #include <linux/pci.h>
 #include <linux/mbus.h>
 #include <asm/mach/pci.h>
-#include <plat/pcie.h>
-#include <plat/addr-map.h>
+#include "pcie.h"
+#include "addr-map.h"
 #include <linux/delay.h>
 
 /*
diff --git a/arch/arm/plat-orion/include/plat/pcie.h b/arch/arm/mach-orion/pcie.h
similarity index 96%
rename from arch/arm/plat-orion/include/plat/pcie.h
rename to arch/arm/mach-orion/pcie.h
index fe5b9e862747..d3dd6f2119c5 100644
--- a/arch/arm/plat-orion/include/plat/pcie.h
+++ b/arch/arm/mach-orion/pcie.h
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/include/plat/pcie.h
- *
  * Marvell Orion SoC PCIe handling.
  *
  * This file is licensed under the terms of the GNU General Public
diff --git a/arch/arm/mach-mv78xx0/rd78x00-masa-setup.c b/arch/arm/mach-orion/rd78x00-masa-setup.c
similarity index 96%
rename from arch/arm/mach-mv78xx0/rd78x00-masa-setup.c
rename to arch/arm/mach-orion/rd78x00-masa-setup.c
index 308ab71ec822..9405bfe5da61 100644
--- a/arch/arm/mach-mv78xx0/rd78x00-masa-setup.c
+++ b/arch/arm/mach-orion/rd78x00-masa-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-mv78x00/rd78x00-masa-setup.c
- *
  * Marvell RD-78x00-mASA Development Board Setup
  *
  * This file is licensed under the terms of the GNU General Public
@@ -17,7 +15,7 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include "mv78xx0.h"
-#include "common.h"
+#include "mv78xx0-common.h"
 
 static struct mv643xx_eth_platform_data rd78x00_masa_ge00_data = {
 	.phy_addr	= MV643XX_ETH_PHY_ADDR(8),
diff --git a/arch/arm/mach-orion5x/rd88f5181l-fxo-setup.c b/arch/arm/mach-orion/rd88f5181l-fxo-setup.c
similarity index 98%
rename from arch/arm/mach-orion5x/rd88f5181l-fxo-setup.c
rename to arch/arm/mach-orion/rd88f5181l-fxo-setup.c
index c65ab7db36ad..3077fc122acc 100644
--- a/arch/arm/mach-orion5x/rd88f5181l-fxo-setup.c
+++ b/arch/arm/mach-orion/rd88f5181l-fxo-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/rd88f5181l-fxo-setup.c
- *
  * Marvell Orion-VoIP FXO Reference Design Setup
  *
  * This file is licensed under the terms of the GNU General Public
@@ -20,8 +18,8 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/mach-orion5x/rd88f5181l-ge-setup.c b/arch/arm/mach-orion/rd88f5181l-ge-setup.c
similarity index 98%
rename from arch/arm/mach-orion5x/rd88f5181l-ge-setup.c
rename to arch/arm/mach-orion/rd88f5181l-ge-setup.c
index 76b8138d9d79..38e5db3cef5c 100644
--- a/arch/arm/mach-orion5x/rd88f5181l-ge-setup.c
+++ b/arch/arm/mach-orion/rd88f5181l-ge-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/rd88f5181l-ge-setup.c
- *
  * Marvell Orion-VoIP GE Reference Design Setup
  *
  * This file is licensed under the terms of the GNU General Public
@@ -21,8 +19,8 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/mach-orion5x/rd88f5182-setup.c b/arch/arm/mach-orion/rd88f5182-setup.c
similarity index 98%
rename from arch/arm/mach-orion5x/rd88f5182-setup.c
rename to arch/arm/mach-orion/rd88f5182-setup.c
index fe3e67c81fb8..057df4f76299 100644
--- a/arch/arm/mach-orion5x/rd88f5182-setup.c
+++ b/arch/arm/mach-orion/rd88f5182-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/rd88f5182-setup.c
- *
  * Marvell Orion-NAS Reference Design Setup
  *
  * Maintainer: Ronen Shitrit <rshitrit@marvell.com>
@@ -23,8 +21,8 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/mach-orion5x/rd88f6183ap-ge-setup.c b/arch/arm/mach-orion/rd88f6183ap-ge-setup.c
similarity index 97%
rename from arch/arm/mach-orion5x/rd88f6183ap-ge-setup.c
rename to arch/arm/mach-orion/rd88f6183ap-ge-setup.c
index 5f388a1ed1e4..d9a2dc4ff8be 100644
--- a/arch/arm/mach-orion5x/rd88f6183ap-ge-setup.c
+++ b/arch/arm/mach-orion/rd88f6183ap-ge-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/rd88f6183-ap-ge-setup.c
- *
  * Marvell Orion-1-90 AP GE Reference Design Setup
  *
  * This file is licensed under the terms of the GNU General Public
@@ -22,7 +20,7 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
-#include "common.h"
+#include "orion5x-common.h"
 #include "orion5x.h"
 
 static struct mv643xx_eth_platform_data rd88f6183ap_ge_eth_data = {
diff --git a/arch/arm/mach-orion5x/terastation_pro2-setup.c b/arch/arm/mach-orion/terastation_pro2-setup.c
similarity index 99%
rename from arch/arm/mach-orion5x/terastation_pro2-setup.c
rename to arch/arm/mach-orion/terastation_pro2-setup.c
index 23a5521c6833..6f1e5a6f22bb 100644
--- a/arch/arm/mach-orion5x/terastation_pro2-setup.c
+++ b/arch/arm/mach-orion/terastation_pro2-setup.c
@@ -18,8 +18,8 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 
 /*****************************************************************************
diff --git a/arch/arm/plat-orion/time.c b/arch/arm/mach-orion/time.c
similarity index 99%
rename from arch/arm/plat-orion/time.c
rename to arch/arm/mach-orion/time.c
index ffb93db68e9c..ce6da19a3534 100644
--- a/arch/arm/plat-orion/time.c
+++ b/arch/arm/mach-orion/time.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/time.c
- *
  * Marvell Orion SoC timer handling.
  *
  * This file is licensed under the terms of the GNU General Public
@@ -17,7 +15,7 @@
 #include <linux/interrupt.h>
 #include <linux/irq.h>
 #include <linux/sched_clock.h>
-#include <plat/time.h>
+#include "time.h"
 #include <asm/delay.h>
 
 /*
diff --git a/arch/arm/plat-orion/include/plat/time.h b/arch/arm/mach-orion/time.h
similarity index 90%
rename from arch/arm/plat-orion/include/plat/time.h
rename to arch/arm/mach-orion/time.h
index 07527e417c62..415cfa052b2d 100644
--- a/arch/arm/plat-orion/include/plat/time.h
+++ b/arch/arm/mach-orion/time.h
@@ -1,6 +1,4 @@
 /*
- * arch/arm/plat-orion/include/plat/time.h
- *
  * Marvell Orion SoC time handling.
  *
  * This file is licensed under the terms of the GNU General Public
diff --git a/arch/arm/mach-orion5x/ts209-setup.c b/arch/arm/mach-orion/ts209-setup.c
similarity index 99%
rename from arch/arm/mach-orion5x/ts209-setup.c
rename to arch/arm/mach-orion/ts209-setup.c
index bab8ba0e01ab..a77f3dcb3aa7 100644
--- a/arch/arm/mach-orion5x/ts209-setup.c
+++ b/arch/arm/mach-orion/ts209-setup.c
@@ -21,8 +21,8 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 #include "tsx09-common.h"
 
diff --git a/arch/arm/mach-orion5x/ts409-setup.c b/arch/arm/mach-orion/ts409-setup.c
similarity index 99%
rename from arch/arm/mach-orion5x/ts409-setup.c
rename to arch/arm/mach-orion/ts409-setup.c
index 6f60dc1dfa22..4e4b416cfa52 100644
--- a/arch/arm/mach-orion5x/ts409-setup.c
+++ b/arch/arm/mach-orion/ts409-setup.c
@@ -23,8 +23,8 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 #include "tsx09-common.h"
 
diff --git a/arch/arm/mach-orion5x/ts78xx-fpga.h b/arch/arm/mach-orion/ts78xx-fpga.h
similarity index 100%
rename from arch/arm/mach-orion5x/ts78xx-fpga.h
rename to arch/arm/mach-orion/ts78xx-fpga.h
diff --git a/arch/arm/mach-orion5x/ts78xx-setup.c b/arch/arm/mach-orion/ts78xx-setup.c
similarity index 99%
rename from arch/arm/mach-orion5x/ts78xx-setup.c
rename to arch/arm/mach-orion/ts78xx-setup.c
index fda9b75c3a33..6f67d03f0be3 100644
--- a/arch/arm/mach-orion5x/ts78xx-setup.c
+++ b/arch/arm/mach-orion/ts78xx-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/ts78xx-setup.c
- *
  * Maintainer: Alexander Clouter <alex@digriz.org.uk>
  *
  * This file is licensed under the terms of the GNU General Public
@@ -21,8 +19,8 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 #include "orion5x.h"
 #include "ts78xx-fpga.h"
 
diff --git a/arch/arm/mach-orion5x/tsx09-common.c b/arch/arm/mach-orion/tsx09-common.c
similarity index 97%
rename from arch/arm/mach-orion5x/tsx09-common.c
rename to arch/arm/mach-orion/tsx09-common.c
index 099e6fdfa8e6..6ac62f58c160 100644
--- a/arch/arm/mach-orion5x/tsx09-common.c
+++ b/arch/arm/mach-orion/tsx09-common.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * QNAP TS-x09 Boards common functions
- *
  * Maintainers: Lennert Buytenhek <buytenh@marvell.com>
  *		Byron Bradley <byron.bbradley@gmail.com>
  */
@@ -13,7 +11,7 @@
 #include <linux/serial_reg.h>
 #include "orion5x.h"
 #include "tsx09-common.h"
-#include "common.h"
+#include "orion5x-common.h"
 
 /*****************************************************************************
  * QNAP TS-x09 specific power off method via UART1-attached PIC
diff --git a/arch/arm/mach-orion5x/tsx09-common.h b/arch/arm/mach-orion/tsx09-common.h
similarity index 100%
rename from arch/arm/mach-orion5x/tsx09-common.h
rename to arch/arm/mach-orion/tsx09-common.h
diff --git a/arch/arm/mach-orion5x/wnr854t-setup.c b/arch/arm/mach-orion/wnr854t-setup.c
similarity index 98%
rename from arch/arm/mach-orion5x/wnr854t-setup.c
rename to arch/arm/mach-orion/wnr854t-setup.c
index 83589a28a491..382ac84e82a8 100644
--- a/arch/arm/mach-orion5x/wnr854t-setup.c
+++ b/arch/arm/mach-orion/wnr854t-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/wnr854t-setup.c
- *
  * This file is licensed under the terms of the GNU General Public
  * License version 2.  This program is licensed "as is" without any
  * warranty of any kind, whether express or implied.
@@ -20,8 +18,8 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
 #include "orion5x.h"
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 
 static unsigned int wnr854t_mpp_modes[] __initdata = {
 	MPP0_GPIO,		/* Power LED green (0=on) */
diff --git a/arch/arm/mach-orion5x/wrt350n-v2-setup.c b/arch/arm/mach-orion/wrt350n-v2-setup.c
similarity index 98%
rename from arch/arm/mach-orion5x/wrt350n-v2-setup.c
rename to arch/arm/mach-orion/wrt350n-v2-setup.c
index cea08d4a2597..db8abe6be6c9 100644
--- a/arch/arm/mach-orion5x/wrt350n-v2-setup.c
+++ b/arch/arm/mach-orion/wrt350n-v2-setup.c
@@ -1,6 +1,4 @@
 /*
- * arch/arm/mach-orion5x/wrt350n-v2-setup.c
- *
  * This file is licensed under the terms of the GNU General Public
  * License version 2.  This program is licensed "as is" without any
  * warranty of any kind, whether express or implied.
@@ -23,8 +21,8 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/pci.h>
 #include "orion5x.h"
-#include "common.h"
-#include "mpp.h"
+#include "orion5x-common.h"
+#include "orion5x-mpp.h"
 
 /*
  * LEDs attached to GPIO
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
