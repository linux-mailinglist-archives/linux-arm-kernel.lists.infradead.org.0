Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C217915DDAA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZrj0bfnUI3T70BZL4UtWLeBslfUPLuM+aQ4KS/vRow=; b=rA5c7U8BGo2Gvy
	rhf+qJhFx4Gb6omvWWGgEUpWoPgExzJYLXO+bom/KaNv7W1s3lWKRVSM0jS+CzHXTLDSv2T/J4zEf
	bbWNMXaDJ7F7JJD+T649vNuPNx+CYw8jIAqalSwDFtJ3e2tmRA03ipG73zTxOH4iaj8Utm9TB1vEk
	uKc3DGZZCi3FQSFWETVxsntNDaPtv92Tve+7A95Lgh1r/0qMvjKulxGg9Ogr+Lamy633bcLuhxpGq
	K81J90qDPp25WUQaDyy/Kt0X3M6I0h7iD5P1V/fUsVUYqZiY8pSKt5GKqsuY4xdy8G1ls8lLFvmLx
	0toyN2qw4f3CSB1droWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dOU-0006fu-6I; Fri, 14 Feb 2020 16:00:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dHj-0006kb-VI
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:53:45 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98BB824682;
 Fri, 14 Feb 2020 15:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695623;
 bh=8ZM05lNKpU6kdaPrhIh/NDaUPwNaVKRoptZj+HHqS/A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0X82fS4vqMCW82aYrM5qCPh1XoL5ECdTqViJON/O8jcCMiXlRtt+Fi5WJmcjZB2/A
 oe1CyNnvExiLp0Lv5C5BD0zBtiBQdU9YrjGobf21lH7MdxJJku11QVlf5uzXrp9ueV
 jyyqCFjuhgtRYEdtSgpN16k0nfROoGcdH52pwRIw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 222/542] Revert "tty/serial: atmel: fix out of
 range clock divider handling"
Date: Fri, 14 Feb 2020 10:43:34 -0500
Message-Id: <20200214154854.6746-222-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075344_049382_847FB4D9 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-serial@vger.kernel.org,
 David Engraf <david.engraf@sysgo.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

[ Upstream commit 6dbd54e4154dfe386b3333687de15be239576617 ]

This reverts commit 751d0017334db9c4d68a8909c59f662a6ecbcec6.

The wrong commit got added to the tty-next tree, the correct one is in
the tty-linus branch.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: David Engraf <david.engraf@sysgo.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/tty/serial/atmel_serial.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/tty/serial/atmel_serial.c b/drivers/tty/serial/atmel_serial.c
index 1ba9bc667e136..ab4d4a0b36497 100644
--- a/drivers/tty/serial/atmel_serial.c
+++ b/drivers/tty/serial/atmel_serial.c
@@ -2270,6 +2270,9 @@ static void atmel_set_termios(struct uart_port *port, struct ktermios *termios,
 		mode |= ATMEL_US_USMODE_NORMAL;
 	}
 
+	/* set the mode, clock divisor, parity, stop bits and data size */
+	atmel_uart_writel(port, ATMEL_US_MR, mode);
+
 	/*
 	 * Set the baud rate:
 	 * Fractional baudrate allows to setup output frequency more
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
