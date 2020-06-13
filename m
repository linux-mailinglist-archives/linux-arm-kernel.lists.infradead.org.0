Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6209E1F858A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 23:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FzImAO65j2mrl7ayjthkxRCwJ+qDGamO9kMUKoqOstY=; b=Cdl
	ZcpGkxIXt4my1THkvc0nWbfHgc2RDW+AZ0zKzPCL3JaeNkwdS60/uWFm2yw1oARUYN4PN1/IOmbAm
	zAxj2X5KPx0AQf1PkO5LD5mTxARdL3wkkE8/BPJZ8Sw31oUocucxQL2l1OV7b0+RxaWDRET53d5Db
	Lv8GhNwdMeejhcW/o7MYirTkeg1v72rVOOgwDaW7GU+s0XViL1U6oLaJM5O/p3QlgCT1Rt45nP4e1
	nL4YnQfEbt87/a3YCpZGVuE+cauykimpG7kqUBiWHTCwb6boRKh2W21nvmNSqeTiyOHAULN1jG7K2
	t85ZGITbIqhbaTIIXyqc99OsAui2YOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkEBh-0003LH-5g; Sat, 13 Jun 2020 21:59:41 +0000
Received: from mta-p6.oit.umn.edu ([134.84.196.206])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkEBZ-0003Ky-HX
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 21:59:34 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p6.oit.umn.edu (Postfix) with ESMTP id 49ks2D2nfNz9vJBQ
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:59:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p6.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p6.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tDgVnwtsT3Oa for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 16:59:32 -0500 (CDT)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p6.oit.umn.edu (Postfix) with ESMTPS id 49ks2D0rnxz9v904
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 16:59:30 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p6.oit.umn.edu 49ks2D0rnxz9v904
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p6.oit.umn.edu 49ks2D0rnxz9v904
Received: by mail-il1-f199.google.com with SMTP id q14so9152599ils.18
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 14:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=41c7FVjnuZxspya187rlx7OBSjVWB+zOwPrRB+ZgQSg=;
 b=ZClCkewZT10IFwgu68fiRQ0a2lUNssxCW8Qpwbz1BlQQD9oo8RsEMk+B6NXFRWyjAR
 G78hU9OGxRfC4up3QAteuRz5aiuxkQ8Ll64R9AxKIwttWPAnrnmXomK4nRuaAGD2Ka6T
 eE0OIsZ0pHhG5bVrjTLwEbgdxG+V9gNKj3gwO4U0oNq3mxaYZb9n+lb1thduT55wQock
 xRgRORglF9rM6zbJa60dU9T7cQ/tCIqV+E8kYCq0YV/S4ZcPMBhCqUGuzBYWT8oxCivW
 ypVEGDWcM9GBGIjHClhYdXGsdYp5QWCWIP5rRfA661NNizK7nUMU3aqnMOCufYCeIEcA
 zaag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=41c7FVjnuZxspya187rlx7OBSjVWB+zOwPrRB+ZgQSg=;
 b=l2lmnL0jimFWuN5hEt+bUIHXs8MrjSQ6XbnUugnyyUt+wYeSpUGoXu/lx6QRWCWdnN
 yRj4p2oqAKtyT5LxiIvodAK79UxFDu+AjJmRzjGllSUBYdw2pM06rz8tFn+4h0JH+vk9
 WarJ/TyXt75k2fLgnUgduqSu+8cLR4c6JvvhHtEuHmiK0uQfWyBs8C0rjFZa0+kHhmkT
 3FZ7OtEaMaOGRDC61aGZuqPjzGN7DB1tMO6I26+0363bFacLaiByc/J1i/dlKcVUQiBV
 +v0u4BdHqE+ugy3PZZeI7YbRoZEtIns38mvqt6VemwaGcc29ruRw9JorGdnoZ+jzy7jC
 NkVw==
X-Gm-Message-State: AOAM532t8GDyKxfmqJpcpqDSYKQyQ3k7EkNxRYR6U9NPuNUlHT2ioFPM
 3zfWlRSZ+PFXwTUfs40gE1UMSz0OrSdmeIMPO7KkaYGKev8gFOEbZg8APW5ASx0Ouc0YPz/4YfO
 UTvsFMk3ya39MnVEbNRPIiH5wPTykAXU+qFzopPk=
X-Received: by 2002:a5d:87c4:: with SMTP id q4mr20721681ios.169.1592085569968; 
 Sat, 13 Jun 2020 14:59:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzipdRZykMqI9KaxMvFY/GNQReGYjPRPDqXiZP3a3gDErwMDUCI4tYTOc9XVtuyQfZVY4AYBg==
X-Received: by 2002:a5d:87c4:: with SMTP id q4mr20721663ios.169.1592085569733; 
 Sat, 13 Jun 2020 14:59:29 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id t12sm5321589ilj.75.2020.06.13.14.59.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 14:59:29 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] i2c: xiic: Fix reference count leaks.
Date: Sat, 13 Jun 2020 16:59:23 -0500
Message-Id: <20200613215923.2611-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_145933_667890_61A74F37 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.206 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
 linux-i2c@vger.kernel.org, wu000273@umn.edu,
 Shubhrajyoti Datta <shubhraj@xilinx.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Qiushi Wu <wu000273@umn.edu>

pm_runtime_get_sync() increments the runtime PM usage counter even
when it returns an error code. Thus call pm_runtime_put_noidle()
if pm_runtime_get_sync() fails.

Fixes: 36ecbcab84d0 ("i2c: xiic: Implement power management")
Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 drivers/i2c/busses/i2c-xiic.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
index 90c1c362394d..ffec41e6be72 100644
--- a/drivers/i2c/busses/i2c-xiic.c
+++ b/drivers/i2c/busses/i2c-xiic.c
@@ -696,8 +696,10 @@ static int xiic_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
 		xiic_getreg8(i2c, XIIC_SR_REG_OFFSET));
 
 	err = pm_runtime_get_sync(i2c->dev);
-	if (err < 0)
+	if (err < 0) {
+		pm_runtime_put_noidle(i2c->dev);
 		return err;
+	}
 
 	err = xiic_busy(i2c);
 	if (err)
@@ -860,8 +862,10 @@ static int xiic_i2c_remove(struct platform_device *pdev)
 	i2c_del_adapter(&i2c->adap);
 
 	ret = pm_runtime_get_sync(i2c->dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(i2c->dev);
 		return ret;
+	}
 
 	xiic_deinit(i2c);
 	pm_runtime_put_sync(i2c->dev);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
