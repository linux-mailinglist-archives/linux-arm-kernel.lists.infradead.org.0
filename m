Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 990F2E1A31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K7rUm7NyfsruzrAKg11eGWjitQP8sseTqJWUOgLKj+k=; b=qFApfK0YWGCdMA
	J7+31IGVgWH9smhndmLf/KqPPWyOWg/IsKHOOORRRmx4V1+lVNqJc8MP56c0yyTtg/V/o5kbixe5J
	5o9q+mktSDANqxehDzEE//ZxpUlvDE538Br49mOAH99YiAqoRQWCElZRjW7KRrit2lYTsnCt4GvSE
	NTuUc7NkEtEP6PXdnEz0Y3AFtEBRqJmzFsb8xbMC5SQsNUDnjm/WhXX+rs1tueQxiXhjfaxvvXhNJ
	/1Z4fGFyf8kaQemh1L7rnVlzCDlThv4WXA5p0RcP+fF0TN/ibZCrpVfcRIWQuIUm6Ps5LhdrFCOKF
	22nGQ1+wQ5qnO+3uTFXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFmL-0002F6-Ci; Wed, 23 Oct 2019 12:30:17 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFlW-00021O-RB
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:29:29 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id H0VK2100505gfCL060VKmx; Wed, 23 Oct 2019 14:29:20 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlP-0000FR-3e; Wed, 23 Oct 2019 14:29:19 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlP-0003B7-1d; Wed, 23 Oct 2019 14:29:19 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 0/5] dt-bindings: arm: renesas: Add core r8a77961 support
Date: Wed, 23 Oct 2019 14:29:06 +0200
Message-Id: <20191023122911.12166-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052927_036509_F93A7450 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

This patch series updates the Renesas DT binding documentation for core
components on the new R-Car M3-W+ (R8A77961) SoC, and for the
Salvator-XS development board equipped with this SoC.

Changes compared to v1[1]:
  - Split in per-subsystem series,
  - Add Reviewed-by,
  - Add board part number.

I intend to queue this series in renesas-devel for v5.5.
The last patch will be put on a branch shared between driver and DTS.

Thanks for your comments!

[1] "[PATCH/RFC 00/19] arm64: dts: renesas: Initial support for R-Car M3-W+"
    https://lore.kernel.org/linux-renesas-soc/20191007102332.12196-1-geert+renesas@glider.be/

Geert Uytterhoeven (5):
  dt-bindings: arm: renesas: Document R-Car M3-W+ SoC DT bindings
  dt-bindings: arm: renesas: Add Salvator-XS board with R-Car M3-W+
  dt-bindings: reset: rcar-rst: Document r8a77961 support
  dt-bindings: power: rcar-sysc: Document r8a77961 support
  dt-bindings: power: Add r8a77961 SYSC power domain definitions

 .../devicetree/bindings/arm/renesas.yaml      |  6 ++++
 .../bindings/power/renesas,rcar-sysc.txt      |  1 +
 .../devicetree/bindings/reset/renesas,rst.txt |  1 +
 include/dt-bindings/power/r8a77961-sysc.h     | 32 +++++++++++++++++++
 4 files changed, 40 insertions(+)
 create mode 100644 include/dt-bindings/power/r8a77961-sysc.h

-- 
2.17.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
