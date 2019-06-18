Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DA64A612
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 18:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8Rpf/PAJfOKSAkNdAwEytPFnyC+zDUeSOys6H62fp+U=; b=Ltg7fv+imT4Q2h
	U2t9gGTjy6eFHPVmDWUSCpYlbA0POv5eJqkBYa/MPDdjTvXnRR52QvoVr/ZDLHOgCELSA9v31Nyk7
	SbTEl5rcAaxesSuYjs/eo51AIoSN1IPBQn+nQqi15YsxE129/zR5lgHi35Z/H9921nrcFNv+qdM+q
	n3z1oTHpNGpb7XLAbvMRYKHgsswnLJBeoTYfHHM7Jzx6A4pUTu+os3TPihAm7nl/qdgNWjjRtvltV
	aVSdMNOUuuE4rk0S063sDP17u++YgoC92W9zaIX4Mqfy1EAqinQjOxX3fOPHDyD/u+0FHRtvvb/zL
	DLUKs+aqHI8IYw+/Z//w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdGYF-0007rU-GY; Tue, 18 Jun 2019 16:01:39 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdGXz-0007qb-K5
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 16:01:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1560873683; x=1592409683;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=m5c+QxuC5TZHuXYLARbeSntlW7rvO+1YgCMe8NcYLYo=;
 b=l/DQW4z9tyehqkOkXOU/YfQD4gif7YFDWMKI91okmF4AUV4ZjSQZ6Evi
 WkzTWxaXLm6/MBliVc9BTviFso0zAXxLcyhAwuQdl3B4yO3IYTcqDgRvY
 j2lVF4MyrZVR4m+QbgN0eTQwQDWjuwc7q/LNibps082pWV1E153B4VBw5 U=;
X-IronPort-AV: E=Sophos;i="5.62,389,1554768000"; d="scan'208";a="770859253"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1e-c7c08562.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 18 Jun 2019 16:01:20 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1e-c7c08562.us-east-1.amazon.com (Postfix) with ESMTPS
 id A48A524209F; Tue, 18 Jun 2019 16:01:17 +0000 (UTC)
Received: from EX13D21UWB001.ant.amazon.com (10.43.161.108) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 18 Jun 2019 16:01:17 +0000
Received: from EX13MTAUWB001.ant.amazon.com (10.43.161.207) by
 EX13D21UWB001.ant.amazon.com (10.43.161.108) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 18 Jun 2019 16:01:16 +0000
Received: from 8c859006a84e.ant.amazon.com (172.26.203.28) by
 mail-relay.amazon.com (10.43.161.249) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Tue, 18 Jun 2019 16:01:15 +0000
From: <alpawi@amazon.com>
To: 
Subject: [PATCH 0/2] pinctl: armada-37xx: fix for pins 32+
Date: Tue, 18 Jun 2019 11:01:03 -0500
Message-ID: <20190618160105.26343-1-alpawi@amazon.com>
X-Mailer: git-send-email 2.17.2 (Apple Git-113)
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_090123_805203_7F21CBB9 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Benjamin Herrenschmidt <benh@amazon.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>, Patrick Williams <alpawi@amazon.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrick Williams <alpawi@amazon.com>

The 37xx GPIO config registers are only 32 bits long and
span 2 registers for the NB GPIO controller.  The function
to calculate the offset was missing the increase to the
config register.

I have tested both raw gpio access and interrupts using
libgpiod utilities on an Espressonbin.

The first patch is a simple rename of a function because
the original name implied it was doing IO itself ("update
reg").  This patch could be dropped if undesired.

The second patch contains the fix for GPIOs 32+.

Patrick Williams (2):
  pinctrl: armada-37xx: rename reg-offset function
  pinctrl: armada-37xx: fix control of pins 32 and up

 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
2.17.2 (Apple Git-113)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
