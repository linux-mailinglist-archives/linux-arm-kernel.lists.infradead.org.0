Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE037F673
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+OvnS8LMCfbsAOgAGZyb5qBBDdfGtV+ZpJsYtKg8WKA=; b=bDc5Gr0rdo3nBtCCMI1biAs8uc
	NuBbfelAo438+SJFcKFIaQSwBarU98xbFXWXAFcXs1o9OhHCec58crnqTA7cBplg5slXvmzNA3WZl
	8E0TxshVs8NoB8fFYbwv2c8LXek9xzIQjwPfe/lh6PFyZX+4afefv2IGo3mFn4wzu2NUizQmyWgyk
	7sNY2eSCZAVQ154C91CKKUxGK9jk4NqAeCtBYw/DTcVq+iyii/Qvk0MG17LDt0iQLme2mIRdXtiFP
	A8A0ln9ykVqjENNrWyxSDtIWb7aePZgYuMUI96iKho96crolcOWmF6U1kWBtgES7KhmfXqeiqZMk6
	WJ9MM3vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htWIn-0008Br-3U; Fri, 02 Aug 2019 12:04:53 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htWIH-0007VN-9t
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:04:22 +0000
Received: from ramsan ([84.194.98.4]) by albert.telenet-ops.be with bizsmtp
 id kC4D2000B05gfCL06C4DZD; Fri, 02 Aug 2019 14:04:16 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1htWI9-0002hX-Pv; Fri, 02 Aug 2019 14:04:13 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1htWI9-0000PG-Of; Fri, 02 Aug 2019 14:04:13 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 3/3] Renesas DT binding updates for v5.4
Date: Fri,  2 Aug 2019 14:03:55 +0200
Message-Id: <20190802120355.1430-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190802120355.1430-1-geert+renesas@glider.be>
References: <20190802120355.1430-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_050421_644092_7B27737D 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org, Simon Horman <horms@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-dt-bindings-for-v5.4-tag1

for you to fetch changes up to 8cb7ec14188649cf2151464050413e2814fd7cf1:

  dt-bindings: can: rcar_can: Complete documentation for RZ/G2[EM] (2019-07-29 15:36:39 +0200)

----------------------------------------------------------------
Renesas DT binding updates for v5.4

  - RZ/G2 updates for the R-Car CAN and CANFD DT bindings.

----------------------------------------------------------------
Fabrizio Castro (2):
      dt-bindings: can: rcar_canfd: document r8a774a1 support
      dt-bindings: can: rcar_can: Complete documentation for RZ/G2[EM]

 Documentation/devicetree/bindings/net/can/rcar_can.txt   | 2 +-
 Documentation/devicetree/bindings/net/can/rcar_canfd.txt | 9 +++++----
 2 files changed, 6 insertions(+), 5 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
