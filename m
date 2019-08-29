Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F64FA2915
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WVWzJJ5m+evSboaFoAl91Xg3r11aNXeGfxxy9jPBbq8=; b=JRSddY/cmenw3tt3QJ9If/IDM+
	LJ242Lw6dtWqFiZMCGLJTAbytFO7wGpXvDGJGUuZYwXv9rtLQvjc/FY1HkyIKgTvJoeQpwjmIERRC
	qVYhZ1YzTCilzscQRAmzMpkCHJTM5EA8ywjx5RIzZy/7llVWPcYXi1A1VLzhRiQFA6/6VkqHR9Z6y
	vdpqj4ssUldOKLPqNElVPFcevjviqu0Wwr53C0tucoiW3Kx3zXflsHyyTyxG8KgfkkAE7n5mt88OE
	3Xbh0T++1R0thYbHFSDfIdzqUXeIp/qfPH+NQt5W2g/9lrKsl/bbVVnMmhN71luz+5wY+sFChV+Vh
	uBbeGIOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3S5D-0005uN-My; Thu, 29 Aug 2019 21:35:55 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3S33-0002qw-Mo
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:33:43 +0000
Received: by mail-wm1-x343.google.com with SMTP id t9so5257636wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 14:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LMqchkDNCkA/VR+CQ65ZbjevbERlSTiEMV0ulJAmloU=;
 b=sf5dp2X8bvpsxIvn6wB4FXN5MEzziPNs5lvsXRP3kJCsnSQVYVwDgLvB9IwLGkMA6O
 l4jqEuqk4XYjOhd+Z5MGFv1nvfEQ5/BGU4a8e1++3orNHTRRP9blczv3DTaVdGrONnaC
 VxaEpNYfQKqm5hWGtpQsQ1ojgDD0sDRAcndgNnsnkV1b7GtmezmqE8cYnToQrV/QBeRt
 NXmWxULHoAIsXmHSJCeE7ZwglVK8RSLwrRwP34V5egyI9Vq0la223NWt+kwS2zuxirK4
 As5yiUWy16VRmqGRKYVC652YcNP1TCHbaC9FSdFkXaopjZ7Nfg4CykG/hJxOnjv43rJm
 V5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LMqchkDNCkA/VR+CQ65ZbjevbERlSTiEMV0ulJAmloU=;
 b=jqhjSZ7cqZK7Z/WknEjCR/N6+0ZFqJ0Taz9RLzg7rClKWS4y4DDQH/GAo9vhscKxYU
 iAIOz0wr7Ad7+BUFY6Q7VdG4z7XgB54QspHC76j852e1LA2PO53LYJ1n8/cNjImVIdbJ
 tuw4stMmB9hrgcbwntsyi1ik6+KVQKhVRYs4uJ1WCQyCxIyj8zfC9XUgrTvB/+qYXUKv
 oRRc76reO7Yi0H0VVk1T9Qo0NzSdcLxnWFmKIUhsvCym9eqxTXmIaAcZNzkY4KGE80SI
 gMKn9QjFl+imQqMDbBl6nBO5tKZePcL76YYtDfwelk9NhOawCqDmpeKl2Hwpp2rnnU64
 RZOA==
X-Gm-Message-State: APjAAAWD30qNNBCGKTz2KzP7DmQga0zBv+BzROr+x8l7Z+0ZQne3sZDf
 b31cMn195QP7JxusfgoJCfQSrQ==
X-Google-Smtp-Source: APXvYqxYzvDugEFQ70Y8VTR8QhgoptFrmtrSmGzRc8ML+ta8//qmQhRHGomDstQroWyB9o/W4klv0w==
X-Received: by 2002:a1c:e709:: with SMTP id e9mr14343981wmh.65.1567114420505; 
 Thu, 29 Aug 2019 14:33:40 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:c44b:1415:84d1:2692])
 by smtp.gmail.com with ESMTPSA id o17sm4515711wrx.60.2019.08.29.14.33.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 14:33:39 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v2 10/11] coresight: docs: Create common sub-directory for
 coresight trace.
Date: Thu, 29 Aug 2019 22:33:20 +0100
Message-Id: <20190829213321.4092-11-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829213321.4092-1-mike.leach@linaro.org>
References: <20190829213321.4092-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_143341_832556_BE35F758 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gregkh@linuxfoundation.org, corbet@lwn.net, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two files in the Documentation/trace directory relating to
coresight, with more to follow, so create a Documentation/trace/coresight
directory and move existing files there. Update MAINTAINERS to reference
this sub-directory rather than the individual files.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 Documentation/trace/{ => coresight}/coresight-cpu-debug.txt | 0
 Documentation/trace/{ => coresight}/coresight.txt           | 0
 MAINTAINERS                                                 | 3 +--
 3 files changed, 1 insertion(+), 2 deletions(-)
 rename Documentation/trace/{ => coresight}/coresight-cpu-debug.txt (100%)
 rename Documentation/trace/{ => coresight}/coresight.txt (100%)

diff --git a/Documentation/trace/coresight-cpu-debug.txt b/Documentation/trace/coresight/coresight-cpu-debug.txt
similarity index 100%
rename from Documentation/trace/coresight-cpu-debug.txt
rename to Documentation/trace/coresight/coresight-cpu-debug.txt
diff --git a/Documentation/trace/coresight.txt b/Documentation/trace/coresight/coresight.txt
similarity index 100%
rename from Documentation/trace/coresight.txt
rename to Documentation/trace/coresight/coresight.txt
diff --git a/MAINTAINERS b/MAINTAINERS
index 783569e3c4b4..777b77fde29b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1582,8 +1582,7 @@ R:	Suzuki K Poulose <suzuki.poulose@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/hwtracing/coresight/*
-F:	Documentation/trace/coresight.txt
-F:	Documentation/trace/coresight-cpu-debug.txt
+F:	Documentation/trace/coresight/*
 F:	Documentation/devicetree/bindings/arm/coresight.txt
 F:	Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
 F:	Documentation/ABI/testing/sysfs-bus-coresight-devices-*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
