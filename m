Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821A21C90AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8gM6V3IJ/p+KYSL9MlBmwfsFobvY2TYeIJxgLVRK9XQ=; b=uOd7S1GDtpv23J
	AtXRGqYfAJPyoXx321qE3FaUOy00uLI0A93GTc+jvEF94bfJU+YgSl0umDTcojc8moDkriiFqB9yr
	+NnLYlXUbh5jvbI/VpVd1APicIJBnJO6qMOJ7lfZQ+Tql04SPWq/rcjpkuS12T3TG0Y927AV1Pbdx
	DNf0k8pefZ50xEYRPj0yFzBFjkvLUSUP5zFoczP5WIjZxvCtBFM1neR7u1k6JX8Zg9OOeuI3OJXtC
	oKgJDnXZ10dxQJSWLexm9GTpBsm7TdlXiOb5v6Deq0WOKZ/8IhLEH5sMocVJRn7idwCGqKs4ulR0D
	r/xXfhtD1PWmxUTizCJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhrL-0004fr-RZ; Thu, 07 May 2020 14:50:47 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhrE-0004f4-5d
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1588863041; x=1620399041;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=cOjgL/jMx8rHyMgvqTEou7i+VZW8+Cxs08hf8UQgltw=;
 b=sfeRQOTwvyhFd9lVsAnTT2wxlO47agm93Lvt6do7g70hqzd3yvMAYo//
 56ELiRLvVt974FiPwYqGyy9Z6sS3vWlTAqRBcfJZgq4ar0BcK63D51/c0
 YbDDG93gyJZK5gdbbj3xiYR3GSGGUDOwmW5ynWJRegvjxpvmAeGTF/Oua M=;
IronPort-SDR: 0uVSjiXyhIU30m7upXEMtOp86557IdWtNGWxMKw2DZFI1UvuTbLePPijzkPL3WJCXPcu67T2jQ
 IbzhSx6RseXw==
X-IronPort-AV: E=Sophos;i="5.73,364,1583193600"; d="scan'208";a="41896565"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2a-1c1b5cdd.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 07 May 2020 14:50:34 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2a-1c1b5cdd.us-west-2.amazon.com (Postfix) with ESMTPS
 id 8C2CEA1B98; Thu,  7 May 2020 14:50:31 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 7 May 2020 14:50:31 +0000
Received: from uf25486d27d2d5b.ant.amazon.com (10.43.162.200) by
 EX13D01EUB001.ant.amazon.com (10.43.166.194) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 7 May 2020 14:50:21 +0000
From: Talel Shenhar <talel@amazon.com>
To: <bp@alien8.de>, <mchehab@kernel.org>, <james.morse@arm.com>,
 <talel@amazon.com>, <davem@davemloft.net>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <catalin.marinas@arm.com>, <will@kernel.org>, <linux-edac@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v7 0/2] Amazon's Annapurna Labs Memory Controller EDAC
Date: Thu, 7 May 2020 17:50:00 +0300
Message-ID: <20200507145002.22010-1-talel@amazon.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.43.162.200]
X-ClientProxiedBy: EX13D25UWB003.ant.amazon.com (10.43.161.33) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_075040_252382_338CDA13 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.171.184.29 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: ronenk@amazon.com, jonnyc@amazon.com, eitan@amazon.com, hanochu@amazon.com,
 hhhawa@amazon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series introduces support for Amazon's Annapurna Labs Memory
Controller EDAC driver.

Changes since v6:
=================
- removed unused defines
- user-visible strings changed to capital
- removed static function names prefix from internal functions (external
  used function, such as devm/interrupts-handlers/probe, left with the
  prefix to allow stack trace visibility)
- sorted function local variables declaration in a reverse Christmas tree order
- fixed use of wrong syndrome defines
- added a comment to interrupts handling (polling mode with interrupt mode)
- added grain definition
- appended "or BSD-2-Clause" to dt binding SPDX

Changes since v5:
=================
- rebased and retested for tag Linux 5.6-rc2
- added Reviewed-By for dt-binding (Rob Herring <robh@kernel.org>)
- added Reviewed-By for driver (James Morse <james.morse@arm.com>)

Changes since v4:
=================
- fixed dt-binding interrupt to have min of 1
- updated dt-binding GPL-2.0 to GPL-2.0-only
- changed writel to relaxed flavor
- added managed device driver unwind

Changes since v3:
=================
- removed quotation marks and hyphen from compatible dt-binding
- added interrupts and interrupt-names description to dt-binding
- added missing include to dt-binding

Changes since v2:
=================
- added missing includes
- aggregated variables to same line
- removed ranks read
- added spinlock to mc reporting
- made irq handler clearer
- freed irq before freeing device memory
- changed Kconfig to tristate
- added COMPILE_TEST to Kconfig
- converted dt binding to new scheme
- used devm_platform_ioremap_resource instead of get&ioremap

Changes since v1:
=================
- updated dt binding node name and added Rob Reviewed-By
- removed auto selecting of this driver


Talel Shenhar (2):
  dt-bindings: edac: al-mc-edac: Amazon's Annapurna Labs Memory
    Controller EDAC
  EDAC: al-mc-edac: Introduce Amazon's Annapurna Labs Memory Controller
    EDAC

 .../bindings/edac/amazon,al-mc-edac.yaml      |  52 +++
 MAINTAINERS                                   |   7 +
 drivers/edac/Kconfig                          |   7 +
 drivers/edac/Makefile                         |   1 +
 drivers/edac/al_mc_edac.c                     | 354 ++++++++++++++++++
 5 files changed, 421 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml
 create mode 100644 drivers/edac/al_mc_edac.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
