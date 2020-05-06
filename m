Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D47961C685D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PLgl/K4+kyNwXYu10OfPqxadv5Rk1hZCK0DHoNWAiWs=; b=ogIOFgnyY9pA0J
	zz/9p6KxMItXRFQ2h4ziUmoCCS8FQKuR3xevkra/5ir65Hfd8O7TANy84rtE1gIATr5nrx5nD2BHk
	lbPQ2wTXgZLp9B685fPPrXx6rX/qDSJXpVy/0v4VmAlc769xLp+BDhw5PCGhaf6lsj70tHuMuU3Qc
	krcxXzgE95RthmVJXphEBeq4gtIXtKl+aGvF/rOT3ZmPrBBy9FxIgN8yFOA2CGa3Q8hZhkpVZI8r1
	3MEJFSwWyRPEzaG0mr6x9tt6Hokidsz5Lt29DxO1ABJpNxCqA2wkbE50j5p8NPcD+1TrPbd3fmpsh
	VOQwx26ndOPvOfAATCBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDOQ-0002V4-72; Wed, 06 May 2020 06:18:54 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDOF-0002Q3-TL
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:18:45 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 03D1039169515BAFE5D3;
 Wed,  6 May 2020 14:18:19 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Wed, 6 May 2020
 14:18:13 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <jirislaby@gmail.com>, <gregkh@linuxfoundation.org>,
 <shawnguo@kernel.org>, <s.hauer@pengutronix.de>, <kernel@pengutronix.de>,
 <festevam@gmail.com>, <linux-imx@nxp.com>, <yanaijie@huawei.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] tty: mxser: make mxser_change_speed() return void
Date: Wed, 6 May 2020 14:17:35 +0800
Message-ID: <20200506061735.19369-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_231844_122189_F8478A0A 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No other functions use the return value of mxser_change_speed() and the
return value is always 0 now. Make it return void. This fixes the
following coccicheck warning:

drivers/tty/mxser.c:645:5-8: Unneeded variable: "ret". Return "0" on
line 650

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/tty/mxser.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/tty/mxser.c b/drivers/tty/mxser.c
index 9d00ff5ef961..3703987c4666 100644
--- a/drivers/tty/mxser.c
+++ b/drivers/tty/mxser.c
@@ -638,16 +638,15 @@ static int mxser_set_baud(struct tty_struct *tty, long newspd)
  * This routine is called to set the UART divisor registers to match
  * the specified baud rate for a serial port.
  */
-static int mxser_change_speed(struct tty_struct *tty)
+static void mxser_change_speed(struct tty_struct *tty)
 {
 	struct mxser_port *info = tty->driver_data;
 	unsigned cflag, cval, fcr;
-	int ret = 0;
 	unsigned char status;
 
 	cflag = tty->termios.c_cflag;
 	if (!info->ioaddr)
-		return ret;
+		return;
 
 	if (mxser_set_baud_method[tty->index] == 0)
 		mxser_set_baud(tty, tty_get_baud_rate(tty));
@@ -803,8 +802,6 @@ static int mxser_change_speed(struct tty_struct *tty)
 
 	outb(fcr, info->ioaddr + UART_FCR);	/* set fcr */
 	outb(cval, info->ioaddr + UART_LCR);
-
-	return ret;
 }
 
 static void mxser_check_modem_status(struct tty_struct *tty,
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
