Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A4516652C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:44:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dZkYcv2BzUggw33ibDWMULxiSqrWkzCUzat9jTk/uY0=; b=jILL71Gn90XCrE
	OjKsZyEc4zIujW4mldMseEO/V3zFKxcwEKK091ysCjJTOIqONP9FUge1gKkFaFnZbgqOf3t6L3kiP
	ZZcQn/OF9I/ockk9vGL6ph8hD1MsMnJcxFGxkawgp6EJsbV9PkMxjlNjSbQpB9n1GvkGCAmysxia+
	i71svg+ER9ahc0g+JJy+ySBRh+ofWfEbegwEJ7lHabZLI4HXM6PZuMoaGJSkDeVERul37BPhegift
	5JTA7v4anubhRsPcQSep8ZWvtUaHMH2s14fQJyGJDHkZ6V8imJAu13D/geDKHpFrq8I4W3u4NwITZ
	3+LZ/LyTmof7wWXlXnfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4prx-0007zy-IC; Thu, 20 Feb 2020 17:44:13 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4prk-0007x5-1s
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:44:01 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 2916C23D22;
 Thu, 20 Feb 2020 18:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582220631;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=s6EOAobt5saGFt58QDGrFmkjtzz3qIh/p10CWvZHnSU=;
 b=k0JCfTYyL8MAXZKhXwW/bGvI7bFU2v2Yfg5AX71LWPyopv+J3LmwTNRyCD99nmdoHOqUm4
 abzjqYU8LWZGQXXpb0Q5ooeFI/+03n/CusbWc75NaW2EHmOCB1biYlox4+6puh6L6vKNj3
 a78z0p3Lhigjxfjx3+AaRBtBRyVGdpY=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop EARLYCON_DECLARE"
Date: Thu, 20 Feb 2020 18:43:28 +0100
Message-Id: <20200220174334.23322-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 2916C23D22
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.503]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[14]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_094400_248375_7AB41281 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Yuan Yao <yao.yuan@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit a659652f6169240a5818cb244b280c5a362ef5a4.

This broke the earlycon on LS1021A processors because the order of the
earlycon_setup() functions were changed. Before the commit the normal
lpuart32_early_console_setup() was called. After the commit the
lpuart32_imx_early_console_setup() is called instead.

Fixes: a659652f6169 ("tty: serial: fsl_lpuart: drop EARLYCON_DECLARE")
Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/tty/serial/fsl_lpuart.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/tty/serial/fsl_lpuart.c b/drivers/tty/serial/fsl_lpuart.c
index 91e2805e6441..27fdc131c352 100644
--- a/drivers/tty/serial/fsl_lpuart.c
+++ b/drivers/tty/serial/fsl_lpuart.c
@@ -2390,6 +2390,8 @@ static int __init lpuart32_imx_early_console_setup(struct earlycon_device *devic
 OF_EARLYCON_DECLARE(lpuart, "fsl,vf610-lpuart", lpuart_early_console_setup);
 OF_EARLYCON_DECLARE(lpuart32, "fsl,ls1021a-lpuart", lpuart32_early_console_setup);
 OF_EARLYCON_DECLARE(lpuart32, "fsl,imx7ulp-lpuart", lpuart32_imx_early_console_setup);
+EARLYCON_DECLARE(lpuart, lpuart_early_console_setup);
+EARLYCON_DECLARE(lpuart32, lpuart32_early_console_setup);
 
 #define LPUART_CONSOLE	(&lpuart_console)
 #define LPUART32_CONSOLE	(&lpuart32_console)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
