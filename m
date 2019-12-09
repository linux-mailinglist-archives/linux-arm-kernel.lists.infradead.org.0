Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F18117BA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 00:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RfcBxoAfHK6tGe3/BFoOuW8xCsYLEhtn5on5MxD/ePk=; b=qDn2gt1eIut2Hu
	/QbT9DnwrJmHrMPvo/XU63Mpst0z/9edQuYwxIDNVd2iDfcNQoa80jfs1uBEp0+MDVT/fxLIMP29W
	DssVvP+bjQt0CPoiwEwklAToOSCpsrV+p3OGuXT/DfzGF2R6dI0Gxx8KJ2B62xG9JJUVY1T2zEzoG
	qUimtISWwWEv/Bv/tk47qq0v6PQHkvt7QpmGEJTAmuG+zMrek5EJs6ErvSUUq5S4QGJJJDOdJA+pO
	68ExHIHpuchXl3VmSLAixnscAZcvfh3rn6ncYVkkzZ2AEP9dV27vyLfz/DOaoOtKVpFz/1wQkV/SZ
	uuxW7rA2Dvpn51YFSy/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieShl-00083l-6I; Mon, 09 Dec 2019 23:44:41 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieShG-0007oq-RD
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 23:44:14 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id B74DB2304C;
 Tue, 10 Dec 2019 00:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1575935046;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=9SMg2Cu1zKUbHhX0qMmHr+reE8G5Mnme8ftIO8ll3Tc=;
 b=c3kwm7J3TcRR4lGnhx6RbZC8PGIWULFe1MzSkuTgZuYJjskdkJXNfVRxFkjZuDwt9advkR
 iUdRVYCJoE9zVYzZw3tRuFXLMrvgoAR2MsRohzbTmCH5dR3zW3w3ng7baP9zian0gEztox
 d2wtzqceGFA+GyCD6YLXvLjZttYuk44=
From: Michael Walle <michael@walle.cc>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/5] ls1028a: dts fixes and new board support
Date: Tue, 10 Dec 2019 00:43:45 +0100
Message-Id: <20191209234350.18994-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: B74DB2304C
X-Spamd-Result: default: False [6.40 / 15.00]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; BROKEN_CONTENT_TYPE(1.50)[];
 RCPT_COUNT_SEVEN(0.00)[9]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 ARC_NA(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM(-0.00)[-0.735];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_154413_016709_3A780E44 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Yuantian Tang <andy.tang@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds basic support for the Kontron SMARC-sAL28 board. It also
adds missing nodes to the ls1028a base device tree which are used by the
board.

changes since v1:
 - dropped "arm64: dts: ls1028a: add FlexSPI node" in favor of:
   https://lore.kernel.org/lkml/1575457098-18368-2-git-send-email-Ashish.Kumar@nxp.com/
   Thus, this series now depends on that patch
 - better commit message for the TMU patch
 - added fixes tag to the TMU patch
 - document the LS1028A evaluation boards compatible strings
 - document the Kontron sl28 boards compatible strings
 - fix node names of the sl28 device tree(s)
 - removed device specific compatible string of the spi flash
 - rebased the patch series
 - integrate the RGMII configuration of the AR8031 PHY since the binding is
   now already upstream

This patchseries depends on:
 - [Patch v2 1/5] arm64: dts: ls1028a: Add FlexSPI support
   https://lore.kernel.org/lkml/1575457098-18368-2-git-send-email-Ashish.Kumar@nxp.com/
 - [PATCH v2 1/2] dt-bindings: clock: document the fsl-sai driver
   https://lore.kernel.org/lkml/20191209233305.18619-1-michael@walle.cc/

This patchseries superseeds:
 - [PATCH 0/4] ls1028a: dts fixes and new board support
   https://lore.kernel.org/lkml/20191123201317.25861-1-michael@walle.cc/
 - [PATCH] arm64: dts: sl28: configure the RGMII PHY
   https://lore.kernel.org/lkml/20191123202624.28093-1-michael@walle.cc/

Michael Walle (5):
  arm64: dts: ls1028a: fix typo in TMU calibration data
  arm64: dts: ls1028a: add missing sai nodes
  dt-bindings: arm: fsl: add LS1028A based boards
  dt-bindings: arm: fsl: add Kontron sl28 boards
  arm64: dts: freescale: add Kontron sl28 support

 .../devicetree/bindings/arm/fsl.yaml          |  45 +++++
 arch/arm64/boot/dts/freescale/Makefile        |   4 +
 .../fsl-ls1028a-kontron-kbox-a-230-ls.dts     |  27 +++
 .../fsl-ls1028a-kontron-sl28-var3-ads2.dts    | 106 +++++++++++
 .../fsl-ls1028a-kontron-sl28-var4.dts         |  50 +++++
 .../freescale/fsl-ls1028a-kontron-sl28.dts    | 174 ++++++++++++++++++
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |  44 ++++-
 7 files changed, 449 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
