Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D06AE6B68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 04:18:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i/qzMO50H4/hZa04RtJyV6YQY3PbV94FlpWQirQTeu4=; b=C7R3xC1+/iBv+CeWx9Ga3wjsj7
	JCZYmqVVB6+Xkpx+r/E7g0A0BmgkW9swdNZxyHnttqNrjP7hNMR/qSplMfzpJ0qwPa/YP9GL616fY
	mgB4TeIcncFwgOGqPveusdKb4DYlCnCr8mdsrF6mFv7zFGG17bVj1IsIKyotCMHjchnIwVRpfzfNy
	SnorRdO66/eri7NUWwoTKEp+uOhsYyg3gU6T2g30QLosFW3mHarozhNJbEDvdfxTAYNGzmN/G5CnZ
	lNIBUi9SZgsF8TOoYDd4rEqMDMLAdFYDLd9wCWQwV06jrVH6oYitKrAhtQ3TetiPgc5bkDZPTQOkn
	FOKAUnXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOvYK-00007z-FV; Mon, 28 Oct 2019 03:18:44 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOvVy-0006Pe-Sn
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 03:16:20 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 73BC61A0B20;
 Mon, 28 Oct 2019 04:16:17 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 326B71A0B0E;
 Mon, 28 Oct 2019 04:16:13 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9CD2D402F0;
 Mon, 28 Oct 2019 11:16:06 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 9/9] ARM: imx: Add serial number support for i.MX7D
Date: Mon, 28 Oct 2019 11:12:50 +0800
Message-Id: <1572232370-31580-10-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572232370-31580-1-git-send-email-Anson.Huang@nxp.com>
References: <1572232370-31580-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_201619_114369_1F890221 
X-CRM114-Status: UNSURE (   7.34  )
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

i.MX7D has a 64-bit SoC unique ID stored in OCOTP, it can be used
as SoC serial number, see below example:

root@imx7dsabresd:~# cat /sys/devices/soc0/serial_number
0000028FF618B953

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/mach-imx/cpu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index 17cfa86..d811803 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -160,6 +160,7 @@ struct device * __init imx_soc_device_init(void)
 		soc_id = "i.MX6SLL";
 		break;
 	case MXC_CPU_IMX7D:
+		ocotp_compat = "fsl,imx7d-ocotp";
 		soc_id = "i.MX7D";
 		break;
 	case MXC_CPU_IMX7ULP:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
