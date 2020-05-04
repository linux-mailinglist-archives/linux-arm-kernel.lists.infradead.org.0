Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DA31C3BAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wVHZBTKLnZVh4xlaGVrv9EBtbH7KIhpq8GOQ8AFZBYU=; b=TvsZzFgzojNqVR
	MEcxCu3hFKnJX9TSYakAL3HkJgRMX2BE1vbXV1OpxVBlvvYE4PeYxf4ypBnBD3hLVAhe2EEV4z9xf
	lH/uFS2egNxDce4OEkmZHs1WWgqUqOUDUfK1SR2wiEzvKML3H46CEQFUvYrtuU2YXT+EAXkiUhYcM
	tENsmsf8zhKioj97+RPoWsGg1703/PeiZhPvAFumJB91djOME6XkjwkGrYHoJeFTgOrHH707wEqKU
	vbAgfg7aHMrykweCRfvvSgvseR8NWkmG9vYGHU84MLxcoWhI/UP+YskXgD18iiJo0PnasSiHye4Yu
	/E3bLwpKdYbZ/vwADQ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbRs-0007tT-6f; Mon, 04 May 2020 13:47:56 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbR4-0007HX-UU
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:47:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588600026; x=1620136026;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YdfSV8vFHtHkdY/j8Ajqyu9W6T2nF4zgct9CAGRxwRQ=;
 b=kuY7hQ8N5Quh8NLGocN27CHxNsV2XHlwZ/bSuwMNFgps5ERnXd4t//VH
 xwJ+oQ/75Eb/eb/E+HeNOpaKU1fuxqn7CkcjmWd5dqW+yhEay/BtQjVi5
 FsZsvoFfxOC1/JXfxHNlz7ERczL2kTC6KQ6Bl5myZxYRVkL67Oy9wIxqT
 21IceD1jmIUVvQDnV6Brx2LV0GUcD05SPvoj+vnNRixrMtXl3x066QCuw
 cwgUdx4C0ZlAMm3QLIFphDqc83WV/WzJfjcIooOfEE73oZPodUFefcp51
 BWVyBWoEVKzswuoZxe6cIHJOyBv9IvDxGfGgBXmmPYNK2cIH2Gem/m2Im Q==;
IronPort-SDR: hsTM1QVLN9NhCq54tmB8QKFvocu9kjOduP0h93w7Ccg6OxKoxHWaRIoqTuZrqRgNyQpmP7Jfop
 6UdRqUn7gGWMLXt3nGVbqEEBVWrHnut10yjQX+yGmawu8RbxMZd3JCoYcyYiqys8CgxH8ORxPX
 BSsBbmQnqNZBNO4mMFMwy66FWVOXwjrDYZzA49QowmyXrFBkn3GoOaZg1d9eWYe3P1hLzHQHrX
 vX/6rFmXYsdvDvmvc6Kv5z+1PzB/JRWk7kLA7ndsIzhtKFPUundxmirbcXFgBL+zJlOwAVRFHD
 HJ0=
X-IronPort-AV: E=Sophos;i="5.73,352,1583218800"; d="scan'208";a="74135742"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 May 2020 06:46:29 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 May 2020 06:46:30 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 May 2020 06:46:26 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v3 0/7] net: macb: Wake-on-Lan magic packet fixes and GEM
 handling
Date: Mon, 4 May 2020 15:44:15 +0200
Message-ID: <cover.1588597759.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_064707_048854_7AA8A2B9 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 f.fainelli@gmail.com, michal.simek@xilinx.com, antoine.tenart@bootlin.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>

Hi,
Here is the 3rd series to fix WoL magic-packet on the current macb driver.
I also add, in the second part of this series the feature to GEM types of IPs.
Please tell me if they should be separated; but the two last patches cannot go
without the 5 fixes first ones.

MACB and GEM code must co-exist and as they don't share exactly the same
register layout, I had to specialize a bit the suspend/resume paths and plug a
specific IRQ handler in order to avoid overloading the "normal" IRQ hot path.

The use of dumb buffers for RX that Harini implemented in [1] might
need to be considered for a follow-up patch series in order to address
lower-power modes on some of the platforms.
For instance, I didn't have to implement dumb buffers for some of the simpler
ARM9 platforms using MACB+FIFO types of controllers.

Please give feedback. Best regards,
  Nicolas

[1]:
https://github.com/Xilinx/linux-xlnx/commit/e9648006e8d9132db2594e50e700af362b3c9226#diff-41909d180431659ccc1229aa30fd4e5a
https://github.com/Xilinx/linux-xlnx/commit/60a21c686f7e4e50489ae04b9bb1980b145e52ef

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

Nicolas Ferre (7):
  net: macb: fix wakeup test in runtime suspend/resume routines
  net: macb: mark device wake capable when "magic-packet" property
    present
  net: macb: fix macb_get/set_wol() when moving to phylink
  net: macb: fix macb_suspend() by removing call to netif_carrier_off()
  net: macb: fix call to pm_runtime in the suspend/resume functions
  net: macb: WoL support for GEM type of Ethernet controller
  net: macb: Add WoL interrupt support for MACB type of Ethernet
    controller

 drivers/net/ethernet/cadence/macb.h      |   3 +
 drivers/net/ethernet/cadence/macb_main.c | 209 +++++++++++++++++++----
 2 files changed, 176 insertions(+), 36 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
