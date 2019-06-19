Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B135E4BFC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7/DW5kj+WaQ+dk61cbQkcnaKyrDHy3ffTsBctYDZX4I=; b=BusuABNb6jF35okGx79O8enrvM
	6CLHr47lLETZNcyh2abGAbKmN1gNNaNvegyL2m1yJLVoD0ua/yJOW9ps+o8wOETFIBsUTtDF+SLrF
	LQnex66tJlOxH+k9kxovXwBDd4dqKDq2C0Rgg/FdGETWZIAd/C5z8jNoZ1JzP/8l/2CYe1/69Wg2x
	s/ONcz7RZPF90lG4RoOJfngtrabah5nQau7s4s3u7qQvwCTSnPE6ga3XakTUYQhMaHGzDcPvGQdL5
	yUII0X4jByhuTOaqa2r8hAVYo+K5HQofh+TAg87MLrwDHI9MezWYS5HfWYzmD25TmTXwvLU/MUxQL
	IxZXjqig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeWL-0006PW-Nx; Wed, 19 Jun 2019 17:37:17 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePY-0008NS-1h
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so10158689pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wam6AHm/miO8TP1PGtbm8g85UgtcibQj68H7pbJwhxc=;
 b=PnfE3MEU8njbGMFhU9AJgJ82QOSy6M/S+feTB67U5RPayCAFuVwFi9QLhvmL4s4G1/
 fm8X8SpkVVSurgL3XoktLnAoFVUnPmln7LH4KD2BAC2u/N9ZhVfp7tBLYAoZNzDxJla8
 kkgjnZMO37pZ+r4brvO36f4PPIRdsUxS62Q2ij6WikHFXp2dERk2RNBmjL5xVSqpWXXB
 ipEeqJcXr+xnqONOdtchrf8V9BRo3IPqJopMOdgndgGCjUBmYronbxEv834k8L7Vc6r+
 ugQ7EkryqUPKU/anGq9RiNK3KNIm1UHfUWn40vejQ2ti+638oaCcdxzpWivk58VUJ1Ef
 /4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wam6AHm/miO8TP1PGtbm8g85UgtcibQj68H7pbJwhxc=;
 b=hyJf3VZLITxjy6PzoPvxtX8ykUqr5AHNv7znXDjPOemIfBV4ixzTwkBHugu1MUH2/z
 6DdQ3D7XVfuzLobeeLuLrZSCCE304E8s2LrpC996fcY+2SD0NdXfz3yatiYcBbsEBOFa
 FfqO11OesH0/w2R4x6DSqUsi01OMypjNLmG/S72ZH9Y11HidtM+eMX2XP7l4bgIDhI4g
 EDMMv0MtsNtxTZbggt+LR0DeQ1FBKtClafSGBWEwLgGFfqp8oeDLZILyFzlw+VxN6dxD
 NttlkQZH4T4Y43PQJCFE/0409OlY2u94nOG6ZajAnwGsmirY6k5qYOs/tpkUvVHS7BhV
 D0OQ==
X-Gm-Message-State: APjAAAU/al3zP0m25Ts+wBDgwvMgs00GczMG/KttfohAPfmPBAkhVFGq
 5IBOyTMKfD0ZhKsrkPIYddOEXg==
X-Google-Smtp-Source: APXvYqzucdb3p/qA/jGKrb0h6lhKXos7M6ZqMhzW5Hv5kfz0+gVUkstwYzZqVjPe8uCNbCMjygLUuw==
X-Received: by 2002:a63:4a20:: with SMTP id x32mr8659681pga.107.1560965414597; 
 Wed, 19 Jun 2019 10:30:14 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:14 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 25/45] coresight: Cleanup coresight_remove_conns
Date: Wed, 19 Jun 2019 11:29:29 -0600
Message-Id: <20190619172949.4522-26-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103017_382650_CF9CC5B1 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
