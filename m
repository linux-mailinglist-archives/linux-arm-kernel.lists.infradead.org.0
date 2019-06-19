Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96D44C204
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E3cPg6TBrenfG9Rzhhl3qj76+PnLE9aEKWGwJn2YDog=; b=AsOWZVid8Ruc+UtiEe/oR53KYZ
	ZdNtTU2VxBgflg1+olaZdzpbrYTNETsQja5nzEatoNlQOV3g4oNeFoYyeoJw0SOtnnX4c5EU5EYu6
	28+o0jjV+wdmP2DVo2C5ps1//E9P8Ro/ZjYx0UFbTadEvviX0SsUmRzEEU1HY7FmeZnR7lVc9+/iS
	mIX0uCSWb07NwrrrlbjeJTjIvpR8WpNwke0Tg7K0Av+SrQ+W85eR5zVwXKY+gA+GF35A4XvBhAze8
	ARNfCM2a9NLgM6sIIJ/DtSFMLLeRXMimcjooKi5Vn+vTY92SirxJ9tncoVLimyvHgTDPUNlHlOPvZ
	0bM/+9Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgnj-0000Am-7A; Wed, 19 Jun 2019 20:03:23 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeR-0006jQ-O7
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:53 +0000
Received: by mail-pl1-x643.google.com with SMTP id g4so260096plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cNm/Gnvmoe8OMqI3hroQMow+nr0a1GxGDg/6aibpR2w=;
 b=lYveENuveuYI0BwZo80/qaUKHohljulL0oA0gaWK1utjfSxuKzmV0U60eiZH5x4sgI
 efWHxuiV7tZcV1tx4SMGwUre8UPH+YQEDHHGryHG5LM0q966Am6YGV8v3jq1FFcj6s5f
 0v9u2UE0+FYdEkopGEaku41rRt7/6kGbyWIfyQAYi+R3UZ9S0sVN5fbulmhWPKKubDYd
 IE86DrE3fEzEb8B+GQso5lDbV9IXF/jz9cKvjolNASyLVOl6/MFV2uQtu4x1J/KAO5iO
 rthmcTQMQfN4x855g3Sgr6qqCJg2HtWrrdplIPcU2N0H+CWBae40bCNWeo+orczPgjsj
 Zmbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cNm/Gnvmoe8OMqI3hroQMow+nr0a1GxGDg/6aibpR2w=;
 b=GBiJYx+K6DvacJLlHuQR7oUCzfEZ707O2hrlNQlTYs9ECUFomEDDXppIYwLCUIDKCG
 BqLP20f8uYM8MfMXmnmwwZ67ofeNpOXHwLYmgth+h0oKK4pawa6VqahmC+fQ+g9JlE6/
 eIoo5KspLD4P8fZbIa8j1gjDue4h7ExJuqe+h/CJle3ZDYUyNmxgicNWj5ZzpymBcx+v
 5bhX56hHZyL5fvDt40kWQTUg9Fd8RRIKLzlJQ+6ss+IMF3h4M+o76KEpNgCKiGD1wf7u
 QwJJENq1fvGv6FZj5Lnympjz63SQLJmNarthstXI4tTGbHveTqVY432nL5mUOFA4y8jg
 4DPg==
X-Gm-Message-State: APjAAAXfoYlNCKHRIN13LuIv9Ag9vnrzZ52VWwVTd9wBw/C0ZgYr0b3B
 gLkWtyo7htFdi2fdcqigpMUgkg==
X-Google-Smtp-Source: APXvYqwajCF/Ni2gYINk1Q8O6nrrwAeA+V/tjYktZunbZSuTYgWkByf1KHH3R+MryZ7lvygLLpsd5Q==
X-Received: by 2002:a17:902:1e6:: with SMTP id
 b93mr77214955plb.295.1560974026261; 
 Wed, 19 Jun 2019 12:53:46 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:45 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 27/28] coresight: platform: add OF/APCI dependency
Date: Wed, 19 Jun 2019 13:53:17 -0600
Message-Id: <20190619195318.19254-28-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125347_974021_EB0D7E67 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
