Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 425981205F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:41:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mQm7P1To/sERIpd9MIm02TQPLvLRPEJQAkxLIM8lQTU=; b=ZU+J8NqOpbuAyR
	7ZVtGwe40sPLoYDFCXKoZWz6qDoNXYx+C2DyOL7kOCVUT+aCjmMiJWl9kykmpmavxE7w23+q/0km/
	45NKmDUzLQ6ynuzjWS012+oK7wthdzkvX6MWxOTsACKbrrQPfa8DFBwnfnVyRbLk40yY3raPHwVB2
	lZZ+xoR/0CNhCsqRVoi2i2zXnFk5FJEfNLNRrLArw2pXWBZUCXpX8T2e1dgGl98CFvBGLOnLVszfa
	4Y+TgXVSbwhf0tXAZ2gPl2+5m93a8O8vbDxi44p/PbFL1hGYHAvFfbIWpXlfbzkVaVXFDlUoE82aw
	lev6Y6NlciIN0G8xA7CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpgL-00071X-HK; Mon, 16 Dec 2019 12:41:01 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpgB-00070f-7p
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 12:40:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n5rs6qM1/kmDUBfaq8VYwVs+tBp90x53+4rY9eR3kxE=; b=f5b5ucMkKGy6L04Z3acnsyR/G
 nSSZV52/X64+SLRGzjAwKmET5tO/M4Jeg8sJyULlHftuOQbgrLdNRFqjyss5M3rnlp+H1h8NpMNGV
 HdMk2wubvTe3B5dWZePVSmzMpCSjHLyinrpv8yK35HtYSHr1Vx5pOg2R+uZOqahuM05NJT9LNF/bm
 rKRY49y3LZaeOM3iE1H4wnQ7/Qc0OJfaxKRLaIVuLmWM07JB8M/GqoVaz7+V02sJ4q7Jqns5Li70J
 MPN7IdmW+wddFCp9O18qqWjs8TlZZnWzTJF78LBIv/q12mzTtFSFHOdnmSzpml90jY3NyI0d4vxr+
 EhDhG923A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:53762)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1igpg3-0007Q4-Fw; Mon, 16 Dec 2019 12:40:43 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1igpg2-0002P5-5S; Mon, 16 Dec 2019 12:40:42 +0000
Date: Mon, 16 Dec 2019 12:40:42 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 0/2] Add support for Solidrun CEX7 platforms
Message-ID: <20191216124042.GH25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_044051_282681_36817EF7 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jon Nettleton <jon@solid-run.com>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Rabeeh Khoury <rabeeh@solid-run.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series adds support for the Solidrun Clearfog CX and Honeycomb
platforms that various developers have access to.

v2: fix review comments.

 arch/arm64/boot/dts/freescale/Makefile             |   2 +
 .../arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi | 127 +++++++++++++++++++++
 .../boot/dts/freescale/fsl-lx2160a-clearfog-cx.dts |  15 +++
 .../dts/freescale/fsl-lx2160a-clearfog-itx.dtsi    |  57 +++++++++
 .../boot/dts/freescale/fsl-lx2160a-honeycomb.dts   |  15 +++
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     |  10 ++
 6 files changed, 226 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-cx.dts
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-lx2160a-honeycomb.dts

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
