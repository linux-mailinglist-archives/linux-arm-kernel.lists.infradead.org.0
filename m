Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FCAEC647
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:59:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VhiZqQ1oyPoSCEoHRQZF66/0WM9e9eZvZJ1IsqFhFi4=; b=UJ0zBuE8ZgUmNNwBYLonv624cr
	MAkyR4Ehn+wB+qbjTnRQJAuPPhlCNG07QJtYxxkMZsmLuDw0rsbNyessWp3jguHNyXNqyVIh84dOI
	yVHgJMLXcIJJYwrwGdgbpuaBWw+vk9wCbXgiaDR96QbTBeRBNlcrEeMIPLSNy7KF/WDJvQ+23W1kG
	/6AFzAOSV+qPHr9ioV/QT8VP6dsddk7ZnVSX6sKbCczKs/OulkVrpMfKwSfQXYL+TEk30UGa47wnO
	JKkhhIG61ZsT1n/tyvgyFZJ0I4UsfAnJx/P/z9T0q04n7l+FPbej3mo45D9DbWRi9G63hHQk+r7Tz
	9dFMhEVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZL1-0002Qx-VC; Fri, 01 Nov 2019 15:59:47 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZKI-0001pf-4a
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:59:05 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id Lfyu210115USYZQ01fyuaP; Fri, 01 Nov 2019 16:58:56 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iQZKA-0002ri-BY; Fri, 01 Nov 2019 16:58:54 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iQZKA-0008Ci-Ag; Fri, 01 Nov 2019 16:58:54 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 6/6] Renesas DT binding updates for v5.5 (take two)
Date: Fri,  1 Nov 2019 16:58:42 +0100
Message-Id: <20191101155842.31467-7-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101155842.31467-1-geert+renesas@glider.be>
References: <20191101155842.31467-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_085902_340643_680FD5E9 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 4d3cae42544775c71521e8ed5adb64c1839036b9:

  dt-bindings: reset: rcar-rst: Document r8a774b1 reset module (2019-10-01 09:52:34 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-dt-bindings-for-v5.5-tag2

for you to fetch changes up to e7f1eb321b1a8497c5ddd59303c18864a95ab8bd:

  dt-bindings: power: rcar-sysc: Document r8a77961 support (2019-11-01 11:54:01 +0100)

----------------------------------------------------------------
Renesas DT binding updates for v5.5 (take two)

  - JSON schema conversion,
  - Core support for the new R-Car M3-W+ (r8a77961) SoC,
  - Board compatible updates.

----------------------------------------------------------------
Geert Uytterhoeven (5):
      dt-bindings: arm: renesas: Add R-Car M3-N ULCB with Kingfisher
      dt-bindings: arm: renesas: Document R-Car M3-W+ SoC DT bindings
      dt-bindings: arm: renesas: Add Salvator-XS board with R-Car M3-W+
      dt-bindings: reset: rcar-rst: Document r8a77961 support
      dt-bindings: power: rcar-sysc: Document r8a77961 support

Simon Horman (1):
      dt-bindings: arm: renesas: Convert 'renesas,prr' to json-schema

 .../devicetree/bindings/arm/renesas,prr.txt        | 20 -------------
 .../devicetree/bindings/arm/renesas,prr.yaml       | 35 ++++++++++++++++++++++
 Documentation/devicetree/bindings/arm/renesas.yaml |  8 +++++
 .../bindings/power/renesas,rcar-sysc.txt           |  1 +
 .../devicetree/bindings/reset/renesas,rst.txt      |  1 +
 5 files changed, 45 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.txt
 create mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.yaml

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
