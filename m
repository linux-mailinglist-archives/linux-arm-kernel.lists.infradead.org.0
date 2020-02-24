Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B96C16A773
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 14:42:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lww3ZAnuGHGMCLxDnZYUKhwWDKkDbKys97tyH9L5arw=; b=FNBWI3AG4q2fxx
	76l8YAnOlL3wAptBH0pV0nPREv8khwgPY29amvb1jaRsqxWQC2v83h41h5hrV103csw/C18ItNDIe
	Q7D9sTAAcdY5OvNpbsEVDwLbow1AdtmTvYjk54Wc7rWuqflFVGhnkgulsvVJLsnW/YJJO5WZ143yp
	9eymGRdvFqa/fdeuD9NNy8QL5f7IICGPikzsdOu7C/z24W/nwli7ZI3lYHgzT+DdV25QrLMCdtPNR
	IEgw4XRenxRYo1LrO9nO47VVuct40qT2ZsBkNvi60nU8qCMF4eyyUcjJX7nGAZ68V449Q37njVQYr
	FX71/shZM8sfOf+ax8tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6E00-0001Le-G4; Mon, 24 Feb 2020 13:42:16 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Dzs-0001Kn-3I
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 13:42:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1582551729; x=1614087729;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=dt2ZsR5KGBnBGqZxTpFYgfWI7bLFKN7JNRHXrQWWar8=;
 b=nu9GkO6QFKEvgKOyPdHp/ekwHXaO1A10FAHqnpS+csyg4GG+3gPdXDCH
 xs8Nc/GgTlmxzAkwh+KLSQabr/Q9L4j+uLNvWyGW+mqd9uKPJqvpe0W4m
 7d/2tJZFLip3GHS6ZvuJdI7pNzG2ZtFje4wqK1BX2Tjc4p64gz+cJOKxx 8=;
IronPort-SDR: UUgnZmmZaH3T6RjtT44dGzKyOZqtMUA7LJGNJkg87/77Bt1q/cca31zToLy2aOCCXOMLeVK+eO
 q0TntbULHd3Q==
X-IronPort-AV: E=Sophos;i="5.70,480,1574121600"; d="scan'208";a="27088075"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2a-22cc717f.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 24 Feb 2020 13:42:04 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2a-22cc717f.us-west-2.amazon.com (Postfix) with ESMTPS
 id 4464AA255F; Mon, 24 Feb 2020 13:42:02 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1236.3; Mon, 24 Feb 2020 13:42:01 +0000
Received: from uf25486d27d2d5b.ant.amazon.com (10.43.161.8) by
 EX13D01EUB001.ant.amazon.com (10.43.166.194) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 24 Feb 2020 13:41:51 +0000
From: Talel Shenhar <talel@amazon.com>
To: <bp@alien8.de>, <mchehab@kernel.org>, <james.morse@arm.com>,
 <talel@amazon.com>, <davem@davemloft.net>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <catalin.marinas@arm.com>, <will@kernel.org>, <linux-edac@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v6 0/2] Amazon's Annapurna Labs Memory Controller EDAC
Date: Mon, 24 Feb 2020 15:41:30 +0200
Message-ID: <20200224134132.23924-1-talel@amazon.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.43.161.8]
X-ClientProxiedBy: EX13D35UWC002.ant.amazon.com (10.43.162.218) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_054208_186174_590D8635 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: hhhawa@amazon.com, benh@kernel.crashing.org, jonnyc@amazon.com,
 ronenk@amazon.com, eitan@amazon.com, hanochu@amazon.com, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series introduces support for Amazon's Annapurna Labs Memory
Controller EDAC driver.

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
 drivers/edac/al_mc_edac.c                     | 355 ++++++++++++++++++
 5 files changed, 422 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml
 create mode 100644 drivers/edac/al_mc_edac.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
