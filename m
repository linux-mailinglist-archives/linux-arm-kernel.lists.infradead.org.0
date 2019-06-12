Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3519423CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gF3E9ckB24uS4qFlFtYURX+drrV2k83aBWGL0/yF9B4=; b=f9xiTFniQj1tGMZjMN7GAW7Pzm
	Gu5db4XkNTqJne8yW2YFCJ00z7OL9cNKwDy51gKyfeiBjPkuxWUQZ/jPR0bR5RcHU/+g5TK5iV2WO
	2w3p4iXoZD3glyLDXEdXjHC4h6VtegFABOlizIAMVRxx3yXHBYVLiD951Yghu5vEeluau3ONS+lmv
	aBjSZGr4W/WA4hUGcCy6F3/RmE+wYJB5ei6yhnO8UUMOmGtkbOGcupnKw4fk4NBVGh5H+7lUtlS7y
	LlBW4u+bHaXyOfYY5EduRgNnsuZvnLWA+Rze1dR9/IbRGRtJjtrszqs8Lm0FAsrvyazrJ7KE9UD6b
	652nHczQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1Ez-0000IL-2y; Wed, 12 Jun 2019 11:16:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1DV-0006CN-4T
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:14:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id c6so6119140wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=bYhm6q2mQOQHxwpH1cNDyslfzzaeNb5NDBbPExBr2hU=;
 b=gUz4s4x3wAGkHBCidbCda40ZHrM+oc5MtKFf8IFar51RKlJuK1zOLWaojoQZUxDrdT
 w5897ogwbbZPOnHWEZrig35pkYl3fmCEvcMf0ROCNClQ9Q8hml1Adv3IMHjMickCUPwU
 3UaHIWLyQmnprriSbA06WUAowV1Uuq+/7V7dhatbGWhVC/GXDc4o7CXsGZ3RsEWZGWMP
 vt2hylAoq102zrYvnqKX1TUeoOZ3S5M0L9icqq1CuDzPFeCuahixzClKF2/ooA1+TXV0
 aTRhJzAKqP5JG4oPxNYGTOUwo0Ewgn159jICgnUkhW+8i72KHQCQ6i8tkDVmxmJDEe0o
 LU7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:in-reply-to:references;
 bh=bYhm6q2mQOQHxwpH1cNDyslfzzaeNb5NDBbPExBr2hU=;
 b=Hz1bjCCcwx98ObgvLiSmlGevGXbuNkJ15wYBfaZG62+YzkZqkk7k4nzN2Npx2s/NqF
 e3OY/C6Xh6FOTkVXQ9LVSg8XRuKaxV6ubtIdtGYJHpb3jV4dKZ2S3aLn4qY8m63xncpv
 f8xDZvqoNOfXdxUWr3q4Yw2YEjHqCTTphQ2yOEba4SQt4zWa/X8HrDS1Q23CW6xJuXBj
 8cQF2x7TsY4HC2QlejxPkolNJMdA1qv6AxiP6HOOftvQYCO9l7T0Gi+prq9pkQdJUFZV
 v5T56fbLtPjocPJ8paApnbLbMDVF+yL1AF2/isYc8WZKADlQVoR7JbvRfiTprT634xn2
 YISQ==
X-Gm-Message-State: APjAAAU+pUytQmufH3SAuHEKO2TS2Au0stUGFtBfj++u8ow542AzAGn1
 VYQCJ9kk817xkGxMG1hFTyW/G3vuJ1BTTw==
X-Google-Smtp-Source: APXvYqyGMKCnljobGJkFGV/NdFNdLPAxnN5nwF08PzReraHvnNcveanzCoORDBgv7OzKCjvRD9L/bg==
X-Received: by 2002:a1c:3886:: with SMTP id
 f128mr21530360wma.151.1560338095263; 
 Wed, 12 Jun 2019 04:14:55 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id d10sm19536766wrp.74.2019.06.12.04.14.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 04:14:54 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com
Subject: [PATCH v2 4/6] serial: uartps: Fix long line over 80 chars
Date: Wed, 12 Jun 2019 13:14:41 +0200
Message-Id: <a7eb75d2900d354b3b2ba4355f4c9b9cb00f1456.1560338079.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_041457_213371_35D09D26 
X-CRM114-Status: GOOD (  12.18  )
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

Trivial patch which fixes one checkpatch warning:
WARNING: line over 80 characters
+		       !(readl(port->membase + CDNS_UART_SR)
			& CDNS_UART_SR_TXFULL)) {

Fixes: c8dbdc842d30 ("serial: xuartps: Rewrite the interrupt handling logic")
Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Split patch from v1
- Add Fixes tag

 drivers/tty/serial/xilinx_uartps.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 4cd20c036750..c3949a323815 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -312,7 +312,8 @@ static void cdns_uart_handle_tx(void *dev_id)
 	} else {
 		numbytes = port->fifosize;
 		while (numbytes && !uart_circ_empty(&port->state->xmit) &&
-		       !(readl(port->membase + CDNS_UART_SR) & CDNS_UART_SR_TXFULL)) {
+		       !(readl(port->membase + CDNS_UART_SR) &
+						CDNS_UART_SR_TXFULL)) {
 			/*
 			 * Get the data from the UART circular buffer
 			 * and write it to the cdns_uart's TX_FIFO
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
