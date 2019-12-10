Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67F91199AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:49:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dy+toV5w/xqGpkxEZzWvma03oj7JkunRiLaebEx+7Rw=; b=Gd1
	Uy1iJijXHbvMFVWjAZ7Yw8aS8DlvbY5dVsRWl5EHUlvQ1WmAVgEv8WkySW/2xvPF6f527bMFs3u+F
	nMiKorEfw+dbx1x274C4L7vrFcXR9dypK+VIUB7KFi6KHwI7xEa5+9cFDO1ss2FWjbXb+SssEUQO/
	ZVlD5MmMTLz3Eg5v5e2d6kFtBIFrKnlH/4TkVpCJCRODWmanB7YUog1ePNvD4iscQ/deOZuh5aIm6
	CfCBffaBI0ZSFU5GJLXmMfrrrJJJ1gwq23iCqYJ5X5YmtHjGmxbwiJsh+8Q3RiEEoEIaz+nfaKGyb
	QSGJVSjMVwFH3XxBoncV/OmpUetzxZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ienO2-0002Xr-Ie; Tue, 10 Dec 2019 21:49:42 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienNu-0002Wd-Lc
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:49:35 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E9FED1A0ADB;
 Tue, 10 Dec 2019 22:49:31 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DDCC11A0208;
 Tue, 10 Dec 2019 22:49:31 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 86BBF20567;
 Tue, 10 Dec 2019 22:49:31 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Anson Huang <Anson.Huang@nxp.com>
Subject: [PATCH 0/2] Fix imx6ull/6ulz boot crash
Date: Tue, 10 Dec 2019 23:49:27 +0200
Message-Id: <cover.1576014367.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_134934_844422_E386AFA2 
X-CRM114-Status: UNSURE (   4.72  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These chips currently crash on boot while attempting to read SOC serial
number. Fix in two stages:

* Fix ocotp lookup crash on failure
* Fix ocotp lookup failure

Leonard Crestez (2):
  ARM: imx: Fix boot crash if ocotp is not found
  ARM: imx: Fix ocotp_compat for 6ull/6ulz

 arch/arm/mach-imx/cpu.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
