Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FDA2955E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sjSnb4etx7fLdrkonN3qj6WlVuvxY2Y+h/dMDgJ449Y=; b=HgCX7cVomk6nWw
	pNdFPA1koprlYuKyFb3V3MBeB3RJ87+3DO6QHLFYwJqDFWSjrEmFoMG4GIfTAygNRgAc0Zh9yFVcs
	yYjgU45OkXjDhkx7dF0Yu/Erze2PtYe3uF3QQq6KztdAJTm860ArQzMW8hdgFTxoAQ/jPFPG+NOuA
	CplE0IBwvD5tVxOXF5OX/UAZBUFZEx24Y/MGdDeGu39mZIQ0Lc3dnPtzXGp12Jf18eVxGBiVK86X9
	MdYqpX8DqRhKCH0pZwkE8gZRlRXZoPWmu7hY0hPU33Ig6ZekWJyC2RhOM4WGORNUOJPa0fJwDPWxZ
	ddvvRIOFgR4R4N9fzPUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU75h-0000OK-2G; Fri, 24 May 2019 10:06:21 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU75Y-0000LM-Ch
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:06:13 +0000
X-Originating-IP: 90.88.147.134
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 559E740013;
 Fri, 24 May 2019 10:05:58 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 0/5] net: mvpp2: Classifier updates, RSS
Date: Fri, 24 May 2019 12:05:49 +0200
Message-Id: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_030612_583823_C8010D87 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com,
 miquel.raynal@bootlin.com, stefanc@marvell.com, mw@semihalf.com,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello everyone,

Here is a set of updates for the PPv2 classifier, the main feature being
the support for steering to RSS contexts, to leverage all the available
RSS tables in the controller.

The first two patches are non-critical fixes for the classifier, the
first one prevents us from allocating too much room to store the
classification rules, the second one configuring the C2 engine as
suggested by the PPv2 functionnal specs.

Patches 3 to 5 introduce support for RSS contexts in mvpp2, allowing us
to steer traffic to dedicated RSS tables.

Thanks,

Maxime

Maxime Chevallier (5):
  net: mvpp2: cls: Use the correct number of rules in various places
  net: mvpp2: cls: Bypass C2 internals FIFOs at init
  net: mvpp2: cls: Use RSS contexts to handle RSS tables
  net: mvpp2: cls: Extract the RSS context when parsing the ethtool rule
  net: mvpp2: cls: Support steering to RSS contexts

 drivers/net/ethernet/marvell/mvpp2/mvpp2.h    |  20 +-
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.c    | 272 ++++++++++++++++--
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.h    |  15 +-
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |  67 ++++-
 4 files changed, 326 insertions(+), 48 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
