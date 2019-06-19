Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 608E34C1DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7/DW5kj+WaQ+dk61cbQkcnaKyrDHy3ffTsBctYDZX4I=; b=i4uMGL4Lc51lOmwvExxWWg0gZ1
	3tvfzJ9OQHCEFWeoGFh3hMXLji4qYGisvcebctzNxXOjI+RQxrXPAOdkkoS8566Izf+nxi/Vdk3DK
	dReH0R8AMPaM4GGhguuCWChZ6UFJLlofseu40xwojGFiPdfy/pXukRr2Z0wgRf/dMrXTAdOkcC3to
	69bVzQ4vtQzme+GyZ+MrKm+qUgGH161Kj+f5yKi2ZAd1MqyFvHbddqfETY6IEIniEChaRTiTyzmtb
	sn8ZBHhUq1nB9MEmFpnYWWVTM3gPs3I2YmoNuPypQj44TSB6062FO4Fpmjk5m6qVTtm3yvdpXKFXx
	rvTpYyLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgha-0001ky-U1; Wed, 19 Jun 2019 19:57:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdge8-0006RX-Uj
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id 145so243065pgh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wam6AHm/miO8TP1PGtbm8g85UgtcibQj68H7pbJwhxc=;
 b=jv8C5sBgLZvfD3CWqky7lPJw71eylFz2iEv0QQ+qjikurZx9t20ZW/8qjspp/7YuNb
 NC1QxdLXPxVOfWctUuNLwY3i267Bul4TQKFY+apKPgC1m2KTmjsOpiRNsAH3Ee05+14b
 U0WIe3H+XXhi8l9gcFRMtJgDVPGHFy0bQ3Hbg4P6Is1rj6i9wjGwxVlseNrBtwW4YPl+
 p0gv5OELvFsJk/oAC1gLfSRW3ZJC6IxQA0Pzmob77WVjsMPT24RQOp2qATWr5w4r6AKB
 oWC7Nfx0tKjMBpbPUXZbXXWZB9ZRjTb4ayXKifB6dKqKpKy5H4HeAR5HrV8nXt0eyFpR
 TKSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wam6AHm/miO8TP1PGtbm8g85UgtcibQj68H7pbJwhxc=;
 b=mpM6BE4sYawsPEH1FRrq92k5fwMIy2lM/W/YSoxYyXKKkTWFA3ZLJnJrWpMHNBDu4/
 fo/VsSO0DPWGXqLqsi3DLSJ37m1GjcmuvnXrLH3scH8t2m2iNJmdKVsOB1yC0VfqO4EB
 68tiL8XeIw1m4O9HGulFGNEpZuP4yFmXt0Ad1tgGEtyfI5S+wSlqKO1Ld27QVSYKePag
 9lgSqIVgIUqvOY6qvHFtCN+IoluCDXlkQURalMwZrFx9hXHGrn9vVpQTRqBBaGSkYxVx
 a1R5bmg+BPbUFUATQnmjsf2zUsPVLu7e0BON0SBiotFdcyg+aFgvQQUALVqn3MJ/7dhi
 eZog==
X-Gm-Message-State: APjAAAVjj3nBk8n7RApIqeZ6JiJ/nhHkKelS/lbmV3lswr13+a7n3CBQ
 o81FUL/V5/XPwae7MamvVxgcaw==
X-Google-Smtp-Source: APXvYqzXMuOSRJVlHqz9vo/V0aJLBwsZZfnBia1B9XQmdnm4nrQscjsdhx9XQVMOfMlWkBRP9JRfgw==
X-Received: by 2002:a63:fb4b:: with SMTP id w11mr9206012pgj.415.1560974008167; 
 Wed, 19 Jun 2019 12:53:28 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:27 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/28] coresight: Cleanup coresight_remove_conns
Date: Wed, 19 Jun 2019 13:52:58 -0600
Message-Id: <20190619195318.19254-9-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125329_041242_9340154B 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

When a device is unregistered, we remove all connection
references to it, by searching the connection records of
all devices in the coresight bus, via coresight_remove_conns.
We could avoid searching if this device doesn't have an input
port (e.g, a source). Also document the purpose of the function.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 04b5d3c2bb3a..068bd2fc0985 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1096,10 +1096,21 @@ static int coresight_remove_match(struct device *dev, void *data)
 	return 0;
 }
 
+/*
+ * coresight_remove_conns - Remove references to this given devices
+ * from the connections of other devices.
+ */
 static void coresight_remove_conns(struct coresight_device *csdev)
 {
-	bus_for_each_dev(&coresight_bustype, NULL,
-			 csdev, coresight_remove_match);
+	/*
+	 * Another device will point to this device only if there is
+	 * an output port connected to this one. i.e, if the device
+	 * doesn't have at least one input port, there is no point
+	 * in searching all the devices.
+	 */
+	if (csdev->nr_inport)
+		bus_for_each_dev(&coresight_bustype, NULL,
+				 csdev, coresight_remove_match);
 }
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
