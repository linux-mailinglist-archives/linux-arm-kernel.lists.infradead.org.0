Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1155D19D389
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28kprj2H1PCn32XP1OSFpY3uGbw5gVqiowCTN5kd5sY=; b=MdhtgPf6rBSaFp
	A21O5+Ea8ynRyUbdPQJ3FYmL2sL5yoojCPeTOru+f6TLDal/Iuqz8HNNPfmECJ44BcQW7e7nag4Fo
	JrLICs+B/RPMVSa8hkcatVHBfDczt4v5O7vRDUNu1LE37TGkG50w8+EdQGiKJrwtM7XrbaxP27I86
	jbtda5InL7VN/IqwdNKvhIXme2H7myqP6AdXqL8ghJom/onj9/u74TmxC28iU6yKG/MwoiY5CmyFB
	3r140sRmByzPKyEw760PNyDRMfrxDUO5xRXImyTBBnO56jo3RgIfrTyDg1NVLK2gTIy5xPhisoKE8
	ejGN3usDLXDE6WztHcDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIZk-0002SD-FA; Fri, 03 Apr 2020 09:25:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIZD-0002Gl-PV
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:24:49 +0000
Received: by mail-wm1-x341.google.com with SMTP id j19so6899214wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 02:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8JvSInALjg1eXytJe5rJ7Y+P/uCTlj1zhyKbmCjjiPU=;
 b=pUpI01zCKVNQrq5ERO/mla4Lr68bFQ3Zp3lTFlDns9uNpDzBo6DBRHdV3wXllO6+MK
 r8MOVC2B1+QIY2v1njT4H5C1urVQ0FaG0TLLJUn+7A94KPnUz6vAGtFcxFHYAp92MgIr
 NWmjntkMiUFPhZ0NMUoDr/1fWr1ff67ztCp0FChj9ofg7P2UbjbwCDChCkp9sjPa1A52
 OaX6VEPjcT2j/0wiydEp7PX0guLLu4FsSgnSsM++XKv+ycHee2D4zDaCjLLeVlvtfxEo
 S412CFlJjcA5+A49EbeER7Jbg832oxCizJ49k4AMpMgeAxwyAuouNHkrjsrbmoajr+Lg
 eO6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=8JvSInALjg1eXytJe5rJ7Y+P/uCTlj1zhyKbmCjjiPU=;
 b=T6+o3j3g9sHDETiPV6EddzpcYG23GI6OT50oiCkKD6E12sAow37GFO7HP3SUGTesG5
 4vgyom3wafz6OgFMLz2wvCoxO9/amYg8nbLAjP+x/JSg2eg/UNUO27CTQNPqzCSbqlyZ
 izW4Ojp5C0H1nNtxUgA6iVqQkzvt9dZlRqBXpWRdlrnbQ1KAXBwpiYCN06hrcPZeL/Jt
 0GQ6Gx8ksTXiLnmZjEKpMO6UNkp7zGA+RYPuJb6UmnVQNsyinkAOJANw5StFspAZJd34
 qCsKRVbLFz1EHUFrpix3gZz0FUQ3olKRjNNNOrCnn5Rtek0VpsBnPqIHxOaZtGTN3zgj
 R7Ig==
X-Gm-Message-State: AGi0PubCd28nR9yRK3O5E947l+sEBb2FOgrBBIQDA3daUtUzeNrhd2Uy
 1TiRKbBAlM5OjNFawJ2aITCZ4A==
X-Google-Smtp-Source: APiQypLTY2q4droXAn+PImr6R7KdJsQTivawrm05+aIHGeYkU4uUUqsytYyy5pUINlGhas6RP3zyRw==
X-Received: by 2002:a1c:c3c3:: with SMTP id t186mr8069792wmf.118.1585905883683; 
 Fri, 03 Apr 2020 02:24:43 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id s9sm14159903wmc.2.2020.04.03.02.24.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 02:24:43 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Subject: [PATCH 1/7] Revert "serial: uartps: Fix uartps_major handling"
Date: Fri,  3 Apr 2020 11:24:30 +0200
Message-Id: <310999ab5342f788a7bc1b0e68294d4f052cad07.1585905873.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1585905873.git.michal.simek@xilinx.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_022447_824197_46372D60 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 5e9bd2d70ae7c00a95a22994abf1eef728649e64.

As Johan says, this driver needs a lot more work and these changes are
only going in the wrong direction:
    https://lkml.kernel.org/r/20190523091839.GC568@localhost

Reported-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/tty/serial/xilinx_uartps.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 6b26f767768e..b858fb14833d 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -1564,6 +1564,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
 		goto err_out_id;
 	}
 
+	uartps_major = cdns_uart_uart_driver->tty_driver->major;
 	cdns_uart_data->cdns_uart_driver = cdns_uart_uart_driver;
 
 	/*
@@ -1694,7 +1695,6 @@ static int cdns_uart_probe(struct platform_device *pdev)
 		console_port = NULL;
 #endif
 
-	uartps_major = cdns_uart_uart_driver->tty_driver->major;
 	cdns_uart_data->cts_override = of_property_read_bool(pdev->dev.of_node,
 							     "cts-override");
 	return 0;
@@ -1756,12 +1756,6 @@ static int cdns_uart_remove(struct platform_device *pdev)
 		console_port = NULL;
 #endif
 
-	/* If this is last instance major number should be initialized */
-	mutex_lock(&bitmap_lock);
-	if (bitmap_empty(bitmap, MAX_UART_INSTANCES))
-		uartps_major = 0;
-	mutex_unlock(&bitmap_lock);
-
 	uart_unregister_driver(cdns_uart_data->cdns_uart_driver);
 	return rc;
 }
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
