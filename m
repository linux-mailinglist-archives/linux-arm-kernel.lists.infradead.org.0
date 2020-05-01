Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC101C17B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/HKXZz4Yn/ILQ+HjeeWatwl0A4+xefMmKsKJoTU6utM=; b=Qja
	HORJRlrP8RBUOjw5HfbheR29swUFQsG74OytLP6leXmU04+wFClQE5D4VAoRmgI5TEv7stIpj1X1m
	ZZPPRV0ENLr6f0hXkWzRx9zZaRHXxWTmqf7JLf8GTBwZ/Kicq4T4A3t9D573yx9G/yVC3c0n15J0i
	6LR9HGiMtjW7kcFly5Rfh57R3SudyOT17sosk4juazk37DBlwjroDUWBHGTZ3lChxvSyE53+2slyk
	KlwPlcA+RuRDl//vjiIdP+3oJr9gx+qN15iobGf1z11NFiY9ZnyJuRBCRY13sFf3a1MUcfsXVq6AV
	HyYXA8Cjcb6gt2T3FZf2IpfUVX2vgEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWf1-0007dE-Tt; Fri, 01 May 2020 14:29:03 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWet-0007by-3Y; Fri, 01 May 2020 14:28:56 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 5514530C046;
 Fri,  1 May 2020 07:28:38 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 5514530C046
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1588343318;
 bh=B0RTfqVPs2WXX8d2voJyNu01vjv3akzX5dBoypICIos=;
 h=From:To:Cc:Subject:Date:From;
 b=N8cR5SfTMqR8j82pUoWuhkg2ZN4o2y9y8vimR1bn92JHHpKGzrisNleWBdqJ08Gyv
 euE49TzHw1kv8ZpQgKsiZxPsDkqZvGWfb0VWHkj1/GJLgzJGGNr0DiTr18zNRsZdpz
 xJI1+XVDEShNT2Etlx1s+ONRYmdFI4UhMZtHf/B4=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 22338140069;
 Fri,  1 May 2020 07:28:48 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: james.quinlan@broadcom.com
Subject: [PATCH v2 0/4] PCI: brcmstb: Some minor fixes/features
Date: Fri,  1 May 2020 10:28:26 -0400
Message-Id: <20200501142831.35174-1-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_072855_172334_A5FCA6ED 
X-CRM114-Status: UNSURE (   4.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "open list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v2 -- Dropped commit concerning CRS.
   -- Chanded new prop 'brcm,aspm-en-l0s' to 'aspm-no-l0s'.
   -- Capitalize first letter in commit subject line; spelling.

v1 -- original

Jim Quinlan (4):
  PCI: brcmstb: Don't clk_put() a managed clock
  PCI: brcmstb: Fix window register offset from 4 to 8
  dt-bindings: PCI: brcmstb: New prop 'aspm-no-l0s'
  PCI: brcmstb: Disable L0s component of ASPM if requested

 .../bindings/pci/brcm,stb-pcie.yaml           |  4 ++++
 drivers/pci/controller/pcie-brcmstb.c         | 19 +++++++++++++++----
 2 files changed, 19 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
