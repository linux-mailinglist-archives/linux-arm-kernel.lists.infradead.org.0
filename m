Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9D3E6B57
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 04:16:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Olyp5F7YaxLqT63lXbdCizenE38AUoG1W0G1dZwvctk=; b=Jy7
	9GZGMLTSs9SHJIK5G+yRXXP67agolSCLrVd20utQaAva16G2DAZIb3XVVEUnzhbAkmPve61ZdwWtA
	XhwIuq83ONTGialMNlKe0usYka2wfuG8xo28sXxRmjQIsjmSXE+coWhu96xnMHoGC7Usf7Yhi8p6A
	oDtqiNvRjiGwWp117OE+zOXRU+Rw2knyfihHR7Hu4GpLJG9ia7zGHCmsQtNWEGB+9IkxBed3Kly/F
	ocs0O0bmjGbDzM9dhNM+bHTQyNPqNTP00UssQx8UeEPffD/3e8TYXXOZRg9MvYJT/Rj9m9P0skhn7
	oU/XBjYQGxE1ZEKFYh0/JCAvqzTMJhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOvW4-0006J0-Ui; Mon, 28 Oct 2019 03:16:24 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOvVp-0006HT-PU
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 03:16:11 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 68D1C1A0B11;
 Mon, 28 Oct 2019 04:16:06 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 232261A0058;
 Mon, 28 Oct 2019 04:16:02 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 486EA402F0;
 Mon, 28 Oct 2019 11:15:56 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/9] Add SoC serial number support for i.MX6/7 SoCs
Date: Mon, 28 Oct 2019 11:12:41 +0800
Message-Id: <1572232370-31580-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_201609_961152_E48322E3 
X-CRM114-Status: UNSURE (   4.32  )
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

i.MX6/7 SoCs have 64-bit unique ID stored in OCOTP bank 0, word 1/2,
read them out as SoC serial number which can be used from userspace:

root@imx7dsabresd:~# cat /sys/devices/soc0/serial_number
0000028FF618B953

Add support for i.MX6Q/6DL/6SL/6SX/6SLL/6UL/6ULL/6ULZ/7D, as they have
same unique ID layout in OCOTP.

Anson Huang (9):
  ARM: imx: Add serial number support for i.MX6Q
  ARM: imx: Add serial number support for i.MX6DL
  ARM: imx: Add serial number support for i.MX6SLL
  ARM: imx: Add serial number support for i.MX6ULL
  ARM: imx: Add serial number support for i.MX6UL
  ARM: imx: Add serial number support for i.MX6ULZ
  ARM: imx: Add serial number support for i.MX6SL
  ARM: imx: Add serial number support for i.MX6SX
  ARM: imx: Add serial number support for i.MX7D

 arch/arm/mach-imx/cpu.c | 38 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
