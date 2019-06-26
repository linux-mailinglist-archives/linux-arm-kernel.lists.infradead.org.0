Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10AD56678
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tMmohJdcfB8E4f2A7h+GXWiQMehXbXXdQPQtFM05k9s=; b=MeHztCCsIoB6KN
	4mbcyy1RVfvoVxjQa17d1PYyiWF9YszCan0aNWBOB40e8lO2m+02OtBqSjniL6jWNzrBDWQ3m5DQK
	dT7d/Zgn8QImzNKBJhN0sh1YM23bvUvi9IT3u4SqELP9YocHitClf4oru7QBVThazzDkcZx86Qr6q
	fvRj0TNEWSF/cLynZUStdxjdGj+4T5qxfjpK3yAJHIiLMhZz/GOLnivRR0UoXWHVFeX/Ow93PvplJ
	gXZpSOPJEIJfGpTgT5+oFlDNCfhw/hwWLkaTwQYU9aaxpKzRlqHZ+tT2P1+as4sO4chK4ZwK2yNUl
	IDdIytyoL/m5U9PDh0hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4yz-0001N5-CS; Wed, 26 Jun 2019 10:16:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4yT-000160-Pc
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:16:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hg4yC-00076d-5r; Wed, 26 Jun 2019 12:16:04 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hg4y7-0006s2-BF; Wed, 26 Jun 2019 12:15:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-serial@vger.kernel.org
Subject: [PATCH 0/2] serial: imx: use UPF_AUTO_CTS
Date: Wed, 26 Jun 2019 12:15:55 +0200
Message-Id: <20190626101557.26299-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_031621_977495_AB87AA99 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series eliminates a duplicate call to uart_handle_cts_change() and
sets the UPF_AUTO_CTS flag for the i.MX UART driver.

Normally setting the UPF_AUTO_CTS flag should only be a little
optimization as the transmitter is no longer enabled/disabled with every
CTS change, here it fixes an issue which initially brought me to
implement this patch. I am working on uploading a firmware to a Marvell
bluetooth chip. During download it often happened that a CTS interrupt
was lost and the upload stalled forever. This patch fixes the issue
(without knowing why we lost CTS interrupts in the first place)

This series is based on Sergei Shtylyovs series "serial: imx: fix RTS
and RTS/CTS handling" and should be applied ontop of it.

Sascha Hauer (2):
  serial: imx: remove duplicate handling of CTS change
  serial: imx: use UPF_AUTO_CTS

 drivers/tty/serial/imx.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
