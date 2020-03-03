Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF487177DAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:44:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LQQQzL5hHeWP9ng/SSfe2nBH/7WUFBwLEV/K3AocRho=; b=ZZppUBDwVDLIwW
	2iN/uXG5HFEStrULf1imnniRmaH2gIY//moZUnmtk9ziqki4L0jFqo+Y9HCOPP+GOdcN06LNJpHEI
	zZSCahSBqJnklxBdDBwl1vPMhO2ZuGg38Q0DCv2fmMeUxFX/i75rJNpn+uCuP0zQyE7w3KagQSuB0
	jqTPwmGVEfgJEeXWC3N+HhvZOUnnCgak0ozbM0RaMJUrjcibzEWNfW1F3CxkbB0TXp4tpqExGcR6d
	2lk9V017+WY7f2dU3FQ/870gqcmy6tEevId3nNIqvkfk2oJeEMsl1NJL6pIzRpOsRP74LEzEfZl9C
	QUVLEMNscpMd+bhKmbCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9BaE-0006vV-8L; Tue, 03 Mar 2020 17:43:54 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BZn-0006jC-AJ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:43:29 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id D7C1C231D9;
 Tue,  3 Mar 2020 18:43:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583257399;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=/SS0Mpitdw47OknrMdnyVNGnPtzEQcsJ+qOlq2fN2jQ=;
 b=EMPB6VLynHXmYFxKp/ONkM14baAzs5ZaCvqFD/iFs09cuXslOkpOh9Iw3zyk+Pt/xYIfXK
 0fkrfGlazORExVvOcTQEwlC+8NmN3+DP/MFu53+G/CkM9/Zj+jA8EgeHYcN2D1fCR5681+
 /6RGigOxmRBKGX4DyhS21DvMk2DCCc4=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/9] tty: serial: fsl_lpuart various fixes and LS1028A
 support
Date: Tue,  3 Mar 2020 18:42:57 +0100
Message-Id: <20200303174306.6015-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: D7C1C231D9
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.504]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[14]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_094327_507593_C964C7D4 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Yuan Yao <yao.yuan@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These are various fixes for problems I found during development of the
LS1028A support for the LPUART.

Also, I'm not sure if this series should be split between the "tty:
serial: fsl_lpuart" patches and the devicetree patches. So unless
someone tell me otherwise I keep them together to avoid mention any
dependencies.

Changes since v2:
Changed DMA channel request handling. Spotted by Rob Herring. Thanks.

Modified patches:
  tty: serial: fsl_lpuart: handle EPROBE_DEFER for DMA

Changes since v1:
DMA support fixes.

New patches:
  tty: serial: fsl_lpuart: fix DMA mapping
  arm64: dts: ls1028a: add "fsl,vf610-edma" compatible

Modified patches:
  arm64: dts: ls1028a: add missing LPUART nodes
   - add dma phandles

Michael Walle (9):
  Revert "tty: serial: fsl_lpuart: drop EARLYCON_DECLARE"
  tty: serial: fsl_lpuart: free IDs allocated by IDA
  tty: serial: fsl_lpuart: handle EPROBE_DEFER for DMA
  tty: serial: fsl_lpuart: fix DMA mapping
  dt-bindings: serial: lpuart: add ls1028a compatibility
  tty: serial: fsl_lpuart: add LS1028A support
  tty: serial: fsl_lpuart: add LS1028A earlycon support
  arm64: dts: ls1028a: add "fsl,vf610-edma" compatible
  arm64: dts: ls1028a: add missing LPUART nodes

 .../devicetree/bindings/serial/fsl-lpuart.txt |  10 +-
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |  75 +++++-
 drivers/tty/serial/fsl_lpuart.c               | 251 ++++++++++++------
 3 files changed, 255 insertions(+), 81 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
