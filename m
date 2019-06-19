Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099A24C00B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E3cPg6TBrenfG9Rzhhl3qj76+PnLE9aEKWGwJn2YDog=; b=K+yspSyIkwHBZ5CFGufmVfnlyy
	HyDb408eHcUpWTV4I90FkyLTMX9dYWq8xNaQ2GqtY4S1fo+luHg1A8f84mQVwaGA/sjHyonwWluVD
	v0MJI5vVZtYpuGKV9gbvVGgxFp421UPYJ4xczVCqG5GkHYBNa9uP0FXRcVs2qgn3SuxX1Z60WiaUp
	55ZuGHTI94iugx82rBYpnwfnpRK2RsmO1V9QwuxA9yVcHoQwFsLGi/LylvkSeaN/Jn1Qe6gXm9Wbz
	OPTB5jI0iGLyzGTmQhdzJlnlI5tKbY5uKJgyY+X6FODo/2yfe/QD1EskWslsKBP7pOp4fqfOspvjj
	S2+0P91g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hded4-0007fQ-7A; Wed, 19 Jun 2019 17:44:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePo-0000Fj-TM
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so44216pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cNm/Gnvmoe8OMqI3hroQMow+nr0a1GxGDg/6aibpR2w=;
 b=FeSBeq6K3WxdPuyFRN2Ijw3FmMGnHtGG3CgMfBpi2XORigj6LLvQE1PUQ15R3/svS0
 Ub/GMWBQzgYqqwwSBftzYvKPakALXTzbRNoYvSuZTdwoX02QYcmqxM9v/I6hW1EW8VCl
 uvk5X7pqS/5adKljzBptgY5eqLyB53U7jEuby0xwvXG5OCUazfbYhBzaCxT2DuQ8n2nv
 iwcB74cU/v8+881igpzBqNh3IqaE+T0zoD/8iGRPLZwaijku+xU0UH5o0ISFPz3rROby
 6QfZqTXQhTcQJGSJdIn2Baks8wHqd3+2v1PpHXDukP/cket8DcQr5QGBMxIeWBhwiNam
 wKfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cNm/Gnvmoe8OMqI3hroQMow+nr0a1GxGDg/6aibpR2w=;
 b=bfmZHex5lVXqkwS8SFSqPCYHxmZJE56P3koLWoB31pofweEUsofpwidlSWzp4IV2Fq
 WxSzmtfqhXyt/KiHJl70bEftktGwhzKmpCSZOlFHfiKUFYAVi7eX0zWQflaSIfh3LooD
 RtEi85uiRIR1VlhDMCNxK+uHkqbdHz6MopmcD2HHxztN+GXuzQIveULw9RRSWGIdGL+t
 vQ2Lzzk7vsQ4DSul+R8CJV3Cl/I1XLS9c7QJebC3tgjhO5VUt+Grg3uMIgA3g0aQvY3+
 3LEcmqL/nY2oNXmV2mR3bFt/pVErrtTk6EAPkuKuQpgXc4QLOZwLuzvs8xel7lTPOJAd
 NPPw==
X-Gm-Message-State: APjAAAUqJPZNX/ubhs/KiUeOJnkeh0KlDsBYDCR+f/89xB7wQOoihtcN
 BWL02NouZ/HNJbyJYXJj6dZXFyfjYNHObA==
X-Google-Smtp-Source: APXvYqw2GxRge0z71cUM70fIValKIvUJsIW3TxvNczgL/WJMT5PYEa7s68jBEuSLLh6k0IQdbn3LhQ==
X-Received: by 2002:aa7:8555:: with SMTP id y21mr70481315pfn.104.1560965432024; 
 Wed, 19 Jun 2019 10:30:32 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:31 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 44/45] coresight: platform: add OF/APCI dependency
Date: Wed, 19 Jun 2019 11:29:48 -0600
Message-Id: <20190619172949.4522-45-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103032_999877_5780BE86 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

From: Arnd Bergmann <arnd@arndb.de>

When neither CONFIG_OF nor CONFIG_ACPI are set, we get a harmless
build warning:

drivers/hwtracing/coresight/coresight-platform.c:26:12: error: unused function 'coresight_alloc_conns'
      [-Werror,-Wunused-function]
static int coresight_alloc_conns(struct device *dev,
           ^
drivers/hwtracing/coresight/coresight-platform.c:46:1: error: unused function 'coresight_find_device_by_fwnode'
      [-Werror,-Wunused-function]
coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)

As the code is useless in that configuration anyway, just add
a Kconfig dependency that only allows building when at least
one of the two is set.

This should not hinder compile-testing, as CONFIG_OF can be
enabled on any architecture.

Fixes: ac0e232c12f0 ("coresight: platform: Use fwnode handle for device search")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
index 5487d4a1abc2..14638db4991d 100644
--- a/drivers/hwtracing/coresight/Kconfig
+++ b/drivers/hwtracing/coresight/Kconfig
@@ -4,6 +4,7 @@
 #
 menuconfig CORESIGHT
 	bool "CoreSight Tracing Support"
+	depends on OF || ACPI
 	select ARM_AMBA
 	select PERF_EVENTS
 	help
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
