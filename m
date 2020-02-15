Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0769915FCB4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 06:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TJ9k/XTQqiOXL6Qzt5Nr6bQUjKrMumjM85BCSCTaJO0=; b=pLx
	tw/5XmX/8xWxp+Tsq+3N9hLZnlYTKoaO2GuJTYqRbdA1Hx7LNw4qth6S4bzmcIYjBIc9SPmTVNeaZ
	eCMrvt8qe3JjW8DjSNovUrFzJL3gKrACYgDN+exmsdnsVgU/Tcga76AQhQ71+y7wd4kWYRp121JoB
	+mRVQQ+JEQuabyeiH9q6f7tUWhyBwrn+/PqZ8+aTKQwZPut/xeq9Tl7IXjFE/2FLZPTHWYG6ftzqT
	UR7xiC4F5oCNt3FbYgxu7ZJi2YKB4eBJYBZhu3wUGMipqv8GvdbBzVXpRmb6/Em7WY/VLwuRTFs4q
	rTvlU/RrKxud2OPMSitdDp/j0uF+v6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2puC-000654-4A; Sat, 15 Feb 2020 05:22:16 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ptj-0005vD-Pe
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 05:21:49 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 214871A6BF1;
 Sat, 15 Feb 2020 06:21:40 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5F49A1A6BC8;
 Sat, 15 Feb 2020 06:21:34 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 49A2440297;
 Sat, 15 Feb 2020 13:21:27 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de
Subject: [PATCH V2 0/7] Add missing UART DCE/DTE pins macro defines
Date: Sat, 15 Feb 2020 13:15:51 +0800
Message-Id: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_212147_973572_5A427223 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

The patch set is to add missing UART DCE/DTE pins, because of previous
UART pins macro defines do NOT contain DCE/DTE, per the advice from
Uwe in V1 patch comment, to better distinguish the DCE/DTE functions,
I change the existing UART pins to contain the DCE/DTE, then add the
missing UART pins, meanwhile, keep the old macro definis there for some time
in order to make it backward compatible, and then, switch the existing
consumer DTs to use new UART pins macro defines with DCE/DTE inside.

As the changes in V2 is significant compared to V1, so I did NOT put
a change log in each patch, you can treat each patch as new patch, thanks.

Anson Huang (7):
  ARM: dts: imx6sx: Improve UART pins macro defines
  ARM: dts: imx6sx: Add missing UART RTS/CTS pins mux
  ARM: dts: imx6sx-nitrogen6sx: Use new pin names with DCE/DTE for UART
    pins
  ARM: dts: imx6sx-sabreauto: Use new pin names with DCE/DTE for UART
    pins
  ARM: dts: imx6sx-sdb: Use new pin names with DCE/DTE for UART pins
  ARM: dts: imx6sx-softing-vining-2000: Use new pin names with DCE/DTE
    for UART pins
  ARM: dts: imx6sx-udoo-neo: Use new pin names with DCE/DTE for UART
    pins

 arch/arm/boot/dts/imx6sx-nitrogen6sx.dts         |  20 +-
 arch/arm/boot/dts/imx6sx-pinfunc.h               | 288 ++++++++++++++++-------
 arch/arm/boot/dts/imx6sx-sabreauto.dts           |   4 +-
 arch/arm/boot/dts/imx6sx-sdb.dtsi                |  12 +-
 arch/arm/boot/dts/imx6sx-softing-vining-2000.dts |   8 +-
 arch/arm/boot/dts/imx6sx-udoo-neo.dtsi           |  28 +--
 6 files changed, 237 insertions(+), 123 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
