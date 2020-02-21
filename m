Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC74B166FBB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 07:47:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lQCT0mdxjo1jO+CO8YvUOltfQmt9l4foMYk45Ag4myc=; b=M8r
	p/yKQbBuN6huydyEntYPwDXFe2Y5Wi/Yo+mOYZjc1+gMvXNMONY2Px2pUrHSibL8vKi0LAK3ffA30
	ACjsSE80PNAcU5SmI21JrXR4NxwSl5lb18eMP90hB63qgBqzMblxl07c+YRxfhS5rVJlrUzXuX4ZT
	1k92Cl7y+ugX4YCNaZy08SEOGxxkXEHm5TPUDVKrT5SsVFZ/LbvK9m+XFbGMaiAz7OEbmjDWsAH3p
	G4ygWOgCKYiEMUvWujUy36lJ0gXHtfZNq8zjlOxCAB9mN6l0GTpITGJFu6LdVqXIfdMBndX9p4qUk
	Wnr/kdlHwfOl3LuL+50ICYSdnae9KEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j525Y-0007ta-Tq; Fri, 21 Feb 2020 06:47:04 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j525Q-0007sA-1C
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 06:46:57 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 905121A6D81;
 Fri, 21 Feb 2020 07:46:52 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9A8AA1A6D7F;
 Fri, 21 Feb 2020 07:46:44 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 295E1403AE;
 Fri, 21 Feb 2020 14:45:58 +0800 (SGT)
From: sherry sun <sherry.sun@nxp.com>
To: bp@alien8.de, mchehab@kernel.org, tony.luck@intel.com, james.morse@arm.com,
 rrichter@marvell.com, michal.simek@xilinx.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 0/3] Add edac driver for i.MX8MP based on synopsys edac driver
Date: Fri, 21 Feb 2020 14:39:13 +0800
Message-Id: <1582267156-20189-1-git-send-email-sherry.sun@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_224656_216741_8B10536C 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, frank.li@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sherry Sun <sherry.sun@nxp.com>

This patchset add edac driver support for i.MX8MP, since i.MX8MP use the same
synopsys memory controller with ZynqMP, so the driver is based on synopsys_edac
driver.

Considering that i.MX8MP dts file is still in kernel/git/shawnguo/linux.git and
isn't in mainline now, I will add EDAC node in i.MX8MP dts after this file is
pushed to mainline. 

And the edac driver for i.MX8MP has been tested in kernel/git/shawnguo/linux.git
where i.MX8MP is supported, it turns out that this driver works well to detect
corrected and uncorrected errors for LPDDR4 in i.MX8MP.

Sherry Sun (3):
  dt-bindings: memory-controllers: Add i.MX8MP DDRC binding doc
  EDAC: Add synopsys edac driver support for i.MX8MP
  EDAC: synopsys: Add edac driver support for i.MX8MP

 .../bindings/memory-controllers/synopsys.txt  |  8 +-
 drivers/edac/Kconfig                          |  2 +-
 drivers/edac/synopsys_edac.c                  | 77 ++++++++++++++++++-
 3 files changed, 83 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
