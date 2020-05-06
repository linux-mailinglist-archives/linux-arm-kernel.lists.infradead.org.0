Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2268F1C6F84
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KYUIkZ5m3zSBgTYA9SHqJtn3QREtwqd/Y30a57wiLdI=; b=i4US9l7cd5ZU7p
	NO9+sNimCuCisTi69e9Jle9qc1Z5DwSPEKt78FXBzPDphxmnl1ldN/K0uOyT4sRBt+C8J4u0yTUXz
	W/pji0z3WIisIk2az2yyeGCBB1sJD0SQoS3xyYNzoJKBDq1y03kwr5jCvp2neWRr9aTRjm8cmZSg2
	ZTT6CD+MPPFTBZmuQv2Rc1f5OUDI4B5b0oJIGPBQ7jDlcGcA/EViS7LgVRgePR0ZjW92Pxd2CI5NV
	m/eVfGdn39bQX0eN3cuGJiJDfe65Fq7qlMzeZPd3Uf/Dge9xAOC851NrVjHJ14ZkMfnRLDKn5fPCF
	fVhqi1JQMrbCCEJ4WW0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIRJ-0004cK-Ns; Wed, 06 May 2020 11:42:13 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIR5-0004a8-5J
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:42:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588765320; x=1620301320;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gXKvzJw9g7LAOQgi97R5QafLHw2jX68aP/tQVwVwRa4=;
 b=xP3lJaFLCR2xO/GpDZuYFQjaoPl5xunQ/9Qx6KzkOVnRHPNPGOz75ISy
 yWhrZ1MP2auSA3NhrB3m5Y8g2uXQyrkiyhFTPX/qQEg94NIjRSDu9rVCx
 k+DFRVyEJ3+oPTJF5qqSbSUQLehZeyNv1IAlh3MjKgqmCFt/ilXuUrv1N
 q0TrA4F5uJ22jYLwaajx5l1C4isJPSFbE0Toi37tCzOV885ZrKw0jimb/
 jc/RDUR6qFwNxbsahODyPH3ExbpJukndVgXA4brBMbce5HtLPt02K3+KZ
 l0A5OcbanzL5WYNhZs3uuHdYt7v9wmaPpipWnMGq5gZ5KqAtCx+4x4b72 A==;
IronPort-SDR: pV2N48h6LeiTsUHgpKHyNfJ/PapuF0UDYwEHle6+16FTUWVt5NCG1LTvntaKbTycJbxpt9FUIj
 gSAg8fYnXWgPu7+QoAaZS9SFojxNpQG9HaAwAmFkdOwz7BevhML/RudCL0McHBueMd2r7JDCAw
 GaSYiBPXJhdkJ2HLgSaoMS7v6ydcANGgICNe5XRAbw1+H1IfWGfVAU1usQERCIYN8pH9ewJ6vH
 4d9xA6jCV9Dn7PMgDD1b8fzW1FKfdFWNW9W8hYkUr+8UvFo5UFTDl+GznHrd6eR3ZBIEqyGua6
 ShM=
X-IronPort-AV: E=Sophos;i="5.73,358,1583218800"; d="scan'208";a="74979844"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 May 2020 04:41:52 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 6 May 2020 04:41:52 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 6 May 2020 04:41:47 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v4 0/5] net: macb: Wake-on-Lan magic packet fixes and GEM
 handling
Date: Wed, 6 May 2020 13:37:36 +0200
Message-ID: <cover.1588763703.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_044159_207849_D0ED1AAC 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, f.fainelli@gmail.com,
 antoine.tenart@bootlin.com, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>

Hi,
Here is a split series to fix WoL magic-packet on the current macb driver. Only
fixes in this one based on current net/master.

Best regards,
  Nicolas

Changes in v4:
- Pure bug fix series for 'net'. GEM addition and MACB update removed: will be
  sent later.

Changes in v3:
- Revert some of the v2 changes done in macb_resume(). Now the resume function
  supports in-depth re-configuration of the controller in order to deal with
  deeper sleep states. Basically as it was before changes introduced by this
  series
- Tested for non-regression with our deeper Power Management mode which cuts
  power to the controller completely

Changes in v2:
- Add patch 4/7 ("net: macb: fix macb_suspend() by removing call to netif_carrier_off()")
  needed for keeping phy state consistent
- Add patch 5/7 ("net: macb: fix call to pm_runtime in the suspend/resume functions") that prevent
  putting the macb in runtime pm suspend mode when WoL is used
- Collect review tags on 3 first patches from Florian: Thanks!
- Review of macb_resume() function
- Addition of pm_wakeup_event() in both MACB and GEM WoL IRQ handlers


Nicolas Ferre (5):
  net: macb: fix wakeup test in runtime suspend/resume routines
  net: macb: mark device wake capable when "magic-packet" property
    present
  net: macb: fix macb_get/set_wol() when moving to phylink
  net: macb: fix macb_suspend() by removing call to netif_carrier_off()
  net: macb: fix call to pm_runtime in the suspend/resume functions

 drivers/net/ethernet/cadence/macb_main.c | 31 +++++++++++++-----------
 1 file changed, 17 insertions(+), 14 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
