Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB55C19D760
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 15:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BW5b6N0HyvmCb6WFvj4wUAGpdKp+S/hbZotSNoFXkKw=; b=t8e4ICETDwO57i
	4ya54MqXge/0FnTWdh+GHhY5e5NIA2WEEXZWZr2X7Fy6Gw5KQoUJRBneR/Z2tgswA/y5iDtxgrVWn
	5OLSNjp8tZvPs+eHArOWWKIKUDEehudl16W3bLf7pOPRYWwxB+90gBgo5giCRJTJsI/219fp8swgO
	mdr1Zx6f4Qa7roYwLo4butKaVXlQEe+j3unua37wfQW7Jv+NCgLAnWw+SCT11p2J2DJBoER90e8+T
	B20ZBWOUzzEIZVVM//MFHJkamFVGmCuvy/CkUyDpCADxz6YsS7NkfQGMR3WZUsvjy3M3uAPvlhxoB
	6MXkFb6M2Kynmos6oPkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKM9z-0005Er-Nl; Fri, 03 Apr 2020 13:14:59 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKM9s-0005Dy-Uo
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 13:14:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585919693; x=1617455693;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BUl5OPIQBO+nrNeP6bJCMTo0vE/9FRdmAQik2DEkayw=;
 b=XFOaEfU8RkjDu8N1uXJgbgvpnc0OhAxyOYiYDb5tbwRJWbtNOhMfkWM1
 7wyu14i3gIq1AiZzN8zZUrk1wCdif5RJc6G+WM9r3b16tBiLclY9w4uhP
 xvvN6yfVAHq50I4MF+dZekpkC/jnA2uVzWqHejs/x74HbIXtOva6eKuqZ
 lQ2hElEU1ucZsfdT3DZHsiR1Li7dvD2TbbSgSdgcPnYyF0y9wRNghEOVc
 xI191Pq6Kw70H6R3L8UDJmsu7YZ2SoiAJNCOC5/MGWlUu0AMZw4g/GDHT
 sfJnrdY2sH2QjauphckACmu1uWMbPkigkkDH/bO3kJlXxwTLtp1o7ZwfU Q==;
IronPort-SDR: fp0Uozpef3CLf5W/bXxKymuxuwx9c5MwNPOiYwlw4FwV7l/pQYDdYtz2c1FkGVuZH29Qdr724A
 KwrNpZf6559mPj1sCF6FMbQDMhpMKlZuncxJCV91W29mvubFpUgfZx5MjtQKK/NOxtbsla/VFy
 GqpFGw0M7ba3HrcZMMwacQLwWqBD6CSyE7uzq/b0jpCBLP9bJF/aVc4iXu7WtfFIKFTu/x20R5
 GJB23TMVkacy5a3TR5yQQTN4Qz5xAezhNm6Zk97cbKIp3JS+fYuY3t2owlleqs2/MAOOaUZPOk
 YbA=
X-IronPort-AV: E=Sophos;i="5.72,339,1580799600"; d="scan'208";a="71345554"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Apr 2020 06:14:51 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 3 Apr 2020 06:14:50 -0700
Received: from mchp-main.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 3 Apr 2020 06:14:47 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [RFC PATCH 0/3] net: macb: Wake-on-Lan magic packet fixes
Date: Fri, 3 Apr 2020 15:14:41 +0200
Message-ID: <cover.1585917191.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_061453_022267_CE340CAD 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: rafalo@cadence.com, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 f.fainelli@gmail.com, sergio.prado@e-labworks.com, andrew@lunn.ch,
 antoine.tenart@bootlin.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>

Hi,
Here are some of my early patches in order to fix WoL magic-packet on the
current macb driver.
Addition of this feature to GEM types of IPs is yet to come. I would like to
have your feedback on these little patches first so that I can continue
investigating the addition of GEM WoL magic-packet.

Harini, I know that you have patches for GEM in order to integrate WoL ARP
mode [1]. I'll try to integrate some of your work but would need that this feature
is better integrated in current code. For instance, the choice of "magic
packet" or "ARP" should be done by ethtool options and DT properties. For
matching with mainline users, MACB and GEM code must co-exist.
The use of dumb buffers for RX seems also fairly platform specific and we would
need to think more about it.

[1]:
https://github.com/Xilinx/linux-xlnx/commit/e9648006e8d9132db2594e50e700af362b3c9226#diff-41909d180431659ccc1229aa30fd4e5a
https://github.com/Xilinx/linux-xlnx/commit/60a21c686f7e4e50489ae04b9bb1980b145e52ef

Nicolas Ferre (3):
  net: macb: fix wakeup test in runtime suspend/resume routines
  net: macb: mark device wake capable when "magic-packet" property
    present
  net: macb: fix macb_get/set_wol() when moving to phylink

 drivers/net/ethernet/cadence/macb_main.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
