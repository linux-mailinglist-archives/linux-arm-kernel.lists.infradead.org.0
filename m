Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5FA180F45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 06:07:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpAlgEkFvE/e6+G1zAOIbf1pxleTBnAsasjDqktjGH0=; b=pVmnvrzWmFr7a9
	MPy92TH4KRW1xVY8L3fqyDfed2EOkRzkJtPPd+RyumW6TJxTSlfegAfRu/8y/VYN6fuvksArMfbAa
	RaLbFLcN23oxaqTzYMVWZYBYTDvv8A3NPYVb2GFLda1LazwfzlE+kx2VN8SuPVX02DOdKBk4dgPam
	lgWu9RtjDpACTPBChrlO8714dFe57YK5o0jSFlErzbZjdTDElFlrEk5MosnchxZ9mV9EmKLv6To71
	wbzl2lSdEw7xUEcXTjO0upEalkwby+4nvztN1aeqp1UAOu5+qj6D96BKAiKG+BPhKcjAcWyCbtw9C
	tn7gfswFtoE9dZFZSVcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBtan-0007Wv-VV; Wed, 11 Mar 2020 05:07:42 +0000
Received: from smtprelay0244.hostedemail.com ([216.40.44.244]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBta0-000737-6J
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 05:06:53 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id B7691181D3025;
 Wed, 11 Mar 2020 05:06:50 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:541:800:960:967:973:982:988:989:1260:1311:1314:1345:1359:1437:1515:1534:1541:1711:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2859:2901:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3865:3866:3867:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6119:6261:9025:10004:10848:11026:11473:11657:11658:11914:12043:12296:12297:12438:12555:12679:12895:12986:13069:13311:13357:13894:13972:14181:14384:14394:14721:21080:21433:21627:21811:21939:21990:30054,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: jewel27_1e8115a6f7d16
X-Filterd-Recvd-Size: 2301
Received: from joe-laptop.perches.com (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Wed, 11 Mar 2020 05:06:49 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH -next 005/491] ARM/UNIPHIER ARCHITECTURE: Use fallthrough;
Date: Tue, 10 Mar 2020 21:51:19 -0700
Message-Id: <dae0878058223a42c77d725b8d7c5845a7ef9dc0.1583896348.git.joe@perches.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1583896344.git.joe@perches.com>
References: <cover.1583896344.git.joe@perches.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_220652_321435_DE926A61 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.244 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.244 listed in wl.mailspike.net]
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the various uses of fallthrough comments to fallthrough;

Done via script
Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/

Signed-off-by: Joe Perches <joe@perches.com>
---
 drivers/tty/serial/8250/8250_uniphier.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_uniphier.c b/drivers/tty/serial/8250/8250_uniphier.c
index e0b73a5..a2978ab 100644
--- a/drivers/tty/serial/8250/8250_uniphier.c
+++ b/drivers/tty/serial/8250/8250_uniphier.c
@@ -75,7 +75,7 @@ static unsigned int uniphier_serial_in(struct uart_port *p, int offset)
 		break;
 	case UART_LCR:
 		valshift = 8;
-		/* fall through */
+		fallthrough;
 	case UART_MCR:
 		offset = UNIPHIER_UART_LCR_MCR;
 		break;
@@ -101,7 +101,7 @@ static void uniphier_serial_out(struct uart_port *p, int offset, int value)
 	case UART_SCR:
 		/* No SCR for this hardware.  Use CHAR as a scratch register */
 		valshift = 8;
-		/* fall through */
+		fallthrough;
 	case UART_FCR:
 		offset = UNIPHIER_UART_CHAR_FCR;
 		break;
@@ -109,7 +109,7 @@ static void uniphier_serial_out(struct uart_port *p, int offset, int value)
 		valshift = 8;
 		/* Divisor latch access bit does not exist. */
 		value &= ~UART_LCR_DLAB;
-		/* fall through */
+		fallthrough;
 	case UART_MCR:
 		offset = UNIPHIER_UART_LCR_MCR;
 		break;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
