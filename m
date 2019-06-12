Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 119A9423CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YXHyRE7LlsFCiaW4Rel+M2MUP1+qMYBzFZpb8Fy3mu0=; b=bgDsG70/HbzSClbtZwRJ8UkRNM
	4pYjHSe1itrKXkbl3AVEi01Pvkuq6ynqzBWbr3y5f21Sfmz5gPp1SH7xFaX20r2MHIBmDfiKRmUTK
	WXLzCTv1GxKMNqNF9kcuGDWaQd8KE1sgHZSsiL485he8tyRH8p23+5pcaJ/YEXr7ooYqI02P8GmQq
	Hs7eCbONQ7/KX1wiOtW/Y9qxkaWDTuE211F/mfxY/eq0K3BcIRcPfVSpcVmo3ccs1LSJ9Gh89jHwG
	TqUGssdnYB/ZxFW8BJUjx2AwaSTBIqdJ4vP4Q/mXZ01NKRFI/Vw6fbJH7gii7GY1VjcTgBOZpnKT0
	HFmZwgVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1ES-0008DW-C0; Wed, 12 Jun 2019 11:15:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1DR-000699-NG
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:14:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so16498856wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=pL4z/swoTMwbTbMm+CZTE8PZN5IahPwWK1oKgA44Jw8=;
 b=P6xquQrececmcvLrvYX6swykHVbte7Nk4tMjJVlxC/IGkE5po85UR/FmEjTmBnjHBN
 7UXsptqBv4hijV+N6F7edAiOxTf+ZQZme0r0cEUHESbi9S7GOm+OyYpIq+HZMZ7IMpaq
 6ch1uIpSIvD6d0ZiSPH22yyqoPcWc7c9wkfkEyGcRJ60ehHz5PhiMhayyoZbvOGsBrxQ
 bZ2LzFT48JTUjjm41S5ZNe7RbvRK+iVQuVV4NibXS0K6W/FVhfanPVOkDruhGfEIqS47
 1jK4ZdVTE3QhZyH/G2nPRAGWdjbcedgLKigKS00FyWB3fRstKP6kgEUlfiNPaDWDxIQB
 SlCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:in-reply-to:references;
 bh=pL4z/swoTMwbTbMm+CZTE8PZN5IahPwWK1oKgA44Jw8=;
 b=Dw8y7FrQFX540fNN2TRRFla/vsFEe/uL8hBLUWrL37yjvNwYpPI12eeHewjQPnsjWH
 Nm4TWqqFhrJG4zVLrn8M4OhnxwGmv5MD9AzMutc3AG28UzIEzwzhgOxq83ObCn1Cyg2s
 tREuUoTLCZAgVKW89n641/11d2DsYx4VqdpumzmqfICDGjmRxnnCErpOkNWFiItEhbXR
 bd4qGUYZ0MqihBchXjWYzS+V+M5//ns4wUSspHC+JbTAgvjD6uUO6N7un0jLILboWtXI
 OFcMf7ye+pAzNqhl8ykKRCZ4x2K+Py7IvxjLoSqkb4e6ZxULOomD1vHaOJxVDI15i6wJ
 twJA==
X-Gm-Message-State: APjAAAVK6F/ZIa7mOdi1W744uQXQdQOaDNv6qtvvUfbTY4niQJehYJ2v
 LtwaDaSPpMuTQp6htwEYY+MfLg==
X-Google-Smtp-Source: APXvYqwF+qopOc/h+NW4uHI2iFfpMRXvQ05mIybiixrrOldDG1ljO4J1jrhB5kuhJ/jptlEuRoQ9rg==
X-Received: by 2002:a5d:4ac1:: with SMTP id y1mr1818664wrs.183.1560338091629; 
 Wed, 12 Jun 2019 04:14:51 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id y2sm17676131wrl.4.2019.06.12.04.14.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 04:14:51 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com
Subject: [PATCH v2 2/6] serial: uartps: Use octal permission for module_param()
Date: Wed, 12 Jun 2019 13:14:39 +0200
Message-Id: <159139864be4ab81e75f20f7fdad604ce270f8cf.1560338079.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_041453_763148_FE539BCB 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Octal permission is preffered compare to symbolic one.

This patch fixes checkpatch warnings:
Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal
permissions '0444'.

Fixes: 85baf542d54e ("tty: xuartps: support 64 byte FIFO size")
Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Split patch from v1
- Fixes second S_IRUGO usage
- Add Fixes tag

 drivers/tty/serial/xilinx_uartps.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 9dcc4d855ddd..c84db82bdaab 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -35,12 +35,12 @@
 /* Rx Trigger level */
 static int rx_trigger_level = 56;
 static int uartps_major;
-module_param(rx_trigger_level, uint, S_IRUGO);
+module_param(rx_trigger_level, uint, 0444);
 MODULE_PARM_DESC(rx_trigger_level, "Rx trigger level, 1-63 bytes");
 
 /* Rx Timeout */
 static int rx_timeout = 10;
-module_param(rx_timeout, uint, S_IRUGO);
+module_param(rx_timeout, uint, 0444);
 MODULE_PARM_DESC(rx_timeout, "Rx timeout, 1-255");
 
 /* Register offsets for the UART. */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
