Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9ED4A494
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8EijlZefi3WIrND+2W7UnMnB+KzxPER/qRC/cUS8iT8=; b=rI87q8Bkw5ge6x
	dGL9eb4medACm8yYlNcnpAWYimhCx00RLbPTR8gnwHp0NykzlI6V9FCS9jZK47UVaootd9MCWapNw
	9PqxwrS1rKgvoGlFSHQZ39ysf7dZRslZm47zf0UgvCNCVyCO/x7izWrvQEkVmHV1237N0ixuaBZ03
	AK3nsFSXYoYg6QKtEiObPExD5XFodH3EJhUu3RuWQ6fHQSaYHMGmsEEauN+hgpR1dl3YdDWfa5zQz
	HoTen3Zm8yj+3drRqYXUVQ5hbG4YuFViv+iT4tMYQ6U3Wmo1A9cyLWBfnLxRWXEPx1IbbP4WK02S8
	L78XIlGkg25qDesWNuWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFXA-0007bm-IY; Tue, 18 Jun 2019 14:56:28 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFWG-00076b-Ub
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:55:35 +0000
X-Originating-IP: 90.88.23.150
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr [90.88.23.150])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 08E8F40002;
 Tue, 18 Jun 2019 14:55:10 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 0/4] net: mvpp2: cls: Allow steering based on vlan tag
Date: Tue, 18 Jun 2019 16:55:15 +0200
Message-Id: <20190618145519.27705-1-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_075533_170864_70808F09 
X-CRM114-Status: UNSURE (   7.19  )
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PPv2 classifier can perform flow steering based on keys extracted
from the VLAN tag. This series adds support for using the vlan id and
the vlan prio as keys, using the ethtool interface.

Patch 1 is a preparatory patch that prevent false-positive matches,
using a dedicated lookup id for the RSS C2 lookup.

Patch 2 allows to separate the flows based on the header fields they
contain. The main goal is to be able to separate tagged traffic from
untagged traffic for flow steering, just as we already do for RSS.

Patch 3 solves an issue we have when extracting fields that aren't full
bytes, such as the vlan tag which is 12 bits wide, or the priority which
is 3 bits wide.

Finally, patch 4 adds support for steering based on both vlan id and
priority, extracted from the outermost tag.

Maxime Chevallier (4):
  net: mvpp2: cls: Use a dedicated lu_type for the RSS lookup
  net: mvpp2: cls: Only select applicable flows of classification
    offload
  net: mvpp2: cls: right-justify the C2 TCAM keys
  net: mvpp2: cls: Add steering based on vlan Id and priority.

 .../net/ethernet/marvell/mvpp2/mvpp2_cls.c    | 118 +++++++++++++-----
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.h    |  28 +++--
 2 files changed, 103 insertions(+), 43 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
