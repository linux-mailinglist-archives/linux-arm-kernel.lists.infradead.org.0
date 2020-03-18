Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D3D18A485
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 21:54:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPnfJMP+eNmClFE/utotjUM+4a0mHEyDy0B5OmbC6nA=; b=rVWg5dcaki8M6x
	5Fk3N7oAx3ZKErPLvrbZaTiMEJar/L5ggY1NVk1aWX5lQxuHPjC/G2wjdvfciQi+eeGfFXR0KlyqH
	kNRAO68zZhjgW8IkjXIh8pwrbhhXSSfrqpLq6cUTyYDNDB2918Ohq5w442VFRb9ItRqavNJJ4DCF7
	bqhPBb5+EZ/tBdA2qnstGIqN4Ipwlxo1JJjh0SHoxqS2Cy0EuiXNZh140BhFmqPNkvDubHkkR92fn
	3cptzvNhYI2cOBNHnnEqG+DN+5n+B1lAHnkveXinU9GTzCEaImILykgRHw6RNJS2UahATmYOHagKO
	bae3/3wsit5clhsrK/rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEfi5-0005Po-MJ; Wed, 18 Mar 2020 20:54:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEfhV-00050L-Ll
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 20:54:07 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52986208D5;
 Wed, 18 Mar 2020 20:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584564845;
 bh=pP25dGs0qhPsHPBXaWMxCr5rU29q+GM9TmYMhLNGNRo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KUaTo3h/95WXMDdtJpYOjslsR/ew40Sr7zbk3eybodczlnQLZilUGtpFdQrAPRgMk
 9eB/Czm4X04Ym4ND2gX2ND63C1PblYnViKfpT1Xaxs5JBoCWYmFNxRLktwL0yekAYn
 ri0eEr0t21CYMrJ5ltaBjPlbJ+x5RXa4YcHcjxIs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 23/73] net: phy: bcm63xx: fix OOPS due to missing
 driver name
Date: Wed, 18 Mar 2020 16:52:47 -0400
Message-Id: <20200318205337.16279-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318205337.16279-1-sashal@kernel.org>
References: <20200318205337.16279-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_135405_777000_51BFAA24 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
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
Cc: Sasha Levin <sashal@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Jonas Gorski <jonas.gorski@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jonas Gorski <jonas.gorski@gmail.com>

[ Upstream commit 43de81b0601df7d7988d3f5617ee0987df65c883 ]

719655a14971 ("net: phy: Replace phy driver features u32 with link_mode
bitmap") was a bit over-eager and also removed the second phy driver's
name, resulting in a nasty OOPS on registration:

[    1.319854] CPU 0 Unable to handle kernel paging request at virtual address 00000000, epc == 804dd50c, ra == 804dd4f0
[    1.330859] Oops[#1]:
[    1.333138] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.4.22 #0
[    1.339217] $ 0   : 00000000 00000001 87ca7f00 805c1874
[    1.344590] $ 4   : 00000000 00000047 00585000 8701f800
[    1.349965] $ 8   : 8701f800 804f4a5c 00000003 64726976
[    1.355341] $12   : 00000001 00000000 00000000 00000114
[    1.360718] $16   : 87ca7f80 00000000 00000000 80639fe4
[    1.366093] $20   : 00000002 00000000 806441d0 80b90000
[    1.371470] $24   : 00000000 00000000
[    1.376847] $28   : 87c1e000 87c1fda0 80b90000 804dd4f0
[    1.382224] Hi    : d1c8f8da
[    1.385180] Lo    : 5518a480
[    1.388182] epc   : 804dd50c kset_find_obj+0x3c/0x114
[    1.393345] ra    : 804dd4f0 kset_find_obj+0x20/0x114
[    1.398530] Status: 10008703 KERNEL EXL IE
[    1.402833] Cause : 00800008 (ExcCode 02)
[    1.406952] BadVA : 00000000
[    1.409913] PrId  : 0002a075 (Broadcom BMIPS4350)
[    1.414745] Modules linked in:
[    1.417895] Process swapper/0 (pid: 1, threadinfo=(ptrval), task=(ptrval), tls=00000000)
[    1.426214] Stack : 87cec000 80630000 80639370 80640658 80640000 80049af4 80639fe4 8063a0d8
[    1.434816]         8063a0d8 802ef078 00000002 00000000 806441d0 80b90000 8063a0d8 802ef114
[    1.443417]         87cea0de 87c1fde0 00000000 804de488 87cea000 8063a0d8 8063a0d8 80334e48
[    1.452018]         80640000 8063984c 80639bf4 00000000 8065de48 00000001 8063a0d8 80334ed0
[    1.460620]         806441d0 80b90000 80b90000 802ef164 8065dd70 80620000 80b90000 8065de58
[    1.469222]         ...
[    1.471734] Call Trace:
[    1.474255] [<804dd50c>] kset_find_obj+0x3c/0x114
[    1.479141] [<802ef078>] driver_find+0x1c/0x44
[    1.483665] [<802ef114>] driver_register+0x74/0x148
[    1.488719] [<80334e48>] phy_driver_register+0x9c/0xd0
[    1.493968] [<80334ed0>] phy_drivers_register+0x54/0xe8
[    1.499345] [<8001061c>] do_one_initcall+0x7c/0x1f4
[    1.504374] [<80644ed8>] kernel_init_freeable+0x1d4/0x2b4
[    1.509940] [<804f4e24>] kernel_init+0x10/0xf8
[    1.514502] [<80018e68>] ret_from_kernel_thread+0x14/0x1c
[    1.520040] Code: 1060000c  02202025  90650000 <90810000> 24630001  14250004  24840001  14a0fffb  90650000
[    1.530061]
[    1.531698] ---[ end trace d52f1717cd29bdc8 ]---

Fix it by readding the name.

Fixes: 719655a14971 ("net: phy: Replace phy driver features u32 with link_mode bitmap")
Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/phy/bcm63xx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/phy/bcm63xx.c b/drivers/net/phy/bcm63xx.c
index 23f1958ba6ad4..459fb2069c7e0 100644
--- a/drivers/net/phy/bcm63xx.c
+++ b/drivers/net/phy/bcm63xx.c
@@ -73,6 +73,7 @@ static struct phy_driver bcm63xx_driver[] = {
 	/* same phy as above, with just a different OUI */
 	.phy_id		= 0x002bdc00,
 	.phy_id_mask	= 0xfffffc00,
+	.name		= "Broadcom BCM63XX (2)",
 	/* PHY_BASIC_FEATURES */
 	.flags		= PHY_IS_INTERNAL,
 	.config_init	= bcm63xx_config_init,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
