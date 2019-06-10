Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 496903B70A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JkLqHcYLaLvt0qF39pJ1NL9hE+3tO2hNmI+fLGYLcPA=; b=tXO
	bGW4Nl2m6tMkjj9uX+HHq6XheARPJNp8mUNN9srS4KHQ7/DSoy59riDFnVGO1qL3WkKue2Dgqcaly
	FlM8c87ixw4v8NYHADMu7FQ7GvPG6TcZJH87r6EoXEmbzSktqEeKIQN3ZTv7fA/3cWM6Yuc+6sp/b
	HjIViinfIzES9bfyVrmHj7FJ5CK/Ud6iM+b0bU2DFgOernGQrwoxsSXHGA+DGnlT0/KiMXWs64J+f
	RRoWbq+HCiniWL+ec2gthwg9B30RofM1IqFkYeyXZDx0VgXFk7EVKPkO8EpLIOd74hJLi7KF5RmX+
	0O3pzAuiB0lgyEXEglebwwMkK51wy1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haL4P-0002gK-KD; Mon, 10 Jun 2019 14:14:45 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haL4E-0002fD-DN
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 14:14:35 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E3FDF1A0854;
 Mon, 10 Jun 2019 16:14:30 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0653F1A0855;
 Mon, 10 Jun 2019 16:14:26 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A4929402C0;
 Mon, 10 Jun 2019 22:14:19 +0800 (SGT)
From: daniel.baluta@nxp.com
To: jassisinghbrar@gmail.com,
	o.rempel@pengutronix.de
Subject: [RFC PATCH 0/2] Introduce Tx doorbell with ACK
Date: Mon, 10 Jun 2019 22:16:07 +0800
Message-Id: <20190610141609.17559-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_071434_592750_C08769B3 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

We need this in order to implement the communication protocol
between Linux kernel SOF IPC layer and DSP firmware found on i.MX8 boards.

First patch is just a bugfix and can be merged as it is.

The second patch is just a RFC to open the discussion on how to use the i.MX
mailbox API in order to communicate with the DSP. I want to know if this
scenario can be supported by the mailbox abstraction of MU or should I
go back and directly access MU registers.

We need to have two MU channels:
	- channel #0, Host sends notification (via GIR) to DSP and gets a reply (via GIP)
	- channel #1, DSP sends message to Host (via GIR) and gets a reply (via GIP).

The details of the protocol can be found in patch 2.

Daniel Baluta (2):
  mailbox: imx: Clear GIEn bit at shutdown
  imx: mailbox: Introduce TX doorbell with ACK

 drivers/mailbox/imx-mailbox.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
