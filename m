Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF0C7E0FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 19:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HnzbZh3cNQjhnGO/PCkjy78jvEl3Gqm/Jux65n5sX3c=; b=OWLcH09nLkFqh2XphZYjJhZRy9
	8q2+QcMPbtIz0Sm2HJZx8UINWsGr/qMJwi7v/v1Xvu7MagxvdDWuM1gIdZNJGlRR9UysK19xcrsAl
	GFBcyvoHsk2HGTRku0VaQ41mCYdJfr2QeMaf+uaL5wy8ADp4Avq7DNqRs1CIC2A7YdPfRflvoN9Sb
	qPQuq2Nqzew9FNJv6tHRCK0Tpe13CjBDsKq4ygKvlgIPvithjjNYvOXAa9FUQITnbS0IsTPI0OJZx
	nBdpKZ/LvI7Y+BPhxyK2plBTft8h2D6WswvxXp+9w2wTnyZ0k37vX7kfRiUqjHsg6CYannr3ZWi+i
	YQxvQwRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htEno-00058c-L1; Thu, 01 Aug 2019 17:23:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htEnX-000508-E9
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 17:23:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id n190so3134700pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 10:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=T7MVsY5FNmUQvneSm74dgfbrvO044DdCUBPiLgwQlkY=;
 b=pobFXM+EE3T/pKRFnFAFRaeFvIA9hup8bZuFVcNfCOQWMGMoMFX8eBmVcWrehJk3bj
 vOnTWbUHHaDWGgAShO2duMwvkII0s45tASudqQkWnTEGLxlzaGO/B0rNnoPTrgardkrW
 aod5wcaWulfQEknYIw/0yoa4Zxhx1fmWIQiDhrFM97ypolStELor5saJYSG2C4fuRRK4
 MP1ZOtudWLykSdEmkcgNYROAXbBPmHuCxJssiOpzgawNjvYxzu7/hyhkvSOvM4owesHk
 NZ/cWUEHNUTCkeTnKG7nSfQcp3OzkVc67mM26WQ2Mg1Zhl5+GTkz08mEesPTDBpsTXhg
 9cMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=T7MVsY5FNmUQvneSm74dgfbrvO044DdCUBPiLgwQlkY=;
 b=Qw3zmPUtwNjWnUH9FhGl+pmEGNYeur9D+W4B8JLPv1MWT0I9U+QIj02x4lEa0G9WpO
 4BOYpp3IBj1RjMup1tsUnEDz7YudvoAEzTs0t7Tdw07SnqE0tp5BLVd6DjQvey8t6Y8H
 C/+X2BQWRsPYSnJn8v3HMh4zNGNwkmVsMLDu7uGNE0vJ8IFhfoolVPXQM3xVzwlXABtb
 qcIUoF0KAaTiEcEGFHg7OuWUHsg+DDNcEHHGtJww/5eyG2EcBQ+YZYnljGlcmxrsIjcy
 +I3WiKn+AmwkbQxh/CNpJQKR4I5Rl4PBVd5fVx2OnklNa0L2yzzHqjAPLDfjcX2IXIeI
 F7BQ==
X-Gm-Message-State: APjAAAWWHBb/1ON0DgUj/br67RRsBRvUDXJjRL8g2kKU3jwWKaF+QR+T
 i61ou2fl4u8fCvc2QOX2RGVupA==
X-Google-Smtp-Source: APXvYqy7PQ9fTRVl7rNwrHnM3QECZB8vnrMUGthTzfUoTgPIaqRYYU0BXCQ/cOIR18iSLM45hJTrNg==
X-Received: by 2002:a63:b747:: with SMTP id w7mr66151950pgt.205.1564680206462; 
 Thu, 01 Aug 2019 10:23:26 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id q22sm67507962pgh.49.2019.08.01.10.23.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 10:23:25 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/1] coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized
 attribute
Date: Thu,  1 Aug 2019 11:23:23 -0600
Message-Id: <20190801172323.18359-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190801172323.18359-1-mathieu.poirier@linaro.org>
References: <20190801172323.18359-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_102327_470655_88F4F444 
X-CRM114-Status: GOOD (  12.57  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

While running the linux-next with CONFIG_DEBUG_LOCKS_ALLOC enabled,
I get the following splat.

 BUG: key ffffcb5636929298 has not been registered!
 ------------[ cut here ]------------
 DEBUG_LOCKS_WARN_ON(1)
 WARNING: CPU: 1 PID: 53 at kernel/locking/lockdep.c:3669 lockdep_init_map+0x164/0x1f0
 CPU: 1 PID: 53 Comm: kworker/1:1 Tainted: G        W         5.2.0-next-20190712-00015-g00ad4634222e-dirty #603
 Workqueue: events amba_deferred_retry_func
 pstate: 60c00005 (nZCv daif +PAN +UAO)
 pc : lockdep_init_map+0x164/0x1f0
 lr : lockdep_init_map+0x164/0x1f0

 [ trimmed ]

 Call trace:
  lockdep_init_map+0x164/0x1f0
  __kernfs_create_file+0x9c/0x158
  sysfs_add_file_mode_ns+0xa8/0x1d0
  sysfs_add_file_to_group+0x88/0xd8
  etm_perf_add_symlink_sink+0xcc/0x138
  coresight_register+0x110/0x280
  tmc_probe+0x160/0x420

 [ trimmed ]

 ---[ end trace ab4cc669615ba1b0 ]---

Fix this by initialising the dynamically allocated attribute properly.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Fixes: bb8e370bdc141ddf ("coresight: perf: Add "sinks" group to PMU directory")
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
[Fixed a typograhic error in the changelog]
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm-perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
index 5c1ca0df5cb0..84f1dcb69827 100644
--- a/drivers/hwtracing/coresight/coresight-etm-perf.c
+++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
@@ -544,6 +544,7 @@ int etm_perf_add_symlink_sink(struct coresight_device *csdev)
 	/* See function coresight_get_sink_by_id() to know where this is used */
 	hash = hashlen_hash(hashlen_string(NULL, name));
 
+	sysfs_attr_init(&ea->attr.attr);
 	ea->attr.attr.name = devm_kstrdup(dev, name, GFP_KERNEL);
 	if (!ea->attr.attr.name)
 		return -ENOMEM;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
