Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C4A116CC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 13:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=70tFhzkcV7NDYwsH0JqRtb17TWkfPN6xQk+ucyigqMc=; b=XIUublwhlrafcR
	jPGVdqIkx97HNrXAOGMn6pQVrKiV0Lp+zuGqsHUTl7ybAs4GmEPpmCOHoWFv+4p3/CIHQcRosg+3E
	NnVW1MY4vTca30vCTYRPQmQxpdddHnwU6K3NqkVh521OCUZtkR9IcW0L1oRNlc7VlIOzYRJNmRO3Y
	+WcnQ46ORexZbMKbDErx+48JDy7ce6Lzm4JC+m6eWVTWgBNLkJZKR9Wvzkw7TvTiK3ZKwGWdZmw4L
	9zfyR4Gf2oActFhnPUMSAo3W1K/8RCQ/rrBBW/DI1sSMeQqhttEJLBWJ7+W9SPauFDInP7wPnyTEo
	+VcUR9Kl17xvijXcsXRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieHiM-00052k-OB; Mon, 09 Dec 2019 12:00:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieHiG-00051Y-8D
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 12:00:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4YwiwvH475Z3NuX8CMnfHl5RhAhrmqF/AqKk4N2sZNY=; b=rV9YVbIy2lBBpoSQEO/WXxedh
 S3WYAwXJzII1a20UL5DOZ0zgWt2aBJkCYP9VncMPDgdTQT16NLCck22X28dNyeTFyZtV+mCkFiXHP
 9tWi4d/aSO9fZdVQQtyJNeqwNJnfGXceh5ZHoURc/Q0cd5EDtm1iZRTuJ7GWEUVTf1ec1raWlUyoB
 DlAHxV97htRgELZKaqMsPw1gwbOgKhBtWOL76JxUuTCU5jp3CG+QidEQVmYTjzwpf8z/wqq7TNrhO
 3jlB/kxexhX78wvuOKWNi0DYYmKmvkbkbtsT1TLWsLJw5KFgc/Q9UPbFgNmqdcwAc7ciCI6iXwGoS
 RljTTj7EA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:50584)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ieHi2-0002na-W3; Mon, 09 Dec 2019 12:00:15 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ieHhy-0003c3-Ol; Mon, 09 Dec 2019 12:00:10 +0000
Date: Mon, 9 Dec 2019 12:00:10 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 0/2] Add support for Solidrun CEX7 platforms
Message-ID: <20191209120010.GG25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_040028_297787_0C8CFC8C 
X-CRM114-Status: UNSURE (   9.95  )
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

 arch/arm64/boot/dts/freescale/Makefile             |   2 +
 .../arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi | 123 +++++++++++++++++++++
 .../boot/dts/freescale/fsl-lx2160a-clearfog-cx.dts |  15 +++
 .../dts/freescale/fsl-lx2160a-clearfog-itx.dtsi    |  57 ++++++++++
 .../boot/dts/freescale/fsl-lx2160a-honeycomb.dts   |  15 +++
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     |  20 ++++
 6 files changed, 232 insertions(+)
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
