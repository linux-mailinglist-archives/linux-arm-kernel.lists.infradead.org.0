Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03896423CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HDVu+4gn4MTKBeqjWYjVRkAW3ZI7pJJFrpPtEunwM8A=; b=HLnOBIUZY/MJaqCu9PnezYM++2
	7nVQHdst3vR6fsS3L3AvwcS7WrJ4FWize/UrWC5JND/hmUamnmON/qjpvNFG9qt+8S2/o8hPDGvCy
	UCvixQNX3tge6E516DC+B3a7KtUIOgJamtvWqUz2AwkDco/eNVjA8gC8GjCu6BGuD/wmPESyay2md
	ORNUIQZg7V5cFEwhSS+IF5qiM8tuPUD8qWXVPYmunaQ0mJZ7vNvVB86/JQn3qlzZ/RdNZ6gDLlt4e
	khIKN8HAdGSNqGDMPHdm3yVHPHQtmvAAnPz5ImGVJxL/NOW7YnwtqkRs3ydz5O6LZqHaiFm+oHKqf
	BAuU7U3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1FA-0000b3-AW; Wed, 12 Jun 2019 11:16:40 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1DX-0006EH-30
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:15:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id z23so6091714wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=JC6Q8CjmGdxzS1r/l1ugJJUHGuJAio4YE7r12Sbrm1Q=;
 b=dfHnZnm/KeAKx0Y53W8U+Gve09GK0RsLcHKGzBp8skf8dieoVp+3rfiL2YnQayFHcb
 Lkfz1A+SwK7w+BUs52YV74L3fZLP3J9loLnVg+o9gWVgFH0oSAU6JzR3FOXHo2SkklyO
 s1WZEV1YfCDAmEPtAm3S/PpyLCfDN8f+/eiUzFsjKKNirIBLFta9bZocKUHJW3iuYWXk
 Kvz+A4Ujf8PryyBkA08Z4eCmgbflrI4pyjgutp3y8C0zfcrFW2FNAaPnpCkrMY3Tw/ly
 enYA/42NpbShVA/yMX21VKyJWtjCP4rreyRiWs0ec1wfiByCbkYA970s8PpE6ujeb/pq
 wq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:in-reply-to:references;
 bh=JC6Q8CjmGdxzS1r/l1ugJJUHGuJAio4YE7r12Sbrm1Q=;
 b=Gq9wGxFYo+mmtBsex5LNMmgYainvA9SXR6WzKkYUGrn2fK7yYjpWlDRX50omYJRfl7
 9Tl3QHEZ10Fztqqil34/gtN7S7fZmKZ0KxVQP1joG2DxjIcHE+VZlfSIP5QBXM0NypOT
 fn5ZYD5qh30S6fFeN+o6NXbakp6u9uACr/Pb9kcdX/XzjOCbcBIa279ydJRzPN3ZTwDd
 z4d2haNxCY4DpAohYnym0yhMfHiH1Z6u96hgBcgP/yyrM7vSlIGG07TwYfBzxSOVa7QM
 PYAprF2/jEXSeaq8ScsBe5mhi5TFxIyGA1Hak1TSQ7SkSnCsFB0b77xDzmuzl3HDWoPv
 U6Kg==
X-Gm-Message-State: APjAAAVXZjW9CEJeykYtsXIBKtpQiykBKCzBTx25YuL1sEy3JjO7bll7
 lS9kZ8nvtpipknfTqPR1BXKUNQ==
X-Google-Smtp-Source: APXvYqxhsrtt2KXOawEWbugdsCleP2uygG0LIu+9qXaDXVByC4OzGpQkIVhgSA12n1EyQRy68HBOsw==
X-Received: by 2002:a1c:3d41:: with SMTP id k62mr19765359wma.61.1560338096902; 
 Wed, 12 Jun 2019 04:14:56 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id j16sm38159921wre.94.2019.06.12.04.14.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 04:14:56 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com
Subject: [PATCH v2 5/6] serial: uartps: Do not add a trailing semicolon to
 macro
Date: Wed, 12 Jun 2019 13:14:42 +0200
Message-Id: <5d938d34c3c4710577df898dbf4b70c74d2e6730.1560338079.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_041459_258938_962C14D5 
X-CRM114-Status: GOOD (  12.05  )
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

This patch fixes this checkpatch warning:
WARNING: macros should not use a trailing semicolon
+#define to_cdns_uart(_nb) container_of(_nb, struct cdns_uart, \
+		clk_rate_change_nb);

Fixes: d9bb3fb12685 ("tty: xuartps: Rebrand driver as Cadence UART")
Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Split patch from v1
- Add Fixes tag

Origin patch which introduce this semicolon was
c4b0510cc1571ff44e1 ("tty: xuartps: Dynamically adjust to input frequency
changes")
---
 drivers/tty/serial/xilinx_uartps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index c3949a323815..d4c1ae2ffca6 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -199,7 +199,7 @@ struct cdns_platform_data {
 	u32 quirks;
 };
 #define to_cdns_uart(_nb) container_of(_nb, struct cdns_uart, \
-		clk_rate_change_nb);
+		clk_rate_change_nb)
 
 /**
  * cdns_uart_handle_rx - Handle the received bytes along with Rx errors.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
