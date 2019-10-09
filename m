Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44766D109E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fbrW+MRCeHQIksqNt6wR+Nxy6S/stTpjJrxNDwdgsaM=; b=Xt6cGRF+cvqwsX
	07LoqvrMbv7qkZz/dbAhQ0zMNqjPy0xH7mBcHykIWwE23z73hA+iLcKJCuTWZvVZwnN5yNKV4YVG+
	0QJwGJkdUyBUiIYErEJy7Th33f0m4mVekUEFw/4+wm28GAM25gZl3kiZGM+SAefdleYVhqhva2YYC
	3TfOL0w3DnbOS8gikvRyn+vXnlmR70ytBI9ZbUsUZj44frPENVH0PNr4tHLkKSEVGcuUctt8GU1wx
	5svnCbgkzKazEroam8PLprb1luM2ZtIMVpUVb+ab6IQ0REOc6PxgsHoW9ppFTPOD2CTsj1n/FMh/6
	oQPQNOCkDZG6g+oARPwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICPt-0006ev-49; Wed, 09 Oct 2019 13:54:13 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICPj-0006dP-Te
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 13:54:05 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iICPd-00080u-TF; Wed, 09 Oct 2019 14:53:58 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iICPd-0002v5-DO; Wed, 09 Oct 2019 14:53:57 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] serial: sirf: make register info static
Date: Wed,  9 Oct 2019 14:53:56 +0100
Message-Id: <20191009135356.11180-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_065404_096988_F3015427 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Barry Song <baohua@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ben Dooks <ben.dooks@codethink.co.uk>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sirfsoc_usp and sirfsoc_uart objects are not
used outside of the drivers/tty/serial/sirfsoc_uart.o
so make them static. Fixes following sparse warnings:

drivers/tty/serial/sirfsoc_uart.h:123:30: warning: symbol 'sirfsoc_usp' was not declared. Should it be static?
drivers/tty/serial/sirfsoc_uart.h:189:30: warning: symbol 'sirfsoc_uart' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jiri Slaby <jslaby@suse.com>
Cc: Barry Song <baohua@kernel.org>
Cc: linux-serial@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/tty/serial/sirfsoc_uart.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/sirfsoc_uart.h b/drivers/tty/serial/sirfsoc_uart.h
index 004ca684d3ae..637b09d3fe79 100644
--- a/drivers/tty/serial/sirfsoc_uart.h
+++ b/drivers/tty/serial/sirfsoc_uart.h
@@ -120,7 +120,8 @@ static u32 uart_usp_ff_empty_mask(struct uart_port *port)
 	empty_bit = ilog2(port->fifosize) + 1;
 	return (1 << empty_bit);
 }
-struct sirfsoc_uart_register sirfsoc_usp = {
+
+static struct sirfsoc_uart_register sirfsoc_usp = {
 	.uart_reg = {
 		.sirfsoc_mode1		= 0x0000,
 		.sirfsoc_mode2		= 0x0004,
@@ -186,7 +187,7 @@ struct sirfsoc_uart_register sirfsoc_usp = {
 	},
 };
 
-struct sirfsoc_uart_register sirfsoc_uart = {
+static struct sirfsoc_uart_register sirfsoc_uart = {
 	.uart_reg = {
 		.sirfsoc_line_ctrl	= 0x0040,
 		.sirfsoc_tx_rx_en	= 0x004c,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
