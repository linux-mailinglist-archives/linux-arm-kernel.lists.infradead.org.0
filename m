Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C863316ED58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:59:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SjS8OGbPObjPw4ksn5TUBtMNTILUF8biOsHsi1nPhFE=; b=qpjlkTupXVWRRM
	yLiLX3h1C2EIF6rbt0xYVIRsUo0xIpNO6KRQytIltr/MXLOzTvD01oAYHdTxgWZBvhNY8esDQg9ch
	QJDC/LtgnTme6a7ki+OlIQ3gxsq73GvMmCsSxt33hfQZqfNhYQ5PkbkbjdAqlnLASC9E5Apxuoj4k
	GczFx91XcLIEi/zgmjhc9ket8RtIzXoLodS2Ar//pD6W9IbTQjSvgg1Ur9Pc9NeHHMu+/ge/eCI+K
	7zOVJphe9RBAHrrMyZKEMPuRONR1kYeK1K1h647PNH/TdyWPYjZ5oNiUrNeeVNKpAOQYM27VlCYpr
	e5U/RSo6TwxRHAG6Jlvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eUO-0003qF-EI; Tue, 25 Feb 2020 17:59:24 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eTr-0003bh-KL
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:58:55 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 34DD222FE5;
 Tue, 25 Feb 2020 18:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582653523;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=fr+0B7W9xH2QCkDVpd4VUGfL0j1xJWhZoZDqvuIhvvQ=;
 b=EcenmqpXyoywJ0+m7potpIspYNgzofKhbHsYbw9RnTCRO851mtgxbjI7XAoD1Urbe8DsO6
 3bltVYzptaZDb5C/r+wGCNuWGKkzI1JLGiA25Z6CV2ccm49F7L95FFTcvpo6jqgHuxKiNf
 QYACVmwOow4AW2PHhFPOacvodzkl1Yk=
From: Michael Walle <michael@walle.cc>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] arm64: dts: ls1028a: various sl28 fixes/updates
Date: Tue, 25 Feb 2020 18:57:53 +0100
Message-Id: <20200225175756.29508-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 34DD222FE5
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.957]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[8]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_095851_819770_F6F301E9 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this patchset contains device tree fixes and updates for the Kontron
SMARC-sAL28 board.

Michael Walle (3):
  arm64: dts: ls1028a: sl28: fix on-board EEPROMS
  arm64: dts: ls1028a: sl28: expose switch ports in KBox A-230-LS
  arm64: dts: ls1028a: sl28: add support for variant 2

 arch/arm64/boot/dts/freescale/Makefile        |  1 +
 .../fsl-ls1028a-kontron-kbox-a-230-ls.dts     | 66 +++++++++++++++++-
 .../fsl-ls1028a-kontron-sl28-var2.dts         | 68 +++++++++++++++++++
 .../fsl-ls1028a-kontron-sl28-var3-ads2.dts    | 14 ++--
 .../freescale/fsl-ls1028a-kontron-sl28.dts    |  6 ++
 5 files changed, 146 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
