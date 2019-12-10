Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D99B118B33
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:39:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6bdKcUA4IuJ9cbc7891vWKEsYcRCGClIcpcdiApgYE=; b=O+JPlOZWRRyQu4
	UE5CfR4DHUGoSJFWrGgxSm9YbIynkfslKTY+ozuyVCl5U7uL9TKphqzCdlLv9oo797s8DvU6y5VBe
	hgRLunUveaWW95SRIArrplox46ftE5cyWctltI7flrYI4NUbh8PaVUdMJMGucLNHt+q61GwbY4Aaw
	f8q8LaXt2VcMfKdWEV6pC6N+lhK7FhlQH81tubRsp1Sa9c0cpG+p2UflVS9aws9CsusGpILq8mVhp
	AKaIpiz+v4JNn6OFbd7YgWWl8/X1AZ8izDF18UtTQQZae1szYR5ENiKgyoZYQXPUv4yUEZzcWbqzU
	Nj9C1W5BK/Dx8iMXRmPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegfE-0005kA-4P; Tue, 10 Dec 2019 14:39:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegdt-0004HK-5i
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:37:40 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 551EA20836;
 Tue, 10 Dec 2019 14:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575988656;
 bh=5F9He/JTjS47XRoiu2ueFi9Y8ZrlEGSvSIqSGl6ur+o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Asj3mXXjQdygob6rd9S0uaev96tViCJSG8p4cN9zI4oMsQ1wB7nKWDAYyabUyFk7I
 XVtgyQ+Ehm1I7KehZv7JqaqD3aqnuFHXt8iTy8vfD5VAVwar70lN7Zx+dej4dFMekh
 16OUcNKotDz2Z4U4vyFgN3G5Ed8EaNzxNvNAa9ic=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-serial@vger.kernel.org
Subject: [PATCH 09/10] tty: serial: samsung_tty: fix up minor comment
 formatting
Date: Tue, 10 Dec 2019 15:37:05 +0100
Message-Id: <20191210143706.3928480-9-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_063737_274450_C654995A 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up some minor formatting of comment blocks to make checkpatch
happier and to make things look more uniform.

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Hyunki Koo <kkoos00@naver.com>
Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
Cc: Shinbeom Choi <sbeom.choi@samsung.com>
Cc: Jiri Slaby <jslaby@suse.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: linux-serial@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/tty/serial/samsung_tty.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 3dfb4f37ec69..4aebed241068 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -4,7 +4,7 @@
  *
  * Ben Dooks, Copyright (c) 2003-2008 Simtec Electronics
  *	http://armlinux.simtec.co.uk/
-*/
+ */
 
 /* Hote on 2410 error handling
  *
@@ -19,7 +19,7 @@
  * and change the policy on BREAK
  *
  * BJD, 04-Nov-2004
-*/
+ */
 
 #if defined(CONFIG_SERIAL_SAMSUNG_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
 #define SUPPORT_SYSRQ
@@ -838,7 +838,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
 
 	/* if there isn't anything more to transmit, or the uart is now
 	 * stopped, disable the uart and exit
-	*/
+	 */
 
 	if (uart_circ_empty(xmit) || uart_tx_stopped(port)) {
 		s3c24xx_serial_stop_tx(port);
@@ -1142,7 +1142,8 @@ static int s3c24xx_serial_startup(struct uart_port *port)
 	ourport->tx_claimed = 1;
 
 	/* the port reset code should have done the correct
-	 * register setup for the port controls */
+	 * register setup for the port controls
+	 */
 
 	return ret;
 
@@ -1242,7 +1243,7 @@ static void s3c24xx_serial_pm(struct uart_port *port, unsigned int level,
  * baud clocks (and the resultant actual baud rates) and then tries to
  * pick the closest one and select that.
  *
-*/
+ */
 
 #define MAX_CLK_NAME_LENGTH 15
 
@@ -1683,7 +1684,7 @@ s3c24xx_serial_ports[CONFIG_SERIAL_SAMSUNG_UARTS] = {
 /* s3c24xx_serial_resetport
  *
  * reset the fifos and other the settings.
-*/
+ */
 
 static void s3c24xx_serial_resetport(struct uart_port *port,
 				   struct s3c2410_uartcfg *cfg)
@@ -1737,7 +1738,8 @@ static int s3c24xx_serial_cpufreq_transition(struct notifier_block *nb,
 
 	if (val == CPUFREQ_PRECHANGE) {
 		/* we should really shut the port down whilst the
-		 * frequency change is in progress. */
+		 * frequency change is in progress.
+		 */
 
 	} else if (val == CPUFREQ_POSTCHANGE) {
 		struct ktermios *termios;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
