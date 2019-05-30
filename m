Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162D53004C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 18:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=U/GFJ3zYF20QqPyqfKvHF9RThcQZaTMM5JEFS74T45c=; b=FQT
	rN2S7HIfk5FfXyoSmHvB1PPLXEYrx6xc8rFv2mVqvxGjq7aziPoKQwofD5Q9pCeFr4Imy0UDVvNsj
	y0HK144uNzj0ZLbAe0lrUzPLInIoOc8tB7EhizceWoIbs2mMVHXqZeMApynpWd+pgKxgfwqaG/NVs
	3cw6OewmTcJCAq+u9MZrq4guTWGyVvCOOGktxjnTKY81tfWY5F0n7QRAitPu6bI/ktdzN8hZA6kdm
	DYFDQRaQaZCsKlwC9ht2XPT1mis/ZRA1IfXk4vkDHwEwAteWO6xy+d//bvHp//uGjWA8I3DnZ3VVH
	KQfQCC0H84vZ3xRs//mPKkMjnubaAGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWOB0-00031w-IF; Thu, 30 May 2019 16:45:14 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWOAs-0002my-Vy
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 16:45:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4EB89341;
 Thu, 30 May 2019 09:45:06 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 11DEE3F5AF; Thu, 30 May 2019 09:45:04 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] coresight: Expose device connections via sysfs
Date: Thu, 30 May 2019 17:44:54 +0100
Message-Id: <1559234697-15743-1-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_094507_036117_1B09317D 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, leo.yan@linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org,
 mike.leach@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Coresight device connections are a bit complicated and is not
exposed currently to the user. One has to look at the platform
descriptions (DT bindings or ACPI bindings) to make an understanding.
Given the new naming scheme, it will be helpful to have this information
to choose the appropriate devices for tracing. This patch exposes
the device connections via links in the sysfs directories.

e.g, for a connection devA[OutputPort_X] -> devB[InputPort_Y]
is represented as two symlinks:

  /sys/bus/coresight/.../devA/out:X -> /sys/bus/coresight/.../devB
  /sys/bus/coresight/.../devB/in:Y  -> /sys/bus/coresight/.../devA

Applies on coresight/next tree.

This is split from the ACPI bindings series. No functional changes.

Suzuki K Poulose (3):
  coresight: Pass coresight_device for coresight_release_platform_data
  coresight: add return value for fixup connections
  coresight: Expose device connections via sysfs

 drivers/hwtracing/coresight/coresight-platform.c |   2 +-
 drivers/hwtracing/coresight/coresight-priv.h     |   3 +-
 drivers/hwtracing/coresight/coresight.c          | 148 +++++++++++++++++++----
 include/linux/coresight.h                        |   4 +
 4 files changed, 132 insertions(+), 25 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
