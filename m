Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225EEE6B66
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 04:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a3mTQdPfrBI8yYHQBGgeKJAd2F7po45A0AlOhK4MWTs=; b=kFGc/qPjwjB2rHy8aJRmgdLdce
	TDY6aqi79i/+DFnX9afcEPchWK/SlM8hmBVXHz7Zp510RRDcdX1LLIRL0+7tkN7m+PHR4Pi3IzcsH
	TgGhe5H6ycDiePQX1t7VHcNbvnJHKg3uXcRm8fCy8M2ZpvUXQVLAk8VGS/VxxNEl1ApS1v8M2BRNv
	aftQFIwRkG6Is98fdBD9cfJlyWgIXqQq57azmeUPB31zSDFSuS8PTQbM/HjJ9/U1lSOk6p9y0NDx6
	Fl/v9gBVCGmnJeAmrP3B9JXQBROAXw0zT2wThzZuS8eQ/hEpt0NTA7BgWsSa04nQh+Y/rrSSK0f2N
	PYQ4H7Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOvXz-00085V-1H; Mon, 28 Oct 2019 03:18:23 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOvVw-0006NY-V3
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 03:16:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AB6791A0B2D;
 Mon, 28 Oct 2019 04:16:15 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 69E631A0B21;
 Mon, 28 Oct 2019 04:16:11 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5890A40324;
 Mon, 28 Oct 2019 11:16:02 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/9] ARM: imx: Add serial number support for i.MX6UL
Date: Mon, 28 Oct 2019 11:12:46 +0800
Message-Id: <1572232370-31580-6-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572232370-31580-1-git-send-email-Anson.Huang@nxp.com>
References: <1572232370-31580-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_201617_169146_6AAE0808 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX6UL has a 64-bit SoC unique ID stored in OCOTP, it can be used
as SoC serial number, see below example:

root@imx6ul7d:~# cat /sys/devices/soc0/serial_number
6738495762ACE932

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/mach-imx/cpu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index cdb9d6d..1e8150e 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -142,6 +142,7 @@ struct device * __init imx_soc_device_init(void)
 		soc_id = "i.MX6Q";
 		break;
 	case MXC_CPU_IMX6UL:
+		ocotp_compat = "fsl,imx6ul-ocotp";
 		soc_id = "i.MX6UL";
 		break;
 	case MXC_CPU_IMX6ULL:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
