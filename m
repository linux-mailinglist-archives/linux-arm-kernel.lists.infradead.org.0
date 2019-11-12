Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C855CF9267
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:29:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YXBIg0xFrOmA5EWLXln2qk+RBqVwZsAk0Vi43VX4Axo=; b=PFaFRGSMN1sY1q
	+ND2t61+Cs+1VxCFs+T7keq5fdENZrHo8B/84cClOQ3VjgrjTvYj06JEH3HBInHk/Jay6kmuEjjB5
	VEIh+FFI7pWE1Iase0kswbWJRVGd7K7YU6J+nN1maPJy8jg5k35Fr2ZY4Fbl8kIXfeNQT8YvnGAad
	E06N0cWnB/KK8j6HIvRkKHYrzoQAUHZXVGaOKRLbOGygZh/XB6Zn30lRiQF76PI51kOx+inPBHZYd
	ThRm6rgz9k0E3XTns2iT0nmkBkPWO9mTtwAXvUfeS5j2rY4OtjbSsnjF4KnL2oDgtDQ32yKv6N4UU
	A/9u5/fVxTh9EED2uSTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXAU-0003yH-Vh; Tue, 12 Nov 2019 14:29:18 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUX7p-0001Wm-71
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:26:34 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xACEQV8S098659;
 Tue, 12 Nov 2019 08:26:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573568791;
 bh=anO7SNWwiXlY2/qwTzzyhWcIR7ms5orGxlRME2mhQ+g=;
 h=From:To:CC:Subject:Date;
 b=E8IvR/WugdeprIvqxpg1Bhx+BJXkJCZL3Qx9SNZxfGmpKfdVr2wAN4aA8uFZszM1Q
 ZuU4/BL76BjcUIvwiIwK8/Kv99Cz4JAZ4nkZfe6xMJktdsOq8oliA2QnDBQR1EgGGk
 C7t91jOAg2GCZBJhi89IhPPXEMMhMGG5sICH0skE=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACEQVsK033636;
 Tue, 12 Nov 2019 08:26:31 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 08:26:12 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 08:26:30 -0600
Received: from uda0869644b.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACEQUtt040290;
 Tue, 12 Nov 2019 08:26:30 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
Subject: [Patch v2 0/3] ARM: dts: am43x-vpfe/ov2659.patch
Date: Tue, 12 Nov 2019 08:29:26 -0600
Message-ID: <20191112142929.23058-1-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_062633_335153_1B118627 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds the missing camera endpoint (ov2659) as well as
the required source clocks nodes for the sensor.

On the am437x-sk-evm the camera sensor is sourced from clkout1 but that
clock nodes/tree was removed as it was unsed at the time, we are
re-adding the needed clock nodes here.

Changes since v1:
- Fix clock name to make it generic
- Add non-standard clock node naming to commit message as per Tony's
  comment
- Rename all clock nodes to use '-' instead of '_'

Benoit Parrot (2):
  ARM: dts: am437x-sk-evm: Add VPFE and OV2659 entries
  ARM: dts: am43x-epos-evm: Add VPFE and OV2659 entries

Tero Kristo (1):
  ARM: dts: am43xx: add support for clkout1 clock

 arch/arm/boot/dts/am437x-sk-evm.dts  | 27 +++++++++++++-
 arch/arm/boot/dts/am43x-epos-evm.dts | 23 +++++++++++-
 arch/arm/boot/dts/am43xx-clocks.dtsi | 54 ++++++++++++++++++++++++++++
 3 files changed, 102 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
