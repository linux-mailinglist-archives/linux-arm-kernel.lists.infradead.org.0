Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F975CD2E6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i/9ZlcSWHQReHwWyvRWI6cVyrHRhHrrZzQXc2Y7V/FQ=; b=Fn7KqdjOy4DjhtyCIeSBCQYZAa
	ZyFGDUB2veHZPgh6hsSr++zAGhsPrbzz2gkX72l6iOc4pbZOq4+XDXj+6mtDJxBb+MjHNEh46r6RU
	uhrhr88+RtJZ2I6eia0ovAe3MUPEA+ly7KUPAOEJislSTkJDLBDIoXYhYMjsMYFBKOkhtGm+g6h13
	MtSH//6L5pszsPC7SCGmN/0cFtPt8JZJc7ovs+DXBSOqo9zQfoUjKoFAH8uc/RD3KAB0cNfMhsTt2
	hpA7ZJ705kUG3xyw7jEjU38OwkcCkakgaePSxPoxys3wd47FwNmapsjJdCYHNPUMWDNqy6knKLzhf
	6VzJ+tvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8Vy-0002pL-T8; Sun, 06 Oct 2019 15:32:06 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8T8-0007sR-4j
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570375741;
 bh=zsRxR3IHUAe+a4FnhRTcZN5Fxop1p9dlP5W0ADx11B8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=WLLtdTvTJVSL+C7Sg3DLZogPXOLnF+MYv7CISZw0w9AhGBQQkXBEHh3CiAi/fMM9i
 fQ4PYFejYVG2Qv18ROp4i/CZqOE87lJcyPttX35Zk09NI+rYu3ce8G8nYJwsqsl7+c
 OiC6nrqCpggfnUg/Yn5y7zVnS8J5EydkiV4RFMS0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.116]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MVNB1-1iiTAw0xd9-00SNc1; Sun, 06 Oct 2019 17:29:01 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V4 09/10] arm64: dts: broadcom: Add reference to RPi 4 B
Date: Sun,  6 Oct 2019 17:28:27 +0200
Message-Id: <1570375708-26965-10-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:ON0gA9PtGkXWmbxKZqc2fzs/pNiWrzcX2ZwiwfEr8L7aCP6Vraf
 MZkposixV9lKWtxDmtArGEtW3UEjm7a8PIm8k4CLfsKgVT+mjgccEVQ0l/8UphnwlQYaYu/
 loBqdLssKqpRC0NqlIUk6UXRRQfiPkZeuQVO6nmbPo0fA0VhzjCCGDhwDaK8tpt0qNHboMa
 g+0SJXehK1sEL8xls3SOw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cyR+OKiBsl4=:94ywcr6Zbb8TdryMYPN/f0
 yy4QaSlJETqCMaX6TaQ8d9Dih02qRCgksOtGfF4/qoZ+EW4DVb19ot/LGeMW+3jsux/MNWGFB
 zfmzKz75jlY0K62Inhkv+iY5hdEjjuhpUdMYL4LfRYJX5Mg2rraV/tytrNu4T7Suqis9S74d1
 IVAMCmUDLbtZm/Av5Y5rWweGVEXhZESl+fNM5nLo6JnBayStg6xaabRu34lHgBRh3z2tAG4wd
 Oe6ESFIk+hRhh6X8zspv3Dj68JAK5wFNgaeJukx73zJVMZsQuo/5egXmqYqnNY1Xmz8mczISA
 FVXkosdmgvWEik8z+fjDTlkNRpgy9PzTgMqc2PAI+A1zC0KUACa7mZyiT7XUTSJJNu4oFMByf
 ImkBWcg8ME49HY2sCj+Jp68XpRfiuw5Ep99D/w1hfMzelQeKjl5J7GmWorZj4XyhxVq7jvfDs
 dZXO3Qo4FBYcjQcUF3yEGQT64Ey+WjUDSfU+tBrq1tXYIx4mMnUpLPMfofL8t0HxTlOgkFa8t
 AN9G6uO7i7P1pQ12DwQNXu0vuOxGLOrpaJw/K3sQxt69uj/YohXf1n7XRtqFAqqpmD6Ki97aH
 27ZA/zFhNlFh+nx70AasuLf/p0Iy9UQmVCvad6DE8sgZDp3Vb19/ueORYarffg4mKRhJEqNEZ
 1EAHZCObu1HLcsMp04ABq6zv/Y27QRKEi+2KWgfiIoRIAR9wMNUhTwFGXBq/WonutKnMhFlg3
 db+1WjtuE516p884U/M8dpUapJksckKa9/FQquW9K4AcFKNChJRbdL1WW83hyFSjOM6ADshKf
 OXpqKppGs7OLMxIk97/FdH/nXSP1L4bjtO+tZMpVgY85fuo/6M7jUX4h6v1Z/W/6F+ve9UJRz
 0YaQ+L23rP2vc4vXla5Zg5t6qLMV3nW0OHj3WHwYa8OhZF8NCeoXiGg8sg9AaCPgFvKjx/1JR
 eIUQGRGMxGK4Ql7VcDiaghHIIXIIxzJVZPprT1xKamKSp25dY863zQRGq4k+Mve5WI5ZcxF4r
 rVx65Mu6kauX5atmAvT5EAWl2pUriASTagEMXG11bq39CKcvl5jV9bwIexWozV7rKNjnSbCum
 fsR6t5hzUhQaGHgwYwMoche8O2rzMYj0OKdAp7+hoVPFU3lUhCctdqF1r5kHr9VvhUbS8eIjQ
 O6nqbtZJLfMsubFb5nB607FhdX5F8ZlSY8u8k6U8+55oy4mNWgJJ7EJte3h8fdTmO5SppiIf1
 7o08mAP7lD3Q8ykESB2WfYD8vKrFBHOpxxtmRjw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_082910_474832_45FD173E 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-bluetooth@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a reference to the dts of the Raspberry Pi 4 B,
so we don't need to maintain the content in arm64.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm64/boot/dts/broadcom/Makefile            | 3 ++-
 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts | 2 ++
 2 files changed, 4 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index d1d31cc..cb7de8d 100644
--- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
-dtb-$(CONFIG_ARCH_BCM2835) += bcm2837-rpi-3-a-plus.dtb \
+dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-4-b.dtb \
+			      bcm2837-rpi-3-a-plus.dtb \
 			      bcm2837-rpi-3-b.dtb \
 			      bcm2837-rpi-3-b-plus.dtb \
 			      bcm2837-rpi-cm3-io3.dtb
diff --git a/arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts b/arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts
new file mode 100644
index 0000000..d24c536
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts
@@ -0,0 +1,2 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "arm/bcm2711-rpi-4-b.dts"
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
