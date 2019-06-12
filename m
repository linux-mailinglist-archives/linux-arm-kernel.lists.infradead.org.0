Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 977B0423D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=339CYgs/GB54ZA5noSRLmi/hWSGKOf2TxuEIf7ODFmY=; b=qnqcKcxWlDoVJVj6fnwW2egFFr
	KpsZP/iFBKTLO3flN32w46uSVWUZpsvoJMoRMsUrZpuYVHpPfNIICv+9/zQqiNC3qIFIlvfvgjt8J
	xAdV0rSkNeLcirCLHcZuzroTDilwiFW7Oyz8MGyEKxse6AOUgBQ74JYcPWkzDQtM3ppymPpcTEoxQ
	tEarbYXHDGmnHb0B99h5xQY4fGY53wlvdq8Z5gyv1ySSLPR7EVXbI2clMEpYWYaZLdPCXBY4HOAog
	WD0eeMc2F22VHspph1sbOBNgh/bb/sWCHPZFv/5TYb41v3E8nyDh/EIpXkRbpjW23K5Q3l0/SAog5
	wCGYl6Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1FQ-0000mP-GI; Wed, 12 Jun 2019 11:16:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1DY-0006Fg-Bg
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:15:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id a15so6118180wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=N7TfMirow0WLkJ8Qk5sTGDNuiXjkVvo5PhKfS+WN4/0=;
 b=TvHkcos3aVvBmtDnRVLiF8pREYuprtIOehZYrLYdAyjZP7EdbPz6anRT6UL2bn+1lt
 iRSNcVbOmYQ+kkQ3JbVs1+N1QXgzSkLX7YOg4L2t2XY70f8q+rjIVRsJ4twJwhJN5UVZ
 5vJXv8Lim0Z9xob8xQk0ZvGfB+Z70kXkXVtj9Vo9sPNZX6nj6jRDgEYn1CZRGWviaBdS
 8d2kZlRPWm/+iACF30dR/3uZm/5FVD9NxZ0mvNShAZQiO33Rxhr5EDslpWhYAWS2n20q
 sZ86aP63QHnIW66uQRUQxsSNaaLrpUhja+T3uqyEQLfK6EbRGrP9SJ6Yvc6TpIiuxChN
 7asQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:in-reply-to:references;
 bh=N7TfMirow0WLkJ8Qk5sTGDNuiXjkVvo5PhKfS+WN4/0=;
 b=pMiIYfQ296067pumwetXYVbAbEOQ1Lb/u0ReP9ms3sdyLaqd6B9+d9sdO520QfwQ2K
 vtkP77Djix9r1xOTZiHRoSFX+QbfFUyYlfycL46vXvGkdIWofncGLqAjjjkcycaRzJ2E
 se0vAYuPgUsQGfhmWvaYf7JCBHZQNgky5h0BIb06lIW3nPAMf+u87iBSAwj76k/qIPjF
 AmRboH3RfT1kNAW/L0PrugwJ9jS6Rs8yRYDlM6wlTaSgdf+Vg3SCB4r2m6OV11wJgbQx
 BMGSvtVKzpv1852BPvg4IEP44y2kjtX2lqovV9By1GBQWdJyqQH2wjcPI5PI1yJY2vXY
 bh5A==
X-Gm-Message-State: APjAAAXiqT29rTiabRltw9xaj/d9TT1x6nykVKQaI75xNX6sl/XjABfZ
 Hlds9+9H5e4Jb6VtR8fYw0jamg==
X-Google-Smtp-Source: APXvYqxDqteBduXIGovJOsGxQCU7BEXqUQmBQgzI25tvhIXaofsgXxbwQoEvBU7rTYV1bD0qZFpatw==
X-Received: by 2002:a1c:1b81:: with SMTP id
 b123mr21041986wmb.144.1560338098580; 
 Wed, 12 Jun 2019 04:14:58 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id g19sm6514083wmg.10.2019.06.12.04.14.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 04:14:58 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com
Subject: [PATCH v2 6/6] serial: uartps: Remove useless return from
 cdns_uart_poll_put_char
Date: Wed, 12 Jun 2019 13:14:43 +0200
Message-Id: <19a9f67770e1896dde57d94b093273b503610eef.1560338079.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_041500_582413_99974FF0 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nava kishore Manne <nava.manne@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nava kishore Manne <nava.manne@xilinx.com>

There is no reason to call return at the end of function which should
return void.

The patch is also remove one checkpatch warning:
WARNING: void function return statements are not generally useful
+	return;
+}

Fixes: 6ee04c6c5488 ("tty: xuartps: Add polled mode support for xuartps")
Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Split patch from v1
- Add Fixes tag

 drivers/tty/serial/xilinx_uartps.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index d4c1ae2ffca6..bcef254fa03c 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -1074,8 +1074,6 @@ static void cdns_uart_poll_put_char(struct uart_port *port, unsigned char c)
 		cpu_relax();
 
 	spin_unlock_irqrestore(&port->lock, flags);
-
-	return;
 }
 #endif
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
